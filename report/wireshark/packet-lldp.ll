Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-lldp?download=true
inline.NumInlined: 26
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.1141 = private unnamed_addr constant [14 x i8] c"ACI Fabric ID\00", align 1
@cisco_subtypes = internal constant [20 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1123 }, { i32, [4 x i8], ptr } { i32 201, [4 x i8] zeroinitializer, ptr @.str.1124 }, { i32, [4 x i8], ptr } { i32 202, [4 x i8] zeroinitializer, ptr @.str.1125 }, { i32, [4 x i8], ptr } { i32 203, [4 x i8] zeroinitializer, ptr @.str.1126 }, { i32, [4 x i8], ptr } { i32 204, [4 x i8] zeroinitializer, ptr @.str.1127 }, { i32, [4 x i8], ptr } { i32 205, [4 x i8] zeroinitializer, ptr @.str.1128 }, { i32, [4 x i8], ptr } { i32 206, [4 x i8] zeroinitializer, ptr @.str.1129 }, { i32, [4 x i8], ptr } { i32 207, [4 x i8] zeroinitializer, ptr @.str.1130 }, { i32, [4 x i8], ptr } { i32 208, [4 x i8] zeroinitializer, ptr @.str.1131 }, { i32, [4 x i8], ptr } { i32 209, [4 x i8] zeroinitializer, ptr @.str.1132 }, { i32, [4 x i8], ptr } { i32 210, [4 x i8] zeroinitializer, ptr @.str.1133 }, { i32, [4 x i8], ptr } { i32 211, [4 x i8] zeroinitializer, ptr @.str.1134 }, { i32, [4 x i8], ptr } { i32 212, [4 x i8] zeroinitializer, ptr @.str.1135 }, { i32, [4 x i8], ptr } { i32 214, [4 x i8] zeroinitializer, ptr @.str.1136 }, { i32, [4 x i8], ptr } { i32 215, [4 x i8] zeroinitializer, ptr @.str.1137 }, { i32, [4 x i8], ptr } { i32 216, [4 x i8] zeroinitializer, ptr @.str.1138 }, { i32, [4 x i8], ptr } { i32 217, [4 x i8] zeroinitializer, ptr @.str.1139 }, { i32, [4 x i8], ptr } { i32 218, [4 x i8] zeroinitializer, ptr @.str.1140 }, { i32, [4 x i8], ptr } { i32 219, [4 x i8] zeroinitializer, ptr @.str.1141 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1143 = private unnamed_addr constant [8 x i8] c"Desired\00", align 1
@.str.1144 = private unnamed_addr constant [12 x i8] c"Not Desired\00", align 1
@.str.1145 = private unnamed_addr constant [11 x i8] c"In Service\00", align 1
@.str.1146 = private unnamed_addr constant [15 x i8] c"Out of Service\00", align 1
@cisco_portstate_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1145 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1146 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1148 = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@.str.1149 = private unnamed_addr constant [5 x i8] c"Leaf\00", align 1
@.str.1150 = private unnamed_addr constant [6 x i8] c"Spine\00", align 1
@.str.1151 = private unnamed_addr constant [6 x i8] c"vLeaf\00", align 1
@cisco_noderole_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1148 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1149 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1150 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1151 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1153 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.1154 = private unnamed_addr constant [7 x i8] c"Backup\00", align 1
@cisco_portrole_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1153 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1154 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1156 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.1157 = private unnamed_addr constant [14 x i8] c"Recovery Mode\00", align 1
@cisco_portmode_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1156 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1157 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1159 = private unnamed_addr constant [8 x i8] c"Standby\00", align 1
@cisco_apicmode_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1153 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1159 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1161 = private unnamed_addr constant [12 x i8] c"Transceiver\00", align 1
@.str.1162 = private unnamed_addr constant [6 x i8] c"Trace\00", align 1
@hytec_subtypes = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1161 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1162 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@avaya_subtypes = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.726 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.728 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.736 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.730 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.732 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.734 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1165 = private unnamed_addr constant [8 x i8] c"Tagging\00", align 1
@.str.1166 = private unnamed_addr constant [11 x i8] c"No Tagging\00", align 1
@avaya_dot1q_subtypes = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1165 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1166 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@iana_subtypes = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.746 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1169 = private unnamed_addr constant [13 x i8] c"ONOS Chassis\00", align 1
@.str.1170 = private unnamed_addr constant [10 x i8] c"ONOS Port\00", align 1
@.str.1171 = private unnamed_addr constant [9 x i8] c"ONOS TTL\00", align 1
@onos_subtypes = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1169 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1170 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1171 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1173 = private unnamed_addr constant [34 x i8] c"Extreme Fabric Attach Element TLV\00", align 1
@.str.1174 = private unnamed_addr constant [37 x i8] c"Extreme Fabric Attach Assignment TLV\00", align 1
@ex_avaya_subtypes = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.1173 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.1174 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1176 = private unnamed_addr constant [48 x i8] c"Extreme Zero Touch Fabric v2 Fabric Connect TLV\00", align 1
@ex_avaya2_subtypes = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1176 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1178 = private unnamed_addr constant [23 x i8] c"Invalid Chassis ID TLV\00", align 1
@.str.1179 = private unnamed_addr constant [20 x i8] c"Invalid Port ID TLV\00", align 1
@.str.1180 = private unnamed_addr constant [25 x i8] c"Invalid Time-to-Live TLV\00", align 1
@.str.1181 = private unnamed_addr constant [25 x i8] c"Duplicate Chassis ID TLV\00", align 1
@.str.1182 = private unnamed_addr constant [22 x i8] c"Duplicate Port ID TLV\00", align 1
@.str.1183 = private unnamed_addr constant [27 x i8] c"Duplicate Time-To-Live TLV\00", align 1
@.str.1184 = private unnamed_addr constant [44 x i8] c"TLV type 0x%02X not allowed in Shutdown PDU\00", align 1
@.str.1185 = private unnamed_addr constant [60 x i8] c"Invalid TLV type (0x%02X), expected ChassisID type (0x%02X)\00", align 1
@.str.1186 = private unnamed_addr constant [21 x i8] c"Chassis Subtype = %s\00", align 1
@.str.1187 = private unnamed_addr constant [47 x i8] c"Invalid Chassis ID Length (%u), expected > (2)\00", align 1
@.str.1188 = private unnamed_addr constant [59 x i8] c"Invalid Chassis ID Length (%u) for Type (%s), expected (7)\00", align 1
@.str.1189 = private unnamed_addr constant [3 x i8] c"MA\00", align 1
@.str.1190 = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@.str.1191 = private unnamed_addr constant [63 x i8] c"Invalid Chassis ID Length (%u) for Type (%s, %s), expected (6)\00", align 1
@.str.1192 = private unnamed_addr constant [64 x i8] c"Invalid Chassis ID Length (%u) for Type (%s, %s), expected (18)\00", align 1
@.str.1193 = private unnamed_addr constant [63 x i8] c"Invalid Chassis ID Length (%u) for Type (%s), expected < (256)\00", align 1
@.str.1194 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.1195 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.1196 = private unnamed_addr constant [3 x i8] c"LA\00", align 1
@.str.1197 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.1198 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.1199 = private unnamed_addr constant [3 x i8] c"Rs\00", align 1
@.str.1200 = private unnamed_addr constant [7 x i8] c"%s/%s \00", align 1
@.str.1201 = private unnamed_addr constant [9 x i8] c", Id: %s\00", align 1
@.str.1202 = private unnamed_addr constant [44 x i8] c"Invalid Port ID (0x%02X), expected (0x%02X)\00", align 1
@.str.1203 = private unnamed_addr constant [18 x i8] c"Port Subtype = %s\00", align 1
@.str.1204 = private unnamed_addr constant [44 x i8] c"Invalid Port ID Length (%u), expected > (2)\00", align 1
@.str.1205 = private unnamed_addr constant [56 x i8] c"Invalid Port ID Length (%u) for Type (%s), expected (7)\00", align 1
@.str.1206 = private unnamed_addr constant [60 x i8] c"Invalid Port ID Length (%u) for Type (%s, %s), expected (6)\00", align 1
@.str.1207 = private unnamed_addr constant [61 x i8] c"Invalid Port ID Length (%u) for Type (%s, %s), expected (18)\00", align 1
@.str.1208 = private unnamed_addr constant [60 x i8] c"Invalid Port ID Length (%u) for Type (%s), expected < (256)\00", align 1
@.str.1209 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.1210 = private unnamed_addr constant [22 x i8] c"Time To Live = %u sec\00", align 1
@.str.1211 = private unnamed_addr constant [14 x i8] c"Normal LLDPDU\00", align 1
@.str.1212 = private unnamed_addr constant [50 x i8] c"Discard all info for this MSAP (Time To Live = 0)\00", align 1
@.str.1213 = private unnamed_addr constant [16 x i8] c"Shutdown LLDPDU\00", align 1
@.str.1214 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.1215 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1216 = private unnamed_addr constant [20 x i8] c"0 (Shutdown LLDPDU)\00", align 1
@.str.1217 = private unnamed_addr constant [48 x i8] c"Invalid Length (%u) for Type (%s), expected (0)\00", align 1
@.str.1218 = private unnamed_addr constant [22 x i8] c"Port Description = %s\00", align 1
@.str.1219 = private unnamed_addr constant [17 x i8] c"System Name = %s\00", align 1
@.str.1220 = private unnamed_addr constant [9 x i8] c"SysN=%s \00", align 1
@.str.1221 = private unnamed_addr constant [24 x i8] c"System Description = %s\00", align 1
@.str.1222 = private unnamed_addr constant [9 x i8] c"SysD=%s \00", align 1
@.str.1223 = private unnamed_addr constant [23 x i8] c"Unknown subtype (0x%x)\00", align 1
@.str.1224 = private unnamed_addr constant [21 x i8] c"Unknown subtype 0x%x\00", align 1
@.str.1225 = private unnamed_addr constant [16 x i8] c"Reserved (0x%x)\00", align 1
@lldp_cip_subtypes = external constant [0 x %struct._value_string], align 8
@.str.1226 = private unnamed_addr constant [13 x i8] c"Unknown (%d)\00", align 1
@.str.1227 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@.str.1228 = private unnamed_addr constant [40 x i8] c"TLV length (%u) too short, must be >=4)\00", align 1
@.str.1229 = private unnamed_addr constant [7 x i8] c"%s TLV\00", align 1
@.str.1230 = private unnamed_addr constant [15 x i8] c"%s Application\00", align 1
@.str.1231 = private unnamed_addr constant [6 x i8] c"iSCSI\00", align 1
@.str.1232 = private unnamed_addr constant [5 x i8] c"FCoE\00", align 1
@.str.1233 = private unnamed_addr constant [4 x i8] c"FiP\00", align 1
@dcbx_app_types = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 3260, [4 x i8] zeroinitializer, ptr @.str.1231 }, { i32, [4 x i8], ptr } { i32 35078, [4 x i8] zeroinitializer, ptr @.str.1232 }, { i32, [4 x i8], ptr } { i32 35092, [4 x i8] zeroinitializer, ptr @.str.1233 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1235 = private unnamed_addr constant [10 x i8] c"%u (0x%X)\00", align 1
@.str.1236 = private unnamed_addr constant [33 x i8] c"Same in inverse (wrong) bitorder\00", align 1
@.str.1237 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@dissect_ieee_802_3_tlv.preemption_capabilities = internal constant [6 x ptr] [ptr @hf_ieee_802_3br_aec_support, ptr @hf_ieee_802_3br_aec_enable, ptr @hf_ieee_802_3br_aec_active, ptr @hf_ieee_802_3br_aec_addfragsize, ptr @hf_ieee_802_3br_aec_reserved, ptr null], align 16
@.str.1238 = private unnamed_addr constant [21 x i8] c"Primary Power Source\00", align 1
@.str.1239 = private unnamed_addr constant [20 x i8] c"Backup Power Source\00", align 1
@media_power_pse_device = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.94 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1238 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1239 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1241 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.1242 = private unnamed_addr constant [14 x i8] c"PSE and Local\00", align 1
@media_power_pd_device = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.94 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.941 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1241 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1242 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1244 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.1245 = private unnamed_addr constant [11 x i8] c" (unknown)\00", align 1
@.str.1246 = private unnamed_addr constant [26 x i8] c"RTClass3 Port Status = %s\00", align 1
@.str.1247 = private unnamed_addr constant [11 x i8] c"Unknown %d\00", align 1
@.str.1248 = private unnamed_addr constant [15 x i8] c"LengthOfPeriod\00", align 1
@.str.1249 = private unnamed_addr constant [15 x i8] c"RedPeriodBegin\00", align 1
@.str.1250 = private unnamed_addr constant [18 x i8] c"OrangePeriodBegin\00", align 1
@.str.1251 = private unnamed_addr constant [17 x i8] c"GreenPeriodBegin\00", align 1
@.str.1252 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1253 = private unnamed_addr constant [10 x i8] c"NoS = %s \00", align 1
@.str.1254 = private unnamed_addr constant [14 x i8] c"Port Id = %s \00", align 1
@.str.1255 = private unnamed_addr constant [13 x i8] c"%s: %s, %uns\00", align 1
@.str.1256 = private unnamed_addr constant [6 x i8] c"Valid\00", align 1
@.str.1257 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.1258 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.1259 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.1260 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1261 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1262 = private unnamed_addr constant [44 x i8] c"%s length (%d) is beyond valid range (1-%d)\00", align 1
@.str.1263 = private unnamed_addr constant [39 x i8] c"%s length (%d) != expected length (%d)\00", align 1
@.str.1264 = private unnamed_addr constant [11 x i8] c" (Unknown)\00", align 1
@.str.1265 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1266 = private unnamed_addr constant [23 x i8] c"Transceiver identifier\00", align 1
@.str.1267 = private unnamed_addr constant [32 x i8] c"Transceiver bridgeable distance\00", align 1
@.str.1268 = private unnamed_addr constant [17 x i8] c"Measurement data\00", align 1
@hytec_transceiver_groups = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1266 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1267 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1268 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@hytec_tid = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.676 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@hytec_tbd = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.678 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.680 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.682 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@hytec_md = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.684 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.686 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.688 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.690 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1273 = private unnamed_addr constant [10 x i8] c"MAC Trace\00", align 1
@hytec_trace_groups = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1273 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@hytec_mc = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.692 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.700 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.706 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.708 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.710 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.712 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.714 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.716 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.718 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1276 = private unnamed_addr constant [12 x i8] c"Unknown TLV\00", align 1
@switch.table.dissect_dcbx_tlv = private unnamed_addr constant [6 x ptr] [ptr @ett_org_spc_dcbx_cee_1, ptr @ett_org_spc_dcbx_cee_2, ptr @ett_org_spc_dcbx_cee_3, ptr @ett_org_spc_dcbx_cee_4, ptr poison, ptr @ett_org_spc_dcbx_cin_6], align 8
@switch.table.dissect_dcbx_tlv.13 = private unnamed_addr constant [6 x i8] [i8 1, i8 2, i8 3, i8 4, i8 poison, i8 6], align 4
@switch.table.dissect_ieee_802_3_tlv = private unnamed_addr constant [4 x ptr] [ptr @media_power_pse_device, ptr @media_power_pd_device, ptr @media_power_pse_device, ptr @media_power_pd_device], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_lldp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.805, ptr noundef nonnull @.str.806, ptr noundef nonnull @.str.807) ; 2 uses
  store i32 %i.a, ptr @proto_lldp, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.807, ptr noundef nonnull @dissect_lldp, i32 noundef %i.a)
  store ptr %i.b, ptr @lldp_handle, align 8
  %i.c = load i32, ptr @proto_lldp, align 4
  %i.d = tail call ptr @prefs_register_protocol(i32 noundef %i.c, ptr noundef null) ; 2 uses
  tail call void @prefs_register_enum_preference(ptr noundef %i.d, ptr noundef nonnull @.str.808, ptr noundef nonnull @.str.809, ptr noundef nonnull @.str.810, ptr noundef nonnull @column_info_selection, ptr noundef nonnull @proto_register_lldp.column_info_options, i1 noundef zeroext false)
  tail call void @prefs_register_bool_preference(ptr noundef %i.d, ptr noundef nonnull @.str.811, ptr noundef nonnull @.str.812, ptr noundef nonnull @.str.813, ptr noundef nonnull @assume_unrecognized_tlv)
  %i.e = load i32, ptr @proto_lldp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef nonnull @proto_register_lldp.hf, i32 noundef 419)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_lldp.ett, i32 noundef 79)
  %i.f = load i32, ptr @proto_lldp, align 4
  %i.g = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.814, i32 noundef %i.f, i32 noundef 6, i32 noundef 2)
  store ptr %i.g, ptr @oui_unique_code_table, align 8
  %i.h = load i32, ptr @proto_lldp, align 4
  %i.i = tail call ptr @expert_register_protocol(i32 noundef %i.h)
  tail call void @expert_register_field_array(ptr noundef %i.i, ptr noundef nonnull @proto_register_lldp.ei, i32 noundef 5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @mdi_power_base(ptr noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = udiv i32 %1, 10
  %i.b = urem i32 %1, 10
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.961, i32 noundef %i.a, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @latitude_or_longitude_resolution(ptr noundef %0, i8 noundef zeroext %1) #2 {
bb.a:
  %i.a = and i8 %1, 63                            ; 13 uses
  %i.b = zext nneg i8 %i.a to i32                 ; 3 uses
  %i.c = sub nsw i32 8, %i.b                      ; 2 uses
  %i.d = icmp samesign ult i8 %i.a, 8
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i8 %i.a, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph23.preheader

.lr.ph23.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph23.prol.loopexit, label %.lr.ph23.prol

.lr.ph23.prol:                                    ; preds = %.lr.ph23.preheader, %.lr.ph23.prol
  %.122.prol = phi i32 [ %i.f, %.lr.ph23.prol ], [ %i.c, %.lr.ph23.preheader ]
  %.11621.prol = phi double [ %i.e, %.lr.ph23.prol ], [ 1.000000e+00, %.lr.ph23.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph23.prol ], [ 0, %.lr.ph23.preheader ]
  %i.e = fmul double %.11621.prol, 5.000000e-01   ; 3 uses
  %i.f = add nsw i32 %.122.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph23.prol.loopexit, label %.lr.ph23.prol, !llvm.loop !10

.lr.ph23.prol.loopexit:                           ; preds = %.lr.ph23.prol, %.lr.ph23.preheader
  %.lcssa34.unr = phi double [ poison, %.lr.ph23.preheader ], [ %i.e, %.lr.ph23.prol ]
  %.122.unr = phi i32 [ %i.c, %.lr.ph23.preheader ], [ %i.f, %.lr.ph23.prol ]
  %.11621.unr = phi double [ 1.000000e+00, %.lr.ph23.preheader ], [ %i.e, %.lr.ph23.prol ]
  %i.g = add nsw i8 %i.a, -9
  %i.h = icmp ult i8 %i.g, 7
  br i1 %i.h, label %._crit_edge, label %.lr.ph23

.lr.ph:                                           ; preds = %bb.a
  %.not35 = icmp eq i8 %i.a, 7
  br i1 %.not35, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.i = icmp samesign ult i8 %i.a, 6
  br i1 %i.i, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %.not36 = icmp eq i8 %i.a, 5
  br i1 %.not36, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.j = icmp samesign ult i8 %i.a, 4
  br i1 %i.j, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %.not37 = icmp eq i8 %i.a, 3
  br i1 %.not37, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.k = icmp samesign ult i8 %i.a, 2
  br i1 %i.k, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.l = icmp eq i8 %i.a, 0
  br i1 %i.l, label %.lr.ph.7, label %._crit_edge

.lr.ph.7:                                         ; preds = %.lr.ph.6
  br label %._crit_edge

.lr.ph23:                                         ; preds = %.lr.ph23.prol.loopexit, %.lr.ph23
  %.122 = phi i32 [ %i.u, %.lr.ph23 ], [ %.122.unr, %.lr.ph23.prol.loopexit ]
  %.11621 = phi double [ %i.t, %.lr.ph23 ], [ %.11621.unr, %.lr.ph23.prol.loopexit ]
  %i.m = fmul double %.11621, 5.000000e-01
  %i.n = fmul double %i.m, 5.000000e-01
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = fmul double %i.o, 5.000000e-01
  %i.q = fmul double %i.p, 5.000000e-01
  %i.r = fmul double %i.q, 5.000000e-01
  %i.s = fmul double %i.r, 5.000000e-01
  %i.t = fmul double %i.s, 5.000000e-01           ; 2 uses
  %i.u = add nsw i32 %.122, 8                     ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.u, 0
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph23, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph23.prol.loopexit, %.lr.ph23, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.preheader
  %.116.lcssa = phi double [ 1.000000e+00, %.preheader ], [ 2.560000e+02, %.lr.ph.7 ], [ 2.000000e+00, %.lr.ph ], [ 4.000000e+00, %.lr.ph.1 ], [ 8.000000e+00, %.lr.ph.2 ], [ 1.600000e+01, %.lr.ph.3 ], [ 3.200000e+01, %.lr.ph.4 ], [ 6.400000e+01, %.lr.ph.5 ], [ 1.280000e+02, %.lr.ph.6 ], [ %.lcssa34.unr, %.lr.ph23.prol.loopexit ], [ %i.t, %.lr.ph23 ]
  %i.v = icmp samesign ugt i8 %i.a, 34
  %i.w = icmp samesign ult i8 %i.a, 2
  %spec.select = select i1 %i.w, ptr @.str.1032, ptr @.str.1030
  %.0 = select i1 %i.v, ptr @.str.1031, ptr %spec.select
  %i.x = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1033, ptr noundef nonnull %.0, double noundef %.116.lcssa, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @latitude_base(ptr noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = and i64 %1, 17179869183                  ; 3 uses
  %i.b = and i64 %1, 8589934592
  %.not.i.not.i = icmp eq i64 %i.b, 0             ; 2 uses
  %i.c = or i64 %1, -17179869184
  %i.d = sub nsw i64 0, %i.c
  %.019.i = select i1 %.not.i.not.i, i64 %i.a, i64 %i.d ; 3 uses
  %.str.1034..str.1035.i = select i1 %.not.i.not.i, ptr @.str.1035, ptr @.str.1034
  %i.e = icmp samesign ugt i64 %.019.i, 3019898880
  %spec.select14.i = select i1 %i.e, ptr @.str.1036, ptr @.str.1030
  %i.f = and i64 %.019.i, 33554431
  %i.g = mul nuw nsw i64 %i.f, 10000              ; 2 uses
  %i.h = lshr i64 %i.g, 25
  %i.i = lshr i64 %i.g, 24
  %.lobit.i = and i64 %i.i, 1
  %spec.select.i.i = add nuw nsw i64 %.lobit.i, %i.h
  %i.j = lshr i64 %.019.i, 25
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = lshr i64 %i.a, 25
  %i.m = and i64 %1, 33554431
  %i.n = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1040, ptr noundef nonnull %spec.select14.i, i32 noundef %i.k, i64 noundef %spec.select.i.i, ptr noundef nonnull %.str.1034..str.1035.i, i64 noundef %i.a, i32 noundef 9, i64 noundef %i.l, i32 noundef 25, i64 noundef %i.m) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @longitude_base(ptr noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = and i64 %1, 17179869183                  ; 3 uses
  %i.b = and i64 %1, 8589934592
  %.not.i.not.i = icmp eq i64 %i.b, 0             ; 2 uses
  %i.c = or i64 %1, -17179869184
  %i.d = sub nsw i64 0, %i.c
  %.019.i = select i1 %.not.i.not.i, i64 %i.a, i64 %i.d ; 3 uses
  %.str.1037..str.1038.i = select i1 %.not.i.not.i, ptr @.str.1038, ptr @.str.1037
  %i.e = icmp samesign ugt i64 %.019.i, 6039797760
  %spec.select14.i = select i1 %i.e, ptr @.str.1039, ptr @.str.1030
  %i.f = and i64 %.019.i, 33554431
  %i.g = mul nuw nsw i64 %i.f, 10000              ; 2 uses
  %i.h = lshr i64 %i.g, 25
  %i.i = lshr i64 %i.g, 24
  %.lobit.i = and i64 %i.i, 1
  %spec.select.i.i = add nuw nsw i64 %.lobit.i, %i.h
  %i.j = lshr i64 %.019.i, 25
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = lshr i64 %i.a, 25
  %i.m = and i64 %1, 33554431
  %i.n = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1040, ptr noundef nonnull %spec.select14.i, i32 noundef %i.k, i64 noundef %spec.select.i.i, ptr noundef nonnull %.str.1037..str.1038.i, i64 noundef %i.a, i32 noundef 9, i64 noundef %i.l, i32 noundef 25, i64 noundef %i.m) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @altitude_resolution(ptr noundef %0, i8 noundef zeroext %1) #2 {
bb.a:
  %i.a = and i8 %1, 63                            ; 4 uses
  %i.b = zext nneg i8 %i.a to i32                 ; 2 uses
  %i.c = sub nsw i32 21, %i.b                     ; 3 uses
  %i.d = icmp samesign ult i8 %i.a, 21
  br i1 %i.d, label %.lr.ph, label %.preheader.a

.preheader.loopexit:                              ; preds = %.lr.ph
  %smin = tail call i32 @llvm.smin.i32(i32 %i.c, i32 1)
  %i.e = add nsw i32 %smin, -1
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader.loopexit, %bb.a
  %.015.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %i.h, %.preheader.loopexit ] ; 3 uses
  %.014.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.e, %.preheader.loopexit ] ; 5 uses
  %2 = icmp slt i32 %.014.lcssa, 0
  br i1 %2, label %.lr.ph23.preheader, label %._crit_edge

