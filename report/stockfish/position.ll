Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/position?download=true
inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK9Stockfish8Position3fenB5cxx11Ev:bb.a
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare void @_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull returned align 8 dereferenceable(1048) initializes((0, 1048)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, ptr noundef initializes((0, 192)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 336
  store ptr null, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 344
  store i8 0, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 345
  store i8 0, ptr %i.g, align 1, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 3 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !30
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !118
  %i.o = load ptr, ptr %4, align 8, !tbaa !30
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %4, i64 %i.q
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.r, ptr noundef null) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.d, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 8)
  %i.t = load ptr, ptr %4, align 8, !tbaa !30
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %4, i64 %i.v
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.w, ptr noundef nonnull %i.s) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 0, i64 1048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i64 192, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  store ptr %3, ptr %i.x, align 8, !tbaa !68
  %i.y = load ptr, ptr %4, align 8, !tbaa !30
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !48
  %i.ae = and i32 %i.ad, -4097
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !48
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !120
  %i.am = and i32 %i.al, 5
  %.not.i58 = icmp eq i32 %i.am, 0
  br i1 %.not.i58, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %.059 = phi i8 [ 56, %.lr.ph ], [ %.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ] ; 6 uses
  %i.aq = load i8, ptr %i.c, align 1, !tbaa !29   ; 5 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = call i32 @isspace(i32 noundef %i.ar) #28
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.at = add i8 %i.aq, -48
  %isdigit = icmp ult i8 %i.at, 10
  br i1 %isdigit, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = add i8 %.059, -48
  %i.av = add i8 %i.au, %i.aq
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.aw = icmp eq i8 %i.aq, 47
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = add i8 %.059, -16
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ay = sext i8 %i.aq to i32
  %i.az = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ay, i64 noundef 15) #26 ; 2 uses
  %.not.i36 = icmp eq ptr %i.az, null
  br i1 %.not.i36, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %bb.g
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, ptrtoint (ptr @.str.26 to i64) ; 6 uses
  %.not33 = icmp eq i64 %i.bb, -1
  br i1 %.not33, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = zext i8 %.059 to i64                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !27
  %i.bf = and i64 %i.bb, 7
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bf ; 2 uses
  %i.bh = shl nuw i64 1, %i.bd                    ; 2 uses
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bj = or i64 %i.bi, %i.bh                     ; 2 uses
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !11
  %i.bk = load i64, ptr %i.an, align 8, !tbaa !11
  %i.bl = or i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.an, align 8, !tbaa !11
  %i.bm = lshr i64 %i.bb, 3
  %i.bn = and i64 %i.bm, 31
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = or i64 %i.bp, %i.bh
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !11
  %i.br = and i64 %i.bb, 255
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !83
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !83
  %i.bv = and i64 %i.bb, 248
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !83
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !83
  %i.bz = add i8 %.059, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %bb.g, %bb.f, %bb.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.d
  %.1 = phi i8 [ %i.av, %bb.d ], [ %i.ax, %bb.f ], [ %.059, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ %i.bz, %bb.h ], [ %.059, %bb.g ]
  %i.ca = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !120
  %i.ch = and i32 %i.cg, 5
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %bb.b, label %.critedge, !llvm.loop !121

.critedge:                                        ; preds = %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %bb.a
  %i.ci = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 0 uses
  %i.cj = load i8, ptr %i.c, align 1, !tbaa !29
  %i.ck = icmp ne i8 %i.cj, 119
  %i.cl = zext i1 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 3 uses
  store i8 %i.cl, ptr %i.cm, align 4, !tbaa !98
  %i.cn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 0 uses
  %i.co = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !30
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !120
  %i.cv = and i32 %i.cu, 5
  %.not.i3761 = icmp eq i32 %i.cv, 0
  br i1 %.not.i3761, label %.lr.ph62, label %.critedge2

