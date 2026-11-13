Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_cparse?download=true
inline.NumInlined: 196
inline.NumDeleted: 37
begin_hunk_0_@cp_decl_intern:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.d, align 4, !tbaa !83  ; 2 uses
  %i.bc = lshr i32 %i.bb, 8                       ; 2 uses
  %i.bd = and i32 %i.bc, 255                      ; 3 uses
  %i.be = lshr i32 %i.bb, 4
  %i.bf = and i32 %i.be, 15                       ; 4 uses
  %.not150 = icmp eq i32 %i.bd, 0
  br i1 %.not150, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp samesign ult i32 %.fr, 67108864
  br i1 %i.bg, label %bb.q, label %switch.early.test

switch.early.test:                                ; preds = %bb.p
  %trunc = trunc i32 %i.bc to i8
  switch i8 %trunc, label %bb.r [
    i8 8, label %bb.q
    i8 4, label %bb.q
  ]

bb.q:                                             ; preds = %switch.early.test, %switch.early.test, %bb.p
  %i.bh = call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.bd, i1 true)
  %i.bi = xor i32 %i.bh, 31
  %spec.store.select = call i32 @llvm.umin.i32(i32 %i.bi, i32 4)
  %i.bj = and i32 %.fr, 133234687
  %i.bk = shl nuw nsw i32 %spec.store.select, 16
  %i.bl = or disjoint i32 %i.bk, %i.bj
  br label %bb.r

bb.r:                                             ; preds = %switch.early.test, %bb.q, %bb.o
  %.0123 = phi i32 [ %i.bl, %bb.q ], [ %.fr, %switch.early.test ], [ %.fr, %bb.o ] ; 5 uses
  %.0118 = phi i32 [ %i.bd, %bb.q ], [ %i.i, %switch.early.test ], [ %i.i, %bb.o ] ; 4 uses
  %.not151 = icmp eq i32 %i.bf, 0
  br i1 %.not151, label %.thread163, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0118, i1 true)
  %i.bn = xor i32 %i.bm, 31
  %.not152 = icmp samesign ult i32 %i.bf, %i.bn
  br i1 %.not152, label %.thread163, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.bp = call i32 @lj_ctype_intern(ptr noundef %i.bo, i32 noundef %.0123, i32 noundef %.0118) #14
  %i.bq = shl nuw nsw i32 1, %i.bf
  %spec.store.select4 = call i32 @llvm.umin.i32(i32 %i.bf, i32 4)
  %i.br = lshr i32 %.0123, 16
  %i.bs = and i32 %i.br, 15
  %spec.select = call i32 @llvm.umax.i32(i32 %i.bs, i32 %spec.store.select4)
  %i.bt = and i32 %.0123, 50331648
  %i.bu = shl nuw nsw i32 %spec.select, 16
  %i.bv = or disjoint i32 %i.bu, %i.bt
  %i.bw = or disjoint i32 %i.bv, 939524096
  br label %.thread163

bb.u:                                             ; preds = %bb.b
  %.not147 = icmp eq i32 %.0, 0
  br i1 %.not147, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.pn.in = phi i32 [ %.0, %bb.v ], [ %i.cb, %bb.w ]
  %.pn = zext i32 %.pn.in to i64
  %.0.i = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %.pn
  %i.bz = load i32, ptr %.0.i, align 8, !tbaa !58 ; 3 uses
  %i.ca = icmp slt i32 %i.bz, -1879048192
  %i.cb = and i32 %i.bz, 65535
  br i1 %i.ca, label %bb.w, label %ctype_raw.exit, !llvm.loop !3

ctype_raw.exit:                                   ; preds = %bb.w
  %i.cc = and i32 %i.bz, -260046848
  %i.cd = icmp eq i32 %i.cc, 545259520
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %ctype_raw.exit
  call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 3165) #15
  unreachable

bb.y:                                             ; preds = %ctype_raw.exit, %bb.u
  %i.ce = and i32 %.fr, 545259520
  %i.cf = icmp eq i32 %i.ce, 545259520
  br i1 %i.cf, label %bb.z, label %.thread163

bb.z:                                             ; preds = %bb.y
  %i.cg = and i32 %.fr, 788529151                 ; 3 uses
  %.not148168 = icmp eq i16 %i.k, 0
  br i1 %.not148168, label %.thread163, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %.4137169 = phi i32 [ %i.cn, %bb.aa ], [ %i.l, %bb.z ] ; 2 uses
  %i.ch = zext nneg i32 %.4137169 to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !58
  %i.ck = icmp slt i32 %i.cj, -1879048192
  br i1 %i.ck, label %bb.aa, label %.thread163

bb.aa:                                            ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !72 ; 2 uses
  %i.cn = zext i16 %i.cm to i32
  %.not148 = icmp eq i16 %i.cm, 0
  br i1 %.not148, label %.thread163, label %.lr.ph