.lr.ph23.preheader:                               ; preds = %.preheader.a
  %3 = sub i32 0, %.014.lcssa
  %xtraiter = and i32 %3, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph23.prol.loopexit, label %.lr.ph23.prol

.lr.ph23.prol:                                    ; preds = %.lr.ph23.preheader, %.lr.ph23.prol
  %.122.prol = phi i32 [ %i.g, %.lr.ph23.prol ], [ %.014.lcssa, %.lr.ph23.preheader ]
  %.11621.prol = phi double [ %i.f, %.lr.ph23.prol ], [ %.015.lcssa, %.lr.ph23.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph23.prol ], [ 0, %.lr.ph23.preheader ]
  %i.f = fmul double %.11621.prol, 5.000000e-01   ; 3 uses
  %i.g = add nsw i32 %.122.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph23.prol.loopexit, label %.lr.ph23.prol, !llvm.loop !12

.lr.ph23.prol.loopexit:                           ; preds = %.lr.ph23.prol, %.lr.ph23.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph23.preheader ], [ %i.f, %.lr.ph23.prol ]
  %.122.unr = phi i32 [ %.014.lcssa, %.lr.ph23.preheader ], [ %i.g, %.lr.ph23.prol ]
  %.11621.unr = phi double [ %.015.lcssa, %.lr.ph23.preheader ], [ %i.f, %.lr.ph23.prol ]
  %4 = icmp ugt i32 %.014.lcssa, -8
  br i1 %4, label %._crit_edge, label %.lr.ph23

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01419 = phi i32 [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %.01518 = phi double [ %i.h, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %i.h = fmul double %.01518, 2.000000e+00        ; 2 uses
  %i.i = add nsw i32 %.01419, -1
  %i.j = icmp sgt i32 %.01419, 1
  br i1 %i.j, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !13

.lr.ph23:                                         ; preds = %.lr.ph23.prol.loopexit, %.lr.ph23
  %.122 = phi i32 [ %i.s, %.lr.ph23 ], [ %.122.unr, %.lr.ph23.prol.loopexit ]
  %.11621 = phi double [ %i.r, %.lr.ph23 ], [ %.11621.unr, %.lr.ph23.prol.loopexit ]
  %i.k = fmul double %.11621, 5.000000e-01
  %i.l = fmul double %i.k, 5.000000e-01
  %i.m = fmul double %i.l, 5.000000e-01
  %i.n = fmul double %i.m, 5.000000e-01
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = fmul double %i.o, 5.000000e-01
  %i.q = fmul double %i.p, 5.000000e-01
  %i.r = fmul double %i.q, 5.000000e-01           ; 2 uses
  %i.s = add nsw i32 %.122, 8                     ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.s, 0
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph23, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph23.prol.loopexit, %.lr.ph23, %.preheader.a
  %.116.lcssa = phi double [ %.015.lcssa, %.preheader.a ], [ %.lcssa.unr, %.lr.ph23.prol.loopexit ], [ %i.r, %.lr.ph23 ]
  %i.t = icmp samesign ugt i8 %i.a, 30
  %i.u = icmp samesign ult i8 %i.a, 2
  %spec.select = select i1 %i.u, ptr @.str.1032, ptr @.str.1030
  %.0 = select i1 %i.t, ptr @.str.1031, ptr %spec.select
  %i.v = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1044, ptr noundef nonnull %.0, double noundef %.116.lcssa, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @altitude_base(ptr noundef %0, i32 noundef %1) #2 {
get2sComplementAbsoluteValue.exit:
  %i.a = and i32 %1, 1073741823                   ; 2 uses
  %i.b = zext nneg i32 %i.a to i64                ; 5 uses
  %.not.i.not = icmp samesign ult i32 %i.a, 536870912 ; 2 uses
  %i.c = sub nuw nsw i64 1073741824, %i.b
  %.0 = select i1 %.not.i.not, i64 %i.b, i64 %i.c ; 2 uses
  %i.d = and i64 %.0, 255
  %i.e = mul nuw nsw i64 %i.d, 10000              ; 2 uses
  %i.f = lshr i64 %i.e, 8
  %i.g = lshr i64 %i.e, 7
  %.lobit = and i64 %i.g, 1
  %spec.select.i = add nuw nsw i64 %.lobit, %i.f
  %.str.1045..str.1046 = select i1 %.not.i.not, ptr @.str.1046, ptr @.str.1045
  %i.h = lshr i64 %.0, 8
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = lshr i64 %i.b, 8
  %i.k = and i64 %i.b, 255
  %i.l = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1047, ptr noundef nonnull %.str.1045..str.1046, i32 noundef %i.i, i64 noundef %spec.select.i, i64 noundef %i.b, i32 noundef 22, i64 noundef %i.j, i32 noundef 8, i64 noundef %i.k) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @media_power_base(ptr noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = mul i32 %1, 100
  %i.b = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1082, i32 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_lldp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr i8, ptr %1, i64 8          ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef nonnull @.str.806)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = load i32, ptr @proto_lldp, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.g = load i32, ptr @ett_lldp, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 15 uses
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.j = and i16 %i.i, 511
  %narrow = add nuw nsw i16 %i.j, 2
  %i.k = zext nneg i16 %narrow to i32
  %i.l = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 0, i32 noundef %i.k)
  %i.m = getelementptr i8, ptr %1, i64 416        ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.n, i64 noundef 32) #10 ; 5 uses
  %i.p = tail call fastcc i32 @dissect_lldp_chassis_id(ptr noundef %i.l, ptr noundef %1, ptr noundef %i.h, ptr noundef %i.o) ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.r, i32 noundef 25, ptr noundef nonnull @.str.1178)
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.s = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.p)
  %i.t = and i16 %i.s, 511
  %narrow121 = add nuw nsw i16 %i.t, 2
  %i.u = zext nneg i16 %narrow121 to i32
  %i.v = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.u)
  %i.w = tail call fastcc i32 @dissect_lldp_port_id(ptr noundef %i.v, ptr noundef %1, ptr noundef %i.h, ptr noundef %i.o) ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.y, i32 noundef 25, ptr noundef nonnull @.str.1179)
  br label %bb.db

