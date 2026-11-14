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
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %i.be = zext i64 %i.ax to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = trunc nuw i128 %i.bh to i64
  %i.bj = trunc i128 %i.bg to i64
  %i.bk = tail call i64 @llvm.umulh.i64(i64 %i.bd, i64 %i.az) ; 2 uses
  %i.bl = add i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = zext i1 %i.bm to i64
  %i.bo = add nuw i64 %i.bn, %i.bi
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = shl nuw nsw i32 %i.ba, 2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr i64 %i.bq, %i.bs                   ; 2 uses
  %i.bu = lshr i64 %i.bt, 3                       ; 2 uses
  %i.bv = and i64 %i.bu, 1                        ; 2 uses
  %i.bw = shl i64 %i.bo, %i.bv
  %i.bx = lshr i64 %i.bl, 63
  %i.by = and i64 %i.bx, %i.bu
  %i.bz = add i64 %i.bw, %i.by
  %i.ca = shl i64 %i.bl, %i.bv
  %i.cb = and i64 %i.bt, 7
  %reass.sub.i = sub i64 %i.ca, %i.cb
  %i.cc = add i64 %reass.sub.i, 4                 ; 3 uses
  %i.cd = zext i32 %i.as to i64                   ; 3 uses
  %i.ce = shl i64 %i.aj, %i.cd                    ; 2 uses
  %i.cf = zext i64 %i.ce to i128
  %i.cg = tail call i64 @llvm.umulh.i64(i64 %i.ce, i64 %i.cc) ; 2 uses
  %i.ch = zext i64 %i.bz to i128                  ; 3 uses
  %i.ci = mul nuw i128 %i.ch, %i.cf               ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = trunc nuw i128 %i.cj to i64
  %i.cl = trunc i128 %i.ci to i64
  %i.cm = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cg
  %i.co = zext i1 %i.cn to i64
  %i.cp = add nuw i64 %i.co, %i.ck
  %i.cq = icmp ugt i64 %i.cm, 1
  %i.cr = zext i1 %i.cq to i64
  %i.cs = or i64 %i.cp, %i.cr                     ; 2 uses
  %i.ct = shl i64 %i.ag, %i.cd                    ; 2 uses
  %i.cu = zext i64 %i.ct to i128
  %i.cv = tail call i64 @llvm.umulh.i64(i64 %i.ct, i64 %i.cc) ; 2 uses
  %i.cw = mul nuw i128 %i.ch, %i.cu               ; 2 uses
  %i.cx = lshr i128 %i.cw, 64
  %i.cy = trunc nuw i128 %i.cx to i64
  %i.cz = trunc i128 %i.cw to i64
  %i.da = add i64 %i.cv, %i.cz                    ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cv
  %i.dc = zext i1 %i.db to i64
  %i.dd = add nuw i64 %i.dc, %i.cy                ; 6 uses
  %i.de = icmp ugt i64 %i.da, 1
  %i.df = zext i1 %i.de to i64
  %i.dg = or i64 %i.dd, %i.df
  %i.dh = shl i64 %i.ak, %i.cd                    ; 2 uses
  %i.di = zext i64 %i.dh to i128
  %i.dj = tail call i64 @llvm.umulh.i64(i64 %i.dh, i64 %i.cc) ; 2 uses
  %i.dk = mul nuw i128 %i.ch, %i.di               ; 2 uses
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64
  %i.dn = trunc i128 %i.dk to i64
  %i.do = add i64 %i.dj, %i.dn                    ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dj
  %i.dq = zext i1 %i.dp to i64
  %i.dr = add nuw i64 %i.dq, %i.dm
  %i.ds = icmp ugt i64 %i.do, 1
  %i.dt = zext i1 %i.ds to i64
  %i.du = or i64 %i.dr, %i.dt                     ; 2 uses
  %i.dv = lshr i64 %i.dd, 2                       ; 2 uses
  %i.dw = icmp ugt i64 %i.dd, 39
  br i1 %i.dw, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = add i64 %i.cs, %i.af
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dx = udiv i64 %i.dd, 40                      ; 2 uses
  %i.dy = add i64 %i.cs, %i.af                    ; 2 uses
  %i.dz = mul nuw i64 %i.dx, 40                   ; 2 uses
  %i.ea = add i64 %i.dz, 40
  %i.eb = or disjoint i64 %i.ea, %i.af
  %i.ec = icmp uge i64 %i.du, %i.eb               ; 2 uses
  %i.ed = icmp ugt i64 %i.dy, %i.dz
  %.not78.i = xor i1 %i.ed, %i.ec
  %i.ee = zext i1 %i.ec to i64
  %i.ef = add nuw nsw i64 %i.dx, %i.ee
  %i.eg = add nsw i32 %i.ao, 1
  br i1 %.not78.i, label %bb.l, label %_ZL9schubfachim.exit

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.dy, %bb.k ]
  %i.eh = and i64 %i.dd, -4                       ; 2 uses
  %i.ei = add i64 %i.eh, 4
  %i.ej = or disjoint i64 %i.ei, %i.af
  %i.ek = icmp ule i64 %i.ej, %i.du               ; 2 uses
  %i.el = or i64 %i.dd, 3
  %i.em = and i64 %i.dv, 1
  %i.en = sub nuw nsw i64 %i.el, %i.em
  %i.eo = icmp uge i64 %i.dg, %i.en
  %i.ep = icmp ugt i64 %.pre-phi.i, %i.eh
  %.not79.i = xor i1 %i.ek, %i.ep
  %i.eq = select i1 %.not79.i, i1 %i.eo, i1 %i.ek
  %i.er = zext i1 %i.eq to i64
  %i.es = add nuw nsw i64 %i.dv, %i.er
  br label %_ZL9schubfachim.exit