bb.ab:                                            ; preds = %bb.b
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !66
  %i.cq = icmp eq i16 %i.cp, 0
  br i1 %i.cq, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.cr = and i32 %.0128, -260046848
  %i.cs = icmp eq i32 %i.cr, 545259520
  br i1 %i.cs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @cp_err(ptr noundef %0, i32 noundef 3165) #15
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ct = and i32 %.0128, -804257792
  %i.cu = icmp eq i32 %i.ct, 269484032
  %i.cv = icmp eq i32 %.0131, -1
  %or.cond6 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond6, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call fastcc void @cp_err(ptr noundef %0, i32 noundef 3180) #15
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %.not = icmp eq i32 %i.i, -1
  br i1 %.not, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = zext i32 %i.i to i64
  %i.cx = zext i32 %.0131 to i64
  %i.cy = mul nuw i64 %i.cw, %i.cx                ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, 2147483647
  br i1 %i.cz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call fastcc void @cp_err(ptr noundef %0, i32 noundef 3180) #15
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.da = trunc nuw nsw i64 %i.cy to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.aj, %bb.ab
  %.3121 = phi i32 [ %i.da, %bb.aj ], [ -1, %bb.ag ], [ %i.i, %bb.ab ]
  %i.db = and i32 %.0128, 983040                  ; 2 uses
  %i.dc = and i32 %.fr, 983040
  %i.dd = icmp samesign ugt i32 %i.db, %i.dc
  %i.de = and i32 %.fr, 1072758783
  %i.df = or disjoint i32 %i.de, %i.db
  %.3126 = select i1 %i.dd, i32 %i.df, i32 %.fr
  %i.dg = and i32 %.0128, 50331648
  %i.dh = or i32 %.3126, %i.dg
  br label %.thread163

.thread163:                                       ; preds = %bb.aa, %.lr.ph, %bb.z, %bb.b, %bb.r, %bb.t, %bb.s, %bb.y, %bb.ak, %bb.n
  %.6 = phi i32 [ %i.l, %bb.n ], [ %i.l, %bb.b ], [ %i.l, %bb.r ], [ %i.l, %bb.t ], [ %i.l, %bb.y ], [ %i.l, %bb.ak ], [ %i.l, %bb.s ], [ 0, %bb.z ], [ 0, %bb.aa ], [ %.4137169, %.lr.ph ]
  %.4127 = phi i32 [ %.fr, %bb.n ], [ %.fr, %bb.b ], [ %.0123, %bb.r ], [ %i.bw, %bb.t ], [ %.fr, %bb.y ], [ %i.dh, %bb.ak ], [ %.0123, %bb.s ], [ %i.cg, %bb.z ], [ %i.cg, %.lr.ph ], [ %i.cg, %bb.aa ]
  %.4122 = phi i32 [ %i.i, %bb.n ], [ %i.i, %bb.b ], [ %.0118, %bb.r ], [ %i.bq, %bb.t ], [ %i.i, %bb.y ], [ %.3121, %bb.ak ], [ %.0118, %bb.s ], [ %i.i, %bb.z ], [ %i.i, %.lr.ph ], [ %i.i, %bb.aa ] ; 2 uses
  %.3 = phi i32 [ %.0, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.r ], [ %i.bp, %bb.t ], [ %.0, %bb.y ], [ %.0, %bb.ak ], [ %.0, %bb.s ], [ %.0, %bb.z ], [ %.0, %.lr.ph ], [ %.0, %bb.aa ]
  %i.di = add i32 %.3, %.4127                     ; 2 uses
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.dk = call i32 @lj_ctype_intern(ptr noundef %i.dj, i32 noundef %i.di, i32 noundef %.4122) #14
  br label %bb.al

bb.al:                                            ; preds = %.thread, %.thread163, %bb.m, %bb.c
  %.7 = phi i32 [ %i.l, %bb.c ], [ %.1134.lcssa, %.thread ], [ %i.l, %bb.m ], [ %.6, %.thread163 ] ; 2 uses
  %.1132 = phi i32 [ %i.u, %bb.c ], [ -1, %.thread ], [ %.0131, %bb.m ], [ %.4122, %.thread163 ]
  %.2130 = phi i32 [ %i.s, %bb.c ], [ %i.ao, %.thread ], [ %.1129, %bb.m ], [ %i.di, %.thread163 ]
  %.4 = phi i32 [ %i.n, %bb.c ], [ %i.an, %.thread ], [ %i.ba, %bb.m ], [ %i.dk, %.thread163 ] ; 2 uses
  %.not156 = icmp eq i32 %.7, 0
  br i1 %.not156, label %bb.am, label %bb.b, !llvm.loop !142

bb.am:                                            ; preds = %bb.al
  ret i32 %.4
}