bb.e:                                             ; preds = %bb.c
  %i.z = add nuw nsw i32 %i.w, %i.p               ; 3 uses
  %i.aa = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.z)
  %i.ab = and i16 %i.aa, 511
  %narrow122 = add nuw nsw i16 %i.ab, 2
  %i.ac = zext nneg i16 %narrow122 to i32
  %i.ad = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.z, i32 noundef %i.ac)
  %i.ae = call fastcc i32 @dissect_lldp_time_to_live(ptr noundef %i.ad, ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull %i.a) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.ag, i32 noundef 25, ptr noundef nonnull @.str.1180)
  br label %bb.db

bb.g:                                             ; preds = %bb.e
  %i.ah = add nuw nsw i32 %i.ae, %i.z             ; 3 uses
  %i.ai = tail call i32 @tvb_captured_length(ptr noundef %0) ; 2 uses
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %bb.da
  %i.ak = add i32 %.0, %.0115147                  ; 3 uses
  %i.al = icmp ult i32 %i.ak, %i.ai
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.0115147 = phi i32 [ %i.ak, %bb.h ], [ %i.ah, %bb.g ] ; 8 uses
  %i.am = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0115147) ; 2 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = lshr i16 %i.am, 9                       ; 2 uses
  %i.ap = zext nneg i16 %i.ao to i32
  %i.aq = and i32 %i.an, 511                      ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, 2
  %i.as = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.0115147, i32 noundef %i.ar) ; 79 uses
  switch i16 %i.ao, label %bb.cw [
    i16 1, label %bb.i
    i16 2, label %bb.k
    i16 3, label %bb.m
    i16 0, label %bb.o
    i16 4, label %bb.p
    i16 5, label %bb.q
    i16 6, label %bb.q
    i16 7, label %bb.t
    i16 8, label %bb.u
    i16 127, label %bb.aa
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.at = tail call fastcc i32 @dissect_lldp_chassis_id(ptr noundef %i.as, ptr noundef %1, ptr noundef %i.h, ptr noundef %i.o) ; 0 uses
  %i.au = load i32, ptr @column_info_selection, align 4
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.j, label %dissect_lldp_end_of_lldpdu.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.aw, i32 noundef 25, ptr noundef nonnull @.str.1181)
  br label %dissect_lldp_end_of_lldpdu.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = tail call fastcc i32 @dissect_lldp_port_id(ptr noundef %i.as, ptr noundef %1, ptr noundef %i.h, ptr noundef %i.o) ; 0 uses
  %i.ay = load i32, ptr @column_info_selection, align 4
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %dissect_lldp_end_of_lldpdu.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.ba, i32 noundef 25, ptr noundef nonnull @.str.1182)
  br label %dissect_lldp_end_of_lldpdu.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bb = call fastcc i32 @dissect_lldp_time_to_live(ptr noundef %i.as, ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull %i.a) ; 0 uses
  %i.bc = load i32, ptr @column_info_selection, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.n, label %dissect_lldp_end_of_lldpdu.exit

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.be, i32 noundef 25, ptr noundef nonnull @.str.1183)
  br label %dissect_lldp_end_of_lldpdu.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bf = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.as, i32 noundef 0) ; 2 uses
  %i.bg = and i16 %i.bf, 511                      ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i32              ; 2 uses
  %i.bi = add nuw nsw i32 %i.bh, 2
  %i.bj = load i32, ptr @ett_end_of_lldpdu, align 4
  %i.bk = tail call ptr @proto_tree_add_subtree(ptr noundef %i.h, ptr noundef %i.as, i32 noundef 0, i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef null, ptr noundef nonnull @.str.816) ; 2 uses
  %i.bl = load i32, ptr @hf_lldp_tlv_type, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.bl, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bn = load i32, ptr @hf_lldp_tlv_len, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.bn, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %.thread135, label %.thread.thread

.thread.thread:                                   ; preds = %bb.o
  %i.bp = lshr i16 %i.bf, 9
  %i.bq = zext nneg i16 %i.bp to i32
  %i.br = tail call ptr @val_to_str_const(i32 noundef %i.bq, ptr noundef nonnull @tlv_types, ptr noundef nonnull @.str.1030)
  %i.bs = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bo, ptr noundef nonnull @ei_lldp_bad_length_excess, ptr noundef nonnull @.str.1217, i32 noundef %i.bh, ptr noundef %i.br) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph
  %i.bt = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.as, i32 noundef 0)
  %i.bu = and i16 %i.bt, 511
  %i.bv = zext nneg i16 %i.bu to i32              ; 3 uses
  %i.bw = load ptr, ptr %i.m, align 8
  %i.bx = tail call ptr @tvb_format_stringzpad(ptr noundef %i.bw, ptr noundef %i.as, i32 noundef 2, i32 noundef %i.bv)
  %i.by = add nuw nsw i32 %i.bv, 2                ; 2 uses
  %i.bz = load i32, ptr @ett_port_description, align 4
  %i.ca = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.h, ptr noundef %i.as, i32 noundef 0, i32 noundef %i.by, i32 noundef %i.bz, ptr noundef null, ptr noundef nonnull @.str.1218, ptr noundef %i.bx) ; 3 uses
  %i.cb = load i32, ptr @hf_lldp_tlv_type, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.ca, i32 noundef %i.cb, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_lldp_tlv_len, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.ca, i32 noundef %i.cd, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cf = load i32, ptr @hf_port_desc, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %i.ca, i32 noundef %i.cf, ptr noundef %i.as, i32 noundef 2, i32 noundef %i.bv, i32 noundef 0) ; 0 uses
  br label %dissect_lldp_end_of_lldpdu.exit

bb.q:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ch = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.as, i32 noundef 0) ; 2 uses
  %i.ci = and i16 %i.ch, 511
  %i.cj = zext nneg i16 %i.ci to i32              ; 3 uses
  %i.ck = load ptr, ptr %i.m, align 8
  %i.cl = tail call ptr @tvb_format_stringzpad(ptr noundef %i.ck, ptr noundef %i.as, i32 noundef 2, i32 noundef %i.cj) ; 3 uses
  %.mask.i = and i16 %i.ch, -512
  %i.cm = icmp eq i16 %.mask.i, 2560              ; 2 uses
  %i.cn = add nuw nsw i32 %i.cj, 2                ; 3 uses
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr @ett_system_name, align 4
  %i.cp = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.h, ptr noundef %i.as, i32 noundef 0, i32 noundef %i.cn, i32 noundef %i.co, ptr noundef null, ptr noundef nonnull @.str.1219, ptr noundef %i.cl) ; 2 uses
  %i.cq = load i32, ptr @column_info_selection, align 4
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %.sink.split.i, label %dissect_lldp_system_name.exit

bb.s:                                             ; preds = %bb.q
  %i.cs = load i32, ptr @ett_system_desc, align 4
  %i.ct = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.h, ptr noundef %i.as, i32 noundef 0, i32 noundef %i.cn, i32 noundef %i.cs, ptr noundef null, ptr noundef nonnull @.str.1221, ptr noundef %i.cl) ; 2 uses
  %i.cu = load i32, ptr @column_info_selection, align 4
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %.sink.split.i, label %dissect_lldp_system_name.exit

.sink.split.i:                                    ; preds = %bb.s, %bb.r
  %.str.1222.sink.i = phi ptr [ @.str.1220, %bb.r ], [ @.str.1222, %bb.s ]
  %.0.ph.i = phi ptr [ %i.cp, %bb.r ], [ %i.ct, %bb.s ]
  %i.cw = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cw, i32 noundef 25, ptr noundef nonnull %.str.1222.sink.i, ptr noundef %i.cl)
  br label %dissect_lldp_system_name.exit

dissect_lldp_system_name.exit:                    ; preds = %bb.r, %bb.s, %.sink.split.i
  %.0.i123 = phi ptr [ %i.ct, %bb.s ], [ %i.cp, %bb.r ], [ %.0.ph.i, %.sink.split.i ] ; 3 uses
  %i.cx = load i32, ptr @hf_lldp_tlv_type, align 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %.0.i123, i32 noundef %i.cx, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cz = load i32, ptr @hf_lldp_tlv_len, align 4
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %.0.i123, i32 noundef %i.cz, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %hf_lldp_tlv_system_name.val.i = load i32, ptr @hf_lldp_tlv_system_name, align 4
  %hf_lldp_tlv_system_desc.val.i = load i32, ptr @hf_lldp_tlv_system_desc, align 4
  %i.db = select i1 %i.cm, i32 %hf_lldp_tlv_system_name.val.i, i32 %hf_lldp_tlv_system_desc.val.i
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %.0.i123, i32 noundef %i.db, ptr noundef %i.as, i32 noundef 2, i32 noundef %i.cj, i32 noundef 0) ; 0 uses
  br label %dissect_lldp_end_of_lldpdu.exit

