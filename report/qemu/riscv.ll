Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/riscv?download=true
inline.NumInlined: 204
inline.NumDeleted: 84
begin_hunk_0
@.str.1218 = private unnamed_addr constant [10 x i8] c"pmpaddr18\00", align 1
@.str.1219 = private unnamed_addr constant [10 x i8] c"pmpaddr19\00", align 1
@.str.1220 = private unnamed_addr constant [10 x i8] c"pmpaddr20\00", align 1
@.str.1221 = private unnamed_addr constant [10 x i8] c"pmpaddr21\00", align 1
@.str.1222 = private unnamed_addr constant [10 x i8] c"pmpaddr22\00", align 1
@.str.1223 = private unnamed_addr constant [10 x i8] c"pmpaddr23\00", align 1
@.str.1224 = private unnamed_addr constant [10 x i8] c"pmpaddr24\00", align 1
@.str.1225 = private unnamed_addr constant [10 x i8] c"pmpaddr25\00", align 1
@.str.1226 = private unnamed_addr constant [10 x i8] c"pmpaddr26\00", align 1
@.str.1227 = private unnamed_addr constant [10 x i8] c"pmpaddr27\00", align 1
@.str.1228 = private unnamed_addr constant [10 x i8] c"pmpaddr28\00", align 1
@.str.1229 = private unnamed_addr constant [10 x i8] c"pmpaddr29\00", align 1
@.str.1230 = private unnamed_addr constant [10 x i8] c"pmpaddr30\00", align 1
@.str.1231 = private unnamed_addr constant [10 x i8] c"pmpaddr31\00", align 1
@.str.1232 = private unnamed_addr constant [10 x i8] c"pmpaddr32\00", align 1
@.str.1233 = private unnamed_addr constant [10 x i8] c"pmpaddr33\00", align 1
@.str.1234 = private unnamed_addr constant [10 x i8] c"pmpaddr34\00", align 1
@.str.1235 = private unnamed_addr constant [10 x i8] c"pmpaddr35\00", align 1
@.str.1236 = private unnamed_addr constant [10 x i8] c"pmpaddr36\00", align 1
@.str.1237 = private unnamed_addr constant [10 x i8] c"pmpaddr37\00", align 1
@.str.1238 = private unnamed_addr constant [10 x i8] c"pmpaddr38\00", align 1
@.str.1239 = private unnamed_addr constant [10 x i8] c"pmpaddr39\00", align 1
@.str.1240 = private unnamed_addr constant [10 x i8] c"pmpaddr40\00", align 1
@.str.1241 = private unnamed_addr constant [10 x i8] c"pmpaddr41\00", align 1
@.str.1242 = private unnamed_addr constant [10 x i8] c"pmpaddr42\00", align 1
@.str.1243 = private unnamed_addr constant [10 x i8] c"pmpaddr43\00", align 1
@.str.1244 = private unnamed_addr constant [10 x i8] c"pmpaddr44\00", align 1
@.str.1245 = private unnamed_addr constant [10 x i8] c"pmpaddr45\00", align 1
@.str.1246 = private unnamed_addr constant [10 x i8] c"pmpaddr46\00", align 1
@.str.1247 = private unnamed_addr constant [10 x i8] c"pmpaddr47\00", align 1
@.str.1248 = private unnamed_addr constant [10 x i8] c"pmpaddr48\00", align 1
@.str.1249 = private unnamed_addr constant [10 x i8] c"pmpaddr49\00", align 1
@.str.1250 = private unnamed_addr constant [10 x i8] c"pmpaddr50\00", align 1
@.str.1251 = private unnamed_addr constant [10 x i8] c"pmpaddr51\00", align 1
@.str.1252 = private unnamed_addr constant [10 x i8] c"pmpaddr52\00", align 1
@.str.1253 = private unnamed_addr constant [10 x i8] c"pmpaddr53\00", align 1
@.str.1254 = private unnamed_addr constant [10 x i8] c"pmpaddr54\00", align 1
@.str.1255 = private unnamed_addr constant [10 x i8] c"pmpaddr55\00", align 1
@.str.1256 = private unnamed_addr constant [10 x i8] c"pmpaddr56\00", align 1
@.str.1257 = private unnamed_addr constant [10 x i8] c"pmpaddr57\00", align 1
@.str.1258 = private unnamed_addr constant [10 x i8] c"pmpaddr58\00", align 1
@.str.1259 = private unnamed_addr constant [10 x i8] c"pmpaddr59\00", align 1
@.str.1260 = private unnamed_addr constant [10 x i8] c"pmpaddr60\00", align 1
@.str.1261 = private unnamed_addr constant [10 x i8] c"pmpaddr61\00", align 1
@.str.1262 = private unnamed_addr constant [10 x i8] c"pmpaddr62\00", align 1
@.str.1263 = private unnamed_addr constant [10 x i8] c"pmpaddr63\00", align 1
@.str.1264 = private unnamed_addr constant [8 x i8] c"mtohost\00", align 1
@.str.1265 = private unnamed_addr constant [10 x i8] c"mfromhost\00", align 1
@.str.1266 = private unnamed_addr constant [7 x i8] c"mreset\00", align 1
@.str.1267 = private unnamed_addr constant [5 x i8] c"mipi\00", align 1
@.str.1268 = private unnamed_addr constant [8 x i8] c"miobase\00", align 1
@.str.1269 = private unnamed_addr constant [8 x i8] c"tselect\00", align 1
@.str.1270 = private unnamed_addr constant [7 x i8] c"tdata1\00", align 1
@.str.1271 = private unnamed_addr constant [7 x i8] c"tdata2\00", align 1
@.str.1272 = private unnamed_addr constant [7 x i8] c"tdata3\00", align 1
@.str.1273 = private unnamed_addr constant [6 x i8] c"tinfo\00", align 1
@.str.1274 = private unnamed_addr constant [5 x i8] c"dcsr\00", align 1
@.str.1275 = private unnamed_addr constant [4 x i8] c"dpc\00", align 1
@.str.1276 = private unnamed_addr constant [10 x i8] c"dscratch0\00", align 1
@.str.1277 = private unnamed_addr constant [10 x i8] c"dscratch1\00", align 1
@.str.1278 = private unnamed_addr constant [7 x i8] c"mcycle\00", align 1
@.str.1279 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.1280 = private unnamed_addr constant [9 x i8] c"minstret\00", align 1
@.str.1281 = private unnamed_addr constant [13 x i8] c"mhpmcounter3\00", align 1
@.str.1282 = private unnamed_addr constant [13 x i8] c"mhpmcounter4\00", align 1
@.str.1283 = private unnamed_addr constant [13 x i8] c"mhpmcounter5\00", align 1
@.str.1284 = private unnamed_addr constant [13 x i8] c"mhpmcounter6\00", align 1
@.str.1285 = private unnamed_addr constant [13 x i8] c"mhpmcounter7\00", align 1
@.str.1286 = private unnamed_addr constant [13 x i8] c"mhpmcounter8\00", align 1
@.str.1287 = private unnamed_addr constant [13 x i8] c"mhpmcounter9\00", align 1
@.str.1288 = private unnamed_addr constant [14 x i8] c"mhpmcounter10\00", align 1
@.str.1289 = private unnamed_addr constant [14 x i8] c"mhpmcounter11\00", align 1
@.str.1290 = private unnamed_addr constant [14 x i8] c"mhpmcounter12\00", align 1
@.str.1291 = private unnamed_addr constant [14 x i8] c"mhpmcounter13\00", align 1
@.str.1292 = private unnamed_addr constant [14 x i8] c"mhpmcounter14\00", align 1
@.str.1293 = private unnamed_addr constant [14 x i8] c"mhpmcounter15\00", align 1
@.str.1294 = private unnamed_addr constant [14 x i8] c"mhpmcounter16\00", align 1
@.str.1295 = private unnamed_addr constant [14 x i8] c"mhpmcounter17\00", align 1
@.str.1296 = private unnamed_addr constant [14 x i8] c"mhpmcounter18\00", align 1
@.str.1297 = private unnamed_addr constant [14 x i8] c"mhpmcounter19\00", align 1
@.str.1298 = private unnamed_addr constant [14 x i8] c"mhpmcounter20\00", align 1
@.str.1299 = private unnamed_addr constant [14 x i8] c"mhpmcounter21\00", align 1
@.str.1300 = private unnamed_addr constant [14 x i8] c"mhpmcounter22\00", align 1
@.str.1301 = private unnamed_addr constant [14 x i8] c"mhpmcounter23\00", align 1
@.str.1302 = private unnamed_addr constant [14 x i8] c"mhpmcounter24\00", align 1
@.str.1303 = private unnamed_addr constant [14 x i8] c"mhpmcounter25\00", align 1
@.str.1304 = private unnamed_addr constant [14 x i8] c"mhpmcounter26\00", align 1
@.str.1305 = private unnamed_addr constant [14 x i8] c"mhpmcounter27\00", align 1
@.str.1306 = private unnamed_addr constant [14 x i8] c"mhpmcounter28\00", align 1
@.str.1307 = private unnamed_addr constant [14 x i8] c"mhpmcounter29\00", align 1
@.str.1308 = private unnamed_addr constant [14 x i8] c"mhpmcounter30\00", align 1
@.str.1309 = private unnamed_addr constant [14 x i8] c"mhpmcounter31\00", align 1
@.str.1310 = private unnamed_addr constant [8 x i8] c"mcycleh\00", align 1
@.str.1311 = private unnamed_addr constant [7 x i8] c"mtimeh\00", align 1
@.str.1312 = private unnamed_addr constant [10 x i8] c"minstreth\00", align 1
@.str.1313 = private unnamed_addr constant [14 x i8] c"mhpmcounter3h\00", align 1
@.str.1314 = private unnamed_addr constant [14 x i8] c"mhpmcounter4h\00", align 1
@.str.1315 = private unnamed_addr constant [14 x i8] c"mhpmcounter5h\00", align 1
@.str.1316 = private unnamed_addr constant [14 x i8] c"mhpmcounter6h\00", align 1
@.str.1317 = private unnamed_addr constant [14 x i8] c"mhpmcounter7h\00", align 1
@.str.1318 = private unnamed_addr constant [14 x i8] c"mhpmcounter8h\00", align 1
@.str.1319 = private unnamed_addr constant [14 x i8] c"mhpmcounter9h\00", align 1
@.str.1320 = private unnamed_addr constant [15 x i8] c"mhpmcounter10h\00", align 1
@.str.1321 = private unnamed_addr constant [15 x i8] c"mhpmcounter11h\00", align 1
@.str.1322 = private unnamed_addr constant [15 x i8] c"mhpmcounter12h\00", align 1
@.str.1323 = private unnamed_addr constant [15 x i8] c"mhpmcounter13h\00", align 1
@.str.1324 = private unnamed_addr constant [15 x i8] c"mhpmcounter14h\00", align 1
@.str.1325 = private unnamed_addr constant [15 x i8] c"mhpmcounter15h\00", align 1
@.str.1326 = private unnamed_addr constant [15 x i8] c"mhpmcounter16h\00", align 1
@.str.1327 = private unnamed_addr constant [15 x i8] c"mhpmcounter17h\00", align 1
@.str.1328 = private unnamed_addr constant [15 x i8] c"mhpmcounter18h\00", align 1
@.str.1329 = private unnamed_addr constant [15 x i8] c"mhpmcounter19h\00", align 1
@.str.1330 = private unnamed_addr constant [15 x i8] c"mhpmcounter20h\00", align 1
@.str.1331 = private unnamed_addr constant [15 x i8] c"mhpmcounter21h\00", align 1
@.str.1332 = private unnamed_addr constant [15 x i8] c"mhpmcounter22h\00", align 1
@.str.1333 = private unnamed_addr constant [15 x i8] c"mhpmcounter23h\00", align 1
@.str.1334 = private unnamed_addr constant [15 x i8] c"mhpmcounter24h\00", align 1
@.str.1335 = private unnamed_addr constant [15 x i8] c"mhpmcounter25h\00", align 1
@.str.1336 = private unnamed_addr constant [15 x i8] c"mhpmcounter26h\00", align 1
@.str.1337 = private unnamed_addr constant [15 x i8] c"mhpmcounter27h\00", align 1
@.str.1338 = private unnamed_addr constant [15 x i8] c"mhpmcounter28h\00", align 1
@.str.1339 = private unnamed_addr constant [15 x i8] c"mhpmcounter29h\00", align 1
@.str.1340 = private unnamed_addr constant [15 x i8] c"mhpmcounter30h\00", align 1
@.str.1341 = private unnamed_addr constant [15 x i8] c"mhpmcounter31h\00", align 1
@.str.1342 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.1343 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.1344 = private unnamed_addr constant [8 x i8] c"instret\00", align 1
@.str.1345 = private unnamed_addr constant [3 x i8] c"vl\00", align 1
@.str.1346 = private unnamed_addr constant [6 x i8] c"vtype\00", align 1
@.str.1347 = private unnamed_addr constant [6 x i8] c"vlenb\00", align 1
@.str.1348 = private unnamed_addr constant [7 x i8] c"cycleh\00", align 1
@.str.1349 = private unnamed_addr constant [6 x i8] c"timeh\00", align 1
@.str.1350 = private unnamed_addr constant [9 x i8] c"instreth\00", align 1
@.str.1351 = private unnamed_addr constant [7 x i8] c"scycle\00", align 1
@.str.1352 = private unnamed_addr constant [6 x i8] c"stime\00", align 1
@.str.1353 = private unnamed_addr constant [9 x i8] c"sinstret\00", align 1
@.str.1354 = private unnamed_addr constant [8 x i8] c"scycleh\00", align 1
@.str.1355 = private unnamed_addr constant [7 x i8] c"stimeh\00", align 1
@.str.1356 = private unnamed_addr constant [10 x i8] c"sinstreth\00", align 1
@.str.1357 = private unnamed_addr constant [7 x i8] c"hcycle\00", align 1
@.str.1358 = private unnamed_addr constant [6 x i8] c"htime\00", align 1
@.str.1359 = private unnamed_addr constant [9 x i8] c"hinstret\00", align 1
@.str.1360 = private unnamed_addr constant [8 x i8] c"hcycleh\00", align 1
@.str.1361 = private unnamed_addr constant [7 x i8] c"htimeh\00", align 1
@.str.1362 = private unnamed_addr constant [10 x i8] c"hinstreth\00", align 1
@.str.1363 = private unnamed_addr constant [10 x i8] c"mvendorid\00", align 1
@.str.1364 = private unnamed_addr constant [8 x i8] c"marchid\00", align 1
@.str.1365 = private unnamed_addr constant [7 x i8] c"mimpid\00", align 1
@.str.1366 = private unnamed_addr constant [8 x i8] c"mhartid\00", align 1
@switch.table.decode_inst_opcode = private unnamed_addr constant [8 x i8] c"\0B\0C\0D)\0E\0F(4", align 2
@switch.table.decode_inst_opcode.5 = private unnamed_addr constant [8 x i16] [i16 437, i16 441, i16 0, i16 445, i16 0, i16 0, i16 0, i16 449], align 2
@switch.table.decode_inst_opcode.6 = private unnamed_addr constant [8 x i16] [i16 438, i16 442, i16 0, i16 446, i16 0, i16 0, i16 0, i16 450], align 2
@switch.table.decode_inst_opcode.7 = private unnamed_addr constant [8 x i16] [i16 439, i16 443, i16 0, i16 447, i16 0, i16 0, i16 0, i16 451], align 2
@switch.table.decode_inst_opcode.8 = private unnamed_addr constant [8 x i16] [i16 440, i16 444, i16 0, i16 448, i16 0, i16 0, i16 0, i16 452], align 2
@switch.table.decode_inst_opcode.9 = private unnamed_addr constant [5 x i16] [i16 956, i16 957, i16 958, i16 53, i16 959], align 2
@switch.table.decode_inst_opcode.10 = private unnamed_addr constant [10 x i16] [i16 375, i16 376, i16 373, i16 374, i16 379, i16 380, i16 377, i16 378, i16 387, i16 388], align 2
@switch.table.decode_inst_opcode.11 = private unnamed_addr constant [6 x i16] [i16 324, i16 325, i16 326, i16 0, i16 328, i16 327], align 2
@switch.table.decode_inst_opcode.12 = private unnamed_addr constant [5 x i8] c"\10\11\12*6", align 2
@switch.table.decode_inst_opcode.13 = private unnamed_addr constant [8 x i16] [i16 453, i16 454, i16 0, i16 455, i16 0, i16 0, i16 0, i16 456], align 2
@switch.table.decode_inst_opcode.14 = private unnamed_addr constant [10 x i16] [i16 363, i16 poison, i16 362, i16 poison, i16 365, i16 poison, i16 364, i16 389, i16 poison, i16 390], align 2
@switch.table.decode_inst_opcode.15 = private unnamed_addr constant [6 x i16] [i16 176, i16 0, i16 208, i16 813, i16 814, i16 792], align 2
@switch.table.decode_inst_opcode.16 = private unnamed_addr constant [6 x i16] [i16 177, i16 0, i16 0, i16 210, i16 815, i16 816], align 2
@switch.table.decode_inst_opcode.17 = private unnamed_addr constant [5 x i16] [i16 819, i16 820, i16 0, i16 0, i16 791], align 2
@switch.table.decode_inst_opcode.18 = private unnamed_addr constant [6 x i16] [i16 209, i16 211, i16 0, i16 0, i16 817, i16 818], align 2
@switch.table.decode_inst_opcode.19 = private unnamed_addr constant [6 x i16] [i16 147, i16 148, i16 149, i16 0, i16 826, i16 827], align 2
@switch.table.decode_inst_opcode.20 = private unnamed_addr constant [6 x i16] [i16 179, i16 180, i16 181, i16 0, i16 828, i16 829], align 2
@switch.table.decode_inst_opcode.21 = private unnamed_addr constant [6 x i16] [i16 213, i16 214, i16 215, i16 0, i16 830, i16 831], align 2
@switch.table.decode_inst_opcode.22 = private unnamed_addr constant [9 x i16] [i16 182, i16 183, i16 187, i16 188, i16 0, i16 0, i16 0, i16 0, i16 821], align 2
@switch.table.decode_inst_opcode.23 = private unnamed_addr constant [9 x i16] [i16 189, i16 186, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 822], align 2
@switch.table.decode_inst_opcode.24 = private unnamed_addr constant [9 x i16] [i16 225, i16 220, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 824], align 2
@switch.table.decode_inst_opcode.25 = private unnamed_addr constant [30 x i16] [i16 689, i16 690, i16 691, i16 692, i16 0, i16 0, i16 693, i16 694, i16 695, i16 696, i16 697, i16 698, i16 699, i16 794, i16 700, i16 701, i16 702, i16 703, i16 704, i16 705, i16 706, i16 707, i16 708, i16 709, i16 0, i16 0, i16 0, i16 0, i16 0, i16 793], align 2
@switch.table.decode_inst_opcode.26 = private unnamed_addr constant [17 x i16] [i16 661, i16 0, i16 0, i16 0, i16 662, i16 663, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 686], align 2
@switch.table.decode_inst_opcode.27 = private unnamed_addr constant [13 x i16] [i16 762, i16 765, i16 761, i16 764, i16 760, i16 763, i16 848, i16 858, i16 847, i16 0, i16 853, i16 855, i16 854], align 2
@switch.table.decode_inst_opcode.28 = private unnamed_addr constant [8 x i16] [i16 756, i16 757, i16 0, i16 758, i16 0, i16 0, i16 0, i16 759], align 2
@switch.table.decode_inst_opcode.29 = private unnamed_addr constant [8 x i8] c"\05\06\00\00\07\08\09\0A", align 2
@switch.table.decode_inst_opcode.30 = private unnamed_addr constant [18 x i16] [i16 836, i16 834, i16 840, i16 838, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 870, i16 857], align 2
@switch.table.decode_inst_opcode.31 = private unnamed_addr constant [17 x i16] [i16 837, i16 835, i16 841, i16 839, i16 0, i16 0, i16 0, i16 844, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 871], align 2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 1, 0) i32 @print_insn_riscv32(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @print_insn_riscv(i64 noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 1, 0) i32 @print_insn_riscv(i64 noundef %0, ptr noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
.peel.begin:
  %3 = alloca %struct.rv_decode, align 8          ; 283 uses
  %i.a = alloca [2 x i8], align 2                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i16 0, ptr %i.a, align 2, !annotation !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call i32 %i.c(i64 noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %1) #10 ; 3 uses
  %.not.peel.not = icmp eq i32 %i.d, 0
  br i1 %.not.peel.not, label %bb.a, label %.loopexit74

bb.a:                                             ; preds = %.peel.begin
  %.val.peel = load i16, ptr %i.a, align 2
  %i.e = zext i16 %.val.peel to i64               ; 4 uses
  %i.f = and i64 %i.e, 3
  %.not97 = icmp eq i64 %i.f, 3                   ; 3 uses
  br i1 %.not97, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = add i64 %0, 2
  %i.i = call i32 %i.g(i64 noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull %1) #10
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit.loopexit.loopexit, label %.loopexit

.loopexit74:                                      ; preds = %.peel.begin
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(i32 noundef %i.d, i64 noundef %0, ptr noundef nonnull %1) #10
  br label %bb.di

.loopexit.loopexit.loopexit:                      ; preds = %.peel.next
  %.val = load i16, ptr %i.a, align 2
  %i.l = zext i16 %.val to i64
  %i.m = shl nuw nsw i64 %i.l, 16
  %i.n = or disjoint i64 %i.m, %i.e
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %bb.a, %.loopexit.loopexit.loopexit
  %.04056 = phi i64 [ %i.n, %.loopexit.loopexit.loopexit ], [ %i.e, %bb.a ], [ %i.e, %.peel.next ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.p = load i8, ptr %i.o, align 8, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %.loopexit
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.str.1062..str.1063 = select i1 %.not97, ptr @.str.1063, ptr @.str.1062
  %i.u = call i32 (ptr, ptr, ...) %i.r(ptr noundef %i.t, ptr noundef nonnull %.str.1062..str.1063, i64 noundef %.04056) #10 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.04056, ptr %i.z, align 8
  store ptr %i.w, ptr %3, align 8
  %.not41.i = icmp eq ptr %i.w, null
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 10 uses
  br i1 %.not41.i, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %bb.b, %.split.us.backedge.i
  %.01834.us.i = phi i64 [ %.01834.us.be.i, %.split.us.backedge.i ], [ 0, %bb.b ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr @disasm_inst.decoders, i64 %.01834.us.i ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = call zeroext i1 %i.ag(ptr noundef nonnull %i.w) #10, !inline_history !10
  br i1 %i.ah, label %bb.c, label %.critedge.us.i

bb.c:                                             ; preds = %.split.us.i
  store ptr %i.ad, ptr %i.x, align 8
  call void %i.af(ptr noundef nonnull %3, i32 noundef range(i32 0, 3) %2) #10, !inline_history !10
  %i.ai = load i16, ptr %i.aa, align 8            ; 2 uses
  %.not.us.i = icmp eq i16 %i.ai, 0
  %i.aj = icmp samesign ult i64 %.01834.us.i, 13
  %or.cond.i = and i1 %i.aj, %.not.us.i
  br i1 %or.cond.i, label %.split.us.backedge.i, label %.split36.us.i

.critedge.us.i:                                   ; preds = %.split.us.i
  %.old37.i = icmp samesign ult i64 %.01834.us.i, 13
  br i1 %.old37.i, label %.split.us.backedge.i, label %.split36.usthread-pre-split.i

.split.us.backedge.i:                             ; preds = %.critedge.us.i, %bb.c
  %.01834.us.be.i = add nuw nsw i64 %.01834.us.i, 1
  br label %.split.us.i, !llvm.loop !11

.split.i:                                         ; preds = %bb.b, %.split.i.backedge
  %.01834.i = phi i64 [ %.01834.i.be, %.split.i.backedge ], [ 0, %bb.b ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr @disasm_inst.decoders, i64 %.01834.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq i64 %.01834.i, 0
  br i1 %i.ap, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.split.i
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = call zeroext i1 %i.aq(ptr noundef null) #10, !inline_history !10
  br i1 %i.ar, label %bb.e, label %.split.i.backedge

bb.e:                                             ; preds = %bb.d
  store ptr %i.am, ptr %i.x, align 8
  call void %i.ao(ptr noundef nonnull %3, i32 noundef range(i32 0, 3) %2) #10, !inline_history !10
  %i.as = load i16, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %.split.i.backedge, label %.split36.us._crit_edge.i

.critedge.i:                                      ; preds = %.split.i
  %.old38.i = add nuw nsw i64 %.01834.i, 1
  %.old39.i = icmp ult i64 %.01834.i, 13
  br i1 %.old39.i, label %.split.i.backedge, label %.split36.usthread-pre-split.i

.split.i.backedge:                                ; preds = %.critedge.i, %bb.e, %bb.d
  %.01834.i.be = phi i64 [ 1, %bb.d ], [ %.old38.i, %.critedge.i ], [ 1, %bb.e ]
  br label %.split.i, !llvm.loop !11

.split36.usthread-pre-split.i:                    ; preds = %.critedge.us.i, %.critedge.i
  %.pr.i = load i16, ptr %i.aa, align 8
  br label %.split36.us.i

.split36.us.i:                                    ; preds = %bb.c, %.split36.usthread-pre-split.i
  %i.at = phi i16 [ %.pr.i, %.split36.usthread-pre-split.i ], [ %i.ai, %bb.c ] ; 2 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.f, label %.split36.us._crit_edge.i

.split36.us._crit_edge.i:                         ; preds = %bb.e, %.split36.us.i
  %i.av = phi i16 [ %i.at, %.split36.us.i ], [ %i.as, %bb.e ]
  %.pre.i = load ptr, ptr %i.x, align 8
  br label %bb.g

bb.f:                                             ; preds = %.split36.us.i
  store ptr @rvi_opcode_data, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split36.us._crit_edge.i
  %i.aw = phi i16 [ %i.av, %.split36.us._crit_edge.i ], [ 0, %bb.f ] ; 4 uses
  %i.ax = phi ptr [ %.pre.i, %.split36.us._crit_edge.i ], [ @rvi_opcode_data, %bb.f ] ; 6 uses
  %i.ay = load i64, ptr %i.z, align 8             ; 199 uses
  %i.az = zext i16 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.az ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = trunc i32 %i.bc to i8                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 42 ; 5 uses
  store i8 %i.bd, ptr %i.be, align 2
  switch i8 %i.bd, label %decode_inst_operands.exit.i [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.r
    i8 12, label %bb.s
    i8 13, label %bb.t
    i8 14, label %bb.u
    i8 15, label %bb.v
    i8 16, label %bb.w
    i8 17, label %bb.x
    i8 18, label %bb.y
    i8 19, label %bb.z
    i8 20, label %bb.aa
    i8 21, label %bb.ac
    i8 22, label %bb.ad
    i8 23, label %bb.ae
    i8 24, label %bb.af
    i8 25, label %bb.ag
    i8 26, label %bb.ah
    i8 27, label %bb.ai
    i8 28, label %bb.aj
    i8 29, label %bb.ak
    i8 30, label %bb.al
    i8 31, label %bb.am
    i8 32, label %bb.an
    i8 33, label %bb.ao
    i8 34, label %bb.ap
    i8 35, label %bb.aq
    i8 36, label %bb.ar
    i8 37, label %bb.as
    i8 38, label %bb.at
    i8 39, label %bb.au
    i8 40, label %bb.av
    i8 41, label %bb.aw
    i8 42, label %bb.ax
    i8 43, label %bb.ay
    i8 44, label %bb.az
    i8 45, label %bb.ba
    i8 46, label %bb.bb
    i8 47, label %bb.bc
    i8 48, label %bb.bd
    i8 49, label %bb.be
    i8 50, label %bb.bf
    i8 51, label %bb.bg
    i8 52, label %bb.bh
    i8 55, label %bb.bi
    i8 53, label %bb.bj
    i8 54, label %bb.bk
    i8 58, label %bb.bl
    i8 59, label %bb.bm
    i8 56, label %bb.bn
    i8 57, label %bb.bo
    i8 60, label %bb.bp
    i8 61, label %bb.bq
    i8 62, label %bb.br
    i8 69, label %bb.bs
    i8 63, label %bb.bt
    i8 64, label %bb.bu
    i8 65, label %bb.bv
    i8 66, label %bb.bw
    i8 67, label %bb.bx
    i8 68, label %bb.by
    i8 70, label %bb.bz
    i8 71, label %bb.ca
  ]

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 45
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 43
  store i8 0, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.bi, align 8
  br label %decode_inst_operands.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bj = trunc i64 %i.ay to i32
  %i.bk = lshr i64 %i.ay, 7
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = and i8 %i.bl, 31
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 43
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 45
  store i8 0, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 0, ptr %i.bp, align 4
  %i.bq = and i32 %i.bj, -4096
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.bq, ptr %i.br, align 8
  br label %decode_inst_operands.exit.i

bb.j:                                             ; preds = %bb.g
  %i.bs = lshr i64 %i.ay, 7
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = and i8 %i.bt, 31
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 43
  store i8 %i.bu, ptr %i.bv, align 1
end_hunk_0
begin_hunk_1_@print_insn_riscv:.peel.begin
  %i.amy = load i32, ptr %i.amx, align 8
  %i.amz = trunc i32 %i.amy to i8
  store i8 %i.amz, ptr %i.be, align 2
  br label %decode_inst_decompress.exit.i

bb.cj:                                            ; preds = %decode_inst_operands.exit.i
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  %i.anb = load i16, ptr %i.ana, align 4          ; 4 uses
  %.not.i5.i.i = icmp eq i16 %i.anb, 0
  br i1 %.not.i5.i.i, label %decode_inst_decompress.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ba, i64 38
  %i.and = load i16, ptr %i.anc, align 2
  %.not12.i6.i.i = trunc i16 %i.and to i1
  %i.ane = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.anf = load i32, ptr %i.ane, align 8
  %i.ang = icmp eq i32 %i.anf, 0
  %or.cond29.i = select i1 %.not12.i6.i.i, i1 %i.ang, i1 false
  br i1 %or.cond29.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i16 0, ptr %i.aa, align 8
  br label %decode_inst_decompress.exit.i

bb.cm:                                            ; preds = %bb.ck
  store i16 %i.anb, ptr %i.aa, align 8
  %i.anh = sext i16 %i.anb to i64
  %i.ani = getelementptr inbounds [40 x i8], ptr %i.ax, i64 %i.anh
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.ank = load i32, ptr %i.anj, align 8
  %i.anl = trunc i32 %i.ank to i8
  store i8 %i.anl, ptr %i.be, align 2
  br label %decode_inst_decompress.exit.i

default.unreachable:                              ; preds = %decode_inst_operands.exit.i
  unreachable

decode_inst_decompress.exit.i:                    ; preds = %bb.cm, %bb.cl, %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.ce, %bb.cd, %bb.cb
  %i.anm = phi i16 [ %i.aw, %bb.cb ], [ 0, %bb.cd ], [ %i.amd, %bb.ce ], [ %i.aw, %bb.cf ], [ 0, %bb.ch ], [ %i.amp, %bb.ci ], [ %i.aw, %bb.cj ], [ 0, %bb.cl ], [ %i.anb, %bb.cm ]
  %i.ann = zext i16 %i.anm to i64
  %i.ano = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 24
  %i.anq = load ptr, ptr %i.anp, align 8          ; 3 uses
  %.not.i.i = icmp eq ptr %i.anq, null
  br i1 %.not.i.i, label %glib_autoptr_cleanup_GString.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %decode_inst_decompress.exit.i
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8          ; 2 uses
  %.not1521.i.i = icmp eq ptr %i.ans, null
  br i1 %.not1521.i.i, label %glib_autoptr_cleanup_GString.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ant = getelementptr inbounds nuw i8, ptr %3, i64 45
  %i.anu = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.anv = getelementptr inbounds nuw i8, ptr %3, i64 43
  %i.anw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.anx = load i8, ptr %i.ant, align 1           ; 2 uses
  %i.any = load i8, ptr %i.anu, align 4           ; 3 uses
  %i.anz = load i8, ptr %i.anv, align 1           ; 2 uses
  %i.aoa = load i32, ptr %i.anw, align 8          ; 11 uses
  %i.aob = icmp eq i32 %i.aoa, 3202
  %i.aoc = icmp eq i32 %i.aoa, 3201
  %i.aod = icmp eq i32 %i.aoa, 3200
  %i.aoe = icmp eq i32 %i.aoa, 3074
  %i.aof = icmp eq i32 %i.aoa, 3073
  %i.aog = icmp eq i32 %i.aoa, 3072
  %i.aoh = icmp eq i32 %i.aoa, 3
  %i.aoi = icmp eq i32 %i.aoa, 2
  %i.aoj = icmp eq i32 %i.aoa, 1                  ; 2 uses
  %i.aok = icmp eq i32 %i.aoa, -1
  %i.aol = icmp eq i32 %i.aoa, 0
  %i.aom = icmp eq i8 %i.any, 1
  %i.aon = icmp eq i8 %i.anx, %i.any
  %i.aoo = icmp eq i8 %i.anx, 0
  %i.aop = icmp eq i8 %i.any, 0
  %i.aoq = icmp eq i8 %i.anz, 0
  %i.aor = icmp eq i8 %i.anz, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.dh, %.lr.ph.i.i
  %i.aos = phi ptr [ %i.ans, %.lr.ph.i.i ], [ %i.apg, %bb.dh ] ; 2 uses
  %.022.i.i = phi ptr [ %i.anq, %.lr.ph.i.i ], [ %i.ape, %bb.dh ] ; 3 uses
  %i.aot = load i32, ptr %i.aos, align 4          ; 2 uses
  %.not28.i.i.i = icmp eq i32 %i.aot, 0
  br i1 %.not28.i.i.i, label %check_constraints.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cn, %bb.dg
  %i.aou = phi i32 [ %i.aow, %bb.dg ], [ %i.aot, %bb.cn ]
  %.029.i.i.i = phi ptr [ %i.aov, %bb.dg ], [ %i.aos, %bb.cn ]
  switch i32 %i.aou, label %bb.dg [
    i32 1, label %bb.co
    i32 2, label %bb.cp
    i32 3, label %bb.cq
    i32 4, label %bb.cr
    i32 5, label %bb.cs
    i32 6, label %bb.ct
    i32 7, label %bb.cu
    i32 8, label %bb.cv
    i32 9, label %bb.cw
    i32 10, label %bb.cx
    i32 11, label %bb.cy
    i32 12, label %bb.cz
    i32 13, label %bb.da
    i32 14, label %bb.db
    i32 15, label %bb.dc
    i32 16, label %bb.dd
    i32 17, label %bb.de
    i32 18, label %bb.df
  ]

bb.co:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aor, label %bb.dg, label %bb.dh

bb.cp:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoq, label %bb.dg, label %bb.dh

bb.cq:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aop, label %bb.dg, label %bb.dh

bb.cr:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoo, label %bb.dg, label %bb.dh

bb.cs:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aon, label %bb.dg, label %bb.dh

bb.ct:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aom, label %bb.dg, label %bb.dh

bb.cu:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aol, label %bb.dg, label %bb.dh

bb.cv:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aok, label %bb.dg, label %bb.dh

bb.cw:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoj, label %bb.dg, label %bb.dh

bb.cx:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoj, label %bb.dg, label %bb.dh

bb.cy:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoi, label %bb.dg, label %bb.dh

bb.cz:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoh, label %bb.dg, label %bb.dh

bb.da:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aog, label %bb.dg, label %bb.dh

bb.db:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aof, label %bb.dg, label %bb.dh

bb.dc:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoe, label %bb.dg, label %bb.dh

bb.dd:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aod, label %bb.dg, label %bb.dh

bb.de:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aoc, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.aob, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %.lr.ph.i.i.i
  %i.aov = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 4 ; 2 uses
  %i.aow = load i32, ptr %i.aov, align 4          ; 2 uses
  %.not.i.i20.i = icmp eq i32 %i.aow, 0
  br i1 %.not.i.i20.i, label %check_constraints.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

check_constraints.exit.i.i:                       ; preds = %bb.cn, %bb.dg
  %i.aox = load i32, ptr %.022.i.i, align 8       ; 2 uses
  %i.aoy = trunc i32 %i.aox to i16
  store i16 %i.aoy, ptr %i.aa, align 8
  %.mask.i.i = and i32 %i.aox, 65535
  %i.aoz = zext nneg i32 %.mask.i.i to i64
  %i.apa = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.aoz
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  %i.apc = load i32, ptr %i.apb, align 8
  %i.apd = trunc i32 %i.apc to i8
  store i8 %i.apd, ptr %i.be, align 2
  br label %glib_autoptr_cleanup_GString.exit

bb.dh:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %i.ape = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 16
  %i.apf = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 24
  %i.apg = load ptr, ptr %i.apf, align 8          ; 2 uses
  %.not15.i.i = icmp eq ptr %i.apg, null
  br i1 %.not15.i.i, label %glib_autoptr_cleanup_GString.exit, label %bb.cn, !llvm.loop !13

glib_autoptr_cleanup_GString.exit:                ; preds = %bb.dh, %decode_inst_decompress.exit.i, %.preheader.i.i, %check_constraints.exit.i.i
  %i.aph = call fastcc ptr @format_inst(ptr noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.api = load ptr, ptr %1, align 8
  %i.apj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.apk = load ptr, ptr %i.apj, align 8
  %i.apl = load ptr, ptr %i.aph, align 8
  %i.apm = call i32 (ptr, ptr, ...) %i.api(ptr noundef %i.apk, ptr noundef nonnull @.str.1066, ptr noundef %i.apl) #10 ; 0 uses
  %4 = select i1 %.not97, i32 4, i32 2
  %i.apn = call ptr @g_string_free(ptr noundef nonnull %i.aph, i32 noundef 1) #10 ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %glib_autoptr_cleanup_GString.exit, %.loopexit74
  %.041 = phi i32 [ %4, %glib_autoptr_cleanup_GString.exit ], [ %i.d, %.loopexit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 1, 0) i32 @print_insn_riscv64(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @print_insn_riscv(i64 noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 1, 0) i32 @print_insn_riscv128(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @print_insn_riscv(i64 noundef %0, ptr noundef %1, i32 noundef 2)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef zeroext i1 @always_true_p(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_inst_opcode(ptr nofree noundef captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 192 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable477 [
    i64 0, label %bb.b
    i64 1, label %bb.n
    i64 2, label %bb.ai
    i64 3, label %bb.bh
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 13
  %i.e = and i64 %i.d, 7
  switch i64 %i.e, label %default.unreachable477 [
    i64 0, label %bb.aam
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.k
    i64 6, label %bb.l
    i64 7, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %1, 2
  %. = select i1 %i.f, i16 269, i16 228
  br label %bb.aam

bb.d:                                             ; preds = %bb.b
  br label %bb.aam

bb.e:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %1, 0
  %.344 = select i1 %i.g, i16 230, i16 264
  br label %bb.aam

bb.f:                                             ; preds = %bb.b
  %i.h = lshr i64 %i.b, 10
  %i.i = and i64 %i.h, 7
  switch i64 %i.i, label %bb.aam [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.aam

bb.h:                                             ; preds = %bb.f
  %i.j = and i64 %i.b, 64
  %i.k = icmp eq i64 %i.j, 0
  %.345 = select i1 %i.k, i16 777, i16 778
  br label %bb.aam

bb.i:                                             ; preds = %bb.f
  br label %bb.aam

bb.j:                                             ; preds = %bb.f
  %i.l = and i64 %i.b, 64
  %i.m = icmp eq i64 %i.l, 0
  %spec.select = select i1 %i.m, i16 780, i16 0
  br label %bb.aam

bb.k:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %1, 2
  %.346 = select i1 %i.n, i16 270, i16 231
  br label %bb.aam

bb.l:                                             ; preds = %bb.b
  br label %bb.aam

bb.m:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %1, 0
  %.347 = select i1 %i.o, i16 233, i16 265
  br label %bb.aam

bb.n:                                             ; preds = %bb.a
  %i.p = lshr i64 %i.b, 13
  %i.q = and i64 %i.p, 7
  switch i64 %i.q, label %default.unreachable477 [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.aam
    i64 3, label %bb.q
    i64 4, label %bb.u
    i64 5, label %bb.af
    i64 6, label %bb.ag
    i64 7, label %bb.ah
  ]

bb.o:                                             ; preds = %bb.n
  %i.r = and i64 %i.b, 8188
  %cond32 = icmp eq i64 %i.r, 0
  %.348 = select i1 %cond32, i16 234, i16 235
  br label %bb.aam

bb.p:                                             ; preds = %bb.n
  %i.s = icmp eq i32 %1, 0
  %.349 = select i1 %i.s, i16 236, i16 266
  br label %bb.aam

bb.q:                                             ; preds = %bb.n
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %.not343 = icmp eq ptr %i.t, null
  br i1 %.not343, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 39
  %i.v = load i8, ptr %i.u, align 1, !range !7, !noundef !8
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = and i64 %i.b, 6396
  %i.y = icmp eq i64 %i.x, 128
  %or.cond353 = and i1 %i.y, %i.w
  br i1 %or.cond353, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.z = trunc i64 %i.b to i32
  %i.aa = lshr i32 %i.z, 8
  %i.ab = and i32 %i.aa, 7                        ; 3 uses
  %i.ac = trunc nuw nsw i32 %i.ab to i16
  %i.ad = add nuw nsw i16 %i.ac, 918              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !7, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = icmp eq i32 %i.ab, 0
  %i.ai = icmp eq i32 %i.ab, 2
  %i.aj = select i1 %i.ah, i16 954, i16 %i.ad
  %i.ak = select i1 %i.ai, i16 955, i16 %i.aj
  %.0 = select i1 %i.ag, i16 %i.ak, i16 %i.ad
  br label %bb.aam

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.al = and i64 %i.b, 3968
  %cond31 = icmp eq i64 %i.al, 256
  %.354 = select i1 %cond31, i16 238, i16 239
  br label %bb.aam

bb.u:                                             ; preds = %bb.n
  %i.am = lshr i64 %i.b, 10                       ; 2 uses
  %i.an = and i64 %i.am, 3
  switch i64 %i.an, label %default.unreachable477 [
    i64 0, label %bb.aam
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.aam

bb.w:                                             ; preds = %bb.u
  br label %bb.aam

bb.x:                                             ; preds = %bb.u
  %i.ao = and i64 %i.am, 4
  %i.ap = lshr i64 %i.b, 5
  %i.aq = and i64 %i.ap, 3
  %i.ar = or disjoint i64 %i.ao, %i.aq
  switch i64 %i.ar, label %default.unreachable477 [
    i64 0, label %bb.aam
    i64 1, label %bb.y
    i64 2, label %bb.z
end_hunk_1
