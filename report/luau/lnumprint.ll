Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lnumprint?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@_ZL11kPow10Table = internal unnamed_addr constant [39 x [3 x i64]] [[3 x i64] [i64 -38366372719436721, i64 2731688931043774331, i64 3689647954919113787], [3 x i64] [i64 -8228041688891786181, i64 -5891368184943504668, i64 -4921401690584105796], [3 x i64] [i64 -7101705404292871755, i64 8031958568804398250, i64 5450688482365885388], [3 x i64] [i64 -5851220927660403859, i64 6411694268519837209, i64 4297485399694721979], [3 x i64] [i64 -4462904269766699466, i64 -7468914334623251739, i64 3725667953429656523], [3 x i64] [i64 -2921563150702462265, i64 9035120885289943692, i64 3797744241850139708], [3 x i64] [i64 -1210330751515841308, i64 -8720225134666286027, i64 3689366406929003339], [3 x i64] [i64 -8878612607581929669, i64 3021029092058325108, i64 -3698357182497338436], [3 x i64] [i64 -7823984217374209643, i64 -3841273781498745803, i64 4229912743642872763], [3 x i64] [i64 -6653111496142234891, i64 -4522070525825979461, i64 5531506993645964731], [3 x i64] [i64 -5353181642124984136, i64 973227847154161339, i64 3725385315053679787], [3 x i64] [i64 -3909969587797413806, i64 -249470856692830026, i64 3729890082660562108], [3 x i64] [i64 -2307682335666372931, i64 6447041592208152312, i64 4878599356342813516], [3 x i64] [i64 -528786136287117932, i64 8476984389250486571, i64 4914329017211106363], [3 x i64] [i64 -8500279345513818773, i64 1985699082112030976, i64 -4923653499257140020], [3 x i64] [i64 -7403949918844649557, i64 -1925667057416912854, i64 5527249684623215564], [3 x i64] [i64 -6186779746782440750, i64 -2457545025797441046, i64 4297483235014423484], [3 x i64] [i64 -4835449396872013078, i64 -8578025658503072379, i64 4950665748621837259], [3 x i64] [i64 -3335171328526686933, i64 -3187597375937010519, i64 4955169348248683579], [3 x i64] [i64 -1669528073709551616, i64 0, i64 4919131752989213772], [3 x i64] [i64 -9133518327554766460, i64 4611686018427387904, i64 -3689348814741910324], [3 x i64] [i64 -8106986416796705681, i64 -1981020733047832576, i64 -4925886529507930932], [3 x i64] [i64 -6967307053960650171, i64 132682750386005393, i64 5378348240539892651], [3 x i64] [i64 -5702008784649933400, i64 4261994450943298508, i64 4369401156733715388], [3 x i64] [i64 -4297245513042813542, i64 4298070930406474645, i64 4955169279529665739], [3 x i64] [i64 -2737644984756826647, i64 -1725319251657714538, i64 3725386412148863804], [3 x i64] [i64 -1006140569036166268, i64 -4582539761593113445, i64 4914628153361777723], [3 x i64] [i64 -8765264286586255934, i64 831516194300602803, i64 -2608502496761791557], [3 x i64] [i64 -7698142301602209614, i64 -2480258038432112252, i64 4306773073191386300], [3 x i64] [i64 -6513398903789220827, i64 4898431519131537558, i64 4301971437192426412], [3 x i64] [i64 -5198069505264599346, i64 869737256868047664, i64 3725667953699206364], [3 x i64] [i64 -3737760522056206171, i64 3597254110643241461, i64 3802247839347328203], [3 x i64] [i64 -2116491865831296966, i64 3333981370896602654, i64 3689348814741910332], [3 x i64] [i64 -316522074587315140, i64 1628122660560806834, i64 4842289084060873804], [3 x i64] [i64 -8382449121214030822, i64 1932195658189984911, i64 -2540650053395264565], [3 x i64] [i64 -7273132090830278360, i64 -3855940325606653145, i64 4229947932578368443], [3 x i64] [i64 -6041542782089432023, i64 6080780864604458309, i64 4302006660496114635], [3 x i64] [i64 -4674203974643163860, i64 -2285846861678029116, i64 4950382070058468540], [3 x i64] [i64 -3156152948152813503, i64 6892203506629956076, i64 4873803215200793404]], align 16
@_ZL10kPow5Table = internal unnamed_addr constant [16 x i64] [i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616], align 16
@_ZL11kDigitTable = internal unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @_Z12luai_num2strPcd(ptr nofree noundef captures(ret: address, provenance) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 3 uses
  %i.b = bitcast double %1 to i64                 ; 3 uses
  %i.c = lshr i64 %i.b, 63                        ; 3 uses
  %i.d = lshr i64 %i.b, 52
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 2047                       ; 3 uses
  %i.g = and i64 %i.b, 4503599627370495           ; 4 uses
  %i.h = icmp eq i32 %i.f, 2047
  br i1 %i.h, label %bb.b, label %bb.e, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = xor i64 %i.c, 1
  %i.k = getelementptr inbounds nuw i8, ptr @.str, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  br label %_ZL12printspecialPcim.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZL12printspecialPcim.exit

_ZL12printspecialPcim.exit:                       ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ %i.l, %bb.c ], [ 7233902, %bb.d ]
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  store i32 %.sink.i, ptr %0, align 1
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 17 uses
  %i.q = icmp eq i32 %i.f, 0                      ; 3 uses
  %i.r = icmp eq i64 %i.g, 0
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 48, ptr %i.p, align 1, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.t = or disjoint i64 %i.g, 4503599627370496
  %i.u = add nsw i32 %i.f, -1075
  %.075.i = select i1 %i.q, i32 -1074, i32 %i.u   ; 4 uses
  %.0.i77 = select i1 %i.q, i64 %i.g, i64 %i.t    ; 5 uses
  %i.v = sub nsw i32 0, %.075.i                   ; 2 uses
  %i.w = icmp ult i32 %i.v, 53
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i, -1
  %i.z = and i64 %.0.i77, %i.y
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = lshr i64 %.0.i77, %i.x
  br label %_ZL9schubfachim.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ac = icmp eq i64 %.0.i77, 4503599627370496
  %i.ad = icmp ne i32 %.075.i, -1074
  %i.ae = and i1 %i.ad, %i.ac                     ; 2 uses
  %i.af = and i64 %.0.i77, 1                      ; 4 uses
  %i.ag = shl nuw nsw i64 %.0.i77, 2              ; 3 uses
  %i.ah = add nsw i64 %i.ag, -2
  %i.ai = zext i1 %i.ae to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  %i.ak = or disjoint i64 %i.ag, 2
  %i.al = mul nsw i32 %.075.i, 315652
  %i.am = select i1 %i.ae, i32 -131008, i32 0
  %i.an = add nsw i32 %i.am, %i.al
  %i.ao = ashr i32 %i.an, 20                      ; 4 uses
  %i.ap = mul nsw i32 %i.ao, -3483294
  %i.aq = ashr i32 %i.ap, 20
  %i.ar = add nsw i32 %.075.i, 1
  %i.as = add nsw i32 %i.ar, %i.aq
  %i.at = sub nsw i32 292, %i.ao                  ; 2 uses
  %i.au = lshr i32 %i.at, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr @_ZL11kPow10Table, i64 %i.av ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = and i32 %i.at, 15                       ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @_ZL10kPow5Table, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16
  %i.be = zext i64 %i.ax to i128
  %i.bf = zext i64 %i.bd to i128                  ; 2 uses
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = trunc nuw i128 %i.bh to i64
  %i.bj = trunc i128 %i.bg to i64
  %2 = zext i64 %i.az to i128
  %3 = mul nuw i128 %i.bf, %2
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64                   ; 2 uses
  %i.bk = add i64 %5, %i.bj                       ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %5
  %i.bm = zext i1 %i.bl to i64
  %i.bn = add nuw i64 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !16
  %i.bq = shl nuw nsw i32 %i.ba, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bp, %i.br                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 3                       ; 2 uses
  %i.bu = and i64 %i.bt, 1                        ; 2 uses
  %i.bv = shl i64 %i.bn, %i.bu
  %i.bw = lshr i64 %i.bk, 63
  %i.bx = and i64 %i.bw, %i.bt
  %i.by = add i64 %i.bv, %i.bx
  %i.bz = shl i64 %i.bk, %i.bu
  %i.ca = and i64 %i.bs, 7
  %reass.sub = sub i64 %i.bz, %i.ca
  %i.cb = add i64 %reass.sub, 4
  %i.cc = zext i32 %i.as to i64                   ; 3 uses
  %i.cd = shl i64 %i.aj, %i.cc
  %6 = zext i64 %i.cb to i128                     ; 3 uses
  %i.ce = zext i64 %i.cd to i128                  ; 2 uses
  %7 = mul nuw i128 %6, %i.ce
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64                   ; 2 uses
  %i.cf = zext i64 %i.by to i128                  ; 3 uses
  %i.cg = mul nuw i128 %i.cf, %i.ce               ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = trunc nuw i128 %i.ch to i64
  %i.cj = trunc i128 %i.cg to i64
  %i.ck = add i64 %i.cj, %9                       ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %9
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add nuw i64 %i.cm, %i.ci
  %i.co = icmp ugt i64 %i.ck, 1
  %i.cp = zext i1 %i.co to i64
  %i.cq = or i64 %i.cn, %i.cp                     ; 2 uses
  %i.cr = shl i64 %i.ag, %i.cc
  %i.cs = zext i64 %i.cr to i128                  ; 2 uses
  %10 = mul nuw i128 %6, %i.cs
  %11 = lshr i128 %10, 64
  %12 = trunc nuw i128 %11 to i64                 ; 2 uses
  %i.ct = mul nuw i128 %i.cf, %i.cs               ; 2 uses
  %i.cu = lshr i128 %i.ct, 64
  %i.cv = trunc nuw i128 %i.cu to i64
  %i.cw = trunc i128 %i.ct to i64
  %i.cx = add i64 %i.cw, %12                      ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %12
  %i.cz = zext i1 %i.cy to i64
  %i.da = add nuw i64 %i.cz, %i.cv                ; 6 uses
  %i.db = icmp ugt i64 %i.cx, 1
  %i.dc = zext i1 %i.db to i64
  %i.dd = or i64 %i.da, %i.dc
  %i.de = shl i64 %i.ak, %i.cc
  %i.df = zext i64 %i.de to i128                  ; 2 uses
  %13 = mul nuw i128 %6, %i.df
  %14 = lshr i128 %13, 64
  %15 = trunc nuw i128 %14 to i64                 ; 2 uses
  %i.dg = mul nuw i128 %i.cf, %i.df               ; 2 uses
  %i.dh = lshr i128 %i.dg, 64
  %i.di = trunc nuw i128 %i.dh to i64
  %i.dj = trunc i128 %i.dg to i64
  %i.dk = add i64 %i.dj, %15                      ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %15
  %i.dm = zext i1 %i.dl to i64
  %i.dn = add nuw i64 %i.dm, %i.di
  %i.do = icmp ugt i64 %i.dk, 1
  %i.dp = zext i1 %i.do to i64
  %i.dq = or i64 %i.dn, %i.dp                     ; 2 uses
  %i.dr = lshr i64 %i.da, 2                       ; 2 uses
  %i.ds = icmp ugt i64 %i.da, 39
  br i1 %i.ds, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = add i64 %i.cq, %i.af
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dt = udiv i64 %i.da, 40                      ; 2 uses
  %i.du = add i64 %i.cq, %i.af                    ; 2 uses
  %i.dv = mul nuw i64 %i.dt, 40                   ; 2 uses
  %i.dw = add i64 %i.dv, 40
  %i.dx = or disjoint i64 %i.dw, %i.af
  %i.dy = icmp uge i64 %i.dq, %i.dx               ; 2 uses
  %i.dz = icmp ugt i64 %i.du, %i.dv
  %.not78.i = xor i1 %i.dz, %i.dy
  %i.ea = zext i1 %i.dy to i64
  %i.eb = add nuw nsw i64 %i.dt, %i.ea
  %i.ec = add nsw i32 %i.ao, 1
  br i1 %.not78.i, label %bb.l, label %_ZL9schubfachim.exit

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.du, %bb.k ]
  %i.ed = and i64 %i.da, -4                       ; 2 uses
  %i.ee = add i64 %i.ed, 4
  %i.ef = or disjoint i64 %i.ee, %i.af
  %i.eg = icmp ule i64 %i.ef, %i.dq               ; 2 uses
  %i.eh = or i64 %i.da, 3
  %i.ei = and i64 %i.dr, 1
  %i.ej = sub nuw nsw i64 %i.eh, %i.ei
  %i.ek = icmp uge i64 %i.dd, %i.ej
  %i.el = icmp ugt i64 %.pre-phi.i, %i.ed
  %.not79.i = xor i1 %i.eg, %i.el
  %i.em = select i1 %.not79.i, i1 %i.ek, i1 %i.eg
  %i.en = zext i1 %i.em to i64
  %i.eo = add nuw nsw i64 %i.dr, %i.en
  br label %_ZL9schubfachim.exit