bb.t:                                             ; preds = %.lr.ph
  %i.dd = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.as, i32 noundef 0)
  %i.de = and i16 %i.dd, 511
  %narrow.i = add nuw nsw i16 %i.de, 2
  %i.df = zext nneg i16 %narrow.i to i32
  %i.dg = load i32, ptr @ett_system_cap, align 4
  %i.dh = tail call ptr @proto_tree_add_subtree(ptr noundef %i.h, ptr noundef %i.as, i32 noundef 0, i32 noundef %i.df, i32 noundef %i.dg, ptr noundef null, ptr noundef nonnull @.str.4) ; 4 uses
  %i.di = load i32, ptr @hf_lldp_tlv_type, align 4
  %i.dj = tail call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.di, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dk = load i32, ptr @hf_lldp_tlv_len, align 4
  %i.dl = tail call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.dk, ptr noundef %i.as, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dm = load i32, ptr @hf_lldp_tlv_system_cap, align 4
  %i.dn = tail call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.dm, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0)
  %i.do = load i32, ptr @ett_system_cap_summary, align 4
  %i.dp = tail call ptr @proto_item_add_subtree(ptr noundef %i.dn, i32 noundef %i.do) ; 11 uses
  %i.dq = load i32, ptr @hf_lldp_tlv_system_cap_other, align 4
  %i.dr = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.dq, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ds = load i32, ptr @hf_lldp_tlv_system_cap_repeater, align 4
  %i.dt = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.ds, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.du = load i32, ptr @hf_lldp_tlv_system_cap_bridge, align 4
  %i.dv = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.du, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dw = load i32, ptr @hf_lldp_tlv_system_cap_wlan_access_pt, align 4
  %i.dx = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.dw, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dy = load i32, ptr @hf_lldp_tlv_system_cap_router, align 4
  %i.dz = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.dy, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ea = load i32, ptr @hf_lldp_tlv_system_cap_telephone, align 4
  %i.eb = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.ea, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ec = load i32, ptr @hf_lldp_tlv_system_cap_docsis_cable_device, align 4
  %i.ed = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.ec, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ee = load i32, ptr @hf_lldp_tlv_system_cap_station_only, align 4
  %i.ef = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.ee, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eg = load i32, ptr @hf_lldp_tlv_system_cap_cvlan_component, align 4
  %i.eh = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.eg, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ei = load i32, ptr @hf_lldp_tlv_system_cap_svlan_component, align 4
  %i.ej = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.ei, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ek = load i32, ptr @hf_lldp_tlv_system_cap_tpmr_component, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %i.dp, i32 noundef %i.ek, ptr noundef %i.as, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_lldp_tlv_enable_system_cap, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.em, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0)
  %i.eo = load i32, ptr @ett_system_cap_enabled, align 4
  %i.ep = tail call ptr @proto_item_add_subtree(ptr noundef %i.en, i32 noundef %i.eo) ; 11 uses
  %i.eq = load i32, ptr @hf_lldp_tlv_enable_system_cap_other, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.eq, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_lldp_tlv_enable_system_cap_repeater, align 4
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.es, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eu = load i32, ptr @hf_lldp_tlv_enable_system_cap_bridge, align 4
  %i.ev = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.eu, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ew = load i32, ptr @hf_lldp_tlv_enable_system_cap_wlan_access_pt, align 4
  %i.ex = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.ew, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ey = load i32, ptr @hf_lldp_tlv_enable_system_cap_router, align 4
  %i.ez = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.ey, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fa = load i32, ptr @hf_lldp_tlv_enable_system_cap_telephone, align 4
  %i.fb = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.fa, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fc = load i32, ptr @hf_lldp_tlv_enable_system_cap_docsis_cable_device, align 4
  %i.fd = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.fc, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fe = load i32, ptr @hf_lldp_tlv_enable_system_cap_station_only, align 4
  %i.ff = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.fe, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fg = load i32, ptr @hf_lldp_tlv_enable_system_cap_cvlan_component, align 4
  %i.fh = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.fg, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fi = load i32, ptr @hf_lldp_tlv_enable_system_cap_svlan_component, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.fi, ptr noundef %i.as, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fk = load i32, ptr @hf_lldp_tlv_enable_system_cap_tpmr_component, align 4
end_hunk_0
begin_hunk_1_@dissect_dcbx_tlv:bb.a
  %switch.gep21 = getelementptr inbounds nuw i8, ptr @switch.table.dissect_dcbx_tlv.13, i64 %i.l
  %switch.load22 = load i8, ptr %switch.gep21, align 1
  %switch.ext = zext i8 %switch.load22 to i32
  %narrow = add nuw nsw i16 %i.i, 2
  %i.m = zext nneg i16 %narrow to i32
  %i.n = load i32, ptr %switch.load, align 4
  %i.o = tail call ptr @val_to_str_const(i32 noundef %switch.ext, ptr noundef nonnull @dcbx_subtypes, ptr noundef nonnull @.str.94)
  %i.p = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %.02026, i32 noundef %i.m, i32 noundef %i.n, ptr noundef null, ptr noundef nonnull @.str.1229, ptr noundef %i.o)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph8, %switch.lookup
  %.1 = phi ptr [ %.07, %.lr.ph8 ], [ %i.p, %switch.lookup ] ; 39 uses
  %i.q = load i32, ptr @hf_dcbx_tlv_type, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.q, ptr noundef %0, i32 noundef %.02026, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_dcbx_tlv_len, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.s, ptr noundef %0, i32 noundef %.02026, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = add i32 %.02026, 2
  %i.v = load i32, ptr @hf_dcbx_tlv_oper_version, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.02026, 3
  %i.y = load i32, ptr @hf_dcbx_tlv_max_version, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.02026, 4                      ; 4 uses
  %i.ab = icmp eq i16 %i.h, 1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr @hf_dcbx_control_sequence, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.aa, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %.02026, 8
  %i.af = load i32, ptr @hf_dcbx_control_ack, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = add i32 %.02026, 12
  br label %.loopexit1

bb.d:                                             ; preds = %bb.b
  %i.ai = load i32, ptr @hf_dcbx_feature_flag_enabled, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = load i32, ptr @hf_dcbx_feature_flag_willing, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.am = load i32, ptr @hf_dcbx_feature_flag_error, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = add i32 %.02026, 5
  %i.ap = load i32, ptr @hf_dcbx_feature_subtype, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = add i32 %.02026, 6                      ; 16 uses
  switch i16 %i.h, label %.loopexit1 [
    i16 2, label %bb.e
    i16 3, label %bb.f
    i16 4, label %bb.g
    i16 6, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr @hf_dcbx_feature_pgid_prio_0, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ar, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.au = load i32, ptr @hf_dcbx_feature_pgid_prio_1, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.ar, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aw = load i32, ptr @hf_dcbx_feature_pgid_prio_2, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ar, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ay = load i32, ptr @hf_dcbx_feature_pgid_prio_3, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.ar, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %.02026, 8                      ; 4 uses
  %i.bb = load i32, ptr @hf_dcbx_feature_pgid_prio_4, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bd = load i32, ptr @hf_dcbx_feature_pgid_prio_5, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.ba, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_dcbx_feature_pgid_prio_6, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.ba, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_dcbx_feature_pgid_prio_7, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.ba, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bj = add i32 %.02026, 10
  %i.bk = load i32, ptr @hf_dcbx_feature_pg_per_0, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = add i32 %.02026, 11
  %i.bn = load i32, ptr @hf_dcbx_feature_pg_per_1, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %.02026, 12
  %i.bq = load i32, ptr @hf_dcbx_feature_pg_per_2, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bs = add i32 %.02026, 13
  %i.bt = load i32, ptr @hf_dcbx_feature_pg_per_3, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = add i32 %.02026, 14
  %i.bw = load i32, ptr @hf_dcbx_feature_pg_per_4, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.by = add i32 %.02026, 15
  %i.bz = load i32, ptr @hf_dcbx_feature_pg_per_5, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.by, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cb = add i32 %.02026, 16
  %i.cc = load i32, ptr @hf_dcbx_feature_pg_per_6, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cc, ptr noundef %0, i32 noundef %i.cb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ce = add i32 %.02026, 17
  %i.cf = load i32, ptr @hf_dcbx_feature_pg_per_7, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cf, ptr noundef %0, i32 noundef %i.ce, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ch = add i32 %.02026, 18
  %i.ci = load i32, ptr @hf_dcbx_feature_pg_numtcs, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ck = add i32 %.02026, 19
  br label %.loopexit1

bb.f:                                             ; preds = %bb.d
  %i.cl = load i32, ptr @hf_dcbx_feature_pfc_prio0, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_dcbx_feature_pfc_prio1, align 4
  %i.co = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cp = load i32, ptr @hf_dcbx_feature_pfc_prio2, align 4
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cr = load i32, ptr @hf_dcbx_feature_pfc_prio3, align 4
  %i.cs = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ct = load i32, ptr @hf_dcbx_feature_pfc_prio4, align 4
  %i.cu = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ct, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cv = load i32, ptr @hf_dcbx_feature_pfc_prio5, align 4
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cx = load i32, ptr @hf_dcbx_feature_pfc_prio6, align 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cz = load i32, ptr @hf_dcbx_feature_pfc_prio7, align 4
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.db = add i32 %.02026, 7
  %i.dc = load i32, ptr @hf_dcbx_feature_pfc_numtcs, align 4
  %i.dd = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.db, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.de = add i32 %.02026, 8
  br label %.loopexit1

bb.g:                                             ; preds = %bb.d
  %.not4 = icmp samesign ult i16 %i.i, 10
  br i1 %.not4, label %.loopexit1, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %.lhs.trunc = add nsw i16 %i.i, -4
  %i.df = udiv i16 %.lhs.trunc, 6
  %i.dg = trunc nuw nsw i16 %i.df to i8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.in = phi i8 [ %i.dh, %.loopexit ], [ %i.dg, %.lr.ph.preheader ]
  %.12035 = phi i32 [ %i.eg, %.loopexit ], [ %i.ar, %.lr.ph.preheader ] ; 6 uses
  %i.dh = add nsw i8 %.in, -1                     ; 2 uses
  %i.di = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.12035)
  %i.dj = load i32, ptr @ett_org_spc_dcbx_cee_app, align 4
  %i.dk = zext i16 %i.di to i32
  %i.dl = tail call ptr @val_to_str_const(i32 noundef %i.dk, ptr noundef nonnull @dcbx_app_types, ptr noundef nonnull @.str.94)
  %i.dm = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.1, ptr noundef %0, i32 noundef %.12035, i32 noundef 6, i32 noundef %i.dj, ptr noundef null, ptr noundef nonnull @.str.1230, ptr noundef %i.dl) ; 4 uses
  %i.dn = load i32, ptr @hf_dcbx_feature_app_proto, align 4
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %i.dm, i32 noundef %i.dn, ptr noundef %0, i32 noundef %.12035, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dp = add i32 %.12035, 2                      ; 2 uses
  %i.dq = load i32, ptr @hf_dcbx_feature_app_oui, align 4
  %i.dr = tail call ptr @proto_tree_add_item(ptr noundef %i.dm, i32 noundef %i.dq, ptr noundef %0, i32 noundef %i.dp, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ds = load i32, ptr @hf_dcbx_feature_app_selector, align 4
  %i.dt = tail call ptr @proto_tree_add_item(ptr noundef %i.dm, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.dp, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.du = add i32 %.12035, 5                      ; 2 uses
  %i.dv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.du) ; 2 uses
  %i.dw = zext i8 %i.dv to i32                    ; 7 uses
  %i.dx = and i32 %i.dw, 1
  %.not213 = icmp eq i32 %i.dx, 0
  br i1 %.not213, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.lr.ph
  %i.dy = and i32 %i.dw, 2
  %.not213.1 = icmp eq i32 %i.dy, 0
  br i1 %.not213.1, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dz = and i32 %i.dw, 4
  %.not213.2 = icmp eq i32 %i.dz, 0
  br i1 %.not213.2, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ea = and i32 %i.dw, 8
  %.not213.3 = icmp eq i32 %i.ea, 0
  br i1 %.not213.3, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eb = and i32 %i.dw, 16
  %.not213.4 = icmp eq i32 %i.eb, 0
  br i1 %.not213.4, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ec = and i32 %i.dw, 32
  %.not213.5 = icmp eq i32 %i.ec, 0
  br i1 %.not213.5, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ed = and i32 %i.dw, 64
  %.not213.6 = icmp eq i32 %i.ed, 0
  br i1 %.not213.6, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not213.7 = icmp eq i8 %i.dv, 0
  br i1 %.not213.7, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph
  %.lcssa = phi i32 [ 0, %.lr.ph ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ], [ 7, %bb.n ]
  %i.ee = load i32, ptr @hf_dcbx_feature_app_prio, align 4
  %i.ef = tail call ptr @proto_tree_add_uint(ptr noundef %i.dm, i32 noundef %i.ee, ptr noundef %0, i32 noundef %i.du, i32 noundef 1, i32 noundef %.lcssa) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.o
  %i.eg = add i32 %.12035, 6                      ; 2 uses
  %.not = icmp eq i8 %i.dh, 0
  br i1 %.not, label %.loopexit1, label %.lr.ph, !llvm.loop !16

bb.p:                                             ; preds = %bb.d
  %i.eh = load i32, ptr @hf_dcbx_feature_flag_llink_type, align 4
  %i.ei = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.eh, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ej = add i32 %.02026, 7
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit, %bb.g, %bb.d, %bb.e, %bb.f, %bb.p, %bb.c
  %.2 = phi i32 [ %i.ah, %bb.c ], [ %i.ar, %bb.d ], [ %i.ck, %bb.e ], [ %i.de, %bb.f ], [ %i.ej, %bb.p ], [ %i.ar, %bb.g ], [ %i.eg, %.loopexit ] ; 2 uses
  %i.ek = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.2)
  %.not15 = icmp eq i32 %i.ek, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph8, !llvm.loop !17