.lr.ph62:                                         ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph62, %bb.q
  %i.db = load i8, ptr %i.c, align 1, !tbaa !29
  %i.dc = zext i8 %i.db to i32                    ; 3 uses
  %i.dd = call i32 @isspace(i32 noundef %i.dc) #28
  %.not26 = icmp eq i32 %i.dd, 0
  br i1 %.not26, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.de = call i32 @islower(i32 noundef %i.dc) #28
  %.not30 = icmp ne i32 %i.de, 0                  ; 7 uses
  %i.df = select i1 %.not30, i8 12, i8 4          ; 2 uses
  %i.dg = call i32 @toupper(i32 noundef %i.dc) #28 ; 2 uses
  %i.dh = trunc i32 %i.dg to i8                   ; 3 uses
  store i8 %i.dh, ptr %i.c, align 1, !tbaa !29
  switch i8 %i.dh, label %bb.o [
    i8 75, label %bb.k
    i8 81, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.di = select i1 %.not30, i8 63, i8 7
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.053 = phi i8 [ %i.di, %bb.k ], [ %i.dm, %bb.l ] ; 3 uses
  %i.dj = zext i8 %.053 to i64                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !27
  %.not32 = icmp eq i8 %i.dl, %i.df
  %i.dm = add i8 %.053, -1
  br i1 %.not32, label %.loopexit.loopexit, label %bb.l, !llvm.loop !122

bb.m:                                             ; preds = %bb.j
  %i.dn = select i1 %.not30, i8 56, i8 0          ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.154 = phi i8 [ %i.dn, %bb.m ], [ %i.dr, %bb.n ] ; 3 uses
  %i.do = zext i8 %.154 to i64                    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !27
  %.not31 = icmp eq i8 %i.dq, %i.df
  %i.dr = add i8 %.154, 1
  br i1 %.not31, label %.loopexit, label %bb.n, !llvm.loop !123

bb.o:                                             ; preds = %bb.j
  %i.ds = and i32 %i.dg, 255
  %i.dt = add nsw i32 %i.ds, -65
  %or.cond = icmp ult i32 %i.dt, 8
  br i1 %or.cond, label %bb.p, label %bb.q, !llvm.loop !124

bb.p:                                             ; preds = %bb.o
  %i.du = add i8 %i.dh, -65
  %i.dv = select i1 %.not30, i8 56, i8 0          ; 2 uses
  %i.dw = add i8 %i.du, %i.dv                     ; 2 uses
  %.pre = zext i8 %i.dw to i64
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.l
  %.pre65 = select i1 %.not30, i8 56, i8 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.loopexit, %bb.p
  %.pre-phi66 = phi i8 [ %i.dv, %bb.p ], [ %.pre65, %.loopexit.loopexit ], [ %i.dn, %bb.n ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %bb.p ], [ %i.dj, %.loopexit.loopexit ], [ %i.do, %bb.n ] ; 3 uses
  %.2 = phi i8 [ %i.dw, %bb.p ], [ %.053, %.loopexit.loopexit ], [ %.154, %bb.n ] ; 2 uses
  %i.dx = zext i1 %.not30 to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.ea = load i64, ptr %i.cx, align 8, !tbaa !11
  %i.eb = and i64 %i.ea, %i.dz
  %i.ec = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.eb, i1 true) ; 4 uses
  %i.ed = trunc nuw nsw i64 %i.ec to i8
  %i.ee = icmp ugt i8 %.2, %i.ed
  %i.ef = select i1 %i.ee, i8 5, i8 10
  %i.eg = select i1 %.not30, i8 12, i8 3
  %i.eh = and i8 %i.ef, %i.eg                     ; 2 uses
  %i.ei = zext nneg i8 %i.eh to i32               ; 4 uses
  %i.ej = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !85
  %i.em = or i32 %i.el, %i.ei
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !85
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.ec ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !83
  %i.ep = or i32 %i.eo, %i.ei
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !83
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.pre-phi ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !83
  %i.es = or i32 %i.er, %i.ei
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !83
  %i.et = zext nneg i8 %i.eh to i64               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.et
  store i8 %.2, ptr %i.eu, align 1, !tbaa !100
  %i.ev = and i32 %i.ei, 5
  %.not.i38 = icmp eq i32 %i.ev, 0                ; 2 uses
  %i.ew = select i1 %.not.i38, i8 2, i8 6
  %i.ex = or disjoint i8 %i.ew, %.pre-phi66
  %i.ey = select i1 %.not.i38, i8 3, i8 5
  %i.ez = or disjoint i8 %i.ey, %.pre-phi66
  %i.fa = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %.pre-phi
  %i.fb = zext nneg i8 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !11
  %i.fe = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.ec
  %i.ff = zext nneg i8 %i.ex to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 16, !tbaa !11
  %i.fi = or i64 %i.fh, %i.fd
  %i.fj = shl nuw i64 1, %i.ec
  %i.fk = shl nuw i64 1, %.pre-phi
  %i.fl = or i64 %i.fj, %i.fk
  %i.fm = xor i64 %i.fl, -1
  %i.fn = and i64 %i.fi, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.et
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.loopexit
  %i.fp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  %i.fr = getelementptr i8, ptr %i.fq, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !120
  %i.fw = and i32 %i.fv, 5
  %.not.i37 = icmp eq i32 %i.fw, 0
  br i1 %.not.i37, label %bb.i, label %.critedge2