_ZL9schubfachim.exit:                             ; preds = %bb.i, %bb.k, %bb.l
  %.sroa.0.2.i = phi i64 [ %i.ab, %bb.i ], [ %i.eo, %bb.l ], [ %i.eb, %bb.k ] ; 3 uses
  %.sroa.4.2.i = phi i32 [ 0, %bb.i ], [ %i.ao, %bb.l ], [ %i.ec, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.eq = icmp samesign ugt i64 %.sroa.0.2.i, 9999
  br i1 %i.eq, label %.lr.ph.i, label %._crit_edge.i78

.lr.ph.i:                                         ; preds = %_ZL9schubfachim.exit, %.lr.ph.i
  %.01823.i = phi ptr [ %i.es, %.lr.ph.i ], [ %i.ep, %_ZL9schubfachim.exit ] ; 2 uses
  %.01922.i = phi i64 [ %i.fe, %.lr.ph.i ], [ %.sroa.0.2.i, %_ZL9schubfachim.exit ] ; 3 uses
  %i.er = urem i64 %.01922.i, 10000
  %i.es = getelementptr inbounds i8, ptr %.01823.i, i64 -4 ; 3 uses
  %.lhs.trunc.i = trunc nuw nsw i64 %i.er to i16  ; 2 uses
  %i.et = udiv i16 %.lhs.trunc.i, 100
  %i.eu = shl nuw nsw i16 %i.et, 1
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2
  store i16 %i.ex, ptr %i.es, align 1
  %i.ey = getelementptr inbounds i8, ptr %.01823.i, i64 -2
  %i.ez = urem i16 %.lhs.trunc.i, 100
  %i.fa = shl nuw nsw i16 %i.ez, 1
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2
  store i16 %i.fd, ptr %i.ey, align 1
  %i.fe = udiv i64 %.01922.i, 10000               ; 2 uses
  %i.ff = icmp ugt i64 %.01922.i, 99999999
  br i1 %i.ff, label %.lr.ph.i, label %._crit_edge.i78, !llvm.loop !11

._crit_edge.i78:                                  ; preds = %.lr.ph.i, %_ZL9schubfachim.exit
  %.019.lcssa.i = phi i64 [ %.sroa.0.2.i, %_ZL9schubfachim.exit ], [ %i.fe, %.lr.ph.i ] ; 2 uses
  %.018.lcssa.i = phi ptr [ %i.ep, %_ZL9schubfachim.exit ], [ %i.es, %.lr.ph.i ] ; 2 uses
  %i.fg = trunc nuw nsw i64 %.019.lcssa.i to i32  ; 2 uses
  %i.fh = icmp samesign ugt i64 %.019.lcssa.i, 9
  br i1 %i.fh, label %.lr.ph28.i, label %._crit_edge29.i

.lr.ph28.i:                                       ; preds = %._crit_edge.i78, %.lr.ph28.i
  %.026.i = phi i32 [ %i.fo, %.lr.ph28.i ], [ %i.fg, %._crit_edge.i78 ] ; 3 uses
  %.125.i = phi ptr [ %i.fi, %.lr.ph28.i ], [ %.018.lcssa.i, %._crit_edge.i78 ]
  %i.fi = getelementptr inbounds i8, ptr %.125.i, i64 -2 ; 3 uses
  %i.fj = urem i32 %.026.i, 100
  %i.fk = shl nuw nsw i32 %i.fj, 1
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2
  store i16 %i.fn, ptr %i.fi, align 1
  %i.fo = udiv i32 %.026.i, 100                   ; 2 uses
  %i.fp = icmp ugt i32 %.026.i, 999
  br i1 %i.fp, label %.lr.ph28.i, label %._crit_edge29.i, !llvm.loop !12

._crit_edge29.i:                                  ; preds = %.lr.ph28.i, %._crit_edge.i78
  %.1.lcssa.i = phi ptr [ %.018.lcssa.i, %._crit_edge.i78 ], [ %i.fi, %.lr.ph28.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.fg, %._crit_edge.i78 ], [ %i.fo, %.lr.ph28.i ] ; 2 uses
  %.not.i79 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i79, label %_ZL16printunsignedrevPcm.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge29.i
  %i.fq = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.fr = or disjoint i8 %i.fq, 48
  %i.fs = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -1 ; 2 uses
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !9
  br label %_ZL16printunsignedrevPcm.exit

_ZL16printunsignedrevPcm.exit:                    ; preds = %._crit_edge29.i, %bb.m
  %.2.i = phi ptr [ %i.fs, %bb.m ], [ %.1.lcssa.i, %._crit_edge29.i ] ; 8 uses
  %i.ft = ptrtoint ptr %i.ep to i64
  %i.fu = ptrtoint ptr %.2.i to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 5 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = add nsw i32 %.sroa.4.2.i, %i.fw         ; 8 uses
  %i.fy = add i32 %i.fx, 5
  %or.cond3 = icmp ult i32 %i.fy, 27
  br i1 %or.cond3, label %bb.n, label %bb.w

bb.n:                                             ; preds = %_ZL16printunsignedrevPcm.exit
  %i.fz = icmp slt i32 %i.fx, 1
  br i1 %i.fz, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i8 48, ptr %i.p, align 1, !tbaa !9
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 46, ptr %i.ga, align 1, !tbaa !9
  %i.gb = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.gb, i8 48, i64 5, i1 false)
  %i.gc = sub nsw i32 0, %i.fx
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ge, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %sext76 = shl i64 %i.fv, 32
  %i.gf = ashr exact i64 %sext76, 32
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i80 = phi ptr [ %i.gg, %bb.o ], [ %i.gh, %bb.p ] ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.0.i80, i64 -1 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !9
  %i.gj = icmp eq i8 %i.gi, 48
  br i1 %i.gj, label %bb.p, label %_Z8trimzeroPc.exit, !llvm.loop !13