._crit_edge:                                      ; preds = %.loopexit1, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ieee_802_1_tlv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_ieee_802_1_subtype, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.a, label %.loopexit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.f
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_ieee_802_1_port_vlan_id, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_ieee_802_1_port_and_vlan_id_flag, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.h = load i32, ptr @ett_port_vlan_flags, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 2 uses
  %i.j = load i32, ptr @hf_ieee_802_1_port_and_vlan_id_flag_supported, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_ieee_802_1_port_and_vlan_id_flag_enabled, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_ieee_802_1_port_proto_vlan_id, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.p = load i32, ptr @hf_ieee_802_1_vlan_id, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.s = load i32, ptr @hf_ieee_802_1_vlan_name_length, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.s, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not385 = icmp eq i8 %i.r, 0
  br i1 %.not385, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext i8 %i.r to i32
  %i.v = load i32, ptr @hf_ieee_802_1_vlan_name, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef 4, i32 noundef %i.u, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.x = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.y = load i32, ptr @hf_ieee_802_1_proto_id_length, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.y, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not384 = icmp eq i8 %i.x, 0
  br i1 %.not384, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = zext i8 %i.x to i32
  %i.ab = load i32, ptr @hf_ieee_802_1_proto_id, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ab, ptr noundef %0, i32 noundef 2, i32 noundef %i.aa, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.ad = load i32, ptr @hf_ieee_802_1_aggregation_status, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ad, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.af = load i32, ptr @ett_802_1_aggregation, align 4
  %i.ag = tail call ptr @proto_item_add_subtree(ptr noundef %i.ae, i32 noundef %i.af) ; 3 uses
  %i.ah = load i32, ptr @hf_ieee_802_1_aggregation_status_cap, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_ieee_802_1_aggregation_status_enabled, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.ag, i32 noundef %i.aj, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_ieee_802_1_aggregation_status_porttype, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.ag, i32 noundef %i.al, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_ieee_802_1_aggregated_port_id, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.an, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %i.ap = load i32, ptr @hf_ieee_8021qau_cnpv_prio0, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ap, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_ieee_8021qau_cnpv_prio1, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ar, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_ieee_8021qau_cnpv_prio2, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.at, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = load i32, ptr @hf_ieee_8021qau_cnpv_prio3, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.av, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = load i32, ptr @hf_ieee_8021qau_cnpv_prio4, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ax, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.az = load i32, ptr @hf_ieee_8021qau_cnpv_prio5, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.az, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = load i32, ptr @hf_ieee_8021qau_cnpv_prio6, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bb, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = load i32, ptr @hf_ieee_8021qau_cnpv_prio7, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bd, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_ieee_8021qau_ready_prio0, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bf, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_ieee_8021qau_ready_prio1, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bh, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = load i32, ptr @hf_ieee_8021qau_ready_prio2, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bj, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bl = load i32, ptr @hf_ieee_8021qau_ready_prio3, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bl, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bn = load i32, ptr @hf_ieee_8021qau_ready_prio4, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bn, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_ieee_8021qau_ready_prio5, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bp, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.br = load i32, ptr @hf_ieee_8021qau_ready_prio6, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.br, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bt = load i32, ptr @hf_ieee_8021qau_ready_prio7, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bt, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.bv = load i32, ptr @hf_ieee_8021az_feature_flag_willing, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bv, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bx = load i32, ptr @hf_ieee_8021az_feature_flag_cbs, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bx, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.ca = and i8 %i.bz, 7                         ; 2 uses
  %i.cb = load i32, ptr @hf_ieee_8021az_maxtcs, align 4
  %i.cc = zext nneg i8 %i.ca to i32               ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  %i.cd = select i1 %.not, i32 8, i32 %i.cc
  %i.ce = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.cb, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.cc, ptr noundef nonnull @.str.1235, i32 noundef %i.cd, i32 noundef %i.cc) ; 0 uses
  %i.cf = load i32, ptr @hf_dcbx_feature_pgid_prio_0, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cf, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_dcbx_feature_pgid_prio_1, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ch, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cj = load i32, ptr @hf_dcbx_feature_pgid_prio_2, align 4
  %i.ck = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cj, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cl = load i32, ptr @hf_dcbx_feature_pgid_prio_3, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cl, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_dcbx_feature_pgid_prio_4, align 4
  %i.co = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cn, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cp = load i32, ptr @hf_dcbx_feature_pgid_prio_5, align 4
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cp, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cr = load i32, ptr @hf_dcbx_feature_pgid_prio_6, align 4
  %i.cs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cr, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ct = load i32, ptr @hf_dcbx_feature_pgid_prio_7, align 4
  %i.cu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ct, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cv = load i32, ptr @hf_dcbx_feature_pg_per_0, align 4
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cv, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cx = load i32, ptr @hf_dcbx_feature_pg_per_1, align 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cx, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cz = load i32, ptr @hf_dcbx_feature_pg_per_2, align 4
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cz, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.db = load i32, ptr @hf_dcbx_feature_pg_per_3, align 4
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.db, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dd = load i32, ptr @hf_dcbx_feature_pg_per_4, align 4
  %i.de = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dd, ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.df = load i32, ptr @hf_dcbx_feature_pg_per_5, align 4
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.df, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dh = load i32, ptr @hf_dcbx_feature_pg_per_6, align 4
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dh, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dj = load i32, ptr @hf_dcbx_feature_pg_per_7, align 4
  %i.dk = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dj, ptr noundef %0, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dl = load i32, ptr @hf_ieee_8021az_tsa_class0, align 4
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dl, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dn = load i32, ptr @hf_ieee_8021az_tsa_class1, align 4
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dn, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dp = load i32, ptr @hf_ieee_8021az_tsa_class2, align 4
  %i.dq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dp, ptr noundef %0, i32 noundef 16, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dr = load i32, ptr @hf_ieee_8021az_tsa_class3, align 4
  %i.ds = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dr, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dt = load i32, ptr @hf_ieee_8021az_tsa_class4, align 4
  %i.du = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dt, ptr noundef %0, i32 noundef 18, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dv = load i32, ptr @hf_ieee_8021az_tsa_class5, align 4
  %i.dw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dv, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dx = load i32, ptr @hf_ieee_8021az_tsa_class6, align 4
  %i.dy = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dx, ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dz = load i32, ptr @hf_ieee_8021az_tsa_class7, align 4
  %i.ea = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dz, ptr noundef %0, i32 noundef 21, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.a
  %i.eb = load i32, ptr @hf_dcbx_feature_pgid_reserved, align 4
  %i.ec = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.eb, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ed = load i32, ptr @hf_dcbx_feature_pgid_prio_0, align 4
  %i.ee = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ed, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ef = load i32, ptr @hf_dcbx_feature_pgid_prio_1, align 4
  %i.eg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ef, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eh = load i32, ptr @hf_dcbx_feature_pgid_prio_2, align 4
  %i.ei = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.eh, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ej = load i32, ptr @hf_dcbx_feature_pgid_prio_3, align 4
  %i.ek = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ej, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.el = load i32, ptr @hf_dcbx_feature_pgid_prio_4, align 4
  %i.em = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.el, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.en = load i32, ptr @hf_dcbx_feature_pgid_prio_5, align 4
  %i.eo = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.en, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ep = load i32, ptr @hf_dcbx_feature_pgid_prio_6, align 4
  %i.eq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ep, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.er = load i32, ptr @hf_dcbx_feature_pgid_prio_7, align 4
  %i.es = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.er, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.et = load i32, ptr @hf_dcbx_feature_pg_per_0, align 4
  %i.eu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.et, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ev = load i32, ptr @hf_dcbx_feature_pg_per_1, align 4
  %i.ew = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ev, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ex = load i32, ptr @hf_dcbx_feature_pg_per_2, align 4
  %i.ey = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ex, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ez = load i32, ptr @hf_dcbx_feature_pg_per_3, align 4
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ez, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fb = load i32, ptr @hf_dcbx_feature_pg_per_4, align 4
  %i.fc = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fb, ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fd = load i32, ptr @hf_dcbx_feature_pg_per_5, align 4
  %i.fe = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fd, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ff = load i32, ptr @hf_dcbx_feature_pg_per_6, align 4
  %i.fg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ff, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fh = load i32, ptr @hf_dcbx_feature_pg_per_7, align 4
  %i.fi = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fh, ptr noundef %0, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fj = load i32, ptr @hf_ieee_8021az_tsa_class0, align 4
  %i.fk = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fj, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fl = load i32, ptr @hf_ieee_8021az_tsa_class1, align 4
  %i.fm = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fl, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fn = load i32, ptr @hf_ieee_8021az_tsa_class2, align 4
  %i.fo = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fn, ptr noundef %0, i32 noundef 16, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fp = load i32, ptr @hf_ieee_8021az_tsa_class3, align 4
  %i.fq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fp, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fr = load i32, ptr @hf_ieee_8021az_tsa_class4, align 4
  %i.fs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fr, ptr noundef %0, i32 noundef 18, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ft = load i32, ptr @hf_ieee_8021az_tsa_class5, align 4
  %i.fu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ft, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fv = load i32, ptr @hf_ieee_8021az_tsa_class6, align 4
  %i.fw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fv, ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fx = load i32, ptr @hf_ieee_8021az_tsa_class7, align 4
  %i.fy = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fx, ptr noundef %0, i32 noundef 21, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.fz = load i32, ptr @hf_ieee_8021az_feature_flag_willing, align 4
  %i.ga = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fz, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gb = load i32, ptr @hf_ieee_8021az_feature_flag_mbc, align 4
  %i.gc = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gb, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gd = load i32, ptr @hf_ieee_8021az_pfc_numtcs, align 4
  %i.ge = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gd, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gf = load i32, ptr @hf_dcbx_feature_pfc_prio0, align 4
  %i.gg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gf, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gh = load i32, ptr @hf_dcbx_feature_pfc_prio1, align 4
  %i.gi = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gh, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gj = load i32, ptr @hf_dcbx_feature_pfc_prio2, align 4
  %i.gk = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gj, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gl = load i32, ptr @hf_dcbx_feature_pfc_prio3, align 4
  %i.gm = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gl, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gn = load i32, ptr @hf_dcbx_feature_pfc_prio4, align 4
  %i.go = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gn, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gp = load i32, ptr @hf_dcbx_feature_pfc_prio5, align 4
  %i.gq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gp, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gr = load i32, ptr @hf_dcbx_feature_pfc_prio6, align 4
  %i.gs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gr, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gt = load i32, ptr @hf_dcbx_feature_pfc_prio7, align 4
  %i.gu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gt, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.gv = load i32, ptr @hf_ieee_8021az_app_reserved, align 4
  %i.gw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gv, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gx = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %i.gy = icmp ugt i32 %i.gx, 2
  br i1 %i.gy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.01 = phi i32 [ %i.hl, %.lr.ph ], [ 2, %bb.m ] ; 5 uses
  %i.gz = add i32 %.01, 1                         ; 2 uses
  %i.ha = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.gz)
  %i.hb = load i32, ptr @ett_org_spc_ieee_dcbx_app, align 4
  %i.hc = zext i16 %i.ha to i32
  %i.hd = tail call ptr @val_to_str_const(i32 noundef %i.hc, ptr noundef nonnull @dcbx_app_types, ptr noundef nonnull @.str.94)
  %i.he = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %1, ptr noundef %0, i32 noundef %.01, i32 noundef 3, i32 noundef %i.hb, ptr noundef null, ptr noundef nonnull @.str.1230, ptr noundef %i.hd) ; 3 uses
  %i.hf = load i32, ptr @hf_ieee_8021az_app_prio, align 4
  %i.hg = tail call ptr @proto_tree_add_item(ptr noundef %i.he, i32 noundef %i.hf, ptr noundef %0, i32 noundef %.01, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hh = load i32, ptr @hf_ieee_8021az_app_selector, align 4
  %i.hi = tail call ptr @proto_tree_add_item(ptr noundef %i.he, i32 noundef %i.hh, ptr noundef %0, i32 noundef %.01, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hj = load i32, ptr @hf_dcbx_feature_app_proto, align 4
  %i.hk = tail call ptr @proto_tree_add_item(ptr noundef %i.he, i32 noundef %i.hj, ptr noundef %0, i32 noundef %i.gz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.hl = add i32 %.01, 3                         ; 2 uses
  %i.hm = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.hl)
  %i.hn = icmp ugt i32 %i.hm, 2
  br i1 %i.hn, label %.lr.ph, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %bb.m, %bb.f, %bb.g, %bb.d, %bb.e, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ieee_802_3_tlv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.c = load i32, ptr @hf_ieee_802_3_subtype, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  switch i8 %i.b, label %bb.i [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee_802_3_mac_phy_auto_neg_status, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.g = load i32, ptr @ett_802_3_flags, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 2 uses
  %i.i = load i32, ptr @hf_ieee_802_3_mac_phy_auto_neg_status_supported, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ieee_802_3_mac_phy_auto_neg_status_enabled, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0)
  %i.o = load i32, ptr @ett_802_3_autoneg_advertised, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o) ; 16 uses
  %i.q = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_1000base_tfd, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_1000base_t, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.s, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_1000base_xfd, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.u, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_1000base_x, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.w, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_fdx_bpause, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.y, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_fdx_spause, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.aa, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_fdx_apause, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ac, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_fdx_pause, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ae, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ag = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_100base_t2fd, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ag, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ai = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_100base_t2, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ai, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ak = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_100base_txfd, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ak, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.am = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_100base_tx, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.am, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_100base_t4, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ao, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_10base_tfd, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.aq, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.as = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_10base_t, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.as, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.au = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_other, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.au, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aw = load i32, ptr @ett_802_3_autoneg_advertised, align 4
  %i.ax = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef %i.aw, ptr noundef null, ptr noundef nonnull @.str.1236) ; 16 uses
  %i.ay = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_1000base_tfd, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.ay, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ba = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_1000base_t, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.ba, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bc = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_1000base_xfd, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bc, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.be = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_1000base_x, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.be, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bg = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_fdx_bpause, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bg, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bi = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_fdx_spause, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bi, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bk = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_fdx_apause, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bk, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bm = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_fdx_pause, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bm, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bo = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_100base_t2fd, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bo, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bq = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_100base_t2, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bq, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bs = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_100base_txfd, align 4
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bs, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bu = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_100base_tx, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bu, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bw = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_100base_t4, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bw, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.by = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_10base_tfd, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.by, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ca = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_10base_t, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.ca, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cc = load i32, ptr @hf_ieee_802_3_pmd_auto_neg_advertised_caps_inv_other, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.cc, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ce = load i32, ptr @hf_ieee_802_3_pmd_mau_type, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ce, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.cg = load i32, ptr @hf_ieee_802_3_mdi_power_support, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cg, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.ci = load i32, ptr @ett_802_3_power, align 4
  %i.cj = tail call ptr @proto_item_add_subtree(ptr noundef %i.ch, i32 noundef %i.ci) ; 4 uses
  %i.ck = load i32, ptr @hf_ieee_802_3_mdi_power_support_port_class, align 4
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.ck, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_ieee_802_3_mdi_power_support_pse_power_support, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.cm, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_ieee_802_3_mdi_power_support_pse_power_enabled, align 4
  %i.cp = tail call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.co, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cq = load i32, ptr @hf_ieee_802_3_mdi_power_support_pse_pairs, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.cq, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr @hf_ieee_802_3_mdi_power_pse_pair, align 4
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cs, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cu = load i32, ptr @hf_ieee_802_3_mdi_power_class, align 4
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cu, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cw = and i32 %i.a, 65535                     ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 4
  br i1 %i.cx, label %bb.i, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.cy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.cz = lshr i8 %i.cy, 6
  %i.da = load i32, ptr @hf_ieee_802_3_mdi_power_type, align 4
  %i.db = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.da, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dc = load i32, ptr @hf_ieee_802_3_mdi_power_source, align 4
  %i.dd = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dc, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0)
  %i.de = lshr i8 %i.cy, 4
  %i.df = and i8 %i.de, 3
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = zext nneg i8 %i.cz to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ieee_802_3_tlv, i64 %i.dh
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.di = tail call ptr @val_to_str_const(i32 noundef %i.dg, ptr noundef nonnull %switch.load, ptr noundef nonnull @.str.109)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dd, ptr noundef nonnull @.str.1237, ptr noundef %i.di)
  %i.dj = load i32, ptr @hf_ieee_802_3_mdi_power_pd4pid, align 4
  %i.dk = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dj, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dl = load i32, ptr @hf_ieee_802_3_mdi_power_priority, align 4
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dl, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dn = load i32, ptr @hf_ieee_802_3_mdi_requested_power, align 4
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dn, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dp = load i32, ptr @hf_ieee_802_3_mdi_allocated_power, align 4
  %i.dq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dp, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dr = icmp eq i32 %i.cw, 26
  br i1 %i.dr, label %bb.d, label %bb.i