_ZL9schubfachim.exit:                             ; preds = %bb.i, %bb.k, %bb.l
  %.sroa.0.2.i = phi i64 [ %i.ab, %bb.i ], [ %i.es, %bb.l ], [ %i.ef, %bb.k ] ; 3 uses
  %.sroa.4.2.i = phi i32 [ 0, %bb.i ], [ %i.ao, %bb.l ], [ %i.eg, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.eu = icmp samesign ugt i64 %.sroa.0.2.i, 9999
  br i1 %i.eu, label %.lr.ph.i.a, label %._crit_edge.i78

.lr.ph.i.a:                                       ; preds = %_ZL9schubfachim.exit, %.lr.ph.i.a
  %.01823.i = phi ptr [ %i.ew, %.lr.ph.i.a ], [ %i.et, %_ZL9schubfachim.exit ] ; 2 uses
  %.01922.i = phi i64 [ %i.fi, %.lr.ph.i.a ], [ %.sroa.0.2.i, %_ZL9schubfachim.exit ] ; 3 uses
  %i.ev = urem i64 %.01922.i, 10000
  %i.ew = getelementptr inbounds i8, ptr %.01823.i, i64 -4 ; 3 uses
  %.lhs.trunc.i.a = trunc nuw nsw i64 %i.ev to i16 ; 2 uses
  %i.ex = udiv i16 %.lhs.trunc.i.a, 100
  %i.ey = shl nuw nsw i16 %i.ex, 1
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2
  store i16 %i.fb, ptr %i.ew, align 4
  %i.fc = getelementptr inbounds i8, ptr %.01823.i, i64 -2
  %i.fd = urem i16 %.lhs.trunc.i.a, 100
  %i.fe = shl nuw nsw i16 %i.fd, 1
  %i.ff = zext nneg i16 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %i.fc, align 2
  %i.fi = udiv i64 %.01922.i, 10000               ; 2 uses
  %i.fj = icmp samesign ugt i64 %.01922.i, 99999999
  br i1 %i.fj, label %.lr.ph.i.a, label %._crit_edge.i78, !llvm.loop !11

._crit_edge.i78:                                  ; preds = %.lr.ph.i.a, %_ZL9schubfachim.exit
  %.019.lcssa.i = phi i64 [ %.sroa.0.2.i, %_ZL9schubfachim.exit ], [ %i.fi, %.lr.ph.i.a ] ; 2 uses
  %.018.lcssa.i = phi ptr [ %i.et, %_ZL9schubfachim.exit ], [ %i.ew, %.lr.ph.i.a ] ; 2 uses
  %i.fk = trunc nuw nsw i64 %.019.lcssa.i to i32  ; 2 uses
  %i.fl = icmp samesign ugt i64 %.019.lcssa.i, 9
  br i1 %i.fl, label %.lr.ph28.i.a, label %._crit_edge29.i

.lr.ph28.i.a:                                     ; preds = %._crit_edge.i78, %.lr.ph28.i.a
  %.026.i = phi i32 [ %i.fs, %.lr.ph28.i.a ], [ %i.fk, %._crit_edge.i78 ] ; 3 uses
  %.125.i = phi ptr [ %i.fm, %.lr.ph28.i.a ], [ %.018.lcssa.i, %._crit_edge.i78 ]
  %i.fm = getelementptr inbounds i8, ptr %.125.i, i64 -2 ; 3 uses
  %i.fn = urem i32 %.026.i, 100
  %i.fo = shl nuw nsw i32 %i.fn, 1
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2
  store i16 %i.fr, ptr %i.fm, align 1
  %i.fs = udiv i32 %.026.i, 100                   ; 2 uses
  %i.ft = icmp ugt i32 %.026.i, 999
  br i1 %i.ft, label %.lr.ph28.i.a, label %._crit_edge29.i, !llvm.loop !12

._crit_edge29.i:                                  ; preds = %.lr.ph28.i.a, %._crit_edge.i78
  %.1.lcssa.i = phi ptr [ %.018.lcssa.i, %._crit_edge.i78 ], [ %i.fm, %.lr.ph28.i.a ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.fk, %._crit_edge.i78 ], [ %i.fs, %.lr.ph28.i.a ] ; 2 uses
  %.not.i79 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i79, label %_ZL16printunsignedrevPcm.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge29.i
  %i.fu = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.fv = or disjoint i8 %i.fu, 48
  %i.fw = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -1 ; 2 uses
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !9
  br label %_ZL16printunsignedrevPcm.exit

_ZL16printunsignedrevPcm.exit:                    ; preds = %._crit_edge29.i, %bb.m
  %.2.i = phi ptr [ %i.fw, %bb.m ], [ %.1.lcssa.i, %._crit_edge29.i ] ; 8 uses
  %i.fx = ptrtoint ptr %i.et to i64
  %i.fy = ptrtoint ptr %.2.i to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 5 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = add nsw i32 %.sroa.4.2.i, %i.ga         ; 8 uses
  %i.gc = add i32 %i.gb, 5
  %or.cond3 = icmp ult i32 %i.gc, 27
  br i1 %or.cond3, label %bb.n, label %bb.w

bb.n:                                             ; preds = %_ZL16printunsignedrevPcm.exit
  %i.gd = icmp slt i32 %i.gb, 1
  br i1 %i.gd, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i8 48, ptr %i.p, align 1, !tbaa !9
  %i.ge = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 46, ptr %i.ge, align 1, !tbaa !9
  %i.gf = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.gf, i8 48, i64 5, i1 false)
  %i.gg = sub nsw i32 0, %i.gb
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gh ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.gi, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %sext76 = shl i64 %i.fz, 32
  %i.gj = ashr exact i64 %sext76, 32
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 %i.gj
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i80 = phi ptr [ %i.gk, %bb.o ], [ %i.gl, %bb.p ] ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.0.i80, i64 -1 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !9
  %i.gn = icmp eq i8 %i.gm, 48
  br i1 %i.gn, label %bb.p, label %_Z8trimzeroPc.exit, !llvm.loop !13