declare hidden i32 @lj_ctype_new(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @lj_ctype_addname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @cp_decl_attributes(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.CPValue, align 4            ; 7 uses
  %3 = alloca %struct.CPValue, align 4            ; 7 uses
  %4 = alloca %struct.CPValue, align 4            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr i8, ptr %1, i64 45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.m = load i32, ptr %i.a, align 4, !tbaa !52
  switch i32 %i.m, label %bb.bk [
    i32 280, label %bb.c
    i32 281, label %bb.d
    i32 282, label %.backedge
    i32 289, label %.backedge
    i32 291, label %bb.e
    i32 290, label %bb.ar
    i32 292, label %bb.aw
    i32 293, label %.backedge
    i32 294, label %bb.bj
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.h, align 4, !tbaa !83
  %i.o = or i32 %i.n, 33554432
  store i32 %i.o, ptr %i.h, align 4, !tbaa !83
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.h, align 4, !tbaa !83
  %i.q = or i32 %i.p, 16777216
  store i32 %i.q, ptr %i.h, align 4, !tbaa !83
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.r = tail call fastcc i32 @cp_next(ptr noundef nonnull %0), !inline_history !143 ; 0 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i38 = icmp eq i32 %i.s, 40
  br i1 %.not.i38, label %cp_check.exit39, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 40) #15
  unreachable

cp_check.exit39:                                  ; preds = %bb.e
  %i.t = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i36 = icmp eq i32 %i.u, 40
  br i1 %.not.i36, label %cp_opt.exit, label %bb.g

bb.g:                                             ; preds = %cp_check.exit39
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 40) #15
  unreachable

cp_opt.exit:                                      ; preds = %cp_check.exit39, %cp_opt.exit21.thread
  %i.v = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !52   ; 3 uses
  switch i32 %i.w, label %bb.am [
    i32 41, label %cp_check.exit16
    i32 256, label %bb.h
  ]

bb.h:                                             ; preds = %cp_opt.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.y = tail call fastcc i32 @cp_next(ptr noundef nonnull %0), !inline_history !143 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.in.i = phi i8 [ 7, %bb.h ], [ %i.aj, %bb.k ]
  %.pn.i = phi ptr [ @.str.22, %bb.h ], [ %i.ai, %bb.k ]
  %.015.i32 = phi i32 [ 0, %bb.h ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.ae = sext i8 %.in.i to i32                   ; 2 uses
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %bcmp.i35 = tail call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull readonly %i.z, i64 %i.ac)
  %.not13.i = icmp eq i32 %bcmp.i35, 0
  br i1 %.not13.i, label %lj_cparse_case.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = add nuw nsw i32 %.015.i32, 1
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17  ; 2 uses
  %.not.i33 = icmp eq i8 %i.aj, 0
  br i1 %.not.i33, label %lj_cparse_case.exit.thread, label %bb.i, !llvm.loop !0

lj_cparse_case.exit:                              ; preds = %bb.j
  switch i32 %.015.i32, label %lj_cparse_case.exit.thread [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.r
    i32 3, label %bb.r
    i32 4, label %bb.s
    i32 5, label %bb.s
    i32 6, label %bb.ae
    i32 7, label %bb.ae
  ]

bb.l:                                             ; preds = %lj_cparse_case.exit, %lj_cparse_case.exit
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !52
  %i.al = icmp eq i32 %i.ak, 40
  br i1 %i.al, label %cp_check.exit54, label %cp_decl_align.exit

cp_check.exit54:                                  ; preds = %bb.l
  %i.am = load i32, ptr %i.e, align 8, !tbaa !53
  store i32 14528, ptr %i.e, align 8, !tbaa !53
  %i.an = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !47  ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !47
  %i.aq = icmp sgt i32 %i.ao, 19
  br i1 %i.aq, label %bb.m, label %cp_expr_sub.exit.i114

bb.m:                                             ; preds = %cp_check.exit54
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 2216) #15, !inline_history !144
  unreachable

cp_expr_sub.exit.i114:                            ; preds = %cp_check.exit54
  call fastcc void @cp_expr_prefix(ptr noundef nonnull %0, ptr noundef nonnull %2), !inline_history !144
  call fastcc void @cp_expr_postfix(ptr noundef nonnull %0, ptr noundef nonnull %2), !inline_history !144
  %i.ar = load i32, ptr %i.f, align 4, !tbaa !47
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.f, align 4, !tbaa !47
  call fastcc void @cp_expr_infix(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0), !inline_history !145
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.au = load i32, ptr %i.l, align 4, !tbaa !85
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %cp_expr_sub.exit.i114
  %.pn.in.i = phi i32 [ %i.au, %cp_expr_sub.exit.i114 ], [ %i.ay, %bb.n ]
  %.pn.i115 = zext i32 %.pn.in.i to i64
  %.0.i.i.i116 = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.pn.i115
  %i.aw = load i32, ptr %.0.i.i.i116, align 8, !tbaa !58 ; 3 uses
  %i.ax = icmp slt i32 %i.aw, -1879048192
  %i.ay = and i32 %i.aw, 65535
  br i1 %i.ax, label %bb.n, label %ctype_raw.exit.i.i117, !llvm.loop !3

ctype_raw.exit.i.i117:                            ; preds = %bb.n
  %i.az = icmp ult i32 %i.aw, 67108864
  br i1 %i.az, label %cp_expr_kint.exit.i118, label %bb.o

bb.o:                                             ; preds = %ctype_raw.exit.i.i117
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 537) #15, !inline_history !146
  unreachable

cp_expr_kint.exit.i118:                           ; preds = %ctype_raw.exit.i.i117
  %i.ba = load i32, ptr %2, align 4, !tbaa !17    ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %cp_expr_ksize.exit119

bb.p:                                             ; preds = %cp_expr_kint.exit.i118
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 3180) #15, !inline_history !147
  unreachable

cp_expr_ksize.exit119:                            ; preds = %cp_expr_kint.exit.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  store i32 %i.am, ptr %i.e, align 8, !tbaa !53
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i51 = icmp eq i32 %i.bc, 41
  br i1 %.not.i51, label %cp_check.exit52, label %bb.q

bb.q:                                             ; preds = %cp_expr_ksize.exit119
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

cp_check.exit52:                                  ; preds = %cp_expr_ksize.exit119
  %i.bd = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %.not.i30 = icmp eq i32 %i.ba, 0
  %i.be = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ba, i1 true)
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = and i32 %i.bf, 983040
  %i.bh = xor i32 %i.bg, 983041
  %i.bi = select i1 %.not.i30, i32 1, i32 %i.bh
  br label %cp_decl_align.exit

cp_decl_align.exit:                               ; preds = %bb.l, %cp_check.exit52
  %.0.i29 = phi i32 [ %i.bi, %cp_check.exit52 ], [ 262145, %bb.l ]
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !83
  %i.bk = and i32 %i.bj, -983042
  %i.bl = or i32 %i.bk, %.0.i29
  store i32 %i.bl, ptr %i.h, align 4, !tbaa !83
  br label %thread-pre-split