bb.d:                                             ; preds = %switch.lookup
  %i.ds = load i32, ptr @hf_ieee_802_3_bt_ds_pd_requested_power_value_mode_a, align 4
  %i.dt = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ds, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.du = load i32, ptr @hf_ieee_802_3_bt_ds_pd_requested_power_value_mode_b, align 4
  %i.dv = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.du, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dw = load i32, ptr @hf_ieee_802_3_bt_ds_pse_allocated_power_value_alt_a, align 4
  %i.dx = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dw, ptr noundef %0, i32 noundef 13, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dy = load i32, ptr @hf_ieee_802_3_bt_ds_pse_allocated_power_value_alt_b, align 4
  %i.dz = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dy, ptr noundef %0, i32 noundef 15, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ea = load i32, ptr @hf_ieee_802_3_bt_power_status, align 4
  %i.eb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ea, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0)
  %i.ec = load i32, ptr @ett_802_3_bt_power, align 4
  %i.ed = tail call ptr @proto_item_add_subtree(ptr noundef %i.eb, i32 noundef %i.ec) ; 6 uses
  %i.ee = load i32, ptr @hf_ieee_802_3_bt_pse_powering_status, align 4
  %i.ef = tail call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.ee, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eg = load i32, ptr @hf_ieee_802_3_bt_pd_powered_status, align 4
  %i.eh = tail call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.eg, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ei = load i32, ptr @hf_ieee_802_3_bt_pse_power_pairs_ext, align 4
  %i.ej = tail call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.ei, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ek = load i32, ptr @hf_ieee_802_3_bt_ds_pwr_class_ext_a, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.ek, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_ieee_802_3_bt_ds_pwr_class_ext_b, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.em, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eo = load i32, ptr @hf_ieee_802_3_bt_pwr_class_ext, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.eo, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eq = load i32, ptr @hf_ieee_802_3_bt_system_setup, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eq, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0)
  %i.es = load i32, ptr @ett_802_3_bt_system_setup, align 4
  %i.et = tail call ptr @proto_item_add_subtree(ptr noundef %i.er, i32 noundef %i.es) ; 2 uses
  %i.eu = load i32, ptr @hf_ieee_802_3_bt_power_type_ext, align 4
  %i.ev = tail call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.eu, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ew = load i32, ptr @hf_ieee_802_3_bt_power_pd_load, align 4
  %i.ex = tail call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.ew, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ey = load i32, ptr @hf_ieee_802_3_bt_pse_maximum_available_power_value, align 4
  %i.ez = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ey, ptr noundef %0, i32 noundef 20, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fa = load i32, ptr @hf_ieee_802_3_bt_autoclass, align 4
  %i.fb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fa, ptr noundef %0, i32 noundef 22, i32 noundef 1, i32 noundef 0)
  %i.fc = load i32, ptr @ett_802_3_bt_autoclass, align 4
  %i.fd = tail call ptr @proto_item_add_subtree(ptr noundef %i.fb, i32 noundef %i.fc) ; 4 uses
  %i.fe = load i32, ptr @hf_ieee_802_3_bt_pse_autoclass_support, align 4
  %i.ff = tail call ptr @proto_tree_add_item(ptr noundef %i.fd, i32 noundef %i.fe, ptr noundef %0, i32 noundef 22, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fg = load i32, ptr @hf_ieee_802_3_bt_autoclass_completed, align 4
  %i.fh = tail call ptr @proto_tree_add_item(ptr noundef %i.fd, i32 noundef %i.fg, ptr noundef %0, i32 noundef 22, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fi = load i32, ptr @hf_ieee_802_3_bt_autoclass_request, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %i.fd, i32 noundef %i.fi, ptr noundef %0, i32 noundef 22, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fk = load i32, ptr @hf_ieee_802_3_bt_autoclass_reserved, align 4
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %i.fd, i32 noundef %i.fk, ptr noundef %0, i32 noundef 22, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fm = load i32, ptr @hf_ieee_802_3_bt_power_down, align 4
  %i.fn = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fm, ptr noundef %0, i32 noundef 23, i32 noundef 3, i32 noundef 0)
end_hunk_1
begin_hunk_2_@dissect_media_tlv:bb.a

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr @hf_media_tlv_subtype_caps, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0)
  %i.l = load i32, ptr @ett_media_capabilities, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 6 uses
  %i.n = load i32, ptr @hf_media_tlv_subtype_caps_llpd, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_media_tlv_subtype_caps_network_policy, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_media_tlv_subtype_caps_location_id, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.r, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_media_tlv_subtype_caps_mdi_pse, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.t, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_media_tlv_subtype_caps_mid_pd, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.v, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_media_tlv_subtype_caps_inventory, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.x, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.z = and i32 %i.a, 65535
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i32, ptr @hf_media_tlv_subtype_class, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.ae = icmp eq i16 %i.f, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ag = load i32, ptr @hf_media_application_type, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ai = add i32 %i.a, 65534
  %i.aj = and i32 %i.ai, 65535                    ; 2 uses
  %i.ak = icmp samesign ult i32 %i.aj, 3
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 2, i32 noundef %i.aj) ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.am = load i32, ptr @hf_media_policy_flag, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.am, ptr noundef %0, i32 noundef 2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_media_tag_flag, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef 2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_media_vlan_id, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aq, ptr noundef %0, i32 noundef 2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.as = load i32, ptr @hf_media_l2_prio, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.as, ptr noundef %0, i32 noundef 2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.au = load i32, ptr @hf_media_dscp, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.au, ptr noundef %0, i32 noundef 2, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.aw = icmp eq i16 %i.f, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ay = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.az = load i32, ptr @hf_media_loc_data_format, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.az, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = add i16 %i.b, -2                        ; 5 uses
  switch i8 %i.ay, label %.loopexit [
    i8 1, label %bb.o
    i8 2, label %bb.r
    i8 3, label %bb.af
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp ult i16 %i.bb, 16
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = zext nneg i16 %i.bb to i32
  %i.be = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 2, i32 noundef %i.bd) ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.bf = load i32, ptr @hf_media_loc_lat_resolution, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bf, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_media_loc_lat, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bh, ptr noundef %0, i32 noundef 2, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bj = load i32, ptr @hf_media_loc_long_resolution, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bj, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bl = load i32, ptr @hf_media_loc_long, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef 7, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bn = load i32, ptr @hf_media_loc_alt_type, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bn, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_media_loc_alt_resolution, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bp, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.br = load i32, ptr @hf_media_loc_alt, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.br, ptr noundef %0, i32 noundef 13, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bt = load i32, ptr @hf_media_loc_ver, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bt, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = load i32, ptr @hf_media_loc_reserved, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bv, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bx = load i32, ptr @hf_media_loc_datum, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bx, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.r:                                             ; preds = %bb.n
  %i.bz = icmp eq i16 %i.bb, 0
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.cb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.cc = add i32 %i.a, 65533
  %i.cd = zext i8 %i.cb to i32                    ; 2 uses
  %i.ce = and i32 %i.cc, 65535                    ; 5 uses
  %i.cf = icmp samesign ult i32 %i.ce, %i.cd
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length_excess, ptr noundef %0, i32 noundef 2, i32 noundef %i.ce) ; 0 uses
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.ch = load i32, ptr @hf_media_civic_lci_length, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ch, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cj = icmp eq i8 %i.cb, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 3, i32 noundef %i.ce) ; 0 uses
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.cl = load i32, ptr @hf_media_civic_what, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cl, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cn = icmp ult i8 %i.cb, 3
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.co = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef 4, i32 noundef %i.ce) ; 0 uses
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.cp = load i32, ptr @hf_media_civic_country, align 4
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cp, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cr = add nsw i32 %i.cd, -3                   ; 2 uses
  %.not305307 = icmp eq i32 %i.cr, 0
  br i1 %.not305307, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.ae
  %.0309 = phi i32 [ %.1, %bb.ae ], [ %i.cr, %bb.z ] ; 2 uses
  %.0273308 = phi i32 [ %.1274, %bb.ae ], [ 6, %bb.z ] ; 3 uses
  %i.cs = load i32, ptr @hf_media_civic_addr_type, align 4
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cs, ptr noundef %0, i32 noundef %.0273308, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cu = add i32 %.0273308, 1                    ; 3 uses
  %i.cv = icmp eq i32 %.0309, 1
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  %i.cw = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef %0, i32 noundef %i.cu, i32 noundef %i.ce) ; 0 uses
  br label %.loopexit

bb.ab:                                            ; preds = %.lr.ph
  %i.cx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cu) ; 2 uses
  %i.cy = load i32, ptr @hf_media_civic_addr_len, align 4
  %i.cz = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cy, ptr noundef %0, i32 noundef %i.cu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.da = add i32 %.0273308, 2                    ; 3 uses
  %i.db = add i32 %.0309, -2                      ; 3 uses
  %i.dc = zext i8 %i.cx to i32                    ; 4 uses
  %i.dd = icmp ult i32 %i.db, %i.dc
  br i1 %i.dd, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not306 = icmp eq i8 %i.cx, 0
  br i1 %.not306, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = load i32, ptr @hf_media_civic_addr_value, align 4
  %i.df = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.de, ptr noundef %0, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef 0) ; 0 uses
  %i.dg = add i32 %i.da, %i.dc
  %i.dh = sub nuw i32 %i.db, %i.dc
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1274 = phi i32 [ %i.dg, %bb.ad ], [ %i.da, %bb.ac ]
  %.1 = phi i32 [ %i.dh, %bb.ad ], [ %i.db, %bb.ac ] ; 2 uses
  %.not305 = icmp eq i32 %.1, 0
  br i1 %.not305, label %.loopexit, label %.lr.ph, !llvm.loop !19