bb.q:                                             ; preds = %bb.n
  %i.gk = icmp eq i32 %.sroa.4.2.i, 0
  br i1 %i.gk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.p, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %i.gl = zext nneg i32 %i.fx to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gl
  br label %_Z8trimzeroPc.exit

bb.s:                                             ; preds = %bb.q
  %i.gn = icmp slt i32 %.sroa.4.2.i, 0
  br i1 %i.gn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  %i.go = zext nneg i32 %i.fx to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.go ; 2 uses
  store i8 46, ptr %i.gp, align 1, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gq, ptr noundef nonnull align 1 dereferenceable(16) %i.gr, i64 16, i1 false)
  %i.gs = and i64 %i.fv, 4294967295
  %i.gt = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.i81 = phi ptr [ %i.gu, %bb.t ], [ %i.gv, %bb.u ] ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.0.i81, i64 -1 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9
  %i.gx = icmp eq i8 %i.gw, 48
  br i1 %i.gx, label %bb.u, label %_Z8trimzeroPc.exit, !llvm.loop !13

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.p, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %sext75 = shl i64 %i.fv, 32
  %i.gy = ashr exact i64 %sext75, 32
  %i.gz = getelementptr inbounds i8, ptr %i.p, i64 %i.gy
  store i64 3472328296227680304, ptr %i.gz, align 1
  %i.ha = zext nneg i32 %i.fx to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ha
  br label %_Z8trimzeroPc.exit