.critedge2:                                       ; preds = %bb.i, %bb.q, %.critedge
  %i.fx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #26 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !30
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !120
  %i.ge = and i32 %i.gd, 5
  %.not.i39 = icmp eq i32 %i.ge, 0
  %i.gf = load i8, ptr %i.a, align 1
  %i.gg = add i8 %i.gf, -97
  %i.gh = icmp ult i8 %i.gg, 8
  %or.cond10 = select i1 %.not.i39, i1 %i.gh, i1 false
  br i1 %or.cond10, label %bb.r, label %.critedge35

bb.r:                                             ; preds = %.critedge2
  %i.gi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #26 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !30
  %i.gk = getelementptr i8, ptr %i.gj, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %i.gi, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !120
  %i.gp = and i32 %i.go, 5
  %.not.i40 = icmp eq i32 %i.gp, 0
  br i1 %.not.i40, label %bb.s, label %.critedge35

bb.s:                                             ; preds = %bb.r
  %i.gq = load i8, ptr %i.b, align 1, !tbaa !29   ; 2 uses
  %i.gr = zext i8 %i.gq to i32
  %i.gs = load i8, ptr %i.cm, align 4, !tbaa !98  ; 4 uses
  %i.gt = icmp eq i8 %i.gs, 0                     ; 2 uses
  %i.gu = select i1 %i.gt, i32 54, i32 51
  %i.gv = icmp eq i32 %i.gu, %i.gr
  br i1 %i.gv, label %bb.t, label %.critedge35

bb.t:                                             ; preds = %bb.s
  %i.gw = load i8, ptr %i.a, align 1, !tbaa !29
  %i.gx = shl i8 %i.gq, 3
  %i.gy = add i8 %i.gx, 23
  %i.gz = add i8 %i.gy, %i.gw                     ; 4 uses
  %i.ha = load ptr, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 60
  store i8 %i.gz, ptr %i.hb, align 4, !tbaa !101
  %i.hc = xor i8 %i.gs, 1
  %i.hd = zext i8 %i.hc to i64                    ; 2 uses
  %i.he = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.hd
  %i.hf = zext i8 %i.gz to i64                    ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !11
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.hj = zext i8 %i.gs to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !11
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !11 ; 2 uses
  %i.hp = and i64 %i.hl, %i.hh
  %i.hq = and i64 %i.hp, %i.ho
  %.not27 = icmp eq i64 %i.hq, 0
  br i1 %.not27, label %.critedge35, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hd
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11
  %i.ht = icmp eq i8 %i.gs, 1
  %i.hu = select i1 %i.ht, i8 8, i8 -8
  %i.hv = add i8 %i.gz, %i.hu
  %i.hw = zext nneg i8 %i.hv to i64
  %i.hx = shl nuw i64 1, %i.hw
  %i.hy = and i64 %i.hx, %i.hs
  %i.hz = and i64 %i.hy, %i.ho
  %.not28 = icmp eq i64 %i.hz, 0
  br i1 %.not28, label %.critedge35, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ia = load i64, ptr %i.hm, align 8, !tbaa !11
  %i.ib = select i1 %i.gt, i8 8, i8 -8
  %i.ic = add i8 %i.gz, %i.ib
  %i.id = shl nuw i64 1, %i.hf
  %i.ie = zext nneg i8 %i.ic to i64
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = or i64 %i.if, %i.id
  %i.ih = and i64 %i.ia, %i.ig
  %.not29 = icmp eq i64 %i.ih, 0
  br i1 %.not29, label %bb.w, label %.critedge35