bb.af:                                            ; preds = %bb.n
  %.not304 = icmp eq i16 %i.bb, 0
  br i1 %.not304, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = zext i16 %i.bb to i32
  %i.dj = load i32, ptr @hf_media_ecs, align 4
  %i.dk = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dj, ptr noundef %0, i32 noundef 2, i32 noundef %i.di, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ah:                                            ; preds = %bb.a
  %i.dl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.dm = lshr i8 %i.dl, 6
  %i.dn = load i32, ptr @hf_media_power_type, align 4
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dn, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dp = load i32, ptr @hf_media_power_source, align 4
  %i.dq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dp, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  switch i8 %i.dm, label %bb.aj [
    i8 0, label %.sink.split
    i8 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.ai
  %media_power_pd_device.sink = phi ptr [ @media_power_pd_device, %bb.ai ], [ @media_power_pse_device, %bb.ah ]
  %i.dr = lshr i8 %i.dl, 4
  %i.ds = and i8 %i.dr, 3
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = tail call ptr @val_to_str_const(i32 noundef %i.dt, ptr noundef nonnull %media_power_pd_device.sink, ptr noundef nonnull @.str.109)
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.ah
  %.str.94.sink = phi ptr [ @.str.94, %bb.ah ], [ %i.du, %.sink.split ]
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dq, ptr noundef nonnull @.str.1237, ptr noundef %.str.94.sink)
  %i.dv = load i32, ptr @hf_media_power_priority, align 4
  %i.dw = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dv, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dx = load i32, ptr @hf_media_power_value, align 4
  %i.dy = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dx, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ak:                                            ; preds = %bb.a
  %.not303 = icmp eq i16 %i.f, 0
  br i1 %.not303, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = zext i16 %i.f to i32
  %i.ea = load i32, ptr @hf_media_hardware, align 4
  %i.eb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ea, ptr noundef %0, i32 noundef 1, i32 noundef %i.dz, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.am:                                            ; preds = %bb.a
  %.not302 = icmp eq i16 %i.f, 0
  br i1 %.not302, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = zext i16 %i.f to i32
  %i.ed = load i32, ptr @hf_media_firmware, align 4
  %i.ee = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ed, ptr noundef %0, i32 noundef 1, i32 noundef %i.ec, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ao:                                            ; preds = %bb.a
  %.not301 = icmp eq i16 %i.f, 0
  br i1 %.not301, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = zext i16 %i.f to i32
  %i.eg = load i32, ptr @hf_media_software, align 4
  %i.eh = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eg, ptr noundef %0, i32 noundef 1, i32 noundef %i.ef, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.aq:                                            ; preds = %bb.a
  %.not300 = icmp eq i16 %i.f, 0
  br i1 %.not300, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = zext i16 %i.f to i32
  %i.ej = load i32, ptr @hf_media_sn, align 4
  %i.ek = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ej, ptr noundef %0, i32 noundef 1, i32 noundef %i.ei, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.as:                                            ; preds = %bb.a
  %.not299 = icmp eq i16 %i.f, 0
  br i1 %.not299, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.el = zext i16 %i.f to i32
  %i.em = load i32, ptr @hf_media_manufacturer, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.em, ptr noundef %0, i32 noundef 1, i32 noundef %i.el, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.au:                                            ; preds = %bb.a
  %.not298 = icmp eq i16 %i.f, 0
  br i1 %.not298, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = zext i16 %i.f to i32
  %i.ep = load i32, ptr @hf_media_model, align 4
  %i.eq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ep, ptr noundef %0, i32 noundef 1, i32 noundef %i.eo, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.aw:                                            ; preds = %bb.a
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = zext i16 %i.f to i32
  %i.es = load i32, ptr @hf_media_asset, align 4
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.es, ptr noundef %0, i32 noundef 1, i32 noundef %i.er, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.ae, %bb.z, %bb.a, %bb.f, %bb.k, %bb.aj, %bb.af, %bb.ag, %bb.q, %bb.n, %bb.al, %bb.ak, %bb.an, %bb.am, %bb.ap, %bb.ao, %bb.ar, %bb.aq, %bb.at, %bb.as, %bb.av, %bb.au, %bb.ax, %bb.aw, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.p, %bb.m, %bb.j, %bb.h, %bb.e, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_profinet_tlv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.c = load i32, ptr @hf_profinet_tlv_subtype, align 4
  %i.d = zext i8 %i.b to i32
  %i.e = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.d) ; 0 uses
  %i.f = load i32, ptr @column_info_selection, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %set_port_id_for_profinet_specialized_column_info.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %3, i64 24         ; 4 uses
  %i.i = load i8, ptr %i.h, align 8, !range !8, !noundef !9
  %.not.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.not.i, label %bb.c, label %set_name_of_station_for_profinet_specialized_column_info.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %strchr.i = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 46)
  %.not20.i = icmp eq ptr %strchr.i, null
  br i1 %.not20.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 8
  %i.l = getelementptr i8, ptr %3, i64 25
  store i8 1, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %1, i64 416
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noalias ptr @wmem_strdup(ptr noundef %i.n, ptr noundef nonnull %i.k)
  %i.p = tail call ptr @strtok(ptr noundef %i.o, ptr noundef nonnull @.str.1252) #9
  %i.q = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.1252) #9
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.s, i32 noundef 25, ptr noundef nonnull @.str.1253, ptr noundef %i.q)
  %i.t = load ptr, ptr %i.r, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.t, i32 noundef 25, ptr noundef nonnull @.str.1254, ptr noundef %i.p)
  br label %set_name_of_station_for_profinet_specialized_column_info.exit

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %.not8.i.i = icmp eq ptr %i.w, null
  br i1 %.not8.i.i, label %set_name_of_station_for_profinet_specialized_column_info.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %bb.f
  %.sink10.i.i = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  store i8 1, ptr %i.h, align 8
  %i.x = getelementptr i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.y, i32 noundef 25, ptr noundef nonnull @.str.1253, ptr noundef nonnull %.sink10.i.i)
  br label %set_name_of_station_for_profinet_specialized_column_info.exit

bb.h:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i21.i = icmp eq ptr %i.aa, null
  br i1 %.not.i21.i, label %bb.i, label %.sink.split.i22.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i24.i = icmp eq ptr %i.ab, null
  br i1 %.not8.i24.i, label %set_name_of_station_for_profinet_specialized_column_info.exit, label %.sink.split.i22.i

.sink.split.i22.i:                                ; preds = %bb.i, %bb.h
  %.sink10.i23.i = phi ptr [ %i.aa, %bb.h ], [ %i.ab, %bb.i ]
  store i8 1, ptr %i.h, align 8
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ad, i32 noundef 25, ptr noundef nonnull @.str.1253, ptr noundef nonnull %.sink10.i23.i)
  br label %set_name_of_station_for_profinet_specialized_column_info.exit
end_hunk_2
begin_hunk_3_@dissect_profinet_tlv:bb.a
  %i.da = tail call ptr @proto_tree_add_uint(ptr noundef %i.cz, i32 noundef %i.ct, ptr noundef %0, i32 noundef 47, i32 noundef 4, i32 noundef %i.cv) ; 0 uses
  %i.db = tail call ptr @proto_tree_add_uint(ptr noundef %i.cz, i32 noundef %i.cu, ptr noundef %0, i32 noundef 47, i32 noundef 4, i32 noundef %i.cv) ; 0 uses
  %i.dc = load i32, ptr @hf_profinet_green_period_begin_valid, align 4
  %i.dd = load i32, ptr @hf_profinet_green_period_begin_offset, align 4
  %i.de = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 51) ; 4 uses
  %i.df = load i32, ptr @ett_profinet_period, align 4
  %.not.i170 = icmp sgt i32 %i.de, -1
  %i.dg = select i1 %.not.i170, ptr @.str.1257, ptr @.str.1256
  %i.dh = and i32 %i.de, 2147483647
  %i.di = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef 51, i32 noundef 4, i32 noundef %i.df, ptr noundef null, ptr noundef nonnull @.str.1255, ptr noundef nonnull @.str.1251, ptr noundef nonnull %i.dg, i32 noundef %i.dh) ; 2 uses
  %i.dj = tail call ptr @proto_tree_add_uint(ptr noundef %i.di, i32 noundef %i.dc, ptr noundef %0, i32 noundef 51, i32 noundef 4, i32 noundef %i.de) ; 0 uses
  %i.dk = tail call ptr @proto_tree_add_uint(ptr noundef %i.di, i32 noundef %i.dd, ptr noundef %0, i32 noundef 51, i32 noundef 4, i32 noundef %i.de) ; 0 uses
  br label %bb.z

bb.s:                                             ; preds = %set_port_id_for_profinet_specialized_column_info.exit
  %i.dl = load i32, ptr @hf_profinet_mrpic_domain_id, align 4
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dl, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dn = load i32, ptr @hf_profinet_mrpic_role, align 4
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dn, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dp = load i32, ptr @hf_profinet_mrpic_micposition, align 4
  %i.dq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dp, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.t:                                             ; preds = %set_port_id_for_profinet_specialized_column_info.exit
  %i.dr = load i32, ptr @hf_profinet_nme_domain_uuid, align 4
  %i.ds = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dr, ptr noundef %0, i32 noundef 1, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.u:                                             ; preds = %set_port_id_for_profinet_specialized_column_info.exit
  %i.dt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.du = load i32, ptr @hf_profinet_nme_management_addr_str_length, align 4
  %i.dv = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.du, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dw = load i32, ptr @hf_profinet_nme_management_addr_subtype, align 4
  %i.dx = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dw, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dy = add i8 %i.dt, -1
  %i.dz = load i32, ptr @hf_profinet_nme_management_addr, align 4
  %i.ea = zext i8 %i.dy to i32
  %i.eb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dz, ptr noundef %0, i32 noundef 3, i32 noundef %i.ea, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.v:                                             ; preds = %set_port_id_for_profinet_specialized_column_info.exit
  %i.ec = load i32, ptr @hf_profinet_nme_name_uuid, align 4
  %i.ed = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ec, ptr noundef %0, i32 noundef 1, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.w:                                             ; preds = %set_port_id_for_profinet_specialized_column_info.exit
  %i.ee = load i32, ptr @hf_profinet_nme_parameter_uuid, align 4
  %i.ef = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ee, ptr noundef %0, i32 noundef 1, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.x:                                             ; preds = %set_port_id_for_profinet_specialized_column_info.exit
  %i.eg = load i32, ptr @hf_profinet_time_domain_number, align 4
  %i.eh = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eg, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ei = load i32, ptr @hf_profinet_time_domain_uuid, align 4
  %i.ej = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ei, ptr noundef %0, i32 noundef 3, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ek = load i32, ptr @hf_profinet_time_domain_master_identity, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ek, ptr noundef %0, i32 noundef 19, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %set_port_id_for_profinet_specialized_column_info.exit
  %i.em = load i32, ptr @hf_unknown_subtype_content, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.em, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %bb.n, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_cisco_tlv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.b = tail call ptr @proto_tree_get_parent(ptr noundef %2) ; 18 uses
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.e = load i32, ptr @hf_cisco_subtype, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = add i32 %i.a, -1                         ; 20 uses
  switch i8 %i.d, label %bb.w [
    i8 1, label %bb.c
    i8 -55, label %bb.d
    i8 -54, label %bb.e
    i8 -53, label %bb.f
    i8 -52, label %bb.g
    i8 -51, label %bb.h
    i8 -50, label %bb.i
    i8 -49, label %bb.j
    i8 -48, label %bb.l
    i8 -47, label %bb.m
    i8 -46, label %bb.n
    i8 -45, label %bb.o
    i8 -44, label %bb.p
    i8 -42, label %bb.q
    i8 -41, label %bb.r
    i8 -40, label %bb.s
    i8 -39, label %bb.t
    i8 -38, label %bb.u
    i8 -37, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @hf_cisco_upoe, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.j = load i32, ptr @ett_cisco_upoe_tlv, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 4 uses
  %i.l = load i32, ptr @hf_cisco_upoe_supported, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_cisco_upoe_altb_detection, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_cisco_upoe_req_spare_pair, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_cisco_upoe_pse_spare_pair_oper, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.r, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.t = load i32, ptr @hf_cisco_aci_portstate, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.t, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.v = getelementptr i8, ptr %1, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr @proto_item_get_display_repr(ptr noundef %i.w, ptr noundef %i.u)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.x)
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.y = load i32, ptr @hf_cisco_aci_noderole, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.y, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.aa = getelementptr i8, ptr %1, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr @proto_item_get_display_repr(ptr noundef %i.ab, ptr noundef %i.z)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.ac)
  br label %bb.y

bb.f:                                             ; preds = %bb.b
  %i.ad = load i32, ptr @hf_cisco_aci_nodeid, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.af = getelementptr i8, ptr %1, i64 416
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call ptr @proto_item_get_display_repr(ptr noundef %i.ag, ptr noundef %i.ae)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.ah)
  br label %bb.y

bb.g:                                             ; preds = %bb.b
  %i.ai = load i32, ptr @hf_cisco_aci_spinelevel, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.ak = getelementptr i8, ptr %1, i64 416
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call ptr @proto_item_get_display_repr(ptr noundef %i.al, ptr noundef %i.aj)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.am)
  br label %bb.y

bb.h:                                             ; preds = %bb.b
  %i.an = load i32, ptr @hf_cisco_aci_podid, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.an, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0)
  %i.ap = getelementptr i8, ptr %1, i64 416
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call ptr @proto_item_get_display_repr(ptr noundef %i.aq, ptr noundef %i.ao)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.ar)
  br label %bb.y

bb.i:                                             ; preds = %bb.b
  %i.as = load i32, ptr @hf_cisco_aci_fabricname, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.as, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.au = getelementptr i8, ptr %1, i64 416
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call ptr @proto_item_get_display_repr(ptr noundef %i.av, ptr noundef %i.at)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.aw)
  br label %.thread

bb.j:                                             ; preds = %bb.b
  %i.ax = load i32, ptr @hf_cisco_aci_apiclist, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ax, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0) ; 0 uses
  %.not238 = icmp eq i32 %i.g, 0
  br i1 %.not238, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.az = getelementptr i8, ptr %1, i64 416
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %.0240 = phi i32 [ %i.g, %.lr.ph ], [ %i.bl, %bb.k ]
  %.0228239 = phi i32 [ 1, %.lr.ph ], [ %i.bk, %bb.k ] ; 4 uses
  %i.ba = load i32, ptr @hf_cisco_aci_apicid, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ba, ptr noundef %0, i32 noundef %.0228239, i32 noundef 1, i32 noundef 0)
  %i.bc = load ptr, ptr %i.az, align 8
  %i.bd = tail call ptr @proto_item_get_display_repr(ptr noundef %i.bc, ptr noundef %i.bb)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.bd)
  %i.be = add i32 %.0228239, 1
  %i.bf = load i32, ptr @hf_cisco_aci_apicipv4, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.be, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bh = add i32 %.0228239, 5
  %i.bi = load i32, ptr @hf_cisco_aci_apicuuid, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bh, i32 noundef 36, i32 noundef 0) ; 0 uses
  %i.bk = add i32 %.0228239, 41
  %i.bl = add i32 %.0240, -41                     ; 2 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %.thread, label %bb.k, !llvm.loop !20

bb.l:                                             ; preds = %bb.b
  %i.bm = load i32, ptr @hf_cisco_aci_nodeip, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bm, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.bo = getelementptr i8, ptr %1, i64 416
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call ptr @proto_item_get_display_repr(ptr noundef %i.bp, ptr noundef %i.bn)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.bq)
  br label %bb.y

bb.m:                                             ; preds = %bb.b
  %i.br = load i32, ptr @hf_cisco_aci_portrole, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.br, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.bt = getelementptr i8, ptr %1, i64 416
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call ptr @proto_item_get_display_repr(ptr noundef %i.bu, ptr noundef %i.bs)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.bv)
  br label %bb.y

bb.n:                                             ; preds = %bb.b
  %i.bw = load i32, ptr @hf_cisco_aci_version, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bw, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.by = getelementptr i8, ptr %1, i64 416
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call ptr @proto_item_get_display_repr(ptr noundef %i.bz, ptr noundef %i.bx)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.ca)
  br label %.thread

bb.o:                                             ; preds = %bb.b
  %i.cb = load i32, ptr @hf_cisco_aci_fabricvlan, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.cb, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0)
  %i.cd = getelementptr i8, ptr %1, i64 416
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call ptr @proto_item_get_display_repr(ptr noundef %i.ce, ptr noundef %i.cc)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.cf)
  br label %bb.y

bb.p:                                             ; preds = %bb.b
  %i.cg = load i32, ptr @hf_cisco_aci_serialno, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.cg, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.ci = getelementptr i8, ptr %1, i64 416
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call ptr @proto_item_get_display_repr(ptr noundef %i.cj, ptr noundef %i.ch)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.ck)
  br label %.thread

