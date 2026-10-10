Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mstp?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.37 = private unnamed_addr constant [25 x i8] c"mstp.checksum_bad.expert\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Bad Checksum\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"mstp\00", align 1
@proto_mstp = internal unnamed_addr global i32 0, align 4
@mstp_handle = internal unnamed_addr global ptr null, align 8
@.str.40 = private unnamed_addr constant [23 x i8] c"mstp.vendor_frame_type\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"MSTP Vendor specific Frametypes\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"AT_MSTP\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"BACnet MS/TP Address\00", align 1
@mstp_address_type = internal unnamed_addr global i32 -1, align 4
@.str.44 = private unnamed_addr constant [11 x i8] c"wtap_encap\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"bacnet\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"Token\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"Poll For Master\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Reply To Poll For Master\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"Test_Request\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Test_Response\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"BACnet Data Expecting Reply\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"BACnet Data Not Expecting Reply\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"Reply Postponed\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"BACnet Extended Data Expecting Reply\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"BACnet Extended Data Not Expecting Reply\00", align 1
@bacnet_mstp_frame_type_name = internal constant [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.46 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.47 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.48 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.50 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.51 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.52 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.53 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.55 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [37 x i8] c"BACnet MS/TP, Src (%u), Dst (%u), %s\00", align 1
@.crctable = private unnamed_addr constant [256 x i32] [i32 0, i32 -1768569654, i32 -79152695, i32 1843264771, i32 552846287, i32 -1234827515, i32 -608437754, i32 1294876364, i32 1105692574, i32 -680377516, i32 -1162887593, i32 742029981, i32 1628718161, i32 -142507877, i32 -1705214568, i32 214546770, i32 -2083582148, i32 358271990, i32 2022127349, i32 -300748225, i32 -1556296461, i32 900270137, i32 1484059962, i32 -824102416, i32 -1037530974, i32 1421692008, i32 962638187, i32 -1342868063, i32 -488944787, i32 1951305639, i32 429093540, i32 -1895385490, i32 -771903963, i32 1198025455, i32 716543980, i32 -1138732250, i32 -250712598, i32 1738254624, i32 172381219, i32 -1663856407, i32 -1877333573, i32 110095729, i32 1800540274, i32 -37235528, i32 -1326847372, i32 645672638, i32 1268896701, i32 -583788681, i32 1379049753, i32 -995662381, i32 -1451583280, i32 1072651290, i32 1925276374, i32 -464214500, i32 -1987486945, i32 521969621, i32 332736135, i32 -2059345331, i32 -392356018, i32 2114509700, i32 858187080, i32 -1514987134, i32 -932258687, i32 1593514059, i32 1972956183, i32 -485676835, i32 -1898916386, i32 407179540, i32 1433087960, i32 -1006703854, i32 -1373432303, i32 951505627, i32 880765833, i32 -1561678013, i32 -818458048, i32 1503827594, i32 344762438, i32 -2112263028, i32 -272330353, i32 2035373381, i32 -162012373, i32 1623336929, i32 220191458, i32 -1685447128, i32 -693886748, i32 1077011502, i32 770447661, i32 -1149641241, i32 -1213176651, i32 556114047, i32 1291345276, i32 -630351434, i32 -1757173894, i32 30827440, i32 1812700851, i32 -90285447, i32 -1536867790, i32 854623992, i32 1596816379, i32 -910639311, i32 -2070511107, i32 302204215, i32 2145302580, i32 -380928770, i32 -444414548, i32 1930887526, i32 516619365, i32 -2007025489, i32 -982448541, i32 1407500969, i32 1043939242, i32 -1465058464, i32 665472270, i32 -1321236028, i32 -589138745, i32 1249357837, i32 123309761, i32 -1848882677, i32 -65947896, i32 1787065282, i32 1716374160, i32 -254276006, i32 -1660554407, i32 194000787, i32 1186859359, i32 -802435691, i32 -1107939178, i32 727970908, i32 -349054930, i32 2107907300, i32 276423143, i32 -2031344339, i32 -876471327, i32 1566039851, i32 814359080, i32 -1507858718, i32 -1428791376, i32 1011063674, i32 1369335417, i32 -955538765, i32 -1977246593, i32 481319093, i32 1903011254, i32 -403152516, i32 1761531666, i32 -26537000, i32 -1816727845, i32 86190609, i32 1208816861, i32 -560410601, i32 -1287312108, i32 634448350, i32 689524876, i32 -1081306042, i32 -766416571, i32 1153740175, i32 166368067, i32 -1619044471, i32 -224220534, i32 1681354304, i32 986478091, i32 -1403407679, i32 -1048293438, i32 1460767496, i32 440382916, i32 -1934986994, i32 -512259059, i32 2011318471, i32 2066477461, i32 -306301601, i32 -2140944292, i32 385223830, i32 1540895322, i32 -850528624, i32 -1601172589, i32 906350425, i32 -1190954697, i32 798408189, i32 1112228094, i32 -723614668, i32 -1712276744, i32 258309682, i32 1656259377, i32 -198359045, i32 -119210327, i32 1852914275, i32 61654880, i32 -1791425622, i32 -669565594, i32 1317206444, i32 593429679, i32 -1245003675, i32 -1633078215, i32 138211571, i32 1709247984, i32 -210450118, i32 -1101334538, i32 684667708, i32 1158860351, i32 -746124555, i32 -548490329, i32 1239119725, i32 604408430, i32 -1298968924, i32 -4362136, i32 1764275362, i32 83184033, i32 -1839166101, i32 493239045, i32 -1946943537, i32 -433192244, i32 1891354118, i32 1033238730, i32 -1426048000, i32 -958545661, i32 1346897353, i32 1552006299, i32 -904628143, i32 -1479965358, i32 828129688, i32 2087878484, i32 -353911906, i32 -2026223971, i32 296714839, i32 1330944540, i32 -641638698, i32 -1273191467, i32 579430175, i32 1873238483, i32 -114123495, i32 -1796251622, i32 41592016, i32 246619522, i32 -1742284472, i32 -168090549, i32 1668210817, i32 776003149, i32 -1193993593, i32 -720836732, i32 1134371662, i32 -862218976, i32 1510887914, i32 936619241, i32 -1589221341, i32 -328706321, i32 2063438373, i32 388001574, i32 -2118800404, i32 -1921248578, i32 468309620, i32 1983130487, i32 -526258243, i32 -1383083663, i32 991565243, i32 1455941816, i32 -1068356494]

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @mstp_frame_type_text(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @val_to_str(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @bacnet_mstp_frame_type_name, ptr noundef nonnull @.str)
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_mstp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef nonnull @.str.1)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 25, ptr noundef nonnull @.str.2)
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %4) ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext i8 %i.e to i32                      ; 4 uses
  %i.j = tail call ptr @val_to_str(ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull @bacnet_mstp_frame_type_name, ptr noundef nonnull @.str)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.f, i32 noundef 25, ptr noundef nonnull @.str.3, ptr noundef %i.j)
  %i.k = load i32, ptr @hf_mstp_frame_type, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.k, ptr noundef %0, i32 noundef %4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr @hf_mstp_frame_destination, align 4
  %i.n = add i32 %4, 1                            ; 2 uses
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.p = load i32, ptr @hf_mstp_frame_source, align 4
  %i.q = add i32 %4, 2                            ; 2 uses
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.s = load i32, ptr @hf_mstp_frame_pdu_len, align 4
  %i.t = add i32 %4, 3                            ; 2 uses
  %i.u = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.t, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 2 uses
  %i.v = add i32 %4, 6                            ; 8 uses
  %i.w = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.v)
  %i.x = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = add i32 %i.x, 2
  %i.z = and i32 %i.w, 65535
  %i.aa = icmp ugt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.u, ptr noundef nonnull @ei_mstp_frame_pdu_len) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %4)
  %i.ad = xor i8 %i.ac, -1
  %i.ae = zext i8 %i.ad to i16                    ; 8 uses
  %i.af = shl nuw nsw i16 %i.ae, 1
  %i.ag = shl nuw nsw i16 %i.ae, 2
  %i.ah = xor i16 %i.af, %i.ag
  %i.ai = shl nuw nsw i16 %i.ae, 3
  %i.aj = xor i16 %i.ah, %i.ai
  %i.ak = shl nuw nsw i16 %i.ae, 4
  %i.al = xor i16 %i.aj, %i.ak
  %i.am = shl nuw nsw i16 %i.ae, 5
  %i.an = xor i16 %i.al, %i.am
  %i.ao = shl nuw nsw i16 %i.ae, 6
  %i.ap = xor i16 %i.an, %i.ao
  %i.aq = shl nuw nsw i16 %i.ae, 7
  %i.ar = xor i16 %i.ap, %i.aq                    ; 2 uses
  %i.as = xor i16 %i.ar, %i.ae
  %i.at = and i16 %i.as, 254
  %i.au = lshr i16 %i.ar, 8
  %i.av = and i16 %i.au, 1
  %i.aw = or disjoint i16 %i.at, %i.av
  %i.ax = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.n)
  %i.ay = zext i8 %i.ax to i16
  %i.az = xor i16 %i.aw, %i.ay                    ; 8 uses
  %i.ba = shl nuw nsw i16 %i.az, 1
  %i.bb = shl nuw nsw i16 %i.az, 2
  %i.bc = xor i16 %i.ba, %i.bb
  %i.bd = shl nuw nsw i16 %i.az, 3
  %i.be = xor i16 %i.bc, %i.bd
  %i.bf = shl nuw nsw i16 %i.az, 4
  %i.bg = xor i16 %i.be, %i.bf
  %i.bh = shl nuw nsw i16 %i.az, 5
  %i.bi = xor i16 %i.bg, %i.bh
  %i.bj = shl nuw nsw i16 %i.az, 6
  %i.bk = xor i16 %i.bi, %i.bj
  %i.bl = shl nuw nsw i16 %i.az, 7
  %i.bm = xor i16 %i.bk, %i.bl                    ; 2 uses
  %i.bn = xor i16 %i.bm, %i.az
  %i.bo = and i16 %i.bn, 254
  %i.bp = lshr i16 %i.bm, 8
  %i.bq = and i16 %i.bp, 1
  %i.br = or disjoint i16 %i.bo, %i.bq
  %i.bs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.q)
  %i.bt = zext i8 %i.bs to i16
  %i.bu = xor i16 %i.br, %i.bt                    ; 8 uses
  %i.bv = shl nuw nsw i16 %i.bu, 1
  %i.bw = shl nuw nsw i16 %i.bu, 2
  %i.bx = xor i16 %i.bv, %i.bw
  %i.by = shl nuw nsw i16 %i.bu, 3
  %i.bz = xor i16 %i.bx, %i.by
  %i.ca = shl nuw nsw i16 %i.bu, 4
  %i.cb = xor i16 %i.bz, %i.ca
  %i.cc = shl nuw nsw i16 %i.bu, 5
  %i.cd = xor i16 %i.cb, %i.cc
  %i.ce = shl nuw nsw i16 %i.bu, 6
  %i.cf = xor i16 %i.cd, %i.ce
  %i.cg = shl nuw nsw i16 %i.bu, 7
  %i.ch = xor i16 %i.cf, %i.cg                    ; 2 uses
  %i.ci = xor i16 %i.ch, %i.bu
  %i.cj = and i16 %i.ci, 254
  %i.ck = lshr i16 %i.ch, 8
  %i.cl = and i16 %i.ck, 1
  %i.cm = or disjoint i16 %i.cj, %i.cl
  %i.cn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.t)
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.cm, %i.co                    ; 8 uses
  %i.cq = shl nuw nsw i16 %i.cp, 1
  %i.cr = shl nuw nsw i16 %i.cp, 2
  %i.cs = xor i16 %i.cq, %i.cr
  %i.ct = shl nuw nsw i16 %i.cp, 3
  %i.cu = xor i16 %i.cs, %i.ct
  %i.cv = shl nuw nsw i16 %i.cp, 4
  %i.cw = xor i16 %i.cu, %i.cv
  %i.cx = shl nuw nsw i16 %i.cp, 5
  %i.cy = xor i16 %i.cw, %i.cx
  %i.cz = shl nuw nsw i16 %i.cp, 6
  %i.da = xor i16 %i.cy, %i.cz
  %i.db = shl nuw nsw i16 %i.cp, 7
  %i.dc = xor i16 %i.da, %i.db                    ; 2 uses
  %i.dd = xor i16 %i.dc, %i.cp
  %i.de = and i16 %i.dd, 254
  %i.df = lshr i16 %i.dc, 8
  %i.dg = and i16 %i.df, 1
  %i.dh = or disjoint i16 %i.de, %i.dg
  %i.di = add i32 %4, 4
  %i.dj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.di)
  %i.dk = zext i8 %i.dj to i16
  %i.dl = xor i16 %i.dh, %i.dk                    ; 8 uses
  %i.dm = shl nuw nsw i16 %i.dl, 1
  %i.dn = shl nuw nsw i16 %i.dl, 2
  %i.do = xor i16 %i.dm, %i.dn
  %i.dp = shl nuw nsw i16 %i.dl, 3
  %i.dq = xor i16 %i.do, %i.dp
  %i.dr = shl nuw nsw i16 %i.dl, 4
  %i.ds = xor i16 %i.dq, %i.dr
  %i.dt = shl nuw nsw i16 %i.dl, 5
  %i.du = xor i16 %i.ds, %i.dt
  %i.dv = shl nuw nsw i16 %i.dl, 6
  %i.dw = xor i16 %i.du, %i.dv
  %i.dx = shl nuw nsw i16 %i.dl, 7
  %i.dy = xor i16 %i.dw, %i.dx                    ; 2 uses
  %i.dz = xor i16 %i.dy, %i.dl
  %i.ea = and i16 %i.dz, 254
  %i.eb = lshr i16 %i.dy, 8
  %i.ec = and i16 %i.eb, 1
  %i.ed = or disjoint i16 %i.ea, %i.ec
  %i.ee = xor i16 %i.ed, 255
  %i.ef = zext nneg i16 %i.ee to i32
  %i.eg = add i32 %4, 5
  %i.eh = load i32, ptr @hf_mstp_frame_crc8, align 4
  %i.ei = load i32, ptr @hf_mstp_frame_checksum_status, align 4
  %i.ej = call ptr @proto_tree_add_checksum(ptr noundef %3, ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef %i.ei, ptr noundef nonnull @ei_mstp_frame_checksum_bad, ptr noundef %1, i32 noundef %i.ef, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ek = and i8 %i.e, -2
  %or.cond = icmp eq i8 %i.ek, 32
  %i.el = load i32, ptr %i.a, align 4             ; 3 uses
  br i1 %or.cond, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.em = add i32 %i.el, 2                        ; 4 uses
  %i.en = load ptr, ptr %i.g, align 8
  %i.eo = zext i32 %i.em to i64                   ; 4 uses
  %i.ep = call ptr @tvb_memdup(ptr noundef %i.en, ptr noundef %0, i32 noundef %i.v, i64 noundef %i.eo) ; 30 uses
  %i.eq = icmp ult i32 %i.em, 5
  br i1 %i.eq, label %cobs_frame_decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.er = add nsw i64 %i.eo, -5                   ; 6 uses
  %.not66.i = icmp eq i64 %i.er, 0
  br i1 %.not66.i, label %cobs_decode.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %xtraiter = and i64 %i.er, 1
  %i.es = icmp eq i32 %i.em, 6
  br i1 %i.es, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.er, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %i.et = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ey, %.lr.ph.i ] ; 3 uses
  %.02562.i = phi i32 [ -1, %.lr.ph.preheader.i.new ], [ %crc.next.i.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.eu = getelementptr i8, ptr %i.ep, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %crc.le.shift.i.i = lshr i32 %.02562.i, 8
  %crc.indexer.cast.i.i = trunc i32 %.02562.i to i8
  %crc.data.indexer.i.i = xor i8 %i.ev, %crc.indexer.cast.i.i
  %indexer.ext.i.i = zext i8 %crc.data.indexer.i.i to i64
  %tbl.ptradd.i.i = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %indexer.ext.i.i
  %tbl.ld.i.i = load i32, ptr %tbl.ptradd.i.i, align 4
  %crc.next.i.i = xor i32 %tbl.ld.i.i, %crc.le.shift.i.i ; 2 uses
  %5 = getelementptr i8, ptr %i.ep, i64 %i.et
  %i.ew = getelementptr i8, ptr %5, i64 1
  %i.ex = load i8, ptr %i.ew, align 1
  %crc.le.shift.i.i.1 = lshr i32 %crc.next.i.i, 8
  %crc.indexer.cast.i.i.1 = trunc i32 %crc.next.i.i to i8
  %crc.data.indexer.i.i.1 = xor i8 %i.ex, %crc.indexer.cast.i.i.1
  %indexer.ext.i.i.1 = zext i8 %crc.data.indexer.i.i.1 to i64
  %tbl.ptradd.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %indexer.ext.i.i.1
  %tbl.ld.i.i.1 = load i32, ptr %tbl.ptradd.i.i.1, align 4
  %crc.next.i.i.1 = xor i32 %tbl.ld.i.i.1, %crc.le.shift.i.i.1 ; 3 uses
  %i.ey = add nuw nsw i64 %i.et, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.lr.ph38.i.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

.lr.ph38.i.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.i.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph38.i.i.preheader.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ey, %.lr.ph38.i.i.preheader.unr-lcssa ]
  %.02562.i.epil.init = phi i32 [ -1, %.lr.ph.preheader.i ], [ %crc.next.i.i.1, %.lr.ph38.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod177 = trunc i64 %i.er to i1
  call void @llvm.assume(i1 %lcmp.mod177)
  %i.ez = getelementptr i8, ptr %i.ep, i64 %.epil.init
  %i.fa = load i8, ptr %i.ez, align 1
  %crc.le.shift.i.i.epil = lshr i32 %.02562.i.epil.init, 8
  %crc.indexer.cast.i.i.epil = trunc i32 %.02562.i.epil.init to i8
  %crc.data.indexer.i.i.epil = xor i8 %i.fa, %crc.indexer.cast.i.i.epil
  %indexer.ext.i.i.epil = zext i8 %crc.data.indexer.i.i.epil to i64
  %tbl.ptradd.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %indexer.ext.i.i.epil
  %tbl.ld.i.i.epil = load i32, ptr %tbl.ptradd.i.i.epil, align 4
  %crc.next.i.i.epil = xor i32 %tbl.ld.i.i.epil, %crc.le.shift.i.i.epil
  br label %.lr.ph38.i.i.preheader

.lr.ph38.i.i.preheader:                           ; preds = %.lr.ph38.i.i.preheader.unr-lcssa, %.lr.ph.i.epil.preheader
  %crc.next.i.i.lcssa = phi i32 [ %crc.next.i.i.1, %.lr.ph38.i.i.preheader.unr-lcssa ], [ %crc.next.i.i.epil, %.lr.ph.i.epil.preheader ] ; 3 uses
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i.preheader, %bb.i
  %.02336.i.i = phi i64 [ %.2.i.i, %bb.i ], [ 0, %.lr.ph38.i.i.preheader ] ; 14 uses
  %.02435.i.i = phi i64 [ %.125.lcssa.i.i, %bb.i ], [ 0, %.lr.ph38.i.i.preheader ] ; 4 uses
  %i.fb = getelementptr i8, ptr %i.ep, i64 %.02435.i.i
  %i.fc = load i8, ptr %i.fb, align 1             ; 3 uses
  %i.fd = icmp eq i8 %i.fc, 85
  br i1 %i.fd, label %cobs_decode.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph38.i.i
  %i.fe = xor i8 %i.fc, 85                        ; 4 uses
  %i.ff = zext i8 %i.fe to i64
  %i.fg = add nuw nsw i64 %.02435.i.i, %i.ff
  %i.fh = icmp ugt i64 %i.fg, %i.er
  br i1 %i.fh, label %cobs_decode.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %.12530.i.i = add i64 %.02435.i.i, 1            ; 13 uses
  %i.fi = add i8 %i.fe, -1                        ; 6 uses
  %.not31.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not31.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i
  %i.fj = zext i8 %i.fi to i64                    ; 5 uses
  %min.iters.check = icmp ult i8 %i.fe, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fk = sub i64 %.02336.i.i, %.02435.i.i
  %i.fl = add i64 %i.fk, -2
  %diff.check = icmp ult i64 %i.fl, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i8 %i.fe, 33
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fm = and i64 %i.fj, 28
  %n.vec = and i64 %i.fj, 224                     ; 11 uses
  %i.fn = trunc nuw i64 %n.vec to i8
  %i.fo = sub i8 %i.fi, %i.fn
  %i.fp = add i64 %.12530.i.i, %n.vec             ; 2 uses
  %i.fq = add i64 %.02336.i.i, %n.vec             ; 2 uses
  %i.fr = getelementptr i8, ptr %i.ep, i64 %.12530.i.i ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  %wide.load = load <16 x i8>, ptr %i.fr, align 1
  %wide.load131 = load <16 x i8>, ptr %i.fs, align 1
  %i.ft = xor <16 x i8> %wide.load, splat (i8 85)
  %i.fu = xor <16 x i8> %wide.load131, splat (i8 85)
  %i.fv = getelementptr i8, ptr %i.ep, i64 %.02336.i.i ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  store <16 x i8> %i.ft, ptr %i.fv, align 1
  store <16 x i8> %i.fu, ptr %i.fw, align 1
  %i.fx = icmp eq i64 %n.vec, 32
  br i1 %i.fx, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.fy = getelementptr i8, ptr %i.ep, i64 %.12530.i.i ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 32
  %i.ga = getelementptr i8, ptr %i.fy, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.fz, align 1
  %wide.load131.1 = load <16 x i8>, ptr %i.ga, align 1
  %i.gb = xor <16 x i8> %wide.load.1, splat (i8 85)
  %i.gc = xor <16 x i8> %wide.load131.1, splat (i8 85)
  %i.gd = getelementptr i8, ptr %i.ep, i64 %.02336.i.i ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 32
  %i.gf = getelementptr i8, ptr %i.gd, i64 48
  store <16 x i8> %i.gb, ptr %i.ge, align 1
  store <16 x i8> %i.gc, ptr %i.gf, align 1
  %i.gg = icmp eq i64 %n.vec, 64
  br i1 %i.gg, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.gh = getelementptr i8, ptr %i.ep, i64 %.12530.i.i ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 64
  %i.gj = getelementptr i8, ptr %i.gh, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.gi, align 1
  %wide.load131.2 = load <16 x i8>, ptr %i.gj, align 1
  %i.gk = xor <16 x i8> %wide.load.2, splat (i8 85)
  %i.gl = xor <16 x i8> %wide.load131.2, splat (i8 85)
  %i.gm = getelementptr i8, ptr %i.ep, i64 %.02336.i.i ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 64
  %i.go = getelementptr i8, ptr %i.gm, i64 80
  store <16 x i8> %i.gk, ptr %i.gn, align 1
  store <16 x i8> %i.gl, ptr %i.go, align 1
  %i.gp = icmp eq i64 %n.vec, 96
  br i1 %i.gp, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.gq = getelementptr i8, ptr %i.ep, i64 %.12530.i.i ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 96
  %i.gs = getelementptr i8, ptr %i.gq, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.gr, align 1
  %wide.load131.3 = load <16 x i8>, ptr %i.gs, align 1
  %i.gt = xor <16 x i8> %wide.load.3, splat (i8 85)
  %i.gu = xor <16 x i8> %wide.load131.3, splat (i8 85)
  %i.gv = getelementptr i8, ptr %i.ep, i64 %.02336.i.i ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 96
  %i.gx = getelementptr i8, ptr %i.gv, i64 112
  store <16 x i8> %i.gt, ptr %i.gw, align 1
  store <16 x i8> %i.gu, ptr %i.gx, align 1
  %i.gy = icmp eq i64 %n.vec, 128
  br i1 %i.gy, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.gz = getelementptr i8, ptr %i.ep, i64 %.12530.i.i ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 128
  %i.hb = getelementptr i8, ptr %i.gz, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.ha, align 1
  %wide.load131.4 = load <16 x i8>, ptr %i.hb, align 1
  %i.hc = xor <16 x i8> %wide.load.4, splat (i8 85)
  %i.hd = xor <16 x i8> %wide.load131.4, splat (i8 85)
  %i.he = getelementptr i8, ptr %i.ep, i64 %.02336.i.i ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 128
  %i.hg = getelementptr i8, ptr %i.he, i64 144
  store <16 x i8> %i.hc, ptr %i.hf, align 1
  store <16 x i8> %i.hd, ptr %i.hg, align 1
  %i.hh = icmp eq i64 %n.vec, 160
  br i1 %i.hh, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.hi = getelementptr i8, ptr %i.ep, i64 %.12530.i.i ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 160
  %i.hk = getelementptr i8, ptr %i.hi, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.hj, align 1
  %wide.load131.5 = load <16 x i8>, ptr %i.hk, align 1
  %i.hl = xor <16 x i8> %wide.load.5, splat (i8 85)
  %i.hm = xor <16 x i8> %wide.load131.5, splat (i8 85)
  %i.hn = getelementptr i8, ptr %i.ep, i64 %.02336.i.i ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 160
  %i.hp = getelementptr i8, ptr %i.hn, i64 176
  store <16 x i8> %i.hl, ptr %i.ho, align 1
  store <16 x i8> %i.hm, ptr %i.hp, align 1
  %i.hq = icmp eq i64 %n.vec, 192
  br i1 %i.hq, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.hr = getelementptr i8, ptr %i.ep, i64 %.12530.i.i ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 192
  %i.ht = getelementptr i8, ptr %i.hr, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.hs, align 1
  %wide.load131.6 = load <16 x i8>, ptr %i.ht, align 1
  %i.hu = xor <16 x i8> %wide.load.6, splat (i8 85)
  %i.hv = xor <16 x i8> %wide.load131.6, splat (i8 85)
  %i.hw = getelementptr i8, ptr %i.ep, i64 %.02336.i.i ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 192
  %i.hy = getelementptr i8, ptr %i.hw, i64 208
  store <16 x i8> %i.hu, ptr %i.hx, align 1
  store <16 x i8> %i.hv, ptr %i.hy, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.fj
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.fj, 252                  ; 5 uses
  %i.hz = trunc nuw i64 %n.vec134 to i8
  %i.ia = sub i8 %i.fi, %i.hz
  %i.ib = add i64 %.12530.i.i, %n.vec134          ; 2 uses
  %i.ic = add i64 %.02336.i.i, %n.vec134          ; 2 uses
  %i.id = getelementptr i8, ptr %i.ep, i64 %.12530.i.i
  %i.ie = getelementptr i8, ptr %i.ep, i64 %.02336.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %i.if = getelementptr i8, ptr %i.id, i64 %index135
  %wide.load136 = load <4 x i8>, ptr %i.if, align 1
  %i.ig = xor <4 x i8> %wide.load136, splat (i8 85)
  %i.ih = getelementptr i8, ptr %i.ie, i64 %index135
  store <4 x i8> %i.ig, ptr %i.ih, align 1
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.ii = icmp eq i64 %index.next137, %n.vec134
  br i1 %i.ii, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
end_hunk_0