bb.r:                                             ; preds = %lj_cparse_case.exit, %lj_cparse_case.exit
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !83
  %i.bn = or i32 %i.bm, 2
  store i32 %i.bn, ptr %i.h, align 4, !tbaa !83
  br label %thread-pre-split

bb.s:                                             ; preds = %lj_cparse_case.exit, %lj_cparse_case.exit
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i.i24 = icmp eq i32 %i.bo, 40
  br i1 %.not.i.i24, label %cp_check.exit.i25, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 40) #15
  unreachable

cp_check.exit.i25:                                ; preds = %bb.s
  %i.bp = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !52  ; 2 uses
  %i.br = icmp eq i32 %i.bq, 256
  br i1 %i.br, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %cp_check.exit.i25
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17  ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 95
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 25
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17
  %i.by = icmp eq i8 %i.bx, 95
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 26
  %spec.select.i = select i1 %i.by, ptr %i.bz, ptr %i.bt ; 2 uses
  %.pr.i28 = load i8, ptr %spec.select.i, align 1, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ca = phi i8 [ %.pr.i28, %bb.v ], [ %i.bu, %bb.u ] ; 2 uses
  %.026.i = phi ptr [ %spec.select.i, %bb.v ], [ %i.bt, %bb.u ] ; 4 uses
  %i.cb = icmp eq i8 %i.ca, 86
  br i1 %i.cb, label %bb.x, label %thread-pre-split.i

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.026.i, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.026.i, i64 2 ; 2 uses
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.cf = sext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !17  ; 2 uses
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.ci, 10
  br i1 %or.cond.i, label %bb.y, label %thread-pre-split.i

bb.y:                                             ; preds = %bb.x
  %i.cj = mul nsw i32 %i.cg, 10
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.i, i64 3 ; 2 uses
  %i.cl = zext nneg i8 %i.ci to i32
  %i.cm = add nsw i32 %i.cj, %i.cl
  %.pr31.pre.i = load i8, ptr %i.ck, align 1, !tbaa !17
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.y, %bb.x, %bb.w
  %i.cn = phi i8 [ %i.ch, %bb.x ], [ %i.ca, %bb.w ], [ %.pr31.pre.i, %bb.y ]
  %.1.i = phi ptr [ %i.cd, %bb.x ], [ %.026.i, %bb.w ], [ %i.ck, %bb.y ]
  %.0.i26 = phi i32 [ %i.cg, %bb.x ], [ 0, %bb.w ], [ %i.cm, %bb.y ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %switch.tableidx = add i8 %i.cn, -68            ; 3 uses
  %i.cp = icmp ult i8 %switch.tableidx, 17
  br i1 %i.cp, label %switch.hole_check, label %bb.ab

switch.hole_check:                                ; preds = %thread-pre-split.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 108561, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ab

switch.lookup:                                    ; preds = %switch.hole_check
  %i.cq = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cp_decl_attributes, i64 %i.cq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.cr = load i8, ptr %i.co, align 1, !tbaa !17
  switch i8 %i.cr, label %bb.ab [
    i8 73, label %bb.z
    i8 70, label %bb.z
  ]

bb.z:                                             ; preds = %switch.lookup, %switch.lookup
  %i.cs = load i32, ptr %i.h, align 4, !tbaa !83
  %i.ct = and i32 %i.cs, -65281
  %i.cu = shl nuw nsw i32 %switch.ext, 8
  %i.cv = or disjoint i32 %i.ct, %i.cu            ; 2 uses
  store i32 %i.cv, ptr %i.h, align 4, !tbaa !83
  %.not.i27 = icmp eq i32 %.0.i26, 0
  br i1 %.not.i27, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = and i32 %i.cv, -49393
  %i.cx = mul nsw i32 %.0.i26, %switch.ext
  %i.cy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cx, i1 true)
  %i.cz = shl nuw nsw i32 %i.cy, 4
  %i.da = and i32 %i.cz, 240
  %i.db = or disjoint i32 %i.cw, %i.da
  %i.dc = xor i32 %i.db, 240
  store i32 %i.dc, ptr %i.h, align 4, !tbaa !83
  br label %bb.ab

bb.ab:                                            ; preds = %switch.hole_check, %thread-pre-split.i, %bb.aa, %bb.z, %switch.lookup
  %i.dd = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %.pr32.i = load i32, ptr %i.a, align 4, !tbaa !52
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %cp_check.exit.i25
  %i.de = phi i32 [ %.pr32.i, %bb.ab ], [ %i.bq, %cp_check.exit.i25 ]
  %.not.i29.i = icmp eq i32 %i.de, 41
  br i1 %.not.i29.i, label %cp_decl_mode.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

cp_decl_mode.exit:                                ; preds = %bb.ac
  %i.df = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  br label %thread-pre-split

bb.ae:                                            ; preds = %lj_cparse_case.exit, %lj_cparse_case.exit
  %i.dg = load i32, ptr %i.e, align 8, !tbaa !53
  store i32 14528, ptr %i.e, align 8, !tbaa !53
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i.i22 = icmp eq i32 %i.dh, 40
  br i1 %.not.i.i22, label %cp_check.exit.i23, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 40) #15, !inline_history !148
  unreachable

cp_check.exit.i23:                                ; preds = %bb.ae
  %i.di = tail call fastcc i32 @cp_next(ptr noundef nonnull %0), !inline_history !148 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.dj = load i32, ptr %i.f, align 4, !tbaa !47  ; 2 uses
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.f, align 4, !tbaa !47
  %i.dl = icmp sgt i32 %i.dj, 19
  br i1 %i.dl, label %bb.ag, label %cp_expr_unary.exit.i