bb.w:                                             ; preds = %_ZL16printunsignedrevPcm.exit
  %i.hc = load i8, ptr %.2.i, align 1, !tbaa !9
  store i8 %i.hc, ptr %i.p, align 1, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 46, ptr %i.hd, align 1, !tbaa !9
  %i.he = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.hf = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.he, ptr noundef nonnull align 1 dereferenceable(16) %i.hf, i64 16, i1 false)
  %sext = shl i64 %i.fv, 32
  %i.hg = ashr exact i64 %sext, 32
  %i.hh = getelementptr inbounds i8, ptr %i.p, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.i83 = phi ptr [ %i.hi, %bb.w ], [ %i.hj, %bb.x ] ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %.0.i83, i64 -1 ; 3 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !9   ; 2 uses
  %i.hl = icmp eq i8 %i.hk, 48
  br i1 %i.hl, label %bb.x, label %_Z8trimzeroPc.exit84, !llvm.loop !13

_Z8trimzeroPc.exit84:                             ; preds = %bb.x
  %i.hm = icmp eq i8 %i.hk, 46
  %spec.select = select i1 %i.hm, ptr %i.hj, ptr %.0.i83 ; 4 uses
  %i.hn = add nsw i32 %i.fx, -1
  %i.ho = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  store i8 101, ptr %spec.select, align 1, !tbaa !9
  %i.hp = icmp slt i32 %i.fx, 1
  %i.hq = select i1 %i.hp, i8 45, i8 43
  %i.hr = getelementptr inbounds nuw i8, ptr %spec.select, i64 2 ; 2 uses
  store i8 %i.hq, ptr %i.ho, align 1, !tbaa !9
  %i.hs = call i32 @llvm.abs.i32(i32 range(i32 -2147483648, 2147483647) %i.hn, i1 true) ; 4 uses
  %i.ht = icmp samesign ugt i32 %i.hs, 99
  br i1 %i.ht, label %bb.y, label %_ZL8printexpPci.exit