.critedge35:                                      ; preds = %.critedge2, %bb.s, %bb.r, %bb.u, %bb.t, %bb.v
  %i.ii = load ptr, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 60
  store i8 64, ptr %i.ij, align 4, !tbaa !101
  br label %bb.w

bb.w:                                             ; preds = %.critedge35, %bb.v
  %i.ik = phi ptr [ %i.ii, %.critedge35 ], [ %i.ha, %bb.v ]
  %i.il = zext i1 %2 to i8
  %i.im = load ptr, ptr %4, align 8, !tbaa !30
  %i.in = getelementptr i8, ptr %i.im, i64 -24
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = getelementptr inbounds i8, ptr %4, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !47
  %i.is = or i32 %i.ir, 4096
  store i32 %i.is, ptr %i.iq, align 8, !tbaa !48
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 52
  %i.iu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.it) #26
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.iw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull align 4 dereferenceable(4) %i.iv) #26 ; 0 uses
  %i.ix = load i32, ptr %i.iv, align 8, !tbaa !108
  %i.iy = shl i32 %i.ix, 1
  %i.iz = add i32 %i.iy, -2
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.iz, i32 0)
  %i.ja = load i8, ptr %i.cm, align 4, !tbaa !98
  %i.jb = icmp eq i8 %i.ja, 1
  %i.jc = zext i1 %i.jb to i32
  %i.jd = or disjoint i32 %.sroa.speculated, %i.jc
  store i32 %i.jd, ptr %i.iv, align 8, !tbaa !108
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 621
  store i8 %i.il, ptr %i.je, align 1, !tbaa !87
  call void @_ZNK9Stockfish8Position9set_stateEv(ptr noundef nonnull align 8 dereferenceable(1048) %0)
  %i.jf = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.jf, ptr %4, align 8, !tbaa !30
  %i.jg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.jh = getelementptr i8, ptr %i.jf, i64 -24
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds i8, ptr %4, i64 %i.ji
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !30
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !42 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !29
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #31
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jq) #26
  store ptr %i.i, ptr %4, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE:bb.a
  store i8 64, ptr %i.es, align 1, !tbaa !220
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.e
  %i.et = phi ptr [ %i.bm, %bb.e ], [ %2, %bb.n ], [ %i.dz, %bb.m ] ; 2 uses
  %i.eu = phi i8 [ %.pre212.a, %bb.e ], [ %i.y, %bb.n ], [ %i.y, %bb.m ] ; 2 uses
  %.0198 = phi i64 [ %i.bl, %bb.e ], [ %i.i, %bb.n ], [ %i.ef, %bb.m ]
  %.0125 = phi i8 [ 0, %bb.e ], [ 0, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
  %i.ev = zext i8 %i.ab to i64                    ; 4 uses
  %i.ew = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.ev ; 5 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.z ; 4 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !11
  %i.ez = zext i8 %i.eu to i64                    ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !11
  %i.fc = xor i64 %i.ey, %.0198
  %i.fd = xor i64 %i.fc, %i.fb                    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 60 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 4, !tbaa !101 ; 2 uses
  %.not134 = icmp eq i8 %i.ff, 64
  br i1 %.not134, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fg = and i8 %i.ff, 7
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish7Zobrist9enpassantE, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !11
  %i.fk = xor i64 %i.fj, %i.fd
  store i8 64, ptr %i.fe, align 4, !tbaa !101
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1199 = phi i64 [ %i.fd, %bb.o ], [ %i.fk, %bb.p ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 48 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !85 ; 3 uses
  %.not135 = icmp eq i32 %i.fm, 0
  br i1 %.not135, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.z
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ez
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !83
  %i.fs = or i32 %i.fr, %i.fp                     ; 2 uses
  %.not136 = icmp eq i32 %i.fs, 0
  br i1 %.not136, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = sext i32 %i.fm to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr @_ZN9Stockfish7Zobrist8castlingE, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !11
  %i.fw = xor i32 %i.fs, -1
  %i.fx = and i32 %i.fm, %i.fw                    ; 2 uses
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !85
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr @_ZN9Stockfish7Zobrist8castlingE, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !11
  %i.gb = xor i64 %i.fv, %i.ga
  %i.gc = xor i64 %i.gb, %.1199
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.2 = phi i64 [ %.1199, %bb.q ], [ %.1199, %bb.r ], [ %i.gc, %bb.s ] ; 4 uses
  br i1 %i.az, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not138 = icmp eq i8 %.0125, 0
  %brmerge = or i1 %i.ad, %.not138
  %i.gd = load i8, ptr %i.aa, align 1, !tbaa !27  ; 10 uses
  br i1 %brmerge, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNK9Stockfish8Position20update_piece_threatsILb0ELb1EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %i.gd, i8 noundef zeroext %i.w, ptr noundef nonnull %5, i64 noundef -1)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.gf = shl nuw i64 1, %i.z                     ; 3 uses
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !11
  %i.gh = xor i64 %i.gg, %i.gf
  store i64 %i.gh, ptr %i.ge, align 8, !tbaa !11
  %i.gi = and i8 %i.gd, 7
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gj ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !11
  %i.gm = xor i64 %i.gl, %i.gf
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !11
  %i.gn = lshr i8 %i.gd, 3
  %i.go = zext nneg i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.go ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !11
  %i.gr = xor i64 %i.gq, %i.gf
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !11
  store i8 0, ptr %i.aa, align 1, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.gt = zext i8 %i.gd to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !83
  %i.gw = add nsw i32 %i.gv, -1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !83
  %i.gx = and i8 %i.gd, -8
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !83
  %i.hb = add nsw i32 %i.ha, -1
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !83
  %i.hc = load i8, ptr %i.a, align 1, !tbaa !100  ; 3 uses
  %i.hd = zext i8 %i.hc to i64                    ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 %i.hd ; 3 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !27  ; 5 uses
  %i.hg = shl nuw i64 1, %i.hd                    ; 5 uses
  %i.hh = load i64, ptr %i.ge, align 8, !tbaa !11
  %i.hi = xor i64 %i.hh, %i.hg
  store i64 %i.hi, ptr %i.ge, align 8, !tbaa !11
  %i.hj = and i8 %i.hf, 7
  %i.hk = zext nneg i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hk ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !11
  %i.hn = xor i64 %i.hm, %i.hg
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !11
  %i.ho = lshr i8 %i.hf, 3
  %i.hp = zext nneg i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.hp ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !11
  %i.hs = xor i64 %i.hr, %i.hg
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !11
  store i8 0, ptr %i.he, align 1, !tbaa !27
  %i.ht = zext i8 %i.hf to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !83
  %i.hw = add nsw i32 %i.hv, -1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !83
  %i.hx = and i8 %i.hf, -8
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !83
  %i.ib = add nsw i32 %i.ia, -1
  store i32 %i.ib, ptr %i.hz, align 8, !tbaa !83
  call void @_ZNK9Stockfish8Position20update_piece_threatsILb0ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %i.hf, i8 noundef zeroext %i.hc, ptr noundef nonnull %5, i64 noundef -1)
  store i8 %i.ab, ptr %i.he, align 1, !tbaa !27
  %i.ic = and i8 %i.ab, 7
  %i.id = zext nneg i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.id ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !11
  %i.ig = or i64 %i.if, %i.hg                     ; 2 uses
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !11
  %i.ih = load i64, ptr %i.ge, align 8, !tbaa !11
  %i.ii = or i64 %i.ih, %i.ig
  store i64 %i.ii, ptr %i.ge, align 8, !tbaa !11
  %i.ij = lshr i8 %i.ab, 3
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !11
  %i.in = or i64 %i.im, %i.hg
  store i64 %i.in, ptr %i.il, align 8, !tbaa !11
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.ev ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !83
  %i.iq = add nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !83
  %i.ir = and i8 %i.ab, -8
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !83
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !83
  call void @_ZNK9Stockfish8Position20update_piece_threatsILb1ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %i.ab, i8 noundef zeroext %i.hc, ptr noundef nonnull %5, i64 noundef -1)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.iw = shl nuw i64 1, %i.z
  %i.ix = shl nuw i64 1, %i.ez
  %i.iy = or i64 %i.ix, %i.iw                     ; 5 uses
  call void @_ZNK9Stockfish8Position20update_piece_threatsILb0ELb1EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %i.gd, i8 noundef zeroext %i.w, ptr noundef nonnull %5, i64 noundef %i.iy)
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !11
  %i.jb = xor i64 %i.ja, %i.iy
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !11
  %i.jc = and i8 %i.gd, 7
  %i.jd = zext nneg i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jd ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !11
  %i.jg = xor i64 %i.jf, %i.iy
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !11
  %i.jh = lshr i8 %i.gd, 3
  %i.ji = zext nneg i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ji ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !11
  %i.jl = xor i64 %i.jk, %i.iy
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !11
  store i8 0, ptr %i.aa, align 1, !tbaa !27
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ez
  store i8 %i.gd, ptr %i.jm, align 1, !tbaa !27
  call void @_ZNK9Stockfish8Position20update_piece_threatsILb1ELb1EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %i.gd, i8 noundef zeroext %i.eu, ptr noundef nonnull %5, i64 noundef %i.iy)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %i.jn = and i8 %i.ab, 7                         ; 2 uses
  %i.jo = icmp eq i8 %i.jn, 1
  br i1 %i.jo, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.jp = load i8, ptr %i.a, align 1, !tbaa !100  ; 5 uses
  %i.jq = xor i8 %i.jp, %i.w
  %i.jr = icmp eq i8 %i.jq, 16                    ; 2 uses
  %i.js = icmp ne i16 %i.ac, 16384
  %or.cond201.not = or i1 %i.js, %i.jr
  br i1 %or.cond201.not, label %._crit_edge, label %bb.z