bb.ag:                                            ; preds = %cp_check.exit.i23
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 2216) #15, !inline_history !149
  unreachable

cp_expr_unary.exit.i:                             ; preds = %cp_check.exit.i23
  call fastcc void @cp_expr_prefix(ptr noundef nonnull %0, ptr noundef nonnull %4), !inline_history !149
  call fastcc void @cp_expr_postfix(ptr noundef nonnull %0, ptr noundef nonnull %4), !inline_history !149
  %i.dm = load i32, ptr %i.f, align 4, !tbaa !47
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.f, align 4, !tbaa !47
  call fastcc void @cp_expr_infix(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0), !inline_history !150
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.dp = load i32, ptr %i.k, align 4, !tbaa !85
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !59
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %cp_expr_unary.exit.i
  %.pn69.in = phi i32 [ %i.dp, %cp_expr_unary.exit.i ], [ %i.dt, %bb.ah ]
  %.pn69 = zext i32 %.pn69.in to i64
  %.0.i.i = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %.pn69
  %i.dr = load i32, ptr %.0.i.i, align 8, !tbaa !58 ; 3 uses
  %i.ds = icmp slt i32 %i.dr, -1879048192
  %i.dt = and i32 %i.dr, 65535
  br i1 %i.ds, label %bb.ah, label %ctype_raw.exit.i, !llvm.loop !3

ctype_raw.exit.i:                                 ; preds = %bb.ah
  %i.du = icmp ult i32 %i.dr, 67108864
  br i1 %i.du, label %cp_expr_kint.exit, label %bb.ai

bb.ai:                                            ; preds = %ctype_raw.exit.i
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 537) #15, !inline_history !151
  unreachable

cp_expr_kint.exit:                                ; preds = %ctype_raw.exit.i
  %i.dv = load i32, ptr %4, align 4, !tbaa !17    ; 3 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.aj, label %cp_expr_ksize.exit.i

bb.aj:                                            ; preds = %cp_expr_kint.exit
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 3180) #15, !inline_history !152
  unreachable

cp_expr_ksize.exit.i:                             ; preds = %cp_expr_kint.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  store i32 %i.dg, ptr %i.e, align 8, !tbaa !53
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i7.i = icmp eq i32 %i.dx, 41
  br i1 %.not.i7.i, label %cp_decl_sizeattr.exit, label %bb.ak

bb.ak:                                            ; preds = %cp_expr_ksize.exit.i
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15, !inline_history !148
  unreachable

cp_decl_sizeattr.exit:                            ; preds = %cp_expr_ksize.exit.i
  %i.dy = tail call fastcc i32 @cp_next(ptr noundef nonnull %0), !inline_history !148 ; 0 uses
  %.not31.i = icmp eq i32 %i.dv, 0
  br i1 %.not31.i, label %thread-pre-split, label %bb.al

bb.al:                                            ; preds = %cp_decl_sizeattr.exit
  %i.dz = load i32, ptr %i.h, align 4, !tbaa !83
  %i.ea = and i32 %i.dz, -241
  %i.eb = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.dv, i1 true)
  %i.ec = shl nuw nsw i32 %i.eb, 4
  %i.ed = and i32 %i.ec, 240
  %i.ee = or disjoint i32 %i.ea, %i.ed
  %i.ef = xor i32 %i.ee, 240
  store i32 %i.ef, ptr %i.h, align 4, !tbaa !83
  br label %thread-pre-split

bb.am:                                            ; preds = %cp_opt.exit
  %i.eg = icmp sgt i32 %i.w, 268
  br i1 %i.eg, label %bb.an, label %cp_decl_gccattribute.exit

bb.an:                                            ; preds = %bb.am
  %i.eh = tail call fastcc i32 @cp_next(ptr noundef nonnull %0), !inline_history !143 ; 0 uses
  br label %lj_cparse_case.exit.thread

lj_cparse_case.exit.thread:                       ; preds = %bb.k, %lj_cparse_case.exit, %bb.an
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !52  ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 40
  br i1 %i.ej, label %cp_opt.exit21, label %cp_opt.exit21.thread

cp_opt.exit21:                                    ; preds = %lj_cparse_case.exit.thread, %cp_opt.exit21
  %i.ek = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.el = load i32, ptr %i.a, align 4, !tbaa !52
  switch i32 %i.el, label %cp_opt.exit21 [
    i32 41, label %cp_check.exit19
    i32 259, label %bb.ao
  ], !llvm.loop !153

bb.ao:                                            ; preds = %cp_opt.exit21
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

cp_check.exit19:                                  ; preds = %cp_opt.exit21
  %i.em = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %cp_decl_align.exit, %bb.r, %cp_decl_mode.exit, %bb.al, %cp_decl_sizeattr.exit, %cp_check.exit19
  %.pr = load i32, ptr %i.a, align 4, !tbaa !52
  br label %cp_opt.exit21.thread

cp_opt.exit21.thread:                             ; preds = %lj_cparse_case.exit.thread, %thread-pre-split
  %.pr65 = phi i32 [ %.pr, %thread-pre-split ], [ %i.ei, %lj_cparse_case.exit.thread ] ; 2 uses
  %i.en = icmp eq i32 %.pr65, 44
  br i1 %i.en, label %cp_opt.exit, label %cp_decl_gccattribute.exit, !llvm.loop !154

cp_decl_gccattribute.exit:                        ; preds = %bb.am, %cp_opt.exit21.thread
  %i.eo = phi i32 [ %.pr65, %cp_opt.exit21.thread ], [ %i.w, %bb.am ]
  %.not.i15 = icmp eq i32 %i.eo, 41
  br i1 %.not.i15, label %cp_check.exit16, label %bb.ap