bb.y:                                             ; preds = %_Z8trimzeroPc.exit84
  %i.hu = udiv i32 %i.hs, 100
  %i.hv = trunc i32 %i.hu to i8
  %i.hw = add i8 %i.hv, 48
  %i.hx = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  store i8 %i.hw, ptr %i.hr, align 1, !tbaa !9
  %i.hy = urem i32 %i.hs, 100
  br label %_ZL8printexpPci.exit

_ZL8printexpPci.exit:                             ; preds = %_Z8trimzeroPc.exit84, %bb.y
  %.012.i = phi ptr [ %i.hx, %bb.y ], [ %i.hr, %_Z8trimzeroPc.exit84 ] ; 2 uses
  %.0.i85 = phi i32 [ %i.hy, %bb.y ], [ %i.hs, %_Z8trimzeroPc.exit84 ]
  %i.hz = shl nuw nsw i32 %.0.i85, 1
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2
  store i16 %i.ic, ptr %.012.i, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  br label %_Z8trimzeroPc.exit

_Z8trimzeroPc.exit:                               ; preds = %bb.u, %bb.p, %_ZL8printexpPci.exit, %bb.v, %bb.r
  %.071 = phi ptr [ %i.id, %_ZL8printexpPci.exit ], [ %i.gm, %bb.r ], [ %.0.i80, %bb.p ], [ %i.hb, %bb.v ], [ %.0.i81, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.z

bb.z:                                             ; preds = %_Z8trimzeroPc.exit, %bb.f, %_ZL12printspecialPcim.exit
  %.1 = phi ptr [ %.0.i, %_ZL12printspecialPcim.exit ], [ %i.s, %bb.f ], [ %.071, %_Z8trimzeroPc.exit ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden noundef nonnull ptr @_Z12luai_int2strPcl(ptr nofree noundef writeonly captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i64 %1, -1                      ; 4 uses
  %i.b = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 3 uses
  %i.c = icmp ugt i64 %i.b, 9
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.025.lcssa = phi i32 [ 1, %bb.a ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.d = sext i1 %i.a to i32
  %i.e = add nsw i32 %.025.lcssa, %i.d
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 1
  store i8 0, ptr %i.h, align 1, !tbaa !9
  %i.i = sext i1 %i.a to i64
  %i.j = zext nneg i32 %.025.lcssa to i64
  %i.k = add nsw i64 %i.i, %i.j
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02428 = phi i64 [ %i.m, %.lr.ph ], [ 10, %bb.a ]
  %.02527 = phi i32 [ %i.l, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.l = add nuw nsw i32 %.02527, 1               ; 2 uses
  %i.m = mul i64 %.02428, 10                      ; 2 uses
  %i.n = icmp samesign ult i32 %.02527, 18
  %i.o = icmp ule i64 %i.m, %i.b
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !17

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.k, %._crit_edge ] ; 2 uses
  %.026 = phi i64 [ %i.u, %bb.b ], [ %i.b, %._crit_edge ] ; 3 uses
  %i.q = urem i64 %.026, 10
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = or disjoint i8 %i.r, 48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  store i8 %i.s, ptr %i.t, align 1, !tbaa !9
  %i.u = udiv i64 %.026, 10
  %.not = icmp ult i64 %.026, 10
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  store i8 45, ptr %i.v, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %not. = xor i1 %i.a, true
  %i.w = zext i1 %not. to i32
  %i.x = add nuw nsw i32 %.025.lcssa, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  ret ptr %i.z
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"long", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
end_hunk_0