bb.q:                                             ; preds = %bb.n
  %i.go = icmp eq i32 %.sroa.4.2.i, 0
  br i1 %i.go, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.p, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %i.gp = zext nneg i32 %i.gb to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gp
  br label %_Z8trimzeroPc.exit

bb.s:                                             ; preds = %bb.q
  %i.gr = icmp slt i32 %.sroa.4.2.i, 0
  br i1 %i.gr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  %i.gs = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gs ; 2 uses
  store i8 46, ptr %i.gt, align 1, !tbaa !9
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gu, ptr noundef nonnull align 1 dereferenceable(16) %i.gv, i64 16, i1 false)
  %i.gw = and i64 %i.fz, 4294967295
  %i.gx = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.i81 = phi ptr [ %i.gy, %bb.t ], [ %i.gz, %bb.u ] ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %.0.i81, i64 -1 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hb = icmp eq i8 %i.ha, 48
  br i1 %i.hb, label %bb.u, label %_Z8trimzeroPc.exit, !llvm.loop !13

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.p, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %sext75 = shl i64 %i.fz, 32
  %i.hc = ashr exact i64 %sext75, 32
  %i.hd = getelementptr inbounds i8, ptr %i.p, i64 %i.hc
  store i64 3472328296227680304, ptr %i.hd, align 1
  %i.he = zext nneg i32 %i.gb to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.he
  br label %_Z8trimzeroPc.exit