bb.ap:                                            ; preds = %cp_decl_gccattribute.exit
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

cp_check.exit16:                                  ; preds = %cp_opt.exit, %cp_decl_gccattribute.exit
  %i.ep = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.eq = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i14 = icmp eq i32 %i.eq, 41
  br i1 %.not.i14, label %.backedge, label %bb.aq

bb.aq:                                            ; preds = %cp_check.exit16
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

.backedge:                                        ; preds = %cp_opt.exit45.thread, %cp_check.exit16, %bb.b, %bb.b, %bb.b, %bb.c, %bb.d, %bb.bj, %bb.au
  %i.er = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  br label %bb.b

bb.ar:                                            ; preds = %bb.b
  %i.es = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.et = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i.i = icmp eq i32 %i.et, 40
  br i1 %.not.i.i, label %cp_check.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 40) #15
  unreachable

cp_check.exit.i:                                  ; preds = %bb.ar
  %i.eu = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.ev = load i32, ptr %i.a, align 4, !tbaa !52  ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 257
  br i1 %i.ew, label %bb.at, label %bb.au

bb.at:                                            ; preds = %cp_check.exit.i
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.ey = tail call fastcc i32 @cp_next(ptr noundef nonnull %0)
  %i.ez = icmp eq i32 %i.ey, 257
  br i1 %i.ez, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.at, %.lr.ph.i
  %.015.i = phi ptr [ %i.fl, %.lr.ph.i ], [ %i.ex, %bb.at ]
  %i.fa = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.fb = getelementptr inbounds nuw i8, ptr %.015.i, i64 24
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = tail call ptr (ptr, ptr, ...) @lj_strfmt_pushf(ptr noundef %i.fa, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.fb, ptr noundef nonnull %i.fd) #14 ; 0 uses
  %i.ff = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !75
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8 ; 2 uses
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !75
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !17
  %i.fk = and i64 %i.fj, 140737488355327
  %i.fl = inttoptr i64 %i.fk to ptr               ; 2 uses
  %i.fm = tail call fastcc i32 @cp_next(ptr noundef nonnull %0)
  %i.fn = icmp eq i32 %i.fm, 257
  br i1 %i.fn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !155

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.at
  %.0.lcssa.i = phi ptr [ %i.ex, %bb.at ], [ %i.fl, %.lr.ph.i ]
  store ptr %.0.lcssa.i, ptr %i.j, align 8, !tbaa !65
  %.pr.i = load i32, ptr %i.a, align 4, !tbaa !52
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i, %cp_check.exit.i
  %i.fo = phi i32 [ %.pr.i, %._crit_edge.i ], [ %i.ev, %cp_check.exit.i ]
  %.not.i13.i = icmp eq i32 %i.fo, 41
  br i1 %.not.i13.i, label %.backedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

bb.aw:                                            ; preds = %bb.b
  %i.fp = tail call fastcc i32 @cp_next(ptr noundef nonnull %0), !inline_history !156 ; 0 uses
  %i.fq = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i49 = icmp eq i32 %i.fq, 40
  br i1 %.not.i49, label %cp_check.exit50, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 40) #15
  unreachable

cp_check.exit50:                                  ; preds = %bb.aw
  %i.fr = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  br label %cp_opt.exit45.thread

cp_opt.exit45.thread:                             ; preds = %cp_opt.exit45.thread.backedge, %cp_check.exit50
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !52
  switch i32 %i.fs, label %bb.bi [
    i32 256, label %bb.ay
    i32 41, label %.backedge
  ]

bb.ay:                                            ; preds = %cp_opt.exit45.thread
  %i.ft = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.fu = tail call fastcc i32 @cp_next(ptr noundef nonnull %0), !inline_history !156 ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !21
  %i.fx = icmp eq i32 %i.fw, 5
  br i1 %i.fx, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = xor i32 %i.fz, 1734962273
  %i.gb = getelementptr i8, ptr %i.fy, i64 4
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i32
  %i.ge = xor i32 %i.gd, 110
  %i.gf = or i32 %i.ga, %i.ge
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %.not.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !52
  %i.gj = icmp eq i32 %i.gi, 40
  br i1 %i.gj, label %cp_check.exit58, label %cp_decl_align.exit48

cp_check.exit58:                                  ; preds = %bb.ba
  %i.gk = load i32, ptr %i.e, align 8, !tbaa !53
  store i32 14528, ptr %i.e, align 8, !tbaa !53
  %i.gl = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.gm = load i32, ptr %i.f, align 4, !tbaa !47  ; 2 uses
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.f, align 4, !tbaa !47
  %i.go = icmp sgt i32 %i.gm, 19
  br i1 %i.go, label %bb.bb, label %cp_expr_sub.exit.i

bb.bb:                                            ; preds = %cp_check.exit58
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 2216) #15, !inline_history !157
  unreachable