bb.q:                                             ; preds = %bb.b
  %i.cl = load i32, ptr @hf_cisco_aci_model, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.cl, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.cn = getelementptr i8, ptr %1, i64 416
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call ptr @proto_item_get_display_repr(ptr noundef %i.co, ptr noundef %i.cm)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.cp)
  br label %.thread

bb.r:                                             ; preds = %bb.b
  %i.cq = load i32, ptr @hf_cisco_aci_nodename, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.cq, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.cs = getelementptr i8, ptr %1, i64 416
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call ptr @proto_item_get_display_repr(ptr noundef %i.ct, ptr noundef %i.cr)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.cu)
  br label %.thread

bb.s:                                             ; preds = %bb.b
  %i.cv = load i32, ptr @hf_cisco_aci_portmode, align 4
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.cv, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.cx = getelementptr i8, ptr %1, i64 416
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call ptr @proto_item_get_display_repr(ptr noundef %i.cy, ptr noundef %i.cw)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.cz)
  br label %bb.y

bb.t:                                             ; preds = %bb.b
  %i.da = load i32, ptr @hf_cisco_aci_authcookie, align 4
  %i.db = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.da, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.dc = getelementptr i8, ptr %1, i64 416
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call ptr @proto_item_get_display_repr(ptr noundef %i.dd, ptr noundef %i.db)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.de)
  br label %.thread

bb.u:                                             ; preds = %bb.b
  %i.df = load i32, ptr @hf_cisco_aci_apicmode, align 4
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.df, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.dh = getelementptr i8, ptr %1, i64 416
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call ptr @proto_item_get_display_repr(ptr noundef %i.di, ptr noundef %i.dg)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.dj)
  br label %bb.y

bb.v:                                             ; preds = %bb.b
  %i.dk = load i32, ptr @hf_cisco_aci_fabricid, align 4
  %i.dl = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.dk, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0)
  %i.dm = getelementptr i8, ptr %1, i64 416
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = tail call ptr @proto_item_get_display_repr(ptr noundef %i.dn, ptr noundef %i.dl)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.1258, ptr noundef %i.do)
  br label %bb.y

bb.w:                                             ; preds = %bb.b
  %.not233 = icmp eq i32 %i.g, 0
  br i1 %.not233, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load i32, ptr @hf_unknown_subtype_content, align 4
  %i.dq = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.dp, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0) ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.o, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ -3, %bb.v ], [ -2, %bb.u ], [ -3, %bb.s ], [ -3, %bb.o ], [ -2, %bb.m ], [ -5, %bb.l ], [ -3, %bb.h ], [ -2, %bb.g ], [ -5, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ]
  %.1229 = phi i32 [ 3, %bb.v ], [ 2, %bb.u ], [ 3, %bb.s ], [ 3, %bb.o ], [ 2, %bb.m ], [ 5, %bb.l ], [ 3, %bb.h ], [ 2, %bb.g ], [ 5, %bb.f ], [ 2, %bb.e ], [ 2, %bb.d ], [ 2, %bb.c ]
  %i.dr = add i32 %i.a, %.sink                    ; 2 uses
  %.not234 = icmp eq i32 %i.dr, 0
  br i1 %.not234, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = load i32, ptr @hf_subtype_content_remaining, align 4
  %i.dt = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ds, ptr noundef %0, i32 noundef %.1229, i32 noundef %i.dr, i32 noundef 0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.t, %bb.r, %bb.q, %bb.p, %bb.n, %bb.i, %bb.w, %bb.x, %bb.y, %bb.z, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ieee_802_1qbg_tlv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_ieee_802_1qbg_subtype, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %cond = icmp eq i8 %i.a, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_ieee_802_1qbg_evb_support_caps, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0)
  %i.f = load i32, ptr @ett_802_1qbg_capabilities_flags, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 5 uses
  %i.h = load i32, ptr @hf_ieee_802_1qbg_evb_support_caps_std, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_ieee_802_1qbg_evb_support_caps_rr, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_ieee_802_1qbg_evb_support_caps_rte, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_ieee_802_1qbg_evb_support_caps_ecp, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_ieee_802_1qbg_evb_support_caps_vdp, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_ieee_802_1qbg_evb_configure_caps, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.r, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef 0)
  %i.t = load i32, ptr @ett_802_1qbg_capabilities_flags, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t) ; 5 uses
  %i.v = load i32, ptr @hf_ieee_802_1qbg_evb_configure_caps_std, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.v, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_ieee_802_1qbg_evb_configure_caps_rr, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.x, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_ieee_802_1qbg_evb_configure_caps_rte, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.z, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_ieee_802_1qbg_evb_configure_caps_ecp, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ab, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_ieee_802_1qbg_evb_configure_caps_vdp, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ad, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_ieee_802_1qbg_evb_supported_vsi, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.af, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_ieee_802_1qbg_evb_configured_vsi, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ah, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_ieee_802_1qbg_evb_retrans_timer, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.aj, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_hytec_tlv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.b = load i32, ptr @hf_hytec_tlv_subtype, align 4
  %i.c = zext i8 %i.a to i32
  %i.d = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.c) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef 8, i32 noundef 3) ; 4 uses
  %i.f = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef 11, i32 noundef 5) ; 8 uses
  %i.g = load i32, ptr @hf_hytec_group, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.i = load i32, ptr @hf_hytec_identifier, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 9 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.1259)
  %i.k = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2) ; 72 uses
  switch i8 %i.a, label %bb.cj [
    i8 1, label %bb.b
    i8 2, label %bb.av
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = zext i8 %i.e to i32
  %i.m = tail call ptr @val_to_str_const(i32 noundef %i.l, ptr noundef nonnull @hytec_transceiver_groups, ptr noundef nonnull @.str.94)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.1260, ptr noundef %i.m)
  switch i8 %i.e, label %bb.au [
end_hunk_3
begin_hunk_4_@dissect_hytec_tlv:bb.a
bb.ca:                                            ; preds = %bb.bz
  %i.fz = load i32, ptr @hf_hytec_incoming_port_name, align 4
  %i.ga = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fz, ptr noundef %0, i32 noundef 2, i32 noundef %i.k, i32 noundef 0) ; 0 uses
  br label %bb.ck

bb.cb:                                            ; preds = %bb.bz
  %i.gb = tail call ptr @val_to_str_const(i32 noundef 8, ptr noundef nonnull @hytec_mc, ptr noundef nonnull @.str.1030)
  %i.gc = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef nonnull @.str.1262, ptr noundef %i.gb, i32 noundef %i.k, i32 noundef 64) ; 0 uses
  %.not409 = icmp eq i32 %i.k, 0
  br i1 %.not409, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gd = load i32, ptr @hf_hytec_invalid_object_data, align 4
  %i.ge = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gd, ptr noundef %0, i32 noundef 2, i32 noundef %i.k, i32 noundef 0) ; 0 uses
  br label %bb.ck

bb.cd:                                            ; preds = %bb.aw
  %i.gf = icmp eq i32 %i.k, 4
  br i1 %i.gf, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gg = load i32, ptr @hf_hytec_trace_identifier, align 4
  %i.gh = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gg, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ck

bb.cf:                                            ; preds = %bb.cd
  %i.gi = tail call ptr @val_to_str_const(i32 noundef 9, ptr noundef nonnull @hytec_mc, ptr noundef nonnull @.str.1030)
  %i.gj = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_lldp_bad_length, ptr noundef nonnull @.str.1263, ptr noundef %i.gi, i32 noundef %i.k, i32 noundef 4) ; 0 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gk = load i32, ptr @hf_hytec_invalid_object_data, align 4
  %i.gl = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gk, ptr noundef %0, i32 noundef 2, i32 noundef %i.k, i32 noundef 0) ; 0 uses
  br label %bb.ck

bb.ch:                                            ; preds = %bb.aw
  %i.gm = load i32, ptr @hf_hytec_unknown_identifier_content, align 4
  %i.gn = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gm, ptr noundef %0, i32 noundef 2, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.ck

bb.ci:                                            ; preds = %bb.av
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.94)
  %i.go = load i32, ptr @hf_hytec_unknown_identifier_content, align 4
  %i.gp = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.go, ptr noundef %0, i32 noundef 2, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.ck

bb.cj:                                            ; preds = %bb.a
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.1264)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.94)
  %i.gq = load i32, ptr @hf_unknown_subtype_content, align 4
  %i.gr = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gq, ptr noundef %0, i32 noundef 2, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.ce, %bb.cg, %bb.cf, %bb.ca, %bb.cc, %bb.cb, %bb.bw, %bb.by, %bb.bx, %bb.bs, %bb.bu, %bb.bt, %bb.bo, %bb.bq, %bb.bp, %bb.bk, %bb.bm, %bb.bl, %bb.bg, %bb.bi, %bb.bh, %bb.bc, %bb.be, %bb.bd, %bb.ay, %bb.ba, %bb.az, %bb.ch, %bb.au, %bb.e, %bb.g, %bb.f, %bb.h, %bb.s, %bb.u, %bb.t, %bb.o, %bb.q, %bb.p, %bb.k, %bb.m, %bb.l, %bb.v, %bb.aq, %bb.as, %bb.ar, %bb.aj, %bb.al, %bb.ak, %bb.ac, %bb.ae, %bb.ad, %bb.y, %bb.aa, %bb.z, %bb.at, %bb.cj
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.1265)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_avaya_tlv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_avaya_subtype, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.a, label %bb.h [
    i8 1, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 6, label %bb.f
    i8 7, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_avaya_poe, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 7, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_avaya_call_server, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_avaya_ipphone, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef 1, i32 noundef 12, i32 noundef 0)
  %i.j = load i32, ptr @ett_avaya_ipphone_tlv, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 3 uses
  %i.l = load i32, ptr @hf_avaya_ipphone_ip, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_avaya_ipphone_mask, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef 5, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_avaya_ipphone_gateway, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.p, ptr noundef %0, i32 noundef 9, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.r = load i32, ptr @hf_avaya_cna_server, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.r, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.t = load i32, ptr @hf_avaya_file_server, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.v = load i32, ptr @hf_avaya_dot1q, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.x = load i32, ptr @hf_unknown_subtype_content, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.x, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_iana_tlv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_iana_subtype, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1)
  %cond = icmp eq i8 %i.a, 1
  br i1 %cond, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.d, 65535                      ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %hf_iana_mudurl.sink = phi ptr [ @hf_iana_mudurl, %bb.b ], [ @hf_unknown_subtype_content, %bb.a ]
  %.sink1 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.f = load i32, ptr %hf_iana_mudurl.sink, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 1, i32 noundef %.sink1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_extreme_avaya_tlv(ptr noundef %0, ptr noundef %1, i16 noundef zeroext range(i16 0, 512) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_ex_avaya_tlv_subtype, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.a, label %.loopexit [
    i8 11, label %bb.b
    i8 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_ex_avaya_hmac_shi, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_ex_avaya_element_type, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 33, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_ex_avaya_state, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef 33, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_ex_avaya_mgnt_vlan, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef 33, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_ex_avaya_rsvd, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef 36, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_ex_avaya_system_id, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef %0, i32 noundef 37, i32 noundef 10, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr @hf_ex_avaya_hmac_shi, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 32, i32 noundef 0) ; 0 uses
  %.lhs.trunc.off = add nsw i16 %2, -32
  %.not = icmp ult i16 %.lhs.trunc.off, 9
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.lhs.trunc = add nsw i16 %2, -36
  %i.r = sdiv i16 %.lhs.trunc, 5
  %i.s = tail call i16 @llvm.umax.i16(i16 %i.r, i16 1)
  %umax = sext i16 %i.s to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02 = phi i32 [ %i.aa, %.lr.ph ], [ 33, %.lr.ph.preheader ] ; 4 uses
  %.0481 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.t = load i32, ptr @hf_ex_avaya_status, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef %.02, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_ex_avaya_vlan, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef %.02, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.02, 2
  %i.y = load i32, ptr @hf_ex_avaya_i_sid, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.02, 5
  %i.ab = add nuw i32 %.0481, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_extreme_avaya2_tlv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.d = load i32, ptr @hf_ex_avaya2_tlv_subtype, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %cond = icmp eq i8 %i.c, 4
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_ex_avaya2_fabric_connect, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_ex_avaya2_fabric_numbvlans, align 4
  %i.i = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.j = load i32, ptr %i.a, align 4              ; 2 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.a, align 4
  %.not1 = icmp eq i32 %i.j, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02 = phi i32 [ %i.n, %.lr.ph ], [ 3, %bb.b ]  ; 2 uses
  %i.l = load i32, ptr @hf_ex_avaya2_fabric_bvlanid, align 4
  %i.m = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %.02, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = add i32 %.02, 2                          ; 2 uses
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.a, align 4
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i32 [ 3, %bb.b ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.q = load i32, ptr @hf_ex_avaya2_fabric_sysidlength, align 4
  %i.r = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.q, ptr noundef %0, i32 noundef %.0.lcssa, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.s = add i32 %.0.lcssa, 1
  %i.t = load i32, ptr @hf_ex_avaya2_fabric_sysid, align 4
  %i.u = load i32, ptr %i.b, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.u, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_onos_tlv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr @hf_onos_subtype, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.e = load i32, ptr %i.a, align 4
  switch i32 %i.e, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_onos_chassis, align 4
  %i.g = and i32 %i.d, 65535
  %i.h = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 1, i32 noundef %i.g, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @hf_onos_port, align 4
  %i.j = and i32 %i.d, 65535
  %i.k = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef 1, i32 noundef %i.j, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_onos_ttl, align 4
  %i.m = and i32 %i.d, 65535
  %i.n = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef %i.m, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = load i32, ptr @hf_unknown_subtype_content, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.o, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_lldp_cip_tlv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_oui_default_tlv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_unknown_subtype, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 1)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_unknown_subtype_content, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_display_repr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohil(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
end_hunk_4