._crit_edge:                                      ; preds = %bb.y
  %.pre213.a = load ptr, ptr %i.d, align 8, !tbaa !68
  %.pre222 = zext i8 %i.jp to i64
  br label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.jt = lshr i16 %1, 12
  %i.ju = trunc nuw nsw i16 %i.jt to i8
  %i.jv = and i8 %i.ju, 3                         ; 2 uses
  %i.jw = add nuw nsw i8 %i.jv, 2                 ; 2 uses
  %i.jx = shl i8 %i.s, 3                          ; 2 uses
  %i.jy = or disjoint i8 %i.jx, %i.jw             ; 4 uses
  %i.jz = zext i8 %i.jp to i64                    ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %i.jz ; 3 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !27  ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.kd = shl nuw i64 1, %i.jz                    ; 5 uses
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !11
  %i.kf = xor i64 %i.ke, %i.kd
  store i64 %i.kf, ptr %i.kc, align 8, !tbaa !11
  %i.kg = and i8 %i.kb, 7
  %i.kh = zext nneg i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kh ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !11
  %i.kk = xor i64 %i.kj, %i.kd
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !11
  %i.kl = lshr i8 %i.kb, 3
  %i.km = zext nneg i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.km ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !11
  %i.kp = xor i64 %i.ko, %i.kd
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !11
  store i8 0, ptr %i.ka, align 1, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.kr = zext i8 %i.kb to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !83
  %i.ku = add nsw i32 %i.kt, -1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !83
  %i.kv = and i8 %i.kb, -8
  %i.kw = zext i8 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.kw ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !83
  %i.kz = add nsw i32 %i.ky, -1
  store i32 %i.kz, ptr %i.kx, align 8, !tbaa !83
  call void @_ZNK9Stockfish8Position20update_piece_threatsILb0ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %i.kb, i8 noundef zeroext %i.jp, ptr noundef nonnull %5, i64 noundef -1)
  store i8 %i.jy, ptr %i.ka, align 1, !tbaa !27
  %i.la = zext nneg i8 %i.jw to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.la ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !11
  %i.ld = or i64 %i.lc, %i.kd                     ; 2 uses
  store i64 %i.ld, ptr %i.lb, align 8, !tbaa !11
  %i.le = load i64, ptr %i.kc, align 8, !tbaa !11
  %i.lf = or i64 %i.le, %i.ld
  store i64 %i.lf, ptr %i.kc, align 8, !tbaa !11
  %i.lg = and i8 %i.s, 31
  %i.lh = zext nneg i8 %i.lg to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.lh ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !11
  %i.lk = or i64 %i.lj, %i.kd
  store i64 %i.lk, ptr %i.li, align 8, !tbaa !11
  %i.ll = zext i8 %i.jy to i64                    ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ll ; 3 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !83
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !83
  %i.lp = zext i8 %i.jx to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !83
  %i.ls = add nsw i32 %i.lr, 1
  store i32 %i.ls, ptr %i.lq, align 8, !tbaa !83
  call void @_ZNK9Stockfish8Position20update_piece_threatsILb1ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %i.jy, i8 noundef zeroext %i.jp, ptr noundef nonnull %5, i64 noundef -1)
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.jy, ptr %i.lt, align 1, !tbaa !221
  %i.lu = load i8, ptr %i.a, align 1, !tbaa !100  ; 2 uses
  store i8 %i.lu, ptr %i.am, align 1, !tbaa !216
  store i8 64, ptr %i.al, align 1, !tbaa !215
  %i.lv = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.ll ; 2 uses
  %i.lw = zext i8 %i.lu to i64                    ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lw ; 3 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !11
  %i.lz = xor i64 %i.ly, %.2
  %i.ma = load i32, ptr %i.lm, align 4, !tbaa !83
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr [8 x i8], ptr %i.lv, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 56
  %i.me = load i64, ptr %i.md, align 8, !tbaa !11
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ev
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !83
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr [8 x i8], ptr %i.ew, i64 %i.mh
  %i.mj = getelementptr i8, ptr %i.mi, i64 64
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !11
  %i.ml = xor i64 %i.mk, %i.me
  %i.mm = load ptr, ptr %i.d, align 8, !tbaa !68  ; 6 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !138
  %i.mo = xor i64 %i.ml, %i.mn
  store i64 %i.mo, ptr %i.mm, align 8, !tbaa !138
  %i.mp = load i64, ptr %i.lx, align 8, !tbaa !11
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.ap ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !11
  %i.mt = xor i64 %i.ms, %i.mp
  store i64 %i.mt, ptr %i.mr, align 8, !tbaa !11
  %i.mu = icmp samesign ult i8 %i.jv, 2
  br i1 %i.mu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.mv = load i64, ptr %i.lx, align 8, !tbaa !11
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !136
  %i.my = xor i64 %i.mx, %i.mv
  store i64 %i.my, ptr %i.mw, align 8, !tbaa !136
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.ll
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !83
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.ap ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !83
  %i.ne = add nsw i32 %i.nd, %i.na
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !83
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  %.pre-phi223 = phi i64 [ %.pre222, %._crit_edge ], [ %i.lw, %bb.ab ]
  %i.nf = phi ptr [ %.pre213.a, %._crit_edge ], [ %i.mm, %bb.ab ] ; 3 uses
  %.3 = phi i64 [ %.2, %._crit_edge ], [ %i.lz, %bb.ab ]
  %i.ng = load i64, ptr %i.ex, align 8, !tbaa !11
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.pre-phi223
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !11
  %i.nj = xor i64 %i.ni, %i.ng
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !134
  %i.nm = xor i64 %i.nj, %i.nl
  store i64 %i.nm, ptr %i.nk, align 8, !tbaa !134
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 52
  store i32 0, ptr %i.nn, align 4, !tbaa !81
  br label %bb.af