cp_expr_sub.exit.i:                               ; preds = %cp_check.exit58
  call fastcc void @cp_expr_prefix(ptr noundef nonnull %0, ptr noundef nonnull %3), !inline_history !157
  call fastcc void @cp_expr_postfix(ptr noundef nonnull %0, ptr noundef nonnull %3), !inline_history !157
  %i.gp = load i32, ptr %i.f, align 4, !tbaa !47
  %i.gq = add nsw i32 %i.gp, -1
  store i32 %i.gq, ptr %i.f, align 4, !tbaa !47
  call fastcc void @cp_expr_infix(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !158
  %i.gr = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.gs = load i32, ptr %5, align 4, !tbaa !85
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !59
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %cp_expr_sub.exit.i
  %.pn.in = phi i32 [ %i.gs, %cp_expr_sub.exit.i ], [ %i.gw, %bb.bc ]
  %.pn = zext i32 %.pn.in to i64
  %.0.i.i.i = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.pn
  %i.gu = load i32, ptr %.0.i.i.i, align 8, !tbaa !58 ; 3 uses
  %i.gv = icmp slt i32 %i.gu, -1879048192
  %i.gw = and i32 %i.gu, 65535
  br i1 %i.gv, label %bb.bc, label %ctype_raw.exit.i.i, !llvm.loop !3

ctype_raw.exit.i.i:                               ; preds = %bb.bc
  %i.gx = icmp ult i32 %i.gu, 67108864
  br i1 %i.gx, label %cp_expr_kint.exit.i, label %bb.bd

bb.bd:                                            ; preds = %ctype_raw.exit.i.i
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 537) #15, !inline_history !159
  unreachable

cp_expr_kint.exit.i:                              ; preds = %ctype_raw.exit.i.i
  %i.gy = load i32, ptr %3, align 4, !tbaa !17    ; 3 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.be, label %cp_expr_ksize.exit

bb.be:                                            ; preds = %cp_expr_kint.exit.i
  tail call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 3180) #15, !inline_history !160
  unreachable

cp_expr_ksize.exit:                               ; preds = %cp_expr_kint.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store i32 %i.gk, ptr %i.e, align 8, !tbaa !53
  %i.ha = load i32, ptr %i.a, align 4, !tbaa !52
  %.not.i55 = icmp eq i32 %i.ha, 41
  br i1 %.not.i55, label %cp_check.exit56, label %bb.bf

bb.bf:                                            ; preds = %cp_expr_ksize.exit
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

cp_check.exit56:                                  ; preds = %cp_expr_ksize.exit
  %i.hb = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %.not.i47 = icmp eq i32 %i.gy, 0
  %i.hc = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.gy, i1 true)
  %i.hd = shl nuw nsw i32 %i.hc, 16
  %i.he = and i32 %i.hd, 983040
  %i.hf = xor i32 %i.he, 983041
  %i.hg = select i1 %.not.i47, i32 1, i32 %i.hf
  br label %cp_decl_align.exit48

cp_decl_align.exit48:                             ; preds = %bb.ba, %cp_check.exit56
  %.0.i46 = phi i32 [ %i.hg, %cp_check.exit56 ], [ 262145, %bb.ba ]
  %i.hh = load i32, ptr %i.h, align 4, !tbaa !83
  %i.hi = and i32 %i.hh, -983042
  %i.hj = or i32 %i.hi, %.0.i46
  store i32 %i.hj, ptr %i.h, align 4, !tbaa !83
  br label %cp_opt.exit45.thread.backedge

bb.bg:                                            ; preds = %bb.az, %bb.ay
  %i.hk = load i32, ptr %i.a, align 4, !tbaa !52
  %i.hl = icmp eq i32 %i.hk, 40
  br i1 %i.hl, label %cp_opt.exit45, label %cp_opt.exit45.thread.backedge

cp_opt.exit45.thread.backedge:                    ; preds = %bb.bg, %cp_check.exit43, %cp_decl_align.exit48
  br label %cp_opt.exit45.thread, !llvm.loop !161

cp_opt.exit45:                                    ; preds = %bb.bg, %cp_opt.exit45
  %i.hm = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.hn = load i32, ptr %i.a, align 4, !tbaa !52
  switch i32 %i.hn, label %cp_opt.exit45 [
    i32 41, label %cp_check.exit43
    i32 259, label %bb.bh
  ], !llvm.loop !162

bb.bh:                                            ; preds = %cp_opt.exit45
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

cp_check.exit43:                                  ; preds = %cp_opt.exit45
  %i.ho = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  br label %cp_opt.exit45.thread.backedge

bb.bi:                                            ; preds = %cp_opt.exit45.thread
  tail call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 41) #15
  unreachable

bb.bj:                                            ; preds = %bb.b
  %i.hp = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !64
  %6 = trunc i32 %i.hr to i8
  store i8 %6, ptr %i.c, align 1, !tbaa !83
  br label %.backedge

bb.bk:                                            ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cp_decl_struct(ptr noundef initializes((40, 48), (112, 116)) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 268435456, 276824065) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.CPValue, align 4            ; 6 uses
  %4 = alloca %struct.CPDecl, align 8             ; 18 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = tail call fastcc i32 @cp_struct_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52
  %i.g = icmp eq i32 %i.f, 123
  br i1 %i.g, label %cp_opt.exit, label %cp_opt.exit.thread

cp_opt.exit:                                      ; preds = %bb.a
  %i.h = tail call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.i = load i32, ptr %i.e, align 4, !tbaa !52
  %.not64113 = icmp eq i32 %i.i, 125
  br i1 %.not64113, label %cp_check.exit84, label %.lr.ph116

