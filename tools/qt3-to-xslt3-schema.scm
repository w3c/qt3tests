<?xml version="1.0" encoding="UTF-8"?>
<scm:schema xmlns:scm="http://ns.saxonica.com/schema-component-model"
            generatedAt="2015-09-17T22:35:10.107+01:00"
            xsdVersion="1.1">
   <scm:simpleType id="C0"
                   name="fullDerivationSet"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C1 C2"/>
   <scm:simpleType id="C3"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#QName C4"/>
   <scm:complexType id="C5"
                    name="facet"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C7"/>
      <scm:attributeUse required="false" inheritable="false" ref="C8" default="false"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C12" base="#token" variety="atomic" primitiveType="#string">
      <scm:enumeration value="#all"/>
   </scm:simpleType>
   <scm:complexType id="C13"
                    name="transform-element-base-type"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C14"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C20"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C27"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeWildcard ref="C33"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C34" base="#token" variety="atomic" primitiveType="#string">
      <scm:enumeration value="#all"/>
   </scm:simpleType>
   <scm:simpleType id="C35"
                   name="derivationSet"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C36 C37"/>
   <scm:simpleType id="C38"
                   name="public"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string"/>
   <scm:simpleType id="C39"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="unbounded"/>
   </scm:simpleType>
   <scm:complexType id="C40"
                    name="text-element-type"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C41"
                    derivationMethod="extension"
                    abstract="false"
                    variety="simple"
                    simpleType="C42">
      <scm:attributeUse required="false" inheritable="false" ref="C43" default="no"/>
      <scm:attributeUse required="false" inheritable="false" ref="C44"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C47"/>
   </scm:complexType>
   <scm:complexType id="C48"
                    name="attributeGroupRef"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C49"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="true" inheritable="false" ref="C50"/>
      <scm:attributeWildcard ref="C51"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C52"
                    name="localElement"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C53"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C55"/>
      <scm:attributeUse required="false" inheritable="false" ref="C56"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C58"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C59"/>
      <scm:attributeUse required="false" inheritable="false" ref="C60"/>
      <scm:attributeUse required="false" inheritable="false" ref="C61"/>
      <scm:attributeUse required="false" inheritable="false" ref="C62"/>
      <scm:attributeUse required="false" inheritable="false" ref="C63"/>
      <scm:attributeUse required="false" inheritable="false" ref="C64"/>
      <scm:attributeWildcard ref="C65"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C66"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C67"/>
               </scm:choice>
            </scm:modelGroupParticle>
            <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C68"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C69"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C68" to="4"/>
            <scm:edge term="C67" to="1"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C68" to="4"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C68" to="4"/>
            <scm:edge term="C67" to="1"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C68" to="4"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C73"
                   name="prefix-list-or-all"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C74 C75"/>
   <scm:simpleType id="C76" base="#anySimpleType" variety="list" itemType="C77"/>
   <scm:simpleType id="C78"
                   name="modes"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C79 C12"/>
   <scm:simpleType id="C80"
                   name="sequence-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:pattern value=".+"/>
   </scm:simpleType>
   <scm:simpleType id="C81"
                   name="uri-list"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="list"
                   itemType="#anyURI"/>
   <scm:simpleType id="C82"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="lax"/>
      <scm:enumeration value="skip"/>
      <scm:enumeration value="strict"/>
   </scm:simpleType>
   <scm:complexType id="C83"
                    name="explicitGroup"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C84"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C85"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C86"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C91" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C91" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C91" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C92"
                   name="on-multiple-match-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="fail"/>
      <scm:enumeration value="use-last"/>
   </scm:simpleType>
   <scm:simpleType id="C74"
                   name="prefix-list"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="list"
                   itemType="C93"/>
   <scm:simpleType id="C94"
                   name="on-no-match-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="shallow-copy"/>
      <scm:enumeration value="deep-skip"/>
      <scm:enumeration value="text-only-copy"/>
      <scm:enumeration value="fail"/>
      <scm:enumeration value="shallow-skip"/>
      <scm:enumeration value="deep-copy"/>
   </scm:simpleType>
   <scm:complexType id="C95"
                    name="topLevelAttribute"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C96"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C97"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C98"/>
      <scm:attributeUse required="false" inheritable="false" ref="C99"/>
      <scm:attributeUse required="false" inheritable="false" ref="C100"/>
      <scm:attributeUse required="false" inheritable="false" ref="C101"/>
      <scm:attributeWildcard ref="C102"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C66"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2" final="true">
            <scm:edge term="C66" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C103"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="#default"/>
   </scm:simpleType>
   <scm:simpleType id="C104" base="C105" variety="atomic" primitiveType="#string">
      <scm:enumeration value="restriction"/>
      <scm:enumeration value="substitution"/>
      <scm:enumeration value="extension"/>
   </scm:simpleType>
   <scm:complexType id="C106"
                    name="sequence-constructor-and-select"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C157"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C158 C159"/>
   <scm:simpleType id="C160" base="#anySimpleType" variety="list" itemType="C104"/>
   <scm:simpleType id="C161"
                   name="visibility-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="abstract"/>
      <scm:enumeration value="final"/>
      <scm:enumeration value="private"/>
      <scm:enumeration value="hidden"/>
      <scm:enumeration value="public"/>
   </scm:simpleType>
   <scm:simpleType id="C162"
                   name="avt"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#string"
                   variety="atomic"
                   primitiveType="#string"/>
   <scm:simpleType id="C163"
                   name="yes-or-no"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="no"/>
      <scm:enumeration value="true"/>
      <scm:enumeration value="yes"/>
      <scm:enumeration value="1"/>
      <scm:enumeration value="0"/>
      <scm:enumeration value="false"/>
   </scm:simpleType>
   <scm:simpleType id="C164" base="#anySimpleType" variety="list" itemType="C157"/>
   <scm:simpleType id="C165"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:pattern value="(\*:\i\c*)|(\i\c*:\*)"/>
   </scm:simpleType>
   <scm:simpleType id="C166"
                   name="xpathDefaultNamespace"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#anyURI C167"/>
   <scm:simpleType id="C2" base="#anySimpleType" variety="list" itemType="C168"/>
   <scm:simpleType id="C79" base="C164" variety="list" itemType="C157">
      <scm:assert>
         <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                        test="count($value) = count(distinct-values($value))"
                        defaultNamespace=""
                        xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      </scm:assert>
   </scm:simpleType>
   <scm:simpleType id="C169"
                   base="#string"
                   variety="atomic"
                   primitiveType="#string"/>
   <scm:complexType id="C53"
                    name="element"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="true"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C59"/>
      <scm:attributeUse required="false" inheritable="false" ref="C170"/>
      <scm:attributeUse required="false" inheritable="false" ref="C63"/>
      <scm:attributeUse required="false" inheritable="false" ref="C64"/>
      <scm:attributeUse required="false" inheritable="false" ref="C60"/>
      <scm:attributeUse required="false" inheritable="false" ref="C171" default="false"/>
      <scm:attributeUse required="false" inheritable="false" ref="C172"/>
      <scm:attributeUse required="false" inheritable="false" ref="C55"/>
      <scm:attributeUse required="false" inheritable="false" ref="C62"/>
      <scm:attributeUse required="false" inheritable="false" ref="C58"/>
      <scm:attributeUse required="false" inheritable="false" ref="C56"/>
      <scm:attributeUse required="false" inheritable="false" ref="C61"/>
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
                     <scm:choice>
                        <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C66"/>
                        <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C67"/>
                     </scm:choice>
                  </scm:modelGroupParticle>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C68"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C69"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C67" to="1"/>
            <scm:edge term="C68" to="2"/>
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C72" to="3"/>
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C11" to="4"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C68" to="2"/>
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C68" to="2"/>
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C72" to="3"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C67" to="1"/>
            <scm:edge term="C68" to="2"/>
            <scm:edge term="C70" to="3"/>
            <scm:edge term="C71" to="3"/>
            <scm:edge term="C72" to="3"/>
            <scm:edge term="C66" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C173"
                   name="item-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:pattern value=".+"/>
   </scm:simpleType>
   <scm:complexType id="C174"
                    name="topLevelSimpleType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C175"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C176"/>
      <scm:attributeUse required="true" inheritable="false" ref="C177"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C178"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C179"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C11" to="1"/>
            <scm:edge term="C180" to="2"/>
            <scm:edge term="C181" to="2"/>
            <scm:edge term="C182" to="2"/>
         </scm:state>
         <scm:state nr="1">
            <scm:edge term="C180" to="2"/>
            <scm:edge term="C181" to="2"/>
            <scm:edge term="C182" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C183"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#QName C184"/>
   <scm:simpleType id="C93"
                   name="prefix-or-default"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#NCName C103"/>
   <scm:simpleType id="C185"
                   name="reducedDerivationControl"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="C105"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="restriction"/>
      <scm:enumeration value="extension"/>
   </scm:simpleType>
   <scm:complexType id="C186"
                    name="topLevelElement"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C53"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C172"/>
      <scm:attributeUse required="false" inheritable="false" ref="C55"/>
      <scm:attributeUse required="true" inheritable="false" ref="C187"/>
      <scm:attributeUse required="false" inheritable="false" ref="C171" default="false"/>
      <scm:attributeUse required="false" inheritable="false" ref="C170"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C59"/>
      <scm:attributeUse required="false" inheritable="false" ref="C60"/>
      <scm:attributeUse required="false" inheritable="false" ref="C63"/>
      <scm:attributeUse required="false" inheritable="false" ref="C64"/>
      <scm:attributeWildcard ref="C188"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C66"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C67"/>
               </scm:choice>
            </scm:modelGroupParticle>
            <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C68"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C69"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C70" to="2"/>
            <scm:edge term="C71" to="2"/>
            <scm:edge term="C68" to="3"/>
            <scm:edge term="C72" to="2"/>
            <scm:edge term="C67" to="1"/>
            <scm:edge term="C11" to="4"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C70" to="2"/>
            <scm:edge term="C71" to="2"/>
            <scm:edge term="C68" to="3"/>
            <scm:edge term="C72" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C70" to="2"/>
            <scm:edge term="C71" to="2"/>
            <scm:edge term="C72" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C70" to="2"/>
            <scm:edge term="C71" to="2"/>
            <scm:edge term="C68" to="3"/>
            <scm:edge term="C72" to="2"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C70" to="2"/>
            <scm:edge term="C71" to="2"/>
            <scm:edge term="C68" to="3"/>
            <scm:edge term="C72" to="2"/>
            <scm:edge term="C67" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C189"
                    name="localSimpleType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C175"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C190"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C179"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C180" to="1"/>
            <scm:edge term="C181" to="1"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C182" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2">
            <scm:edge term="C180" to="1"/>
            <scm:edge term="C181" to="1"/>
            <scm:edge term="C182" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C191"
                    name="topLevelComplexType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C192"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C193"/>
      <scm:attributeUse required="false" inheritable="false" ref="C194"/>
      <scm:attributeUse required="false" inheritable="false" ref="C195"/>
      <scm:attributeUse required="true" inheritable="false" ref="C196"/>
      <scm:attributeUse required="false" inheritable="false" ref="C197" default="false"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C198" default="true"/>
      <scm:attributeWildcard ref="C199"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C200"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C201" to="6"/>
            <scm:edge term="C11" to="5"/>
            <scm:edge term="C202" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="7"/>
            <scm:edge term="C206" to="6"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="5" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C201" to="6"/>
            <scm:edge term="C202" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="7"/>
            <scm:edge term="C206" to="6"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="6" final="true"/>
         <scm:state nr="7" final="true">
            <scm:edge term="C205" to="7"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C209"
                    name="generic-element-type"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="#anyType"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C210"
                   name="pattern"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="C211"
                   variety="atomic"
                   primitiveType="#string">
      <scm:pattern value=".+"/>
   </scm:simpleType>
   <scm:simpleType id="C75" base="#token" variety="atomic" primitiveType="#string">
      <scm:enumeration value="#all"/>
   </scm:simpleType>
   <scm:simpleType id="C212"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="start"/>
      <scm:enumeration value="end"/>
   </scm:simpleType>
   <scm:simpleType id="C213"
                   base="#anySimpleType"
                   variety="list"
                   itemType="#QName"/>
   <scm:complexType id="C214"
                    name="assertion"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C215"/>
      <scm:attributeUse required="false" inheritable="false" ref="C216"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C217"
                   name="level"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="single"/>
      <scm:enumeration value="any"/>
      <scm:enumeration value="multiple"/>
   </scm:simpleType>
   <scm:simpleType id="C1" base="#token" variety="atomic" primitiveType="#string">
      <scm:enumeration value="#all"/>
   </scm:simpleType>
   <scm:complexType id="C84"
                    name="group"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="true"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C56"/>
      <scm:attributeUse required="false" inheritable="false" ref="C61"/>
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C218"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C89" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C89" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C219"
                   name="zero-length-string"
                   targetNamespace="http://saxon.sf.net/"
                   base="#string"
                   variety="atomic"
                   primitiveType="#string">
      <scm:length value="0"/>
   </scm:simpleType>
   <scm:simpleType id="C220"
                   name="typed-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="lax"/>
      <scm:enumeration value="no"/>
      <scm:enumeration value="true"/>
      <scm:enumeration value="yes"/>
      <scm:enumeration value="1"/>
      <scm:enumeration value="0"/>
      <scm:enumeration value="unspecified"/>
      <scm:enumeration value="false"/>
      <scm:enumeration value="strict"/>
   </scm:simpleType>
   <scm:simpleType id="C221"
                   name="visibility-not-hidden-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="C161"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="abstract"/>
      <scm:enumeration value="final"/>
      <scm:enumeration value="private"/>
      <scm:enumeration value="public"/>
   </scm:simpleType>
   <scm:simpleType id="C222"
                   name="nametests"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="list"
                   itemType="C223"/>
   <scm:simpleType id="C211"
                   name="expression"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:pattern value=".+"/>
   </scm:simpleType>
   <scm:simpleType id="C224"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="#all"/>
   </scm:simpleType>
   <scm:simpleType id="C225"
                   name="component-kind-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="template"/>
      <scm:enumeration value="function"/>
      <scm:enumeration value="mode"/>
      <scm:enumeration value="attribute-set"/>
      <scm:enumeration value="variable"/>
   </scm:simpleType>
   <scm:simpleType id="C226"
                   name="yes-or-no-or-omit"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="no"/>
      <scm:enumeration value="true"/>
      <scm:enumeration value="yes"/>
      <scm:enumeration value="1"/>
      <scm:enumeration value="0"/>
      <scm:enumeration value="omit"/>
      <scm:enumeration value="false"/>
   </scm:simpleType>
   <scm:complexType id="C192"
                    name="complexType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="true"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C227"/>
      <scm:attributeUse required="false" inheritable="false" ref="C194"/>
      <scm:attributeUse required="false" inheritable="false" ref="C197" default="false"/>
      <scm:attributeUse required="false" inheritable="false" ref="C193"/>
      <scm:attributeUse required="false" inheritable="false" ref="C195"/>
      <scm:attributeUse required="false" inheritable="false" ref="C198" default="true"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C200"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C201" to="5"/>
            <scm:edge term="C11" to="6"/>
            <scm:edge term="C202" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="7"/>
            <scm:edge term="C206" to="5"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="5" final="true"/>
         <scm:state nr="6" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C201" to="5"/>
            <scm:edge term="C202" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="7"/>
            <scm:edge term="C206" to="5"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="7" final="true">
            <scm:edge term="C205" to="7"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C228"
                   name="simpleDerivationSet"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C229 C76"/>
   <scm:complexType id="C230"
                    name="namedGroup"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C231"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C232"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C233"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C234"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C235"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C236"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C235" to="1"/>
            <scm:edge term="C234" to="1"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C236" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2">
            <scm:edge term="C235" to="1"/>
            <scm:edge term="C234" to="1"/>
            <scm:edge term="C236" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C237"
                   name="_langType"
                   targetNamespace="http://www.w3.org/XML/1998/namespace"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#language C219"/>
   <scm:simpleType id="C238"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string"/>
   <scm:simpleType id="C239"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="preserve"/>
      <scm:enumeration value="replace"/>
      <scm:enumeration value="collapse"/>
   </scm:simpleType>
   <scm:simpleType id="C229"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="#all"/>
   </scm:simpleType>
   <scm:simpleType id="C240"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#anyURI C241"/>
   <scm:simpleType id="C242"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="#unnamed"/>
      <scm:enumeration value="#current"/>
      <scm:enumeration value="#default"/>
   </scm:simpleType>
   <scm:complexType id="C243"
                    name="groupRef"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C231"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="true" inheritable="false" ref="C244"/>
      <scm:attributeWildcard ref="C245"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C246"
                   name="EQName-in-namespace"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="C158"
                   variety="union"
                   memberTypes="#NCName #QName C247">
      <scm:pattern value="Q\{.+\}.+|\i\c*:.+"/>
   </scm:simpleType>
   <scm:simpleType id="C248"
                   base="#anySimpleType"
                   variety="list"
                   itemType="#QName"/>
   <scm:simpleType id="C249"
                   name="specialNamespaceList"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="##other"/>
      <scm:enumeration value="##any"/>
   </scm:simpleType>
   <scm:simpleType id="C250"
                   name="namespaceList"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C249 C251"/>
   <scm:simpleType id="C37" base="#anySimpleType" variety="list" itemType="C185"/>
   <scm:complexType id="C252"
                    name="openAttrs"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="#anyType"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="empty">
      <scm:attributeWildcard ref="C10"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C253"
                    name="simpleExplicitGroup"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C83"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C254"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C86"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C91" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C91" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C91" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C255"
                    name="restrictionType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C256"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
                     <scm:choice>
                        <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
                           <scm:sequence>
                              <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C202"/>
                              <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C257"/>
                           </scm:sequence>
                        </scm:modelGroupParticle>
                        <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C258"/>
                     </scm:choice>
                  </scm:modelGroupParticle>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C260"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C11" to="5"/>
            <scm:edge term="C202" to="8"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C66" to="7"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C207" to="4"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C207" to="4"/>
         </scm:state>
         <scm:state nr="5" final="true">
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C202" to="8"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C66" to="7"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="6" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="7" final="true">
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="8">
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C277"
                   base="#nonNegativeInteger"
                   variety="atomic"
                   primitiveType="#integer">
      <scm:enumeration value="0"/>
      <scm:enumeration value="1"/>
   </scm:simpleType>
   <scm:complexType id="C278"
                    name="anyType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="#anyType"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="mixed">
      <scm:attributeWildcard ref="C279"/>
      <scm:elementWildcard minOccurs="0" maxOccurs="unbounded" ref="C280"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C280" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C280" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C281"
                    name="versioned-element-type"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C209"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C282"
                   name="qnameListA"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="list"
                   itemType="C3"/>
   <scm:simpleType id="C283"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="interleave"/>
      <scm:enumeration value="suffix"/>
   </scm:simpleType>
   <scm:simpleType id="C42" base="C169" variety="atomic" primitiveType="#string"/>
   <scm:complexType id="C284"
                    name="wildcard"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C285"/>
      <scm:attributeUse required="false" inheritable="false" ref="C286"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C287"
                        default="strict"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C288"
                   name="yes-or-no-or-maybe"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="maybe"/>
      <scm:enumeration value="no"/>
      <scm:enumeration value="true"/>
      <scm:enumeration value="yes"/>
      <scm:enumeration value="1"/>
      <scm:enumeration value="0"/>
      <scm:enumeration value="false"/>
   </scm:simpleType>
   <scm:simpleType id="C289"
                   name="mode"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C158 C242"/>
   <scm:complexType id="C290"
                    name="noFixedFacet"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C5"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C7"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C291"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C241"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="##targetNamespace"/>
      <scm:enumeration value="##local"/>
   </scm:simpleType>
   <scm:complexType id="C49"
                    name="attributeGroup"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="true"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C56"/>
      <scm:attributeUse required="false" inheritable="false" ref="C61"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
            <scm:edge term="C11" to="3"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C41"
                    name="text-element-base-type"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C281"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="simple"
                    simpleType="C42">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C47"/>
   </scm:complexType>
   <scm:simpleType id="C292"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="absent"/>
      <scm:enumeration value="optional"/>
      <scm:enumeration value="required"/>
   </scm:simpleType>
   <scm:complexType id="C293"
                    name="keybase"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C294"/>
      <scm:attributeUse required="false" inheritable="false" ref="C295"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C296"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="unbounded" ref="C297"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C296" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1">
            <scm:edge term="C297" to="3"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C296" to="1"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C297" to="4"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C297" to="4"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C298"
                   base="C158"
                   variety="union"
                   memberTypes="#NCName #QName C247">
      <scm:pattern value="\c*:\c*"/>
   </scm:simpleType>
   <scm:simpleType id="C36" base="#token" variety="atomic" primitiveType="#string">
      <scm:enumeration value="#all"/>
   </scm:simpleType>
   <scm:complexType id="C299"
                    name="namedAttributeGroup"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C49"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C300"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C301"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
            <scm:edge term="C11" to="3"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C77" base="C105" variety="atomic" primitiveType="#string">
      <scm:enumeration value="restriction"/>
      <scm:enumeration value="list"/>
      <scm:enumeration value="extension"/>
      <scm:enumeration value="union"/>
   </scm:simpleType>
   <scm:complexType id="C231"
                    name="realGroup"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C84"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C56"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C61"/>
      <scm:attributeWildcard ref="C302"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C208"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C90"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C91"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
            <scm:edge term="C90" to="2"/>
            <scm:edge term="C208" to="2"/>
            <scm:edge term="C91" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C90" to="2"/>
            <scm:edge term="C208" to="2"/>
            <scm:edge term="C91" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C303"
                   name="EQNames"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="list"
                   itemType="C158"/>
   <scm:simpleType id="C304"
                   name="zero-digit"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="C305"
                   variety="atomic"
                   primitiveType="#string">
      <scm:pattern value="\p{Nd}"/>
      <scm:assert>
         <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                        test="matches(string-join(codepoints-to-string(for $i in 0 to 9                            return string-to-codepoints($value) + $i), ''), '\p{Nd}{10}')"
                        defaultNamespace=""
                        xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      </scm:assert>
      <scm:length value="1"/>
   </scm:simpleType>
   <scm:simpleType id="C306"
                   name="input-type-annotations-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="strip"/>
      <scm:enumeration value="preserve"/>
      <scm:enumeration value="unspecified"/>
   </scm:simpleType>
   <scm:complexType id="C307"
                    name="extensionType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C308"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C202"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="1" ref="C257"/>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C260"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C11" to="5"/>
            <scm:edge term="C202" to="4"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="5" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C202" to="4"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="6" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C309"
                   name="validation-strip-or-preserve"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="C310"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="strip"/>
      <scm:enumeration value="preserve"/>
   </scm:simpleType>
   <scm:complexType id="C311"
                    name="simpleRestrictionType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C255"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="true" inheritable="false" ref="C256"/>
      <scm:attributeWildcard ref="C312"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
               <scm:choice>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C258"/>
               </scm:choice>
            </scm:modelGroupParticle>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C260"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C11" to="5"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="5" final="true">
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="6" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C313"
                   name="qnameList"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="list"
                   itemType="C183"/>
   <scm:simpleType id="C314"
                   name="formChoice"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="unqualified"/>
      <scm:enumeration value="qualified"/>
   </scm:simpleType>
   <scm:simpleType id="C305"
                   name="char"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#string"
                   variety="atomic"
                   primitiveType="#string">
      <scm:length value="1"/>
   </scm:simpleType>
   <scm:complexType id="C315"
                    name="sequence-constructor-or-select"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C106"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:simpleType id="C317"
                   name="default-mode-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C158 C318"/>
   <scm:simpleType id="C319"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="interleave"/>
      <scm:enumeration value="suffix"/>
      <scm:enumeration value="none"/>
   </scm:simpleType>
   <scm:simpleType id="C320"
                   name="_spaceType"
                   base="#NCName"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="preserve"/>
      <scm:enumeration value="default"/>
   </scm:simpleType>
   <scm:simpleType id="C247"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:pattern value="Q\{.*\}\i\c*"/>
   </scm:simpleType>
   <scm:simpleType id="C318"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="#unnamed"/>
   </scm:simpleType>
   <scm:simpleType id="C321" base="#anySimpleType" variety="list" itemType="C158"/>
   <scm:simpleType id="C322"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="text"/>
      <scm:enumeration value="xhtml"/>
      <scm:enumeration value="xml"/>
      <scm:enumeration value="html"/>
   </scm:simpleType>
   <scm:simpleType id="C105"
                   name="derivationControl"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="restriction"/>
      <scm:enumeration value="substitution"/>
      <scm:enumeration value="list"/>
      <scm:enumeration value="extension"/>
      <scm:enumeration value="union"/>
   </scm:simpleType>
   <scm:simpleType id="C323"
                   name="allNNI"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#nonNegativeInteger C39"/>
   <scm:simpleType id="C168"
                   name="typeDerivationControl"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="C105"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="restriction"/>
      <scm:enumeration value="list"/>
      <scm:enumeration value="extension"/>
      <scm:enumeration value="union"/>
   </scm:simpleType>
   <scm:complexType id="C175"
                    name="simpleType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="true"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C176"/>
      <scm:attributeUse required="false" inheritable="false" ref="C324"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C179"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C180" to="1"/>
            <scm:edge term="C181" to="1"/>
            <scm:edge term="C182" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2">
            <scm:edge term="C180" to="1"/>
            <scm:edge term="C181" to="1"/>
            <scm:edge term="C182" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C325"
                    name="localComplexType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C192"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C194"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C198" default="true"/>
      <scm:attributeWildcard ref="C326"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C200"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C201" to="5"/>
            <scm:edge term="C11" to="6"/>
            <scm:edge term="C202" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="7"/>
            <scm:edge term="C206" to="5"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C208" to="1"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C205" to="7"/>
         </scm:state>
         <scm:state nr="5" final="true"/>
         <scm:state nr="6" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C201" to="5"/>
            <scm:edge term="C202" to="2"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="3"/>
            <scm:edge term="C204" to="4"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="7"/>
            <scm:edge term="C206" to="5"/>
            <scm:edge term="C207" to="4"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="7" final="true">
            <scm:edge term="C205" to="7"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C327" base="C161" variety="atomic" primitiveType="#string">
      <scm:enumeration value="final"/>
      <scm:enumeration value="private"/>
      <scm:enumeration value="public"/>
   </scm:simpleType>
   <scm:simpleType id="C223"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C158 C328 C165"/>
   <scm:simpleType id="C184"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="##defined"/>
      <scm:enumeration value="##definedSibling"/>
   </scm:simpleType>
   <scm:simpleType id="C329"
                   name="prefixes"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="list"
                   itemType="#NCName"/>
   <scm:simpleType id="C167"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="##targetNamespace"/>
      <scm:enumeration value="##defaultNamespace"/>
      <scm:enumeration value="##local"/>
   </scm:simpleType>
   <scm:complexType id="C330"
                    name="altType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C331"/>
      <scm:attributeUse required="false" inheritable="false" ref="C332"/>
      <scm:attributeUse required="false" inheritable="false" ref="C333"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C66"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C67"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C67" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C67" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C334"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="unclassified"/>
      <scm:enumeration value="absorbing"/>
      <scm:enumeration value="inspection"/>
      <scm:enumeration value="ascent"/>
      <scm:enumeration value="shallow-descent"/>
      <scm:enumeration value="filter"/>
      <scm:enumeration value="deep-descent"/>
   </scm:simpleType>
   <scm:simpleType id="C335"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="absent"/>
      <scm:enumeration value="optional"/>
      <scm:enumeration value="required"/>
   </scm:simpleType>
   <scm:simpleType id="C336"
                   name="method"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C322 C298"/>
   <scm:complexType id="C6"
                    name="annotated"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C252"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C107"
                    name="sequence-constructor"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C159"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="#unnamed"/>
      <scm:enumeration value="#default"/>
   </scm:simpleType>
   <scm:simpleType id="C337"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string"/>
   <scm:complexType id="C338"
                    name="intFacet"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C5"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C339"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C8" default="false"/>
      <scm:attributeWildcard ref="C340"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C341"
                   name="accumulator-names"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C321 C224"/>
   <scm:complexType id="C342"
                    name="numFacet"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C5"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C343"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C8" default="false"/>
      <scm:attributeWildcard ref="C344"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C328"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="*"/>
   </scm:simpleType>
   <scm:simpleType id="C345"
                   base="C323"
                   variety="union"
                   memberTypes="#nonNegativeInteger C39">
      <scm:enumeration value="0"/>
      <scm:enumeration value="1"/>
   </scm:simpleType>
   <scm:simpleType id="C310"
                   name="validation-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#token"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="lax"/>
      <scm:enumeration value="strip"/>
      <scm:enumeration value="preserve"/>
      <scm:enumeration value="strict"/>
   </scm:simpleType>
   <scm:simpleType id="C346"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="prohibited"/>
      <scm:enumeration value="optional"/>
      <scm:enumeration value="required"/>
   </scm:simpleType>
   <scm:complexType id="C96"
                    name="attribute"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C98"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C347"
                        default="optional"/>
      <scm:attributeUse required="false" inheritable="false" ref="C99"/>
      <scm:attributeUse required="false" inheritable="false" ref="C100"/>
      <scm:attributeUse required="false" inheritable="false" ref="C348"/>
      <scm:attributeUse required="false" inheritable="false" ref="C349"/>
      <scm:attributeUse required="false" inheritable="false" ref="C350"/>
      <scm:attributeUse required="false" inheritable="false" ref="C56"/>
      <scm:attributeUse required="false" inheritable="false" ref="C61"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C66"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2" final="true">
            <scm:edge term="C66" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C4" base="#token" variety="atomic" primitiveType="#string">
      <scm:enumeration value="##defined"/>
   </scm:simpleType>
   <scm:simpleType id="C351"
                   base="#NMTOKEN"
                   variety="atomic"
                   primitiveType="#string">
      <scm:enumeration value="prohibited"/>
      <scm:enumeration value="optional"/>
      <scm:enumeration value="required"/>
   </scm:simpleType>
   <scm:simpleType id="C158"
                   name="EQName"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="#NCName #QName C247"/>
   <scm:simpleType id="C352"
                   name="streamability-type"
                   targetNamespace="http://www.w3.org/1999/XSL/Transform"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C246 C334"/>
   <scm:complexType id="C14"
                    name="element-only-versioned-element-type"
                    targetNamespace="http://www.w3.org/1999/XSL/Transform"
                    base="C281"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C354"
                   name="blockSet"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="union"
                   memberTypes="C34 C160"/>
   <scm:complexType id="C355"
                    name="simpleExtensionType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C307"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="true" inheritable="false" ref="C308"/>
      <scm:attributeWildcard ref="C356"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C260"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
            <scm:edge term="C11" to="3"/>
            <scm:edge term="C205" to="4"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C205" to="4"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
            <scm:edge term="C205" to="4"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C203" to="1"/>
            <scm:edge term="C204" to="2"/>
            <scm:edge term="C207" to="2"/>
            <scm:edge term="C205" to="4"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C205" to="4"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C357"
                    name="all"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C83"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C358" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C359" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C360"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C88"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C87"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C361"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C361" to="1"/>
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C361" to="1"/>
            <scm:edge term="C87" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C361" to="1"/>
            <scm:edge term="C87" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C362"
                    name="complexRestrictionType"
                    targetNamespace="http://www.w3.org/2001/XMLSchema"
                    base="C255"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="true" inheritable="false" ref="C256"/>
      <scm:attributeWildcard ref="C363"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
               <scm:choice>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
                     <scm:sequence>
                        <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C202"/>
                        <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C257"/>
                     </scm:sequence>
                  </scm:modelGroupParticle>
               </scm:choice>
            </scm:modelGroupParticle>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C260"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C11" to="4"/>
            <scm:edge term="C202" to="5"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C205" to="6"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C202" to="5"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C203" to="2"/>
            <scm:edge term="C204" to="3"/>
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C205" to="6"/>
            <scm:edge term="C207" to="3"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="5">
            <scm:edge term="C91" to="1"/>
            <scm:edge term="C90" to="1"/>
            <scm:edge term="C89" to="1"/>
            <scm:edge term="C208" to="1"/>
         </scm:state>
         <scm:state nr="6" final="true">
            <scm:edge term="C205" to="6"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:simpleType id="C251"
                   name="basicNamespaceList"
                   targetNamespace="http://www.w3.org/2001/XMLSchema"
                   base="#anySimpleType"
                   variety="list"
                   itemType="C240"/>
   <scm:simpleType id="C364" base="C251" variety="list" itemType="C240">
      <scm:minLength value="1"/>
   </scm:simpleType>
   <scm:element id="C112"
                name="on-empty"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C315"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C113"
                name="next-match"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C365"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C366"
                name="defaultOpenContent"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C367"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C368"
                name="import"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C369"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C262"
                name="facet"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="#anyType"
                global="true"
                nillable="false"
                abstract="true"/>
   <scm:element id="C261"
                name="totalDigits"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C371"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C114"
                name="processing-instruction"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C372"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C373"
                name="attribute-set"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C374"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C180"
                name="list"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C375"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C376"
                name="merge-action"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C107"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C377"
                name="appinfo"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C378"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C379"
                name="use-package"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C380"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C115"
                name="evaluate"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C381"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C382"
                name="redefine"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C383"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C384"
                name="output"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C385"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C386"
                name="accept"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C387"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C297"
                name="field"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C388"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C370"
                name="declaration"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C209"
                global="true"
                nillable="false"
                abstract="true"/>
   <scm:element id="C116"
                name="choose"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C389"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C263"
                name="minExclusive"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C5"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C117"
                name="namespace"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C390"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C391"
                name="context-item"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C392"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C90"
                name="choice"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C83"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C118"
                name="for-each-group"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C393"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C201"
                name="simpleContent"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C394"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C395"
                name="param"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C396"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C119"
                name="apply-templates"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C397"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C72"
                name="key"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C293"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C120"
                name="map-entry"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C398"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C11"
                name="annotation"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C399"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C121"
                name="text"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C40"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C122"
                name="document"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C400"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C202"
                name="openContent"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C401"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C123"
                name="number"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C402"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C403"
                name="global-context-item"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C404"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C124"
                name="on-non-empty"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C315"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C405"
                name="element"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C186"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C70"
                name="unique"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C293"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C125"
                name="sequence"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C315"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C126"
                name="call-template"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C406"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C264"
                name="maxInclusive"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C5"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C407"
                name="merge-source"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C408"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C265"
                name="assertion"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C214"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C127"
                name="variable"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C409"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C128"
                name="for-each"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C410"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C411"
                name="schema"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C412"
                global="true"
                nillable="false"
                abstract="false">
      <scm:identityConstraint ref="C413"/>
      <scm:identityConstraint ref="C414"/>
      <scm:identityConstraint ref="C415"/>
      <scm:identityConstraint ref="C416"/>
      <scm:identityConstraint ref="C417"/>
      <scm:identityConstraint ref="C418"/>
      <scm:identityConstraint ref="C419"/>
   </scm:element>
   <scm:element id="C420"
                name="override"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C421"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C422"
                name="accumulator-rule"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C423"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C424"
                name="group"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C230"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C129"
                name="iterate"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C425"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C426"
                name="strip-space"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C427"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C130"
                name="copy"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C428"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C266"
                name="minLength"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C342"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C131"
                name="next-iteration"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C429"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C430"
                name="complexType"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C191"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C132"
                name="if"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C431"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C267"
                name="explicitTimezone"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C432"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C433"
                name="preserve-space"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C434"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C133"
                name="attribute"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C435"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C268"
                name="length"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C342"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C134"
                name="merge"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C436"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C135"
                name="try"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C437"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C203"
                name="anyAttribute"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C438"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C439"
                name="expose"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C440"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C269"
                name="pattern"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C441"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C442"
                name="on-completion"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C315"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C136"
                name="stream"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C443"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C444"
                name="character-map"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C445"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C446"
                name="mode"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C447"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C448"
                name="attributeGroup"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C299"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C449"
                name="with-param"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C450"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C91"
                name="sequence"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C83"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C451"
                name="package"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C452"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C137"
                name="apply-imports"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C453"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C454"
                name="include"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C455"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C138"
                name="map"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C107"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C456"
                name="template"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C457"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C458"
                name="decimal-format"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C459"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C460"
                name="notation"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C461"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C462"
                name="non-matching-substring"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C107"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C463"
                name="documentation"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C464"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C465"
                name="import-schema"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C466"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C181"
                name="union"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C467"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C139"
                name="result-document"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C468"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C140"
                name="break"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C315"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C270"
                name="maxExclusive"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C5"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C141"
                name="merge-key"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C469"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C142"
                name="value-of"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C470"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C143"
                name="fallback"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C107"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C182"
                name="restriction"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C471"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C472"
                name="accumulator"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C473"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C271"
                name="fractionDigits"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C342"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C474"
                name="include"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C475"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C144"
                name="literal-result-element"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="#anyType"
                global="true"
                nillable="false"
                abstract="true"/>
   <scm:element id="C145"
                name="where-populated"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C107"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C146"
                name="comment"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C315"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C272"
                name="minInclusive"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C5"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C476"
                name="namespace-alias"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C477"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C206"
                name="complexContent"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C478"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C479"
                name="function"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C480"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C481"
                name="simpleType"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C174"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C147"
                name="perform-sort"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C482"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C148"
                name="assert"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C483"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C71"
                name="keyref"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C484"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C485"
                name="matching-substring"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C107"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C87"
                name="any"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C486"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C487"
                name="transform"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C488"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C149"
                name="element"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C489"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C490"
                name="override"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C491"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C492"
                name="otherwise"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C107"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C273"
                name="enumeration"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C290"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C274"
                name="whiteSpace"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C493"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C494"
                name="sort"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C495"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C150"
                name="instruction"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C281"
                global="true"
                nillable="false"
                abstract="true"/>
   <scm:element id="C496"
                name="catch"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C497"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C275"
                name="maxLength"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C342"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C262"/>
   </scm:element>
   <scm:element id="C151"
                name="message"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C498"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C499"
                name="when"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C500"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C501"
                name="attribute"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C95"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C152"
                name="fork"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C502"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C296"
                name="selector"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C503"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C504"
                name="output-character"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C505"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C153"
                name="analyze-string"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C506"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:element id="C507"
                name="import"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C508"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C509"
                name="key"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C510"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C370"/>
   </scm:element>
   <scm:element id="C208"
                name="all"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C357"
                global="true"
                nillable="false"
                abstract="false"/>
   <scm:element id="C511"
                name="stylesheet"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C488"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C487"/>
   </scm:element>
   <scm:element id="C154"
                name="copy-of"
                targetNamespace="http://www.w3.org/1999/XSL/Transform"
                type="C512"
                global="true"
                nillable="false"
                abstract="false">
      <scm:substitutionGroupAffiliation ref="C150"/>
   </scm:element>
   <scm:attribute id="C513"
                  name="lang"
                  targetNamespace="http://www.w3.org/XML/1998/namespace"
                  type="C237"
                  global="true"
                  inheritable="false"/>
   <scm:attribute id="C514"
                  name="space"
                  targetNamespace="http://www.w3.org/XML/1998/namespace"
                  type="C320"
                  global="true"
                  inheritable="false"/>
   <scm:attribute id="C515"
                  name="id"
                  targetNamespace="http://www.w3.org/XML/1998/namespace"
                  type="#ID"
                  global="true"
                  inheritable="false"/>
   <scm:attribute id="C516"
                  name="base"
                  targetNamespace="http://www.w3.org/XML/1998/namespace"
                  type="#anyURI"
                  global="true"
                  inheritable="false"/>
   <scm:modelGroupDefinition id="C258"
                             name="simpleRestrictionModel"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C66"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C262"/>
                  <scm:elementWildcard minOccurs="1" maxOccurs="1" ref="C276"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C218"
                             name="particle"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C88"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C89"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C208"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C90"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C91"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C87"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C86"
                             name="nestedParticle"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C88"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C89"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C90"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C91"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C87"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C111"
                             name="sequence-constructor-group"
                             targetNamespace="http://www.w3.org/1999/XSL/Transform">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C150"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C517"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C517"
                             name="result-elements"
                             targetNamespace="http://www.w3.org/1999/XSL/Transform">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C144"/>
            <scm:elementWildcard minOccurs="1" maxOccurs="1" ref="C155"/>
            <scm:elementWildcard minOccurs="1" maxOccurs="1" ref="C156"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C518"
                             name="redefinable"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C481"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C430"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C424"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C448"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C179"
                             name="simpleDerivation"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C182"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C180"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C181"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C260"
                             name="assertions"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C205"/>
         </scm:sequence>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C259"
                             name="attrDecls"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C207"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C204"/>
               </scm:choice>
            </scm:modelGroupParticle>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C203"/>
         </scm:sequence>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C257"
                             name="typeDefParticle"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C89"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C208"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C90"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C91"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C519"
                             name="schemaTop"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C518"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C405"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C501"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C460"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C520"
                             name="composition"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C454"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C507"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C382"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C490"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C11"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C69"
                             name="identityConstraint"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C70"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C72"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C71"/>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C200"
                             name="complexTypeModel"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C201"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C206"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C202"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="1" ref="C257"/>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C259"/>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C260"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:choice>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:modelGroupDefinition id="C521"
                             name="allModel"
                             targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C88"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C87"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C361"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
   </scm:modelGroupDefinition>
   <scm:attributeGroup id="C522"
                       name="literal-result-element-attributes"
                       targetNamespace="http://www.w3.org/1999/XSL/Transform">
      <scm:attributeUse required="false" inheritable="false" ref="C523"/>
      <scm:attributeUse required="false" inheritable="false" ref="C524"/>
      <scm:attributeUse required="false" inheritable="false" ref="C525" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C526"/>
      <scm:attributeUse required="false" inheritable="false" ref="C527"/>
      <scm:attributeUse required="false" inheritable="false" ref="C528"/>
      <scm:attributeUse required="false" inheritable="false" ref="C529"/>
      <scm:attributeUse required="false" inheritable="false" ref="C530" default="yes"/>
      <scm:attributeUse required="false" inheritable="false" ref="C531" default=""/>
      <scm:attributeUse required="false" inheritable="false" ref="C532"/>
      <scm:attributeUse required="false" inheritable="false" ref="C533"/>
      <scm:attributeUse required="false" inheritable="false" ref="C534"/>
      <scm:attributeUse required="false" inheritable="false" ref="C535"/>
   </scm:attributeGroup>
   <scm:attributeGroup id="C536"
                       name="defRef"
                       targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:attributeUse required="false" inheritable="false" ref="C56"/>
      <scm:attributeUse required="false" inheritable="false" ref="C61"/>
   </scm:attributeGroup>
   <scm:attributeGroup id="C537"
                       name="occurs"
                       targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
   </scm:attributeGroup>
   <scm:attributeGroup id="C538"
                       name="anyAttrGroup"
                       targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:attributeUse required="false" inheritable="false" ref="C285"/>
      <scm:attributeUse required="false" inheritable="false" ref="C286"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C287"
                        default="strict"/>
   </scm:attributeGroup>
   <scm:notation id="C539"
                 name="XMLSchemaStructures"
                 targetNamespace="http://www.w3.org/2001/XMLSchema"
                 publicId="structures"
                 systemId="http://www.w3.org/2000/08/XMLSchema.xsd"/>
   <scm:notation id="C540"
                 name="XML"
                 targetNamespace="http://www.w3.org/2001/XMLSchema"
                 publicId="REC-xml-19980210"
                 systemId="http://www.w3.org/TR/1998/REC-xml-19980210"/>
   <scm:complexType id="C440"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C541"/>
      <scm:attributeUse required="false" inheritable="false" ref="C542"/>
      <scm:attributeUse required="false" inheritable="false" ref="C543"/>
      <scm:attributeUse required="false" inheritable="false" ref="C544"/>
      <scm:attributeUse required="false" inheritable="false" ref="C545"/>
      <scm:attributeUse required="false" inheritable="false" ref="C546"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C464"
                    base="#anyType"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C547"/>
      <scm:attributeUse required="false" inheritable="false" ref="C513"/>
      <scm:attributeWildcard ref="C548"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:sequence>
            <scm:elementWildcard minOccurs="1" maxOccurs="1" ref="C549"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C549" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C549" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:wildcard id="C199"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:wildcard id="C312"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:complexType id="C387"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C550"/>
      <scm:attributeUse required="false" inheritable="false" ref="C551"/>
      <scm:attributeUse required="false" inheritable="false" ref="C552"/>
      <scm:attributeUse required="false" inheritable="false" ref="C553"/>
      <scm:attributeUse required="false" inheritable="false" ref="C554"/>
      <scm:attributeUse required="false" inheritable="false" ref="C555"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@visibility | @_visibility)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@names | @_names)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@component | @_component)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:element id="C235"
                name="choice"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C253"
                global="false"
                containingComplexType="C230"
                nillable="false"
                abstract="false"/>
   <scm:complexType id="C434"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C556"/>
      <scm:attributeUse required="false" inheritable="false" ref="C557"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@elements | @_elements)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:key id="C419"
            name="identityConstraint"
            targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:selector xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xpath=".//xs:key|.//xs:unique|.//xs:keyref"
                    defaultNamespace=""/>
      <scm:field xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xpath="@name"
                 defaultNamespace=""/>
   </scm:key>
   <scm:complexType id="C495"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C558"/>
      <scm:attributeUse required="false" inheritable="false" ref="C559" default="text"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C560"
                        default="ascending"/>
      <scm:attributeUse required="false" inheritable="false" ref="C561"/>
      <scm:attributeUse required="false" inheritable="false" ref="C562"/>
      <scm:attributeUse required="false" inheritable="false" ref="C563"/>
      <scm:attributeUse required="false" inheritable="false" ref="C564"/>
      <scm:attributeUse required="false" inheritable="false" ref="C565"/>
      <scm:attributeUse required="false" inheritable="false" ref="C566"/>
      <scm:attributeUse required="false" inheritable="false" ref="C567"/>
      <scm:attributeUse required="false" inheritable="false" ref="C568"/>
      <scm:attributeUse required="false" inheritable="false" ref="C569"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C568"
                  name="_collation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C558"
                  name="lang"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C17"
                  name="_default-validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:wildcard id="C245"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:wildcard id="C301"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:complexType id="C502"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C143"/>
                  <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
                     <scm:choice>
                        <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
                           <scm:sequence>
                              <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C125"/>
                              <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C143"/>
                           </scm:sequence>
                        </scm:modelGroupParticle>
                        <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
                           <scm:sequence>
                              <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C118"/>
                              <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C143"/>
                           </scm:sequence>
                        </scm:modelGroupParticle>
                     </scm:choice>
                  </scm:modelGroupParticle>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C143" to="2"/>
            <scm:edge term="C118" to="3"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C143" to="5"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C143" to="2"/>
            <scm:edge term="C118" to="3"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C143" to="4"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C143" to="4"/>
         </scm:state>
         <scm:state nr="5" final="true">
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C143" to="5"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C468"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C570"/>
      <scm:attributeUse required="false" inheritable="false" ref="C571"/>
      <scm:attributeUse required="false" inheritable="false" ref="C572"/>
      <scm:attributeUse required="false" inheritable="false" ref="C573"/>
      <scm:attributeUse required="false" inheritable="false" ref="C574"/>
      <scm:attributeUse required="false" inheritable="false" ref="C575"/>
      <scm:attributeUse required="false" inheritable="false" ref="C576"/>
      <scm:attributeUse required="false" inheritable="false" ref="C577"/>
      <scm:attributeUse required="false" inheritable="false" ref="C578"/>
      <scm:attributeUse required="false" inheritable="false" ref="C579"/>
      <scm:attributeUse required="false" inheritable="false" ref="C580"/>
      <scm:attributeUse required="false" inheritable="false" ref="C581"/>
      <scm:attributeUse required="false" inheritable="false" ref="C582"/>
      <scm:attributeUse required="false" inheritable="false" ref="C583"/>
      <scm:attributeUse required="false" inheritable="false" ref="C584"/>
      <scm:attributeUse required="false" inheritable="false" ref="C585"/>
      <scm:attributeUse required="false" inheritable="false" ref="C586"/>
      <scm:attributeUse required="false" inheritable="false" ref="C587"/>
      <scm:attributeUse required="false" inheritable="false" ref="C588"/>
      <scm:attributeUse required="false" inheritable="false" ref="C589"/>
      <scm:attributeUse required="false" inheritable="false" ref="C590"/>
      <scm:attributeUse required="false" inheritable="false" ref="C591"/>
      <scm:attributeUse required="false" inheritable="false" ref="C592"/>
      <scm:attributeUse required="false" inheritable="false" ref="C593"/>
      <scm:attributeUse required="false" inheritable="false" ref="C594"/>
      <scm:attributeUse required="false" inheritable="false" ref="C595"/>
      <scm:attributeUse required="false" inheritable="false" ref="C596"/>
      <scm:attributeUse required="false" inheritable="false" ref="C597"/>
      <scm:attributeUse required="false" inheritable="false" ref="C598"/>
      <scm:attributeUse required="false" inheritable="false" ref="C599"/>
      <scm:attributeUse required="false" inheritable="false" ref="C600"/>
      <scm:attributeUse required="false" inheritable="false" ref="C601"/>
      <scm:attributeUse required="false" inheritable="false" ref="C602"/>
      <scm:attributeUse required="false" inheritable="false" ref="C603"/>
      <scm:attributeUse required="false" inheritable="false" ref="C604"/>
      <scm:attributeUse required="false" inheritable="false" ref="C605"/>
      <scm:attributeUse required="false" inheritable="false" ref="C606"/>
      <scm:attributeUse required="false" inheritable="false" ref="C607"/>
      <scm:attributeUse required="false" inheritable="false" ref="C608"/>
      <scm:attributeUse required="false" inheritable="false" ref="C609"/>
      <scm:attributeUse required="false" inheritable="false" ref="C610"/>
      <scm:attributeUse required="false" inheritable="false" ref="C611"/>
      <scm:attributeUse required="false" inheritable="false" ref="C612"/>
      <scm:attributeUse required="false" inheritable="false" ref="C613"/>
      <scm:attributeUse required="false" inheritable="false" ref="C614"/>
      <scm:attributeUse required="false" inheritable="false" ref="C615"/>
      <scm:attributeUse required="false" inheritable="false" ref="C616"/>
      <scm:attributeUse required="false" inheritable="false" ref="C617"/>
      <scm:attributeUse required="false" inheritable="false" ref="C618"/>
      <scm:attributeUse required="false" inheritable="false" ref="C619"/>
      <scm:attributeUse required="false" inheritable="false" ref="C620"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@type) and exists(@validation))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C617"
                  name="_suppress-indentation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C581"
                  name="encoding"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C602"
                  name="_byte-order-mark"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C580"
                  name="doctype-system"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C24"
                  name="use-when"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C586"
                  name="item-separator"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C566"
                  name="_order"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C603"
                  name="_cdata-section-elements"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C394"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C621"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C622"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C622" to="1"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C621" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2">
            <scm:edge term="C622" to="1"/>
            <scm:edge term="C621" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C533"
                  name="version"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="#decimal"
                  global="false"
                  inheritable="false"/>
   <scm:complexType id="C432"
                    base="C5"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C623"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C8" default="false"/>
      <scm:attributeWildcard ref="C624"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C585"
                  name="indent"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C619"
                  name="_use-character-maps"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:wildcard id="C302"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:wildcard id="C360"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C599"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C557"
                  name="_elements"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C434"/>
   <scm:attribute id="C588"
                  name="media-type"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:element id="C622"
                name="extension"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C355"
                global="false"
                containingComplexType="C394"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C295"
                  name="ref"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C293"/>
   <scm:complexType id="C400"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C625"/>
      <scm:attributeUse required="false" inheritable="false" ref="C626"/>
      <scm:attributeUse required="false" inheritable="false" ref="C627"/>
      <scm:attributeUse required="false" inheritable="false" ref="C628"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@type) and exists(@validation))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C628"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C400"/>
   <scm:complexType id="C367"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C629" default="false"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C630"
                        default="interleave"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C631"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C631" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2">
            <scm:edge term="C631" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C300"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C299"/>
   <scm:complexType id="C484"
                    base="C293"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C632"/>
      <scm:attributeUse required="false" inheritable="false" ref="C294"/>
      <scm:attributeUse required="false" inheritable="false" ref="C295"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
                     <scm:sequence>
                        <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C296"/>
                        <scm:elementParticle minOccurs="1" maxOccurs="unbounded" ref="C297"/>
                     </scm:sequence>
                  </scm:modelGroupParticle>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C296" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1">
            <scm:edge term="C297" to="3"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C296" to="1"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C297" to="4"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C297" to="4"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C574"
                  name="method"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C43"
                  name="disable-output-escaping"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C40"/>
   <scm:attribute id="C550"
                  name="component"
                  type="C225"
                  global="false"
                  inheritable="false"
                  containingComplexType="C387"/>
   <scm:element id="C68"
                name="alternative"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C330"
                global="false"
                containingComplexType="C52"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C625"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C400"/>
   <scm:attribute id="C28"
                  name="exclude-result-prefixes"
                  type="C73"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C170"
                  name="substitutionGroup"
                  type="C248"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C350"
                  name="inheritable"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C96"/>
   <scm:attribute id="C57"
                  name="maxOccurs"
                  type="C323"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C604"
                  name="_doctype-public"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C482"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C633"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="1" maxOccurs="unbounded" ref="C494"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C494" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="2"/>
            <scm:edge term="C113" to="2"/>
            <scm:edge term="C114" to="2"/>
            <scm:edge term="C115" to="2"/>
            <scm:edge term="C116" to="2"/>
            <scm:edge term="C117" to="2"/>
            <scm:edge term="C118" to="2"/>
            <scm:edge term="C119" to="2"/>
            <scm:edge term="C120" to="2"/>
            <scm:edge term="C121" to="2"/>
            <scm:edge term="C122" to="2"/>
            <scm:edge term="C123" to="2"/>
            <scm:edge term="C124" to="2"/>
            <scm:edge term="C125" to="2"/>
            <scm:edge term="C126" to="2"/>
            <scm:edge term="C127" to="2"/>
            <scm:edge term="C128" to="2"/>
            <scm:edge term="C129" to="2"/>
            <scm:edge term="C130" to="2"/>
            <scm:edge term="C131" to="2"/>
            <scm:edge term="C132" to="2"/>
            <scm:edge term="C133" to="2"/>
            <scm:edge term="C134" to="2"/>
            <scm:edge term="C135" to="2"/>
            <scm:edge term="C136" to="2"/>
            <scm:edge term="C137" to="2"/>
            <scm:edge term="C138" to="2"/>
            <scm:edge term="C139" to="2"/>
            <scm:edge term="C140" to="2"/>
            <scm:edge term="C141" to="2"/>
            <scm:edge term="C142" to="2"/>
            <scm:edge term="C143" to="2"/>
            <scm:edge term="C144" to="2"/>
            <scm:edge term="C145" to="2"/>
            <scm:edge term="C146" to="2"/>
            <scm:edge term="C147" to="2"/>
            <scm:edge term="C148" to="2"/>
            <scm:edge term="C149" to="2"/>
            <scm:edge term="C150" to="2"/>
            <scm:edge term="C494" to="3"/>
            <scm:edge term="C151" to="2"/>
            <scm:edge term="C152" to="2"/>
            <scm:edge term="C153" to="2"/>
            <scm:edge term="C154" to="2"/>
            <scm:edge term="C155" to="2"/>
            <scm:edge term="C156" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C112" to="2"/>
            <scm:edge term="C113" to="2"/>
            <scm:edge term="C114" to="2"/>
            <scm:edge term="C115" to="2"/>
            <scm:edge term="C116" to="2"/>
            <scm:edge term="C117" to="2"/>
            <scm:edge term="C118" to="2"/>
            <scm:edge term="C119" to="2"/>
            <scm:edge term="C120" to="2"/>
            <scm:edge term="C121" to="2"/>
            <scm:edge term="C122" to="2"/>
            <scm:edge term="C123" to="2"/>
            <scm:edge term="C124" to="2"/>
            <scm:edge term="C125" to="2"/>
            <scm:edge term="C126" to="2"/>
            <scm:edge term="C127" to="2"/>
            <scm:edge term="C128" to="2"/>
            <scm:edge term="C129" to="2"/>
            <scm:edge term="C130" to="2"/>
            <scm:edge term="C131" to="2"/>
            <scm:edge term="C132" to="2"/>
            <scm:edge term="C133" to="2"/>
            <scm:edge term="C134" to="2"/>
            <scm:edge term="C135" to="2"/>
            <scm:edge term="C136" to="2"/>
            <scm:edge term="C137" to="2"/>
            <scm:edge term="C138" to="2"/>
            <scm:edge term="C139" to="2"/>
            <scm:edge term="C140" to="2"/>
            <scm:edge term="C141" to="2"/>
            <scm:edge term="C142" to="2"/>
            <scm:edge term="C143" to="2"/>
            <scm:edge term="C144" to="2"/>
            <scm:edge term="C145" to="2"/>
            <scm:edge term="C146" to="2"/>
            <scm:edge term="C147" to="2"/>
            <scm:edge term="C148" to="2"/>
            <scm:edge term="C149" to="2"/>
            <scm:edge term="C150" to="2"/>
            <scm:edge term="C151" to="2"/>
            <scm:edge term="C152" to="2"/>
            <scm:edge term="C153" to="2"/>
            <scm:edge term="C154" to="2"/>
            <scm:edge term="C155" to="2"/>
            <scm:edge term="C156" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C112" to="2"/>
            <scm:edge term="C113" to="2"/>
            <scm:edge term="C114" to="2"/>
            <scm:edge term="C115" to="2"/>
            <scm:edge term="C116" to="2"/>
            <scm:edge term="C117" to="2"/>
            <scm:edge term="C118" to="2"/>
            <scm:edge term="C119" to="2"/>
            <scm:edge term="C120" to="2"/>
            <scm:edge term="C121" to="2"/>
            <scm:edge term="C122" to="2"/>
            <scm:edge term="C123" to="2"/>
            <scm:edge term="C124" to="2"/>
            <scm:edge term="C125" to="2"/>
            <scm:edge term="C126" to="2"/>
            <scm:edge term="C127" to="2"/>
            <scm:edge term="C128" to="2"/>
            <scm:edge term="C129" to="2"/>
            <scm:edge term="C130" to="2"/>
            <scm:edge term="C131" to="2"/>
            <scm:edge term="C132" to="2"/>
            <scm:edge term="C133" to="2"/>
            <scm:edge term="C134" to="2"/>
            <scm:edge term="C135" to="2"/>
            <scm:edge term="C136" to="2"/>
            <scm:edge term="C137" to="2"/>
            <scm:edge term="C138" to="2"/>
            <scm:edge term="C139" to="2"/>
            <scm:edge term="C140" to="2"/>
            <scm:edge term="C141" to="2"/>
            <scm:edge term="C142" to="2"/>
            <scm:edge term="C143" to="2"/>
            <scm:edge term="C144" to="2"/>
            <scm:edge term="C145" to="2"/>
            <scm:edge term="C146" to="2"/>
            <scm:edge term="C147" to="2"/>
            <scm:edge term="C148" to="2"/>
            <scm:edge term="C149" to="2"/>
            <scm:edge term="C150" to="2"/>
            <scm:edge term="C494" to="3"/>
            <scm:edge term="C151" to="2"/>
            <scm:edge term="C152" to="2"/>
            <scm:edge term="C153" to="2"/>
            <scm:edge term="C154" to="2"/>
            <scm:edge term="C155" to="2"/>
            <scm:edge term="C156" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in subsequence(xsl:sort, 2) satisfies empty($e/@stable)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C527"
                  name="extension-element-prefixes"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C329"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C543"
                  name="visibility"
                  type="C221"
                  global="false"
                  inheritable="false"
                  containingComplexType="C440"/>
   <scm:attribute id="C610"
                  name="_indent"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C590"
                  name="omit-xml-declaration"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C587"
                  name="json-node-output-method"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:wildcard id="C51"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:complexType id="C428"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C634"/>
      <scm:attributeUse required="false" inheritable="false" ref="C635" default="yes"/>
      <scm:attributeUse required="false" inheritable="false" ref="C636" default="yes"/>
      <scm:attributeUse required="false" inheritable="false" ref="C637" default=""/>
      <scm:attributeUse required="false" inheritable="false" ref="C638"/>
      <scm:attributeUse required="false" inheritable="false" ref="C639"/>
      <scm:attributeUse required="false" inheritable="false" ref="C640"/>
      <scm:attributeUse required="false" inheritable="false" ref="C641"/>
      <scm:attributeUse required="false" inheritable="false" ref="C642"/>
      <scm:attributeUse required="false" inheritable="false" ref="C643"/>
      <scm:attributeUse required="false" inheritable="false" ref="C644"/>
      <scm:attributeUse required="false" inheritable="false" ref="C645"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@type) and exists(@validation))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C645"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C638"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C636"
                  name="inherit-namespaces"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C576"
                  name="build-tree"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C399"
                    base="C252"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C646"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C377"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C463"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C377" to="1"/>
            <scm:edge term="C463" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C377" to="1"/>
            <scm:edge term="C463" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C584"
                  name="include-content-type"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C646"
                  name="id"
                  type="#ID"
                  global="false"
                  inheritable="false"
                  containingComplexType="C399"/>
   <scm:attribute id="C30"
                  name="_default-collation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:complexType id="C385"
                    base="C209"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C647"/>
      <scm:attributeUse required="false" inheritable="false" ref="C648"/>
      <scm:attributeUse required="false" inheritable="false" ref="C649"/>
      <scm:attributeUse required="false" inheritable="false" ref="C650"/>
      <scm:attributeUse required="false" inheritable="false" ref="C651"/>
      <scm:attributeUse required="false" inheritable="false" ref="C652"/>
      <scm:attributeUse required="false" inheritable="false" ref="C653"/>
      <scm:attributeUse required="false" inheritable="false" ref="C654"/>
      <scm:attributeUse required="false" inheritable="false" ref="C655"/>
      <scm:attributeUse required="false" inheritable="false" ref="C656"/>
      <scm:attributeUse required="false" inheritable="false" ref="C657"/>
      <scm:attributeUse required="false" inheritable="false" ref="C658"/>
      <scm:attributeUse required="false" inheritable="false" ref="C659"/>
      <scm:attributeUse required="false" inheritable="false" ref="C660"/>
      <scm:attributeUse required="false" inheritable="false" ref="C661"/>
      <scm:attributeUse required="false" inheritable="false" ref="C662"/>
      <scm:attributeUse required="false" inheritable="false" ref="C663"/>
      <scm:attributeUse required="false" inheritable="false" ref="C664"/>
      <scm:attributeUse required="false" inheritable="false" ref="C665"/>
      <scm:attributeUse required="false" inheritable="false" ref="C666"/>
      <scm:attributeUse required="false" inheritable="false" ref="C667"/>
      <scm:attributeUse required="false" inheritable="false" ref="C668"/>
      <scm:attributeUse required="false" inheritable="false" ref="C669"/>
      <scm:attributeUse required="false" inheritable="false" ref="C670"/>
      <scm:attributeUse required="false" inheritable="false" ref="C671"/>
      <scm:attributeUse required="false" inheritable="false" ref="C672"/>
      <scm:attributeUse required="false" inheritable="false" ref="C673"/>
      <scm:attributeUse required="false" inheritable="false" ref="C674"/>
      <scm:attributeUse required="false" inheritable="false" ref="C675"/>
      <scm:attributeUse required="false" inheritable="false" ref="C676"/>
      <scm:attributeUse required="false" inheritable="false" ref="C677"/>
      <scm:attributeUse required="false" inheritable="false" ref="C678"/>
      <scm:attributeUse required="false" inheritable="false" ref="C679"/>
      <scm:attributeUse required="false" inheritable="false" ref="C680"/>
      <scm:attributeUse required="false" inheritable="false" ref="C681"/>
      <scm:attributeUse required="false" inheritable="false" ref="C682"/>
      <scm:attributeUse required="false" inheritable="false" ref="C683"/>
      <scm:attributeUse required="false" inheritable="false" ref="C684"/>
      <scm:attributeUse required="false" inheritable="false" ref="C685"/>
      <scm:attributeUse required="false" inheritable="false" ref="C686"/>
      <scm:attributeUse required="false" inheritable="false" ref="C687"/>
      <scm:attributeUse required="false" inheritable="false" ref="C688"/>
      <scm:attributeUse required="false" inheritable="false" ref="C689"/>
      <scm:attributeUse required="false" inheritable="false" ref="C690"/>
      <scm:attributeUse required="false" inheritable="false" ref="C691"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C658"
                  name="include-content-type"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C672"
                  name="_method"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C647"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C675"
                  name="_doctype-public"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C666"
                  name="standalone"
                  type="C226"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C664"
                  name="omit-xml-declaration"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C680"
                  name="_include-content-type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C659"
                  name="indent"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C661"
                  name="json-node-output-method"
                  type="C336"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C648"
                  name="method"
                  type="C336"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C685"
                  name="_omit-xml-declaration"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:wildcard id="C110"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:attribute id="C308"
                  name="base"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C307"/>
   <scm:complexType id="C453"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C449"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C449" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C449" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C571"
                  name="href"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C375"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C692"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C66"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2" final="true">
            <scm:edge term="C66" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:wildcard id="C178"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C633"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C482"/>
   <scm:attribute id="C639"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C44"
                  name="_disable-output-escaping"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C40"/>
   <scm:attribute id="C193"
                  name="final"
                  type="C35"
                  global="false"
                  inheritable="false"
                  containingComplexType="C192"/>
   <scm:attribute id="C23"
                  name="_expand-text"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C611"
                  name="_item-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:wildcard id="C65"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:wildcard id="C280" processContents="lax" constraint="any"/>
   <scm:wildcard id="C155"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:attribute id="C643"
                  name="_use-attribute-sets"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:complexType id="C371"
                    base="C342"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C693"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C8" default="false"/>
      <scm:attributeWildcard ref="C694"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C551"
                  name="names"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C387"/>
   <scm:attribute id="C541"
                  name="component"
                  type="C225"
                  global="false"
                  inheritable="false"
                  containingComplexType="C440"/>
   <scm:attribute id="C681"
                  name="_indent"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:complexType id="C437"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C695" default="yes"/>
      <scm:attributeUse required="false" inheritable="false" ref="C696"/>
      <scm:attributeUse required="false" inheritable="false" ref="C697"/>
      <scm:attributeUse required="false" inheritable="false" ref="C698"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C496"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
                     <scm:choice>
                        <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C496"/>
                        <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C143"/>
                     </scm:choice>
                  </scm:modelGroupParticle>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C496" to="2"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C496" to="2"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C496" to="3"/>
            <scm:edge term="C143" to="3"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C496" to="3"/>
            <scm:edge term="C143" to="3"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C696"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C437"/>
   <scm:complexType id="C380"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C699"/>
      <scm:attributeUse required="false" inheritable="false" ref="C700"/>
      <scm:attributeUse required="false" inheritable="false" ref="C701"/>
      <scm:attributeUse required="false" inheritable="false" ref="C702"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C386"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C420"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C386" to="1"/>
            <scm:edge term="C420" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C386" to="1"/>
            <scm:edge term="C420" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C699"
                  name="name"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C380"/>
   <scm:attribute id="C653"
                  name="doctype-public"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C597"
                  name="_format"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C642"
                  name="_inherit-namespaces"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:complexType id="C398"
                    base="C106"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C703"/>
      <scm:attributeUse required="false" inheritable="false" ref="C704"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@key | @_key)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C704"
                  name="_key"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C398"/>
   <scm:attribute id="C544"
                  name="_component"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C440"/>
   <scm:attribute id="C595"
                  name="use-character-maps"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C396"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C705"/>
      <scm:attributeUse required="false" inheritable="false" ref="C706"/>
      <scm:attributeUse required="false" inheritable="false" ref="C707"/>
      <scm:attributeUse required="false" inheritable="false" ref="C708"/>
      <scm:attributeUse required="false" inheritable="false" ref="C709"/>
      <scm:attributeUse required="false" inheritable="false" ref="C710"/>
      <scm:attributeUse required="false" inheritable="false" ref="C711"/>
      <scm:attributeUse required="false" inheritable="false" ref="C712"/>
      <scm:attributeUse required="false" inheritable="false" ref="C713"/>
      <scm:attributeUse required="false" inheritable="false" ref="C714"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="if (normalize-space(@static) = 'yes')                            then empty((*,text()))                            else true()"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C706"
                  name="as"
                  type="C80"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:attribute id="C711"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:attribute id="C714"
                  name="_static"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:complexType id="C452"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C715"/>
      <scm:attributeUse required="false" inheritable="false" ref="C716"/>
      <scm:attributeUse required="false" inheritable="false" ref="C717"/>
      <scm:attributeUse required="false" inheritable="false" ref="C718"/>
      <scm:attributeUse required="false" inheritable="false" ref="C719"/>
      <scm:attributeUse required="false" inheritable="false" ref="C720"/>
      <scm:attributeUse required="false" inheritable="false" ref="C721"/>
      <scm:attributeUse required="false" inheritable="false" ref="C722"/>
      <scm:attributeUse required="false" inheritable="false" ref="C723"/>
      <scm:attributeUse required="false" inheritable="false" ref="C724"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C439"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C370"/>
            <scm:elementWildcard minOccurs="1" maxOccurs="1" ref="C725"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C368" to="1"/>
            <scm:edge term="C373" to="1"/>
            <scm:edge term="C379" to="1"/>
            <scm:edge term="C384" to="1"/>
            <scm:edge term="C370" to="1"/>
            <scm:edge term="C395" to="1"/>
            <scm:edge term="C403" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C426" to="1"/>
            <scm:edge term="C433" to="1"/>
            <scm:edge term="C439" to="1"/>
            <scm:edge term="C444" to="1"/>
            <scm:edge term="C446" to="1"/>
            <scm:edge term="C456" to="1"/>
            <scm:edge term="C458" to="1"/>
            <scm:edge term="C465" to="1"/>
            <scm:edge term="C472" to="1"/>
            <scm:edge term="C474" to="1"/>
            <scm:edge term="C476" to="1"/>
            <scm:edge term="C479" to="1"/>
            <scm:edge term="C509" to="1"/>
            <scm:edge term="C725" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C368" to="1"/>
            <scm:edge term="C373" to="1"/>
            <scm:edge term="C379" to="1"/>
            <scm:edge term="C384" to="1"/>
            <scm:edge term="C370" to="1"/>
            <scm:edge term="C395" to="1"/>
            <scm:edge term="C403" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C426" to="1"/>
            <scm:edge term="C433" to="1"/>
            <scm:edge term="C439" to="1"/>
            <scm:edge term="C444" to="1"/>
            <scm:edge term="C446" to="1"/>
            <scm:edge term="C456" to="1"/>
            <scm:edge term="C458" to="1"/>
            <scm:edge term="C465" to="1"/>
            <scm:edge term="C472" to="1"/>
            <scm:edge term="C474" to="1"/>
            <scm:edge term="C476" to="1"/>
            <scm:edge term="C479" to="1"/>
            <scm:edge term="C509" to="1"/>
            <scm:edge term="C725" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C719"
                  name="input-type-annotations"
                  type="C306"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:attribute id="C718"
                  name="package-version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:attribute id="C717"
                  name="name"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:complexType id="C445"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C726"/>
      <scm:attributeUse required="false" inheritable="false" ref="C727" default=""/>
      <scm:attributeUse required="false" inheritable="false" ref="C728"/>
      <scm:attributeUse required="false" inheritable="false" ref="C729"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C504"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C504" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C504" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C728"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C445"/>
   <scm:attribute id="C727"
                  name="use-character-maps"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C445"/>
   <scm:attribute id="C729"
                  name="_use-character-maps"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C445"/>
   <scm:complexType id="C500"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C730"/>
      <scm:attributeUse required="false" inheritable="false" ref="C731"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@test | @_test)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:element id="C88"
                name="element"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C52"
                global="false"
                nillable="false"
                abstract="false"/>
   <scm:wildcard id="C33"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:attribute id="C720"
                  name="_declared-modes"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:complexType id="C469"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C732"/>
      <scm:attributeUse required="false" inheritable="false" ref="C733"/>
      <scm:attributeUse required="false" inheritable="false" ref="C734"/>
      <scm:attributeUse required="false" inheritable="false" ref="C735"/>
      <scm:attributeUse required="false" inheritable="false" ref="C736"/>
      <scm:attributeUse required="false" inheritable="false" ref="C737"/>
      <scm:attributeUse required="false" inheritable="false" ref="C738"/>
      <scm:attributeUse required="false" inheritable="false" ref="C739"/>
      <scm:attributeUse required="false" inheritable="false" ref="C740"/>
      <scm:attributeUse required="false" inheritable="false" ref="C741"/>
      <scm:attributeUse required="false" inheritable="false" ref="C742"/>
      <scm:attributeUse required="false" inheritable="false" ref="C743"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C732"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C743"
                  name="_data-type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C742"
                  name="_case-order"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:complexType id="C470"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C744"/>
      <scm:attributeUse required="false" inheritable="false" ref="C745" default="no"/>
      <scm:attributeUse required="false" inheritable="false" ref="C746"/>
      <scm:attributeUse required="false" inheritable="false" ref="C747"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C349"
                  name="targetNamespace"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C96"/>
   <scm:attribute id="C697"
                  name="_rollback-output"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C437"/>
   <scm:element id="C205"
                name="assert"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C214"
                global="false"
                nillable="false"
                abstract="false"/>
   <scm:complexType id="C388"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C748"/>
      <scm:attributeUse required="false" inheritable="false" ref="C749"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C435"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C750"/>
      <scm:attributeUse required="false" inheritable="false" ref="C751"/>
      <scm:attributeUse required="false" inheritable="false" ref="C752"/>
      <scm:attributeUse required="false" inheritable="false" ref="C753"/>
      <scm:attributeUse required="false" inheritable="false" ref="C754"/>
      <scm:attributeUse required="false" inheritable="false" ref="C755"/>
      <scm:attributeUse required="false" inheritable="false" ref="C756"/>
      <scm:attributeUse required="false" inheritable="false" ref="C757"/>
      <scm:attributeUse required="false" inheritable="false" ref="C758"/>
      <scm:attributeUse required="false" inheritable="false" ref="C759"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@type) and exists(@validation))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C756"
                  name="_namespace"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C755"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C751"
                  name="namespace"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C759"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C750"
                  name="name"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:wildcard id="C279" processContents="lax" constraint="any"/>
   <scm:attribute id="C607"
                  name="_escape-uri-attributes"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C61"
                  name="ref"
                  type="#QName"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C710"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:complexType id="C503"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C760"/>
      <scm:attributeUse required="false" inheritable="false" ref="C761"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C760"
                  name="xpath"
                  type="C238"
                  global="false"
                  inheritable="false"
                  containingComplexType="C503"/>
   <scm:attribute id="C734"
                  name="order"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C616"
                  name="_standalone"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C374"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C762"/>
      <scm:attributeUse required="false" inheritable="false" ref="C763"/>
      <scm:attributeUse required="false" inheritable="false" ref="C764" default=""/>
      <scm:attributeUse required="false" inheritable="false" ref="C765"/>
      <scm:attributeUse required="false" inheritable="false" ref="C766"/>
      <scm:attributeUse required="false" inheritable="false" ref="C767"/>
      <scm:attributeUse required="false" inheritable="false" ref="C768"/>
      <scm:attributeUse required="false" inheritable="false" ref="C769"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:sequence>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C133"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C133" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C133" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C764"
                  name="use-attribute-sets"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:attribute id="C767"
                  name="_streamable"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:attribute id="C763"
                  name="streamable"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:attribute id="C769"
                  name="_visibility"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:attribute id="C690"
                  name="_use-character-maps"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C347"
                  name="use"
                  type="C351"
                  global="false"
                  inheritable="false"
                  containingComplexType="C96"/>
   <scm:attribute id="C528"
                  name="exclude-result-prefixes"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C329"
                  global="false"
                  inheritable="false"/>
   <scm:complexType id="C488"
                    base="C13"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C770"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C771"
                        default="unspecified"/>
      <scm:attributeUse required="false" inheritable="false" ref="C772"/>
      <scm:attributeUse required="false" inheritable="false" ref="C773"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C20"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C27"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeWildcard ref="C33"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C370"/>
            <scm:elementWildcard minOccurs="1" maxOccurs="1" ref="C774"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C368" to="1"/>
            <scm:edge term="C373" to="1"/>
            <scm:edge term="C379" to="1"/>
            <scm:edge term="C384" to="1"/>
            <scm:edge term="C370" to="1"/>
            <scm:edge term="C395" to="1"/>
            <scm:edge term="C403" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C426" to="1"/>
            <scm:edge term="C433" to="1"/>
            <scm:edge term="C444" to="1"/>
            <scm:edge term="C446" to="1"/>
            <scm:edge term="C456" to="1"/>
            <scm:edge term="C458" to="1"/>
            <scm:edge term="C465" to="1"/>
            <scm:edge term="C472" to="1"/>
            <scm:edge term="C474" to="1"/>
            <scm:edge term="C476" to="1"/>
            <scm:edge term="C479" to="1"/>
            <scm:edge term="C509" to="1"/>
            <scm:edge term="C774" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C368" to="1"/>
            <scm:edge term="C373" to="1"/>
            <scm:edge term="C379" to="1"/>
            <scm:edge term="C384" to="1"/>
            <scm:edge term="C370" to="1"/>
            <scm:edge term="C395" to="1"/>
            <scm:edge term="C403" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C426" to="1"/>
            <scm:edge term="C433" to="1"/>
            <scm:edge term="C444" to="1"/>
            <scm:edge term="C446" to="1"/>
            <scm:edge term="C456" to="1"/>
            <scm:edge term="C458" to="1"/>
            <scm:edge term="C465" to="1"/>
            <scm:edge term="C472" to="1"/>
            <scm:edge term="C474" to="1"/>
            <scm:edge term="C476" to="1"/>
            <scm:edge term="C479" to="1"/>
            <scm:edge term="C509" to="1"/>
            <scm:edge term="C774" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $prefix in (@exclude-result-prefixes[not(. = '#all')], @extension-element-prefixes)             satisfies ((if ($prefix = '#default') then '' else $prefix) = in-scope-prefixes(.))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $v in (.//xsl:param, .//xsl:variable)[@static]             satisfies             $v[parent::xsl:stylesheet or parent::xsl:transform or parent::xsl:override]             "
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C773"
                  name="_input-type-annotations"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C488"/>
   <scm:attribute id="C626"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C400"/>
   <scm:wildcard id="C188"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:wildcard id="C356"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C766"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:attribute id="C673"
                  name="_byte-order-mark"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C564"
                  name="_lang"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:element id="C66"
                name="simpleType"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C189"
                global="false"
                containingComplexType="C52"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C671"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:complexType id="C423"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C775"/>
      <scm:attributeUse required="false" inheritable="false" ref="C776"/>
      <scm:attributeUse required="false" inheritable="false" ref="C777"/>
      <scm:attributeUse required="false" inheritable="false" ref="C778"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence/>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@match | @_match)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C778"
                  name="_phase"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C423"/>
   <scm:attribute id="C20"
                  name="version"
                  type="#decimal"
                  global="false"
                  inheritable="false"
                  containingComplexType="C13"/>
   <scm:attribute id="C660"
                  name="item-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C594"
                  name="undeclare-prefixes"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C505"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C779"/>
      <scm:attributeUse required="false" inheritable="false" ref="C780"/>
      <scm:attributeUse required="false" inheritable="false" ref="C781"/>
      <scm:attributeUse required="false" inheritable="false" ref="C782"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@string | @_string)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@character | @_character)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C779"
                  name="character"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C505"/>
   <scm:attribute id="C722"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:wildcard id="C549" processContents="lax" constraint="any"/>
   <scm:complexType id="C441"
                    base="C290"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C783"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C784"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C358"
                  name="minOccurs"
                  type="C277"
                  global="false"
                  inheritable="false"
                  containingComplexType="C357"/>
   <scm:complexType id="C483"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C785"/>
      <scm:attributeUse required="false" inheritable="false" ref="C786"/>
      <scm:attributeUse required="false" inheritable="false" ref="C787"/>
      <scm:attributeUse required="false" inheritable="false" ref="C788"/>
      <scm:attributeUse required="false" inheritable="false" ref="C789"/>
      <scm:attributeUse required="false" inheritable="false" ref="C790"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@test | @_test)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C786"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C483"/>
   <scm:attribute id="C787"
                  name="error-code"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C483"/>
   <scm:attribute id="C788"
                  name="_test"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C483"/>
   <scm:attribute id="C789"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C483"/>
   <scm:attribute id="C790"
                  name="_error-code"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C483"/>
   <scm:attribute id="C555"
                  name="_visibility"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C387"/>
   <scm:attribute id="C531"
                  name="use-attribute-sets"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C303"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C333"
                  name="xpathDefaultNamespace"
                  type="C166"
                  global="false"
                  inheritable="false"
                  containingComplexType="C330"/>
   <scm:attribute id="C618"
                  name="_undeclare-prefixes"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C601"
                  name="_method"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C425"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C791"/>
      <scm:attributeUse required="false" inheritable="false" ref="C792"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C395"/>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C442"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C395" to="2"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C442" to="3"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C395" to="2"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C442" to="3"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@select | @_select)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C542"
                  name="names"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C440"/>
   <scm:attribute id="C572"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C421"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C456"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C479"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C127"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C395"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C373"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C456" to="1"/>
            <scm:edge term="C479" to="1"/>
            <scm:edge term="C395" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C373" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C456" to="1"/>
            <scm:edge term="C479" to="1"/>
            <scm:edge term="C395" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C373" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C632"
                  name="refer"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C484"/>
   <scm:key id="C415"
            name="type"
            targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:selector xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xpath="xs:complexType|xs:simpleType"
                    defaultNamespace=""/>
      <scm:field xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xpath="@name"
                 defaultNamespace=""/>
   </scm:key>
   <scm:attribute id="C768"
                  name="_use-attribute-sets"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:element id="C204"
                name="attributeGroup"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C48"
                global="false"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C579"
                  name="doctype-public"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C703"
                  name="key"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C398"/>
   <scm:attribute id="C684"
                  name="_normalization-form"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C18"
                  name="default-validation"
                  type="C309"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C733"
                  name="lang"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:wildcard id="C233"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:complexType id="C381"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C793"/>
      <scm:attributeUse required="false" inheritable="false" ref="C794"/>
      <scm:attributeUse required="false" inheritable="false" ref="C795"/>
      <scm:attributeUse required="false" inheritable="false" ref="C796"/>
      <scm:attributeUse required="false" inheritable="false" ref="C797"/>
      <scm:attributeUse required="false" inheritable="false" ref="C798"/>
      <scm:attributeUse required="false" inheritable="false" ref="C799"/>
      <scm:attributeUse required="false" inheritable="false" ref="C800"/>
      <scm:attributeUse required="false" inheritable="false" ref="C801"/>
      <scm:attributeUse required="false" inheritable="false" ref="C802"/>
      <scm:attributeUse required="false" inheritable="false" ref="C803"/>
      <scm:attributeUse required="false" inheritable="false" ref="C804"/>
      <scm:attributeUse required="false" inheritable="false" ref="C805"/>
      <scm:attributeUse required="false" inheritable="false" ref="C806"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C449"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C143"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C449" to="1"/>
            <scm:edge term="C143" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C449" to="1"/>
            <scm:edge term="C143" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@xpath | @_xpath)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C794"
                  name="as"
                  type="C80"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C800"
                  name="_xpath"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C532"
                  name="use-when"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C211"
                  global="false"
                  inheritable="false"/>
   <scm:complexType id="C466"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C807"/>
      <scm:attributeUse required="false" inheritable="false" ref="C808"/>
      <scm:attributeUse required="false" inheritable="false" ref="C809"/>
      <scm:attributeUse required="false" inheritable="false" ref="C810"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C411"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C411" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@schema-location) and exists(xs:schema))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C808"
                  name="schema-location"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C466"/>
   <scm:complexType id="C438"
                    base="C284"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C811"/>
      <scm:attributeUse required="false" inheritable="false" ref="C285"/>
      <scm:attributeUse required="false" inheritable="false" ref="C286"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C287"
                        default="strict"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C215"
                  name="test"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C214"/>
   <scm:attribute id="C7"
                  name="value"
                  type="#anySimpleType"
                  global="false"
                  inheritable="false"
                  containingComplexType="C5"/>
   <scm:attribute id="C573"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C508"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C812"/>
      <scm:attributeUse required="false" inheritable="false" ref="C813"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C813"
                  name="schemaLocation"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C508"/>
   <scm:wildcard id="C326"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:complexType id="C493"
                    base="C5"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C814"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="false" inheritable="false" ref="C8" default="false"/>
      <scm:attributeWildcard ref="C815"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C814"
                  name="value"
                  type="C239"
                  global="false"
                  inheritable="false"
                  containingComplexType="C493"/>
   <scm:wildcard id="C815"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:complexType id="C436"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="1" maxOccurs="unbounded" ref="C407"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C376"/>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C143"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C407" to="1"/>
         </scm:state>
         <scm:state nr="1">
            <scm:edge term="C407" to="2"/>
            <scm:edge term="C376" to="3"/>
         </scm:state>
         <scm:state nr="2">
            <scm:edge term="C407" to="2"/>
            <scm:edge term="C376" to="3"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C143" to="4"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C143" to="4"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C383"
                    base="C252"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C816"/>
      <scm:attributeUse required="false" inheritable="false" ref="C817"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C518"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C448" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C11" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C448" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C662"
                  name="media-type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:complexType id="C390"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C818"/>
      <scm:attributeUse required="false" inheritable="false" ref="C819"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C818"
                  name="name"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C390"/>
   <scm:attribute id="C792"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C425"/>
   <scm:wildcard id="C624"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C726"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C445"/>
   <scm:attribute id="C109"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C106"/>
   <scm:attribute id="C677"
                  name="_encoding"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:complexType id="C477"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C820"/>
      <scm:attributeUse required="false" inheritable="false" ref="C821"/>
      <scm:attributeUse required="false" inheritable="false" ref="C822"/>
      <scm:attributeUse required="false" inheritable="false" ref="C823"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $prefix in (@stylesheet-prefix, @result-prefix)[. ne '#default']             satisfies $prefix = in-scope-prefixes(.)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@result-prefix | @_result-prefix)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@stylesheet-prefix | @_stylesheet-prefix)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C823"
                  name="_result-prefix"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C477"/>
   <scm:attribute id="C820"
                  name="stylesheet-prefix"
                  type="C93"
                  global="false"
                  inheritable="false"
                  containingComplexType="C477"/>
   <scm:attribute id="C821"
                  name="result-prefix"
                  type="C93"
                  global="false"
                  inheritable="false"
                  containingComplexType="C477"/>
   <scm:attribute id="C822"
                  name="_stylesheet-prefix"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C477"/>
   <scm:attribute id="C762"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:element id="C234"
                name="all"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C824"
                global="false"
                containingComplexType="C230"
                nillable="false"
                abstract="false"/>
   <scm:complexType id="C824"
                    base="C357"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C825"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C88"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C87"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C361"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C361" to="1"/>
            <scm:edge term="C87" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C361" to="1"/>
            <scm:edge term="C87" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C88" to="1"/>
            <scm:edge term="C361" to="1"/>
            <scm:edge term="C87" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C683"
                  name="_media-type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C565"
                  name="_data-type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C232"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C230"/>
   <scm:attribute id="C285"
                  name="namespace"
                  type="C250"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C561"
                  name="case-order"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C216"
                  name="xpathDefaultNamespace"
                  type="C166"
                  global="false"
                  inheritable="false"
                  containingComplexType="C214"/>
   <scm:complexType id="C429"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C449"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C449" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C449" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C615"
                  name="_parameter-document"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C775"
                  name="match"
                  type="C210"
                  global="false"
                  inheritable="false"
                  containingComplexType="C423"/>
   <scm:attribute id="C651"
                  name="byte-order-mark"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C746"
                  name="_separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C470"/>
   <scm:attribute id="C609"
                  name="_include-content-type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C723"
                  name="_package-version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:attribute id="C172"
                  name="final"
                  type="C35"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C623"
                  name="value"
                  type="C346"
                  global="false"
                  inheritable="false"
                  containingComplexType="C432"/>
   <scm:complexType id="C467"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C826"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C66"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C66" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C66" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C826"
                  name="memberTypes"
                  type="C213"
                  global="false"
                  inheritable="false"
                  containingComplexType="C467"/>
   <scm:attribute id="C554"
                  name="_names"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C387"/>
   <scm:wildcard id="C156"
                 processContents="lax"
                 constraint="enumeration"
                 namespaces="##local"/>
   <scm:attribute id="C669"
                  name="use-character-maps"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C670"
                  name="version"
                  type="#NMTOKEN"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C738"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C32"
                  name="extension-element-prefixes"
                  type="C74"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:key id="C418"
            name="notation"
            targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:selector xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xpath="xs:notation"
                    defaultNamespace=""/>
      <scm:field xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xpath="@name"
                 defaultNamespace=""/>
   </scm:key>
   <scm:attribute id="C730"
                  name="test"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C500"/>
   <scm:complexType id="C389"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="1" maxOccurs="unbounded" ref="C499"/>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C492"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C499" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C492" to="2"/>
            <scm:edge term="C499" to="3"/>
         </scm:state>
         <scm:state nr="2" final="true"/>
         <scm:state nr="3" final="true">
            <scm:edge term="C492" to="2"/>
            <scm:edge term="C499" to="3"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:complexType id="C455"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C827"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C827"
                  name="schemaLocation"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C455"/>
   <scm:complexType id="C431"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C828"/>
      <scm:attributeUse required="false" inheritable="false" ref="C829"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@test | @_test)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C608"
                  name="_html-version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:complexType id="C486"
                    base="C284"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C830"/>
      <scm:attributeUse required="false" inheritable="false" ref="C54" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C57" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C285"/>
      <scm:attributeUse required="false" inheritable="false" ref="C286"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C287"
                        default="strict"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C830"
                  name="notQName"
                  type="C313"
                  global="false"
                  inheritable="false"
                  containingComplexType="C486"/>
   <scm:complexType id="C369"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C831"/>
      <scm:attributeUse required="false" inheritable="false" ref="C832"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@href | @_href)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C831"
                  name="href"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C369"/>
   <scm:attribute id="C832"
                  name="_href"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C369"/>
   <scm:element id="C89"
                name="group"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C243"
                global="false"
                nillable="false"
                abstract="false"/>
   <scm:complexType id="C408"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C833"/>
      <scm:attributeUse required="false" inheritable="false" ref="C834"/>
      <scm:attributeUse required="false" inheritable="false" ref="C835"/>
      <scm:attributeUse required="false" inheritable="false" ref="C836"/>
      <scm:attributeUse required="false" inheritable="false" ref="C837"/>
      <scm:attributeUse required="false" inheritable="false" ref="C838"/>
      <scm:attributeUse required="false" inheritable="false" ref="C839"/>
      <scm:attributeUse required="false" inheritable="false" ref="C840"/>
      <scm:attributeUse required="false" inheritable="false" ref="C841"/>
      <scm:attributeUse required="false" inheritable="false" ref="C842"/>
      <scm:attributeUse required="false" inheritable="false" ref="C843"/>
      <scm:attributeUse required="false" inheritable="false" ref="C844"/>
      <scm:attributeUse required="false" inheritable="false" ref="C845"/>
      <scm:attributeUse required="false" inheritable="false" ref="C846"/>
      <scm:attributeUse required="false" inheritable="false" ref="C847"/>
      <scm:attributeUse required="false" inheritable="false" ref="C848"/>
      <scm:attributeUse required="false" inheritable="false" ref="C849"/>
      <scm:attributeUse required="false" inheritable="false" ref="C850"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:elementParticle minOccurs="1" maxOccurs="unbounded" ref="C141"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C141" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C141" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C141" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@select | @_select)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C834"
                  name="for-each-item"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C850"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C842"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C833"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C840"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C839"
                  name="sort-before-merge"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C845"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C691"
                  name="_version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C100"
                  name="fixed"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C96"/>
   <scm:attribute id="C676"
                  name="_doctype-system"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C838"
                  name="use-accumulators"
                  type="C341"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C843"
                  name="_for-each-item"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:element id="C361"
                name="group"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C851"
                global="false"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C780"
                  name="string"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C505"/>
   <scm:complexType id="C393"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C852"/>
      <scm:attributeUse required="false" inheritable="false" ref="C853"/>
      <scm:attributeUse required="false" inheritable="false" ref="C854"/>
      <scm:attributeUse required="false" inheritable="false" ref="C855"/>
      <scm:attributeUse required="false" inheritable="false" ref="C856"/>
      <scm:attributeUse required="false" inheritable="false" ref="C857"/>
      <scm:attributeUse required="false" inheritable="false" ref="C858"/>
      <scm:attributeUse required="false" inheritable="false" ref="C859"/>
      <scm:attributeUse required="false" inheritable="false" ref="C860"/>
      <scm:attributeUse required="false" inheritable="false" ref="C861"/>
      <scm:attributeUse required="false" inheritable="false" ref="C862"/>
      <scm:attributeUse required="false" inheritable="false" ref="C863"/>
      <scm:attributeUse required="false" inheritable="false" ref="C864"/>
      <scm:attributeUse required="false" inheritable="false" ref="C865"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C494"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C494" to="2"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C494" to="2"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="if (exists(@collation) or exists(@composite)) then (exists(@group-by) or exists(@group-adjacent)) else true()"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="count((@group-by, @group-adjacent, @group-starting-with, @group-ending-with)) = 1"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in subsequence(xsl:sort, 2) satisfies empty($e/@stable)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@select | @_select)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C861"
                  name="_group-adjacent"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C863"
                  name="_group-ending-with"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C855"
                  name="group-starting-with"
                  type="C210"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C852"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C862"
                  name="_group-starting-with"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C865"
                  name="_collation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C859"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C856"
                  name="group-ending-with"
                  type="C210"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C864"
                  name="_composite"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C858"
                  name="collation"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C577"
                  name="byte-order-mark"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C657"
                  name="html-version"
                  type="#decimal"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C59"
                  name="type"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C771"
                  name="input-type-annotations"
                  type="C306"
                  global="false"
                  inheritable="false"
                  containingComplexType="C488"/>
   <scm:attribute id="C589"
                  name="normalization-form"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C740"
                  name="_order"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C641"
                  name="_copy-namespaces"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C614"
                  name="_omit-xml-declaration"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C772"
                  name="_id"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C488"/>
   <scm:attribute id="C836"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C770"
                  name="id"
                  type="#ID"
                  global="false"
                  inheritable="false"
                  containingComplexType="C488"/>
   <scm:attribute id="C777"
                  name="_match"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C423"/>
   <scm:attribute id="C324"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C175"/>
   <scm:complexType id="C457"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C866"/>
      <scm:attributeUse required="false" inheritable="false" ref="C867"/>
      <scm:attributeUse required="false" inheritable="false" ref="C868"/>
      <scm:attributeUse required="false" inheritable="false" ref="C869"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C870"
                        default="item()*"/>
      <scm:attributeUse required="false" inheritable="false" ref="C871"/>
      <scm:attributeUse required="false" inheritable="false" ref="C872"/>
      <scm:attributeUse required="false" inheritable="false" ref="C873"/>
      <scm:attributeUse required="false" inheritable="false" ref="C874"/>
      <scm:attributeUse required="false" inheritable="false" ref="C875"/>
      <scm:attributeUse required="false" inheritable="false" ref="C876"/>
      <scm:attributeUse required="false" inheritable="false" ref="C877"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C391"/>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C395"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C391" to="2"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C395" to="3"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C395" to="3"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C395" to="3"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@visibility) and empty(@name))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(normalize-space(@visibility) = 'abstract' and exists(@match))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="if (empty(@match)) then (empty(@mode) and empty(@priority)) else true()"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@match) or exists(@name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="if (normalize-space(@visibility) = 'abstract') then empty(* except (xsl:context-item, xsl:param)) else true()"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in xsl:param satisfies empty($e/@visibility)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C868"
                  name="mode"
                  type="C78"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C875"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C877"
                  name="_visibility"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C873"
                  name="_priority"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C876"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C866"
                  name="match"
                  type="C210"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C870"
                  name="as"
                  type="C80"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C867"
                  name="priority"
                  type="#decimal"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C872"
                  name="_match"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C874"
                  name="_mode"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C869"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C667"
                  name="suppress-indentation"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C747"
                  name="_disable-output-escaping"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C470"/>
   <scm:element id="C236"
                name="sequence"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C253"
                global="false"
                containingComplexType="C230"
                nillable="false"
                abstract="false"/>
   <scm:wildcard id="C784"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C570"
                  name="format"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C693"
                  name="value"
                  type="#positiveInteger"
                  global="false"
                  inheritable="false"
                  containingComplexType="C371"/>
   <scm:attribute id="C765"
                  name="visibility"
                  type="C161"
                  global="false"
                  inheritable="false"
                  containingComplexType="C374"/>
   <scm:attribute id="C853"
                  name="group-by"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:complexType id="C365"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C449"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C143"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C449" to="1"/>
            <scm:edge term="C143" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C449" to="1"/>
            <scm:edge term="C143" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C782"
                  name="_string"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C505"/>
   <scm:attribute id="C16"
                  name="_exclude-result-prefixes"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C64"
                  name="fixed"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C339"
                  name="value"
                  type="#integer"
                  global="false"
                  inheritable="false"
                  containingComplexType="C338"/>
   <scm:attribute id="C22"
                  name="default-mode"
                  type="C317"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:wildcard id="C190"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C101"
                  name="inheritable"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C95"/>
   <scm:wildcard id="C276"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C793"
                  name="xpath"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:complexType id="C478"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C878"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:choice>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C879"/>
                  <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C880"/>
               </scm:choice>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C879" to="1"/>
            <scm:edge term="C880" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2">
            <scm:edge term="C879" to="1"/>
            <scm:edge term="C880" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:element id="C880"
                name="extension"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C307"
                global="false"
                containingComplexType="C478"
                nillable="false"
                abstract="false"/>
   <scm:complexType id="C498"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C881"/>
      <scm:attributeUse required="false" inheritable="false" ref="C882" default="no"/>
      <scm:attributeUse required="false" inheritable="false" ref="C883"/>
      <scm:attributeUse required="false" inheritable="false" ref="C884"/>
      <scm:attributeUse required="false" inheritable="false" ref="C885"/>
      <scm:attributeUse required="false" inheritable="false" ref="C886"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C886"
                  name="_error-code"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C498"/>
   <scm:attribute id="C882"
                  name="terminate"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C498"/>
   <scm:attribute id="C885"
                  name="_terminate"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C498"/>
   <scm:attribute id="C883"
                  name="error-code"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C498"/>
   <scm:attribute id="C801"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C835"
                  name="for-each-stream"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C783"
                  name="value"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C441"/>
   <scm:attribute id="C187"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C186"/>
   <scm:attribute id="C881"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C498"/>
   <scm:attribute id="C547"
                  name="source"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C464"/>
   <scm:attribute id="C668"
                  name="undeclare-prefixes"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C650"
                  name="build-tree"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C332"
                  name="type"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C330"/>
   <scm:complexType id="C480"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C887"/>
      <scm:attributeUse required="false" inheritable="false" ref="C888" default="yes"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C889"
                        default="item()*"/>
      <scm:attributeUse required="false" inheritable="false" ref="C890"/>
      <scm:attributeUse required="false" inheritable="false" ref="C891"/>
      <scm:attributeUse required="false" inheritable="false" ref="C892"/>
      <scm:attributeUse required="false" inheritable="false" ref="C893"/>
      <scm:attributeUse required="false" inheritable="false" ref="C894"/>
      <scm:attributeUse required="false" inheritable="false" ref="C895"/>
      <scm:attributeUse required="false" inheritable="false" ref="C896"/>
      <scm:attributeUse required="false" inheritable="false" ref="C897"/>
      <scm:attributeUse required="false" inheritable="false" ref="C898"/>
      <scm:attributeUse required="false" inheritable="false" ref="C899"/>
      <scm:attributeUse required="false" inheritable="false" ref="C900"/>
      <scm:attributeUse required="false" inheritable="false" ref="C901"/>
      <scm:attributeUse required="false" inheritable="false" ref="C902"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C395"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C395" to="2"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C395" to="2"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in xsl:param satisfies empty($e/@required)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in xsl:param satisfies empty($e/@visibility)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in xsl:param satisfies (empty($e/@select) and empty($e/child::node()))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C891"
                  name="streamability"
                  type="C352"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C901"
                  name="_identity-sensitive"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C894"
                  name="cache"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C892"
                  name="override-extension-function"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C890"
                  name="visibility"
                  type="C161"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C896"
                  name="_override"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C899"
                  name="_streamability"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C889"
                  name="as"
                  type="C80"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:complexType id="C410"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C903"/>
      <scm:attributeUse required="false" inheritable="false" ref="C904"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C494"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C494" to="2"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C494" to="2"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@select | @_select)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in subsequence(xsl:sort, 2) satisfies empty($e/@stable)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C903"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C410"/>
   <scm:attribute id="C904"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C410"/>
   <scm:wildcard id="C774"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:attribute id="C652"
                  name="cdata-section-elements"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C695"
                  name="rollback-output"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C437"/>
   <scm:complexType id="C404"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C905"/>
      <scm:attributeUse required="false" inheritable="false" ref="C906"/>
      <scm:attributeUse required="false" inheritable="false" ref="C907"/>
      <scm:attributeUse required="false" inheritable="false" ref="C908"/>
      <scm:attributeUse required="false" inheritable="false" ref="C909"/>
      <scm:attributeUse required="false" inheritable="false" ref="C910"/>
      <scm:attributeUse required="false" inheritable="false" ref="C911"/>
      <scm:attributeUse required="false" inheritable="false" ref="C912"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C909"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:attribute id="C911"
                  name="_streamable"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:attribute id="C908"
                  name="use-accumulators"
                  type="C341"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:complexType id="C491"
                    base="C252"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C913"/>
      <scm:attributeUse required="false" inheritable="false" ref="C914"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C519"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
            <scm:edge term="C405" to="2"/>
            <scm:edge term="C460" to="2"/>
            <scm:edge term="C501" to="2"/>
            <scm:edge term="C430" to="2"/>
            <scm:edge term="C424" to="2"/>
            <scm:edge term="C481" to="2"/>
            <scm:edge term="C448" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C405" to="2"/>
            <scm:edge term="C460" to="2"/>
            <scm:edge term="C501" to="2"/>
            <scm:edge term="C430" to="2"/>
            <scm:edge term="C424" to="2"/>
            <scm:edge term="C481" to="2"/>
            <scm:edge term="C448" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C405" to="2"/>
            <scm:edge term="C460" to="2"/>
            <scm:edge term="C501" to="2"/>
            <scm:edge term="C430" to="2"/>
            <scm:edge term="C424" to="2"/>
            <scm:edge term="C481" to="2"/>
            <scm:edge term="C448" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C913"
                  name="schemaLocation"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C491"/>
   <scm:attribute id="C526"
                  name="expand-text"
                  type="C163"
                  global="false"
                  inheritable="false"/>
   <scm:complexType id="C409"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C915"/>
      <scm:attributeUse required="false" inheritable="false" ref="C916"/>
      <scm:attributeUse required="false" inheritable="false" ref="C917"/>
      <scm:attributeUse required="false" inheritable="false" ref="C918"/>
      <scm:attributeUse required="false" inheritable="false" ref="C919"/>
      <scm:attributeUse required="false" inheritable="false" ref="C920"/>
      <scm:attributeUse required="false" inheritable="false" ref="C921"/>
      <scm:attributeUse required="false" inheritable="false" ref="C922"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="if (normalize-space(@static) = 'yes')                            then (empty((*,text())) and @select)                             else true()"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="if (normalize-space(@static) = 'yes')                             then normalize-space(@visibility) = ('', 'private', 'final')                             else true()"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C918"
                  name="static"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C920"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C922"
                  name="_static"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C919"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C917"
                  name="visibility"
                  type="C161"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C60"
                  name="nillable"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C857"
                  name="composite"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:complexType id="C475"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C923"/>
      <scm:attributeUse required="false" inheritable="false" ref="C924"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@href | @_href)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C923"
                  name="href"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C475"/>
   <scm:attribute id="C902"
                  name="_cache"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C715"
                  name="declared-modes"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:attribute id="C701"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C380"/>
   <scm:complexType id="C402"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C925"/>
      <scm:attributeUse required="false" inheritable="false" ref="C926"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C927"
                        default="single"/>
      <scm:attributeUse required="false" inheritable="false" ref="C928"/>
      <scm:attributeUse required="false" inheritable="false" ref="C929"/>
      <scm:attributeUse required="false" inheritable="false" ref="C930" default="1"/>
      <scm:attributeUse required="false" inheritable="false" ref="C931"/>
      <scm:attributeUse required="false" inheritable="false" ref="C932"/>
      <scm:attributeUse required="false" inheritable="false" ref="C933"/>
      <scm:attributeUse required="false" inheritable="false" ref="C934"/>
      <scm:attributeUse required="false" inheritable="false" ref="C935"/>
      <scm:attributeUse required="false" inheritable="false" ref="C936"/>
      <scm:attributeUse required="false" inheritable="false" ref="C937"/>
      <scm:attributeUse required="false" inheritable="false" ref="C938"/>
      <scm:attributeUse required="false" inheritable="false" ref="C939"/>
      <scm:attributeUse required="false" inheritable="false" ref="C940"/>
      <scm:attributeUse required="false" inheritable="false" ref="C941"/>
      <scm:attributeUse required="false" inheritable="false" ref="C942"/>
      <scm:attributeUse required="false" inheritable="false" ref="C943"/>
      <scm:attributeUse required="false" inheritable="false" ref="C944"/>
      <scm:attributeUse required="false" inheritable="false" ref="C945"/>
      <scm:attributeUse required="false" inheritable="false" ref="C946"/>
      <scm:attributeUse required="false" inheritable="false" ref="C947"/>
      <scm:attributeUse required="false" inheritable="false" ref="C948"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="if (exists(@value)) then empty((@select, @count, @from)) and @level='single' else true()"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C941"
                  name="_from"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C944"
                  name="_letter-value"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C934"
                  name="start-at"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C948"
                  name="_grouping-size"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C943"
                  name="_lang"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C933"
                  name="ordinal"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C932"
                  name="letter-value"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C926"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C936"
                  name="grouping-size"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C930"
                  name="format"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C945"
                  name="_ordinal"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C946"
                  name="_start-at"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C940"
                  name="_count"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C938"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C937"
                  name="_value"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C939"
                  name="_level"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C927"
                  name="level"
                  type="C217"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C947"
                  name="_grouping-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C553"
                  name="_component"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C387"/>
   <scm:attribute id="C791"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C425"/>
   <scm:attribute id="C665"
                  name="parameter-document"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C709"
                  name="static"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:complexType id="C497"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C949"/>
      <scm:attributeUse required="false" inheritable="false" ref="C950"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C949"
                  name="errors"
                  type="#token"
                  global="false"
                  inheritable="false"
                  containingComplexType="C497"/>
   <scm:attribute id="C950"
                  name="_errors"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C497"/>
   <scm:attribute id="C721"
                  name="_id"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:attribute id="C45"
                  name="version"
                  type="#decimal"
                  global="false"
                  inheritable="false"
                  containingComplexType="C281"/>
   <scm:attribute id="C935"
                  name="grouping-separator"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C776"
                  name="phase"
                  type="C212"
                  global="false"
                  inheritable="false"
                  containingComplexType="C423"/>
   <scm:attribute id="C757"
                  name="_separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C700"
                  name="package-version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C380"/>
   <scm:attribute id="C925"
                  name="value"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C689"
                  name="_undeclare-prefixes"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C593"
                  name="suppress-indentation"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C605"
                  name="_doctype-system"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:wildcard id="C363"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C754"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C591"
                  name="parameter-document"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C888"
                  name="override"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C802"
                  name="_base-uri"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C29"
                  name="_extension-element-prefixes"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:complexType id="C443"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C951"/>
      <scm:attributeUse required="false" inheritable="false" ref="C952"/>
      <scm:attributeUse required="false" inheritable="false" ref="C953"/>
      <scm:attributeUse required="false" inheritable="false" ref="C954"/>
      <scm:attributeUse required="false" inheritable="false" ref="C955"/>
      <scm:attributeUse required="false" inheritable="false" ref="C956"/>
      <scm:attributeUse required="false" inheritable="false" ref="C957"/>
      <scm:attributeUse required="false" inheritable="false" ref="C958"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@type) and exists(@validation))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@href | @_href)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C954"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C951"
                  name="href"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C953"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C957"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C958"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C955"
                  name="_href"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C854"
                  name="group-adjacent"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C46"
                  name="_version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C281"/>
   <scm:attribute id="C744"
                  name="separator"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C470"/>
   <scm:attribute id="C692"
                  name="itemType"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C375"/>
   <scm:attribute id="C687"
                  name="_standalone"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C900"
                  name="_override-extension-function"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C749"
                  name="xpathDefaultNamespace"
                  type="C166"
                  global="false"
                  inheritable="false"
                  containingComplexType="C388"/>
   <scm:wildcard id="C102"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:wildcard id="C291"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C343"
                  name="value"
                  type="#nonNegativeInteger"
                  global="false"
                  inheritable="false"
                  containingComplexType="C342"/>
   <scm:attribute id="C678"
                  name="_escape-uri-attributes"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C878"
                  name="mixed"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C478"/>
   <scm:attribute id="C630"
                  name="mode"
                  type="C283"
                  global="false"
                  inheritable="false"
                  containingComplexType="C367"/>
   <scm:attribute id="C592"
                  name="standalone"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:element id="C207"
                name="attribute"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C96"
                global="false"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C905"
                  name="as"
                  type="C173"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:complexType id="C461"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="true" inheritable="false" ref="C959"/>
      <scm:attributeUse required="false" inheritable="false" ref="C960"/>
      <scm:attributeUse required="false" inheritable="false" ref="C961"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C959"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C461"/>
   <scm:attribute id="C960"
                  name="public"
                  type="C38"
                  global="false"
                  inheritable="false"
                  containingComplexType="C461"/>
   <scm:complexType id="C506"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C962"/>
      <scm:attributeUse required="false" inheritable="false" ref="C963"/>
      <scm:attributeUse required="false" inheritable="false" ref="C964" default=""/>
      <scm:attributeUse required="false" inheritable="false" ref="C965"/>
      <scm:attributeUse required="false" inheritable="false" ref="C966"/>
      <scm:attributeUse required="false" inheritable="false" ref="C967"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C485"/>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C462"/>
                  <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C143"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C485" to="1"/>
            <scm:edge term="C143" to="2"/>
            <scm:edge term="C462" to="3"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C143" to="2"/>
            <scm:edge term="C462" to="3"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C143" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C143" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@regex | @_regex)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@select | @_select)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C962"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C506"/>
   <scm:attribute id="C967"
                  name="_flags"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C506"/>
   <scm:attribute id="C963"
                  name="regex"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C506"/>
   <scm:attribute id="C965"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C506"/>
   <scm:element id="C879"
                name="restriction"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C362"
                global="false"
                containingComplexType="C478"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C731"
                  name="_test"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C500"/>
   <scm:attribute id="C966"
                  name="_regex"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C506"/>
   <scm:attribute id="C847"
                  name="_use-accumulators"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C735"
                  name="collation"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C634"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C712"
                  name="_required"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:attribute id="C910"
                  name="_use"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:attribute id="C176"
                  name="final"
                  type="C228"
                  global="false"
                  inheritable="false"
                  containingComplexType="C175"/>
   <scm:attribute id="C736"
                  name="case-order"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C529"
                  name="xpath-default-namespace"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="#anyURI"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C828"
                  name="test"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C431"/>
   <scm:attribute id="C810"
                  name="_schema-location"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C466"/>
   <scm:attribute id="C27"
                  name="_version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C13"/>
   <scm:complexType id="C397"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C968"
                        default="child::node()"/>
      <scm:attributeUse required="false" inheritable="false" ref="C969"/>
      <scm:attributeUse required="false" inheritable="false" ref="C970"/>
      <scm:attributeUse required="false" inheritable="false" ref="C971"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:choice>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C494"/>
            <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C449"/>
         </scm:choice>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C449" to="1"/>
            <scm:edge term="C494" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C449" to="1"/>
            <scm:edge term="C494" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="every $e in subsequence(xsl:sort, 2) satisfies empty($e/@stable)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C971"
                  name="_mode"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C397"/>
   <scm:attribute id="C970"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C397"/>
   <scm:attribute id="C781"
                  name="_character"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C505"/>
   <scm:attribute id="C15"
                  name="_default-mode"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C635"
                  name="copy-namespaces"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:element id="C621"
                name="restriction"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C311"
                global="false"
                containingComplexType="C394"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C197"
                  name="abstract"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C192"/>
   <scm:attribute id="C195"
                  name="block"
                  type="C35"
                  global="false"
                  inheritable="false"
                  containingComplexType="C192"/>
   <scm:attribute id="C952"
                  name="use-accumulators"
                  type="C341"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C837"
                  name="streamable"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C805"
                  name="_schema-aware"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C812"
                  name="namespace"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C508"/>
   <scm:attribute id="C964"
                  name="flags"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C506"/>
   <scm:attribute id="C227"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C192"/>
   <scm:attribute id="C19"
                  name="_xpath-default-namespace"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C809"
                  name="_namespace"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C466"/>
   <scm:attribute id="C21"
                  name="xpath-default-namespace"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C860"
                  name="_group-by"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C393"/>
   <scm:attribute id="C761"
                  name="xpathDefaultNamespace"
                  type="C166"
                  global="false"
                  inheritable="false"
                  containingComplexType="C503"/>
   <scm:attribute id="C968"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C397"/>
   <scm:attribute id="C893"
                  name="new-each-time"
                  type="C288"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C724"
                  name="_input-type-annotations"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:attribute id="C287"
                  name="processContents"
                  type="C82"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C583"
                  name="html-version"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:wildcard id="C254"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C688"
                  name="_suppress-indentation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C737"
                  name="data-type"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C674"
                  name="_cdata-section-elements"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C961"
                  name="system"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C461"/>
   <scm:attribute id="C331"
                  name="test"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C330"/>
   <scm:attribute id="C56"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C655"
                  name="encoding"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:element id="C67"
                name="complexType"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C325"
                global="false"
                containingComplexType="C52"
                nillable="false"
                abstract="false"/>
   <scm:complexType id="C510"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C972"/>
      <scm:attributeUse required="false" inheritable="false" ref="C973"/>
      <scm:attributeUse required="false" inheritable="false" ref="C974"/>
      <scm:attributeUse required="false" inheritable="false" ref="C975"/>
      <scm:attributeUse required="false" inheritable="false" ref="C976"/>
      <scm:attributeUse required="false" inheritable="false" ref="C977"/>
      <scm:attributeUse required="false" inheritable="false" ref="C978"/>
      <scm:attributeUse required="false" inheritable="false" ref="C979"/>
      <scm:attributeUse required="false" inheritable="false" ref="C980"/>
      <scm:attributeUse required="false" inheritable="false" ref="C981"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@match | @_match)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C979"
                  name="_use"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C976"
                  name="collation"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C972"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C978"
                  name="_match"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C980"
                  name="_composite"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C977"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C545"
                  name="_names"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C440"/>
   <scm:attribute id="C707"
                  name="required"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:attribute id="C25"
                  name="_use-when"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C849"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:wildcard id="C85"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C981"
                  name="_collation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:wildcard id="C316"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:complexType id="C412"
                    base="C252"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C982"/>
      <scm:attributeUse required="false" inheritable="false" ref="C983"/>
      <scm:attributeUse required="false" inheritable="false" ref="C984" default=""/>
      <scm:attributeUse required="false" inheritable="false" ref="C985" default=""/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C986"
                        default="unqualified"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C987"
                        default="unqualified"/>
      <scm:attributeUse required="false" inheritable="false" ref="C988"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C989"
                        default="##local"/>
      <scm:attributeUse required="false" inheritable="false" ref="C990"/>
      <scm:attributeUse required="false" inheritable="false" ref="C513"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C520"/>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="1">
                     <scm:sequence>
                        <scm:elementParticle minOccurs="1" maxOccurs="1" ref="C366"/>
                        <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C11"/>
                     </scm:sequence>
                  </scm:modelGroupParticle>
                  <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
                     <scm:sequence>
                        <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C519"/>
                        <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C11"/>
                     </scm:sequence>
                  </scm:modelGroupParticle>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C366" to="3"/>
            <scm:edge term="C382" to="2"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C405" to="1"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C448" to="1"/>
            <scm:edge term="C454" to="2"/>
            <scm:edge term="C460" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C490" to="2"/>
            <scm:edge term="C501" to="1"/>
            <scm:edge term="C507" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C405" to="1"/>
            <scm:edge term="C460" to="1"/>
            <scm:edge term="C501" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C11" to="5"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C448" to="1"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C366" to="3"/>
            <scm:edge term="C382" to="2"/>
            <scm:edge term="C11" to="2"/>
            <scm:edge term="C405" to="1"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C448" to="1"/>
            <scm:edge term="C454" to="2"/>
            <scm:edge term="C460" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C490" to="2"/>
            <scm:edge term="C501" to="1"/>
            <scm:edge term="C507" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C405" to="1"/>
            <scm:edge term="C460" to="1"/>
            <scm:edge term="C501" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C448" to="1"/>
            <scm:edge term="C11" to="4"/>
         </scm:state>
         <scm:state nr="4" final="true">
            <scm:edge term="C405" to="1"/>
            <scm:edge term="C460" to="1"/>
            <scm:edge term="C501" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C448" to="1"/>
            <scm:edge term="C11" to="4"/>
         </scm:state>
         <scm:state nr="5" final="true">
            <scm:edge term="C405" to="1"/>
            <scm:edge term="C460" to="1"/>
            <scm:edge term="C501" to="1"/>
            <scm:edge term="C430" to="1"/>
            <scm:edge term="C11" to="5"/>
            <scm:edge term="C424" to="1"/>
            <scm:edge term="C481" to="1"/>
            <scm:edge term="C448" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C988"
                  name="defaultAttributes"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C984"
                  name="finalDefault"
                  type="C0"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C987"
                  name="elementFormDefault"
                  type="C314"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C985"
                  name="blockDefault"
                  type="C354"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C983"
                  name="version"
                  type="#token"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C986"
                  name="attributeFormDefault"
                  type="C314"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C989"
                  name="xpathDefaultNamespace"
                  type="C166"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C990"
                  name="id"
                  type="#ID"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:attribute id="C54"
                  name="minOccurs"
                  type="#nonNegativeInteger"
                  global="false"
                  inheritable="false"/>
   <scm:wildcard id="C344"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:wildcard id="C694"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C871"
                  name="visibility"
                  type="C161"
                  global="false"
                  inheritable="false"
                  containingComplexType="C457"/>
   <scm:attribute id="C806"
                  name="_with-params"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:complexType id="C471"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C991"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1" ref="C258"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C11" to="3"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
         <scm:state nr="3" final="true">
            <scm:edge term="C261" to="2"/>
            <scm:edge term="C262" to="2"/>
            <scm:edge term="C263" to="2"/>
            <scm:edge term="C264" to="2"/>
            <scm:edge term="C265" to="2"/>
            <scm:edge term="C266" to="2"/>
            <scm:edge term="C267" to="2"/>
            <scm:edge term="C268" to="2"/>
            <scm:edge term="C269" to="2"/>
            <scm:edge term="C270" to="2"/>
            <scm:edge term="C271" to="2"/>
            <scm:edge term="C272" to="2"/>
            <scm:edge term="C66" to="1"/>
            <scm:edge term="C273" to="2"/>
            <scm:edge term="C274" to="2"/>
            <scm:edge term="C275" to="2"/>
            <scm:edge term="C276" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C991"
                  name="base"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C471"/>
   <scm:attribute id="C708"
                  name="tunnel"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:attribute id="C575"
                  name="allow-duplicate-names"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C716"
                  name="id"
                  type="#ID"
                  global="false"
                  inheritable="false"
                  containingComplexType="C452"/>
   <scm:attribute id="C58"
                  name="targetNamespace"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C563"
                  name="stable"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:complexType id="C427"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C992"/>
      <scm:attributeUse required="false" inheritable="false" ref="C993"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@elements | @_elements)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C992"
                  name="elements"
                  type="C222"
                  global="false"
                  inheritable="false"
                  containingComplexType="C427"/>
   <scm:attribute id="C569"
                  name="_stable"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C887"
                  name="name"
                  type="C246"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C799"
                  name="with-params"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C596"
                  name="output-version"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C63"
                  name="default"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C942"
                  name="_format"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:complexType id="C372"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C994"/>
      <scm:attributeUse required="false" inheritable="false" ref="C995"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C994"
                  name="name"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C372"/>
   <scm:attribute id="C995"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C372"/>
   <scm:attribute id="C99"
                  name="default"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C96"/>
   <scm:complexType id="C401"
                    base="C6"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C996"
                        default="interleave"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeWildcard ref="C10"/>
      <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
         <scm:sequence>
            <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
            <scm:modelGroupParticle minOccurs="1" maxOccurs="1">
               <scm:sequence>
                  <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C631"/>
               </scm:sequence>
            </scm:modelGroupParticle>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C631" to="1"/>
            <scm:edge term="C11" to="2"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
         <scm:state nr="2" final="true">
            <scm:edge term="C631" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C996"
                  name="mode"
                  type="C319"
                  global="false"
                  inheritable="false"
                  containingComplexType="C401"/>
   <scm:attribute id="C556"
                  name="elements"
                  type="C222"
                  global="false"
                  inheritable="false"
                  containingComplexType="C434"/>
   <scm:attribute id="C975"
                  name="composite"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C705"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:attribute id="C956"
                  name="_use-accumulators"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C443"/>
   <scm:attribute id="C606"
                  name="_encoding"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C244"
                  name="ref"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C243"/>
   <scm:attribute id="C884"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C498"/>
   <scm:attribute id="C841"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C829"
                  name="_test"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C431"/>
   <scm:attribute id="C525"
                  name="default-validation"
                  type="C309"
                  global="false"
                  inheritable="false"/>
   <scm:key id="C416"
            name="group"
            targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:selector xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xpath="xs:group"
                    defaultNamespace=""/>
      <scm:field xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xpath="@name"
                 defaultNamespace=""/>
   </scm:key>
   <scm:attribute id="C26"
                  name="expand-text"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:complexType id="C459"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C997"/>
      <scm:attributeUse required="false" inheritable="false" ref="C998" default="."/>
      <scm:attributeUse required="false" inheritable="false" ref="C999" default=","/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C1000"
                        default="Infinity"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1001" default="-"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1002" default="e"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1003" default="NaN"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1004" default="%"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1005" default="~"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1006" default="0"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1007" default="#"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1008" default=";"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1009"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1010"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1011"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1012"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1013"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1014"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1015"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1016"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1017"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1018"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1019"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1020"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C1019"
                  name="_digit"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1018"
                  name="_zero-digit"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1008"
                  name="pattern-separator"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C998"
                  name="decimal-separator"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1010"
                  name="_decimal-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1011"
                  name="_grouping-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1013"
                  name="_minus-sign"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1016"
                  name="_percent"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1001"
                  name="minus-sign"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1009"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1003"
                  name="NaN"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1007"
                  name="digit"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1020"
                  name="_pattern-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1015"
                  name="_NaN"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1005"
                  name="per-mille"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C1017"
                  name="_per-mille"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C739"
                  name="_lang"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:attribute id="C929"
                  name="from"
                  type="C210"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C637"
                  name="use-attribute-sets"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C524"
                  name="default-mode"
                  type="C317"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C620"
                  name="_output-version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C546"
                  name="_visibility"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C440"/>
   <scm:attribute id="C848"
                  name="_sort-before-merge"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C613"
                  name="_normalization-form"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C97"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C95"/>
   <scm:wildcard id="C548"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C562"
                  name="collation"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C598"
                  name="_href"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C108"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C106"/>
   <scm:complexType id="C489"
                    base="C107"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C1021"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1022"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1023" default="yes"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1024" default=""/>
      <scm:attributeUse required="false" inheritable="false" ref="C1025"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1026"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1027"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1028"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1029"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1030"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1031"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1032"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@type) and exists(@validation))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C1028"
                  name="_namespace"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1024"
                  name="use-attribute-sets"
                  type="C303"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1026"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1023"
                  name="inherit-namespaces"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1030"
                  name="_use-attribute-sets"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1032"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1025"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1021"
                  name="name"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1027"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C1029"
                  name="_inherit-namespaces"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:wildcard id="C725"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:attribute id="C1002"
                  name="exponent-separator"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C62"
                  name="form"
                  type="C314"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C973"
                  name="match"
                  type="C210"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C914"
                  name="id"
                  type="#ID"
                  global="false"
                  inheritable="false"
                  containingComplexType="C491"/>
   <scm:attribute id="C644"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C1012"
                  name="_infinity"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C50"
                  name="ref"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C48"/>
   <scm:attribute id="C898"
                  name="_visibility"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C294"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C293"/>
   <scm:attribute id="C535"
                  name="validation"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C310"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C924"
                  name="_href"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C475"/>
   <scm:attribute id="C286"
                  name="notNamespace"
                  type="C364"
                  global="false"
                  inheritable="false"/>
   <scm:complexType id="C450"
                    base="C315"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C1033"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1034"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1035"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1036"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1037"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1038"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C108"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C109"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C316"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded" ref="C111"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C112" to="1"/>
            <scm:edge term="C113" to="1"/>
            <scm:edge term="C114" to="1"/>
            <scm:edge term="C115" to="1"/>
            <scm:edge term="C116" to="1"/>
            <scm:edge term="C117" to="1"/>
            <scm:edge term="C118" to="1"/>
            <scm:edge term="C119" to="1"/>
            <scm:edge term="C120" to="1"/>
            <scm:edge term="C121" to="1"/>
            <scm:edge term="C122" to="1"/>
            <scm:edge term="C123" to="1"/>
            <scm:edge term="C124" to="1"/>
            <scm:edge term="C125" to="1"/>
            <scm:edge term="C126" to="1"/>
            <scm:edge term="C127" to="1"/>
            <scm:edge term="C128" to="1"/>
            <scm:edge term="C129" to="1"/>
            <scm:edge term="C130" to="1"/>
            <scm:edge term="C131" to="1"/>
            <scm:edge term="C132" to="1"/>
            <scm:edge term="C133" to="1"/>
            <scm:edge term="C134" to="1"/>
            <scm:edge term="C135" to="1"/>
            <scm:edge term="C136" to="1"/>
            <scm:edge term="C137" to="1"/>
            <scm:edge term="C138" to="1"/>
            <scm:edge term="C139" to="1"/>
            <scm:edge term="C140" to="1"/>
            <scm:edge term="C141" to="1"/>
            <scm:edge term="C142" to="1"/>
            <scm:edge term="C143" to="1"/>
            <scm:edge term="C144" to="1"/>
            <scm:edge term="C145" to="1"/>
            <scm:edge term="C146" to="1"/>
            <scm:edge term="C147" to="1"/>
            <scm:edge term="C148" to="1"/>
            <scm:edge term="C149" to="1"/>
            <scm:edge term="C150" to="1"/>
            <scm:edge term="C151" to="1"/>
            <scm:edge term="C152" to="1"/>
            <scm:edge term="C153" to="1"/>
            <scm:edge term="C154" to="1"/>
            <scm:edge term="C155" to="1"/>
            <scm:edge term="C156" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@select) and (exists(* except xsl:fallback) or exists(text()[normalize-space()])))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C1033"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C450"/>
   <scm:attribute id="C1037"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C450"/>
   <scm:attribute id="C1035"
                  name="tunnel"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C450"/>
   <scm:attribute id="C1036"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C450"/>
   <scm:attribute id="C1038"
                  name="_tunnel"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C450"/>
   <scm:attribute id="C1034"
                  name="as"
                  type="C80"
                  global="false"
                  inheritable="false"
                  containingComplexType="C450"/>
   <scm:attribute id="C997"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:complexType id="C447"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C1039"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1040" default="no"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C1041"
                        default="shallow-skip"/>
      <scm:attributeUse required="false"
                        inheritable="false"
                        ref="C1042"
                        default="use-last"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1043"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1044"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1045"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1046"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1047"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1048"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1049"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1050"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1051"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1052"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1053"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1054"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@name) and normalize-space(@visibility) = 'private' and exists(xsl:context-item))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C1051"
                  name="_warning-on-no-match"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1053"
                  name="_typed"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1039"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1044"
                  name="warning-on-multiple-match"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1043"
                  name="warning-on-no-match"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1049"
                  name="_on-no-match"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1054"
                  name="_visibility"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1040"
                  name="streamable"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1048"
                  name="_streamable"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1050"
                  name="_on-multiple-match"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1052"
                  name="_warning-on-multiple-match"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1045"
                  name="typed"
                  type="C220"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1042"
                  name="on-multiple-match"
                  type="C92"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1000"
                  name="infinity"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C797"
                  name="namespace-context"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C931"
                  name="lang"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C1022"
                  name="namespace"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C928"
                  name="count"
                  type="C210"
                  global="false"
                  inheritable="false"
                  containingComplexType="C402"/>
   <scm:attribute id="C999"
                  name="grouping-separator"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:key id="C414"
            name="attribute"
            targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:selector xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xpath="xs:attribute"
                    defaultNamespace=""/>
      <scm:field xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xpath="@name"
                 defaultNamespace=""/>
   </scm:key>
   <scm:attribute id="C796"
                  name="context-item"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C679"
                  name="_html-version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C194"
                  name="mixed"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C192"/>
   <scm:attribute id="C741"
                  name="_collation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C469"/>
   <scm:wildcard id="C10"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C1031"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C489"/>
   <scm:attribute id="C9"
                  name="id"
                  type="#ID"
                  global="false"
                  inheritable="false"
                  containingComplexType="C6"/>
   <scm:attribute id="C897"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C906"
                  name="use"
                  type="C292"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:attribute id="C629"
                  name="appliesToEmpty"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C367"/>
   <scm:attribute id="C682"
                  name="_item-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C1004"
                  name="percent"
                  type="C305"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C907"
                  name="streamable"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:attribute id="C748"
                  name="xpath"
                  type="C337"
                  global="false"
                  inheritable="false"
                  containingComplexType="C388"/>
   <scm:key id="C417"
            name="attributeGroup"
            targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:selector xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xpath="xs:attributeGroup"
                    defaultNamespace=""/>
      <scm:field xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xpath="@name"
                 defaultNamespace=""/>
   </scm:key>
   <scm:complexType id="C851"
                    base="C243"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C1055"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1056"/>
      <scm:attributeUse required="false" inheritable="false" ref="C9"/>
      <scm:attributeUse required="true" inheritable="false" ref="C244"/>
      <scm:elementParticle minOccurs="0" maxOccurs="1" ref="C11"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C11" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C1055"
                  name="minOccurs"
                  type="#nonNegativeInteger"
                  global="false"
                  inheritable="false"
                  containingComplexType="C851">
      <scm:fixed>
         <scm:item type="#integer" value="1"/>
      </scm:fixed>
   </scm:attribute>
   <scm:attribute id="C1056"
                  name="maxOccurs"
                  type="#nonNegativeInteger"
                  global="false"
                  inheritable="false"
                  containingComplexType="C851">
      <scm:fixed>
         <scm:item type="#integer" value="1"/>
      </scm:fixed>
   </scm:attribute>
   <scm:attribute id="C916"
                  name="as"
                  type="C80"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C649"
                  name="allow-duplicate-names"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C982"
                  name="targetNamespace"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C412"/>
   <scm:wildcard id="C340"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C785"
                  name="test"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C483"/>
   <scm:attribute id="C600"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C816"
                  name="schemaLocation"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C383"/>
   <scm:attribute id="C702"
                  name="_package-version"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C380"/>
   <scm:attribute id="C656"
                  name="escape-uri-attributes"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C752"
                  name="separator"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C31"
                  name="default-collation"
                  type="C81"
                  global="false"
                  inheritable="false"
                  containingComplexType="C209"/>
   <scm:attribute id="C55"
                  name="block"
                  type="C354"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C567"
                  name="_case-order"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C745"
                  name="disable-output-escaping"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C470"/>
   <scm:attribute id="C523"
                  name="default-collation"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C81"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C8"
                  name="fixed"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C5"/>
   <scm:attribute id="C663"
                  name="normalization-form"
                  type="#NMTOKEN"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C1006"
                  name="zero-digit"
                  type="C304"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C819"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C390"/>
   <scm:attribute id="C803"
                  name="_context-item"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:wildcard id="C47"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:attribute id="C171"
                  name="abstract"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C53"/>
   <scm:attribute id="C552"
                  name="visibility"
                  type="C161"
                  global="false"
                  inheritable="false"
                  containingComplexType="C387"/>
   <scm:attribute id="C915"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C713"
                  name="_tunnel"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C396"/>
   <scm:element id="C631"
                name="any"
                targetNamespace="http://www.w3.org/2001/XMLSchema"
                type="C284"
                global="false"
                containingComplexType="C367"
                nillable="false"
                abstract="false"/>
   <scm:attribute id="C640"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C428"/>
   <scm:attribute id="C560"
                  name="order"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:wildcard id="C825"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C811"
                  name="notQName"
                  type="C282"
                  global="false"
                  inheritable="false"
                  containingComplexType="C438"/>
   <scm:attribute id="C559"
                  name="data-type"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C495"/>
   <scm:attribute id="C795"
                  name="base-uri"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C534"
                  name="type"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C158"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C969"
                  name="mode"
                  type="C289"
                  global="false"
                  inheritable="false"
                  containingComplexType="C397"/>
   <scm:complexType id="C512"
                    base="C281"
                    derivationMethod="extension"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C1057"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1058" default="no"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1059" default="yes"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1060"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1061"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1062"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1063"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1064"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1065"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1066"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeWildcard ref="C110"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="not(exists(@type) and exists(@validation))"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@select | @_select)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C1064"
                  name="_copy-namespaces"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1065"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1059"
                  name="copy-namespaces"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1061"
                  name="validation"
                  type="C310"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1057"
                  name="select"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1062"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1058"
                  name="copy-accumulators"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1063"
                  name="_copy-accumulators"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1066"
                  name="_validation"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C1060"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C512"/>
   <scm:attribute id="C627"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C400"/>
   <scm:attribute id="C256"
                  name="base"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C255"/>
   <scm:complexType id="C392"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="empty">
      <scm:attributeUse required="false" inheritable="false" ref="C1067"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1068"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1069"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1070"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true"/>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C1068"
                  name="use"
                  type="C335"
                  global="false"
                  inheritable="false"
                  containingComplexType="C392"/>
   <scm:attribute id="C1070"
                  name="_use"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C392"/>
   <scm:attribute id="C1067"
                  name="as"
                  type="C173"
                  global="false"
                  inheritable="false"
                  containingComplexType="C392"/>
   <scm:attribute id="C98"
                  name="type"
                  type="#QName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C96"/>
   <scm:complexType id="C406"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C1071"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1072"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:elementParticle minOccurs="0" maxOccurs="unbounded" ref="C449"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C449" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C449" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
      <scm:assertion xmlns:xs="http://www.w3.org/2001/XMLSchema"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                     test="exists(@name | @_name)"
                     defaultNamespace=""
                     xml:base="file:/Users/mike/w3c/qt3t/QT3-test-suite/tools/schema-for-xslt30.xsd"/>
   </scm:complexType>
   <scm:attribute id="C1071"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C406"/>
   <scm:attribute id="C1072"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C406"/>
   <scm:attribute id="C758"
                  name="_type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C846"
                  name="_streamable"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C807"
                  name="namespace"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C466"/>
   <scm:wildcard id="C353"
                 processContents="lax"
                 constraint="not"
                 namespaces="http://www.w3.org/1999/XSL/Transform ##local"/>
   <scm:attribute id="C753"
                  name="type"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C435"/>
   <scm:attribute id="C359"
                  name="maxOccurs"
                  type="C345"
                  global="false"
                  inheritable="false"
                  containingComplexType="C357"/>
   <scm:attribute id="C798"
                  name="schema-aware"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C921"
                  name="_visibility"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C409"/>
   <scm:attribute id="C844"
                  name="_for-each-stream"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C408"/>
   <scm:attribute id="C817"
                  name="id"
                  type="#ID"
                  global="false"
                  inheritable="false"
                  containingComplexType="C383"/>
   <scm:attribute id="C1041"
                  name="on-no-match"
                  type="C94"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C578"
                  name="cdata-section-elements"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C974"
                  name="use"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C510"/>
   <scm:attribute id="C612"
                  name="_media-type"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C1047"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C1014"
                  name="_exponent-separator"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C459"/>
   <scm:attribute id="C698"
                  name="_select"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C437"/>
   <scm:complexType id="C378"
                    base="#anyType"
                    derivationMethod="restriction"
                    abstract="false"
                    variety="mixed">
      <scm:attributeUse required="false" inheritable="false" ref="C1073"/>
      <scm:attributeWildcard ref="C1074"/>
      <scm:modelGroupParticle minOccurs="0" maxOccurs="unbounded">
         <scm:sequence>
            <scm:elementWildcard minOccurs="1" maxOccurs="1" ref="C1075"/>
         </scm:sequence>
      </scm:modelGroupParticle>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0" final="true">
            <scm:edge term="C1075" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C1075" to="1"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:wildcard id="C1075" processContents="lax" constraint="any"/>
   <scm:wildcard id="C1074"
                 processContents="lax"
                 constraint="not"
                 namespaces="##local http://www.w3.org/2001/XMLSchema"/>
   <scm:attribute id="C1073"
                  name="source"
                  type="#anyURI"
                  global="false"
                  inheritable="false"
                  containingComplexType="C378"/>
   <scm:attribute id="C177"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C174"/>
   <scm:attribute id="C686"
                  name="_parameter-document"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C1046"
                  name="visibility"
                  type="C327"
                  global="false"
                  inheritable="false"
                  containingComplexType="C447"/>
   <scm:attribute id="C582"
                  name="escape-uri-attributes"
                  type="C162"
                  global="false"
                  inheritable="false"
                  containingComplexType="C468"/>
   <scm:attribute id="C895"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C480"/>
   <scm:attribute id="C198"
                  name="defaultAttributesApply"
                  type="#boolean"
                  global="false"
                  inheritable="false"
                  containingComplexType="C192"/>
   <scm:attribute id="C804"
                  name="_namespace-context"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C381"/>
   <scm:attribute id="C530"
                  name="inherit-namespaces"
                  targetNamespace="http://www.w3.org/1999/XSL/Transform"
                  type="C163"
                  global="false"
                  inheritable="false"/>
   <scm:attribute id="C654"
                  name="doctype-system"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C385"/>
   <scm:attribute id="C196"
                  name="name"
                  type="#NCName"
                  global="false"
                  inheritable="false"
                  containingComplexType="C191"/>
   <scm:attribute id="C912"
                  name="_use-accumulators"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C404"/>
   <scm:key id="C413"
            name="element"
            targetNamespace="http://www.w3.org/2001/XMLSchema">
      <scm:selector xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xpath="xs:element"
                    defaultNamespace=""/>
      <scm:field xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xpath="@name"
                 defaultNamespace=""/>
   </scm:key>
   <scm:attribute id="C348"
                  name="form"
                  type="C314"
                  global="false"
                  inheritable="false"
                  containingComplexType="C96"/>
   <scm:complexType id="C473"
                    base="C14"
                    derivationMethod="extension"
                    abstract="false"
                    variety="element-only">
      <scm:attributeUse required="false" inheritable="false" ref="C1076"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1077"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1078"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1079"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1080"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1081"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1082"/>
      <scm:attributeUse required="false" inheritable="false" ref="C1083"/>
      <scm:attributeUse required="false" inheritable="false" ref="C15"/>
      <scm:attributeUse required="false" inheritable="false" ref="C16"/>
      <scm:attributeUse required="false" inheritable="false" ref="C17"/>
      <scm:attributeUse required="false" inheritable="false" ref="C18" default="strip"/>
      <scm:attributeUse required="false" inheritable="false" ref="C19"/>
      <scm:attributeUse required="false" inheritable="false" ref="C45"/>
      <scm:attributeUse required="false" inheritable="false" ref="C21"/>
      <scm:attributeUse required="false" inheritable="false" ref="C23"/>
      <scm:attributeUse required="false" inheritable="false" ref="C22"/>
      <scm:attributeUse required="false" inheritable="false" ref="C24"/>
      <scm:attributeUse required="false" inheritable="false" ref="C25"/>
      <scm:attributeUse required="false" inheritable="false" ref="C26"/>
      <scm:attributeUse required="false" inheritable="false" ref="C46"/>
      <scm:attributeUse required="false" inheritable="false" ref="C28"/>
      <scm:attributeUse required="false" inheritable="false" ref="C29"/>
      <scm:attributeUse required="false" inheritable="false" ref="C30"/>
      <scm:attributeUse required="false" inheritable="false" ref="C32"/>
      <scm:attributeUse required="false" inheritable="false" ref="C31"/>
      <scm:attributeWildcard ref="C353"/>
      <scm:elementParticle minOccurs="1" maxOccurs="unbounded" ref="C422"/>
      <scm:finiteStateMachine initialState="0">
         <scm:state nr="0">
            <scm:edge term="C422" to="1"/>
         </scm:state>
         <scm:state nr="1" final="true">
            <scm:edge term="C422" to="2"/>
         </scm:state>
         <scm:state nr="2" final="true">
            <scm:edge term="C422" to="2"/>
         </scm:state>
      </scm:finiteStateMachine>
   </scm:complexType>
   <scm:attribute id="C1079"
                  name="streamable"
                  type="C163"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1078"
                  name="as"
                  type="C80"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1081"
                  name="_initial-value"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1082"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1080"
                  name="_name"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1076"
                  name="name"
                  type="C158"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1077"
                  name="initial-value"
                  type="C211"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1083"
                  name="_streamable"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C473"/>
   <scm:attribute id="C1069"
                  name="_as"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C392"/>
   <scm:attribute id="C993"
                  name="_elements"
                  type="#string"
                  global="false"
                  inheritable="false"
                  containingComplexType="C427"/>
</scm:schema>