bb.ad:                                            ; preds = %bb.x
  %i.no = load i64, ptr %i.ex, align 8, !tbaa !11
  %i.np = load i8, ptr %i.a, align 1, !tbaa !100
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.nq ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !11
  %i.nt = xor i64 %i.ns, %i.no
  %i.nu = load ptr, ptr %i.d, align 8, !tbaa !68  ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.ap ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !11
  %i.ny = xor i64 %i.nt, %i.nx
  store i64 %i.ny, ptr %i.nw, align 8, !tbaa !11
  %i.nz = icmp samesign ult i8 %i.jn, 4
  br i1 %i.nz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.oa = load i64, ptr %i.ex, align 8, !tbaa !11
  %i.ob = load i64, ptr %i.nr, align 8, !tbaa !11
  %i.oc = xor i64 %i.ob, %i.oa
  %i.od = getelementptr inbounds nuw i8, ptr %i.nu, i64 16 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !136
  %i.of = xor i64 %i.oc, %i.oe
  store i64 %i.of, ptr %i.od, align 8, !tbaa !136
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.og = phi ptr [ %i.nf, %bb.ac ], [ %i.nu, %bb.ae ], [ %i.nu, %bb.ad ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.ac ], [ %.2, %bb.ae ], [ %.2, %bb.ad ] ; 10 uses
  %.1 = phi i1 [ %i.jr, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ad ] ; 2 uses
  %i.oh = icmp eq ptr %6, null                    ; 2 uses
  %or.cond = or i1 %i.oh, %.1
  br i1 %or.cond, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 52
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !81 ; 2 uses
  %i.ok = icmp slt i32 %i.oj, 14
  br i1 %i.ok, label %_ZNK9Stockfish8Position12adjust_key50Em.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ol = add nsw i32 %i.oj, -14
  %i.om = lshr i32 %i.ol, 3
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = mul i64 %i.on, 6364136223846793005
  %i.op = add i64 %i.oo, 1442695040888963407
  %i.oq = xor i64 %i.op, %.4
  br label %_ZNK9Stockfish8Position12adjust_key50Em.exit

_ZNK9Stockfish8Position12adjust_key50Em.exit:     ; preds = %bb.ag, %bb.ah
  %i.or = phi i64 [ %i.oq, %bb.ah ], [ %.4, %bb.ag ]
  %i.os = call noundef ptr @_ZNK9Stockfish18TranspositionTable11first_entryEm(ptr noundef nonnull align 8 dereferenceable(17) %6, i64 noundef %i.or) #26
  call void @_ZN9Stockfish8prefetchEPKv(ptr noundef %i.os) #26
  %.pre215.pre = load ptr, ptr %i.d, align 8, !tbaa !68
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK9Stockfish8Position12adjust_key50Em.exit, %bb.af
  %.pre215 = phi ptr [ %.pre215.pre, %_ZNK9Stockfish8Position12adjust_key50Em.exit ], [ %i.og, %bb.af ] ; 2 uses
end_hunk_1