.lr.ph116:                                        ; preds = %cp_opt.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %cp_check.exit
  %.057115 = phi i32 [ 0, %.lr.ph116 ], [ %.us-phi112, %cp_check.exit ]
  %.058114 = phi i32 [ %i.d, %.lr.ph116 ], [ %.us-phi, %cp_check.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.s = call fastcc i32 @cp_decl_spec(ptr noundef nonnull %0, ptr noundef %4, i32 noundef 131072)
  %.fr117 = freeze i32 %i.s                       ; 2 uses
  %.not65 = icmp eq i32 %.fr117, 0
  %i.t = select i1 %.not65, i32 14, i32 4
  store i32 %i.t, ptr %i.j, align 4, !tbaa !82
  %.not66105 = icmp eq i32 %.057115, 0
  br i1 %.not66105, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.u = and i32 %.fr117, 131072
  %.not67 = icmp eq i32 %i.u, 0
  br i1 %.not67, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.p
  %.159106.us = phi i32 [ %i.x, %bb.p ], [ %.058114, %.lr.ph ]
  store i32 -1, ptr %i.k, align 4, !tbaa !86
  call fastcc void @cp_declarator(ptr noundef nonnull %0, ptr noundef %4)
  %i.v = call fastcc i32 @cp_decl_intern(ptr noundef nonnull %0, ptr noundef %4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.x = call i32 @lj_ctype_new(ptr noundef %i.w, ptr noundef nonnull %i.c) #14 ; 3 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %.pn96.in.us = phi i32 [ %i.v, %.lr.ph.split.us ], [ %i.ac, %bb.c ]
  %.pn96.us = zext i32 %.pn96.in.us to i64
  %.0.i.us = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.pn96.us ; 4 uses
  %i.aa = load i32, ptr %.0.i.us, align 8, !tbaa !58 ; 6 uses
  %i.ab = icmp slt i32 %i.aa, -1879048192
  %i.ac = and i32 %i.aa, 65535
  br i1 %i.ab, label %bb.c, label %ctype_raw.exit.us, !llvm.loop !3

ctype_raw.exit.us:                                ; preds = %bb.c
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !86  ; 4 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.h, label %bb.d

bb.d:                                             ; preds = %ctype_raw.exit.us
  %i.af = and i32 %i.aa, -201326592
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %.split.us

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp eq i32 %i.ad, 0
  %i.ai = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.aj = icmp ne ptr %i.ai, null
  %or.cond.us = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !64
  %i.am = shl i32 %i.al, 3                        ; 2 uses
  %i.an = icmp ugt i32 %i.am, 32
  br i1 %i.an, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not68.us = icmp samesign ult i32 %i.aa, 134217728
  %spec.select77.us = select i1 %.not68.us, i32 %i.am, i32 1
  %i.ao = icmp ugt i32 %i.ad, %spec.select77.us
  br i1 %i.ao, label %.split.us, label %bb.k

bb.h:                                             ; preds = %ctype_raw.exit.us
  %.mask.us = and i32 %i.aa, -268435456           ; 2 uses
  %i.ap = icmp eq i32 %.mask.us, 805306368
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !64
  %i.as = icmp eq i32 %i.ar, -1
  %spec.select.us = zext i1 %i.as to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.us = phi i32 [ 0, %bb.h ], [ %spec.select.us, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !62  ; 2 uses
  %.not69.us = icmp eq ptr %i.at, null
  br i1 %.not69.us, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.au = phi ptr [ %i.at, %bb.j ], [ %i.ai, %bb.g ] ; 3 uses
  %.3.us = phi i32 [ %.2.us, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %.056.us = phi i32 [ 127, %bb.j ], [ %i.ad, %bb.g ]
  %i.av = shl nuw nsw i32 %.056.us, 16
  %i.aw = add i32 %i.v, -1879048192
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !63  ; 3 uses
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !58
  %i.az = load i32, ptr %i.o, align 4, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !64
  %.not74.us = icmp eq ptr %i.au, null
  br i1 %.not74.us, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !67
  %i.bd = or i8 %i.bc, 32
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !67
  %i.be = ptrtoint ptr %i.au to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !68
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.bg = and i32 %i.aa, -267386880
  %or.cond76.us = icmp eq i32 %i.bg, 268435456
  %i.bh = icmp eq i32 %.mask.us, 1342177280
  %or.cond95.us = or i1 %or.cond76.us, %i.bh
  br i1 %or.cond95.us, label %bb.n, label %.split109.us

bb.n:                                             ; preds = %bb.m
  %i.bi = add i32 %i.v, -2147287040
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !58
  %i.bk = load i32, ptr %.0.i.us, align 8, !tbaa !58
  %.mask73.us = and i32 %i.bk, -268435456
  %i.bl = icmp eq i32 %.mask73.us, 268435456
  %i.bm = load i32, ptr %i.o, align 4
  %i.bn = or i32 %i.bm, -2147483648
  %i.bo = select i1 %i.bl, i32 %i.bn, i32 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %.4.us = phi i32 [ %.3.us, %bb.l ], [ %.3.us, %bb.k ], [ %.2.us, %bb.n ] ; 2 uses
  %i.bq = trunc i32 %i.x to i16
  %i.br = zext i32 %.159106.us to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i16 %i.bq, ptr %i.bt, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.bu = load i32, ptr %i.e, align 4, !tbaa !52  ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 44
  br i1 %i.bv, label %bb.p, label %.split111.us

bb.p:                                             ; preds = %bb.o
  %i.bw = call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.bx = load i32, ptr %i.p, align 8, !tbaa !69  ; 3 uses
  store i32 %i.bx, ptr %i.q, align 4, !tbaa !70
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %4, align 8, !tbaa !71
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 74
  store i16 0, ptr %i.cb, align 2, !tbaa !72
  %i.cc = load <2 x i32>, ptr %i.r, align 4, !tbaa !35
  store <2 x i32> %i.cc, ptr %i.o, align 4, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %.not66.us = icmp eq i32 %.4.us, 0
  br i1 %.not66.us, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.p
  call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 125) #15
  unreachable

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.w
  %.159106 = phi i32 [ %i.cw, %bb.w ], [ %.058114, %.lr.ph ]
end_hunk_0