bb.w:                                             ; preds = %_ZL16printunsignedrevPcm.exit
  %i.hg = load i8, ptr %.2.i, align 1, !tbaa !9
  store i8 %i.hg, ptr %i.p, align 1, !tbaa !9
  %i.hh = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 46, ptr %i.hh, align 1, !tbaa !9
  %i.hi = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.hj = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hi, ptr noundef nonnull align 1 dereferenceable(16) %i.hj, i64 16, i1 false)
  %sext = shl i64 %i.fz, 32
  %i.hk = ashr exact i64 %sext, 32
  %i.hl = getelementptr inbounds i8, ptr %i.p, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.i83 = phi ptr [ %i.hm, %bb.w ], [ %i.hn, %bb.x ] ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.0.i83, i64 -1 ; 3 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9   ; 2 uses
  %i.hp = icmp eq i8 %i.ho, 48
  br i1 %i.hp, label %bb.x, label %_Z8trimzeroPc.exit84, !llvm.loop !13

_Z8trimzeroPc.exit84:                             ; preds = %bb.x
  %i.hq = icmp eq i8 %i.ho, 46
  %spec.select = select i1 %i.hq, ptr %i.hn, ptr %.0.i83 ; 4 uses
  %i.hr = add nsw i32 %i.gb, -1
  %i.hs = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  store i8 101, ptr %spec.select, align 1, !tbaa !9
  %i.ht = icmp slt i32 %i.gb, 1
  %i.hu = select i1 %i.ht, i8 45, i8 43
  %i.hv = getelementptr inbounds nuw i8, ptr %spec.select, i64 2 ; 2 uses
  store i8 %i.hu, ptr %i.hs, align 1, !tbaa !9
  %i.hw = call i32 @llvm.abs.i32(i32 range(i32 -2147483648, 2147483647) %i.hr, i1 true) ; 4 uses
  %i.hx = icmp samesign ugt i32 %i.hw, 99
  br i1 %i.hx, label %bb.y, label %_ZL8printexpPci.exit

bb.y:                                             ; preds = %_Z8trimzeroPc.exit84
  %i.hy = udiv i32 %i.hw, 100
  %i.hz = trunc i32 %i.hy to i8
  %i.ia = add i8 %i.hz, 48
  %i.ib = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  store i8 %i.ia, ptr %i.hv, align 1, !tbaa !9
  %i.ic = urem i32 %i.hw, 100
  br label %_ZL8printexpPci.exit

_ZL8printexpPci.exit:                             ; preds = %_Z8trimzeroPc.exit84, %bb.y
  %.012.i = phi ptr [ %i.ib, %bb.y ], [ %i.hv, %_Z8trimzeroPc.exit84 ] ; 2 uses
  %.0.i85 = phi i32 [ %i.ic, %bb.y ], [ %i.hw, %_Z8trimzeroPc.exit84 ]
  %i.id = shl nuw nsw i32 %.0.i85, 1
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2
  store i16 %i.ig, ptr %.012.i, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  br label %_Z8trimzeroPc.exit

_Z8trimzeroPc.exit:                               ; preds = %bb.u, %bb.p, %_ZL8printexpPci.exit, %bb.v, %bb.r
  %.071 = phi ptr [ %i.ih, %_ZL8printexpPci.exit ], [ %i.gq, %bb.r ], [ %.0.i80, %bb.p ], [ %i.hf, %bb.v ], [ %.0.i81, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
