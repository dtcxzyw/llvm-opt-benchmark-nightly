Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.02?download=true
inline.NumInlined: 6791
inline.NumDeleted: 2228
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern6internINtB3M_8InternedB1A_E6new_gc0NCB3J_s_0E0B1G_:bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val17.i.i.i = load ptr, ptr %i.gn, align 8, !alias.scope !13197, !nonnull !140, !noundef !140
  %.val18.i.i.i = load ptr, ptr %i.gm, align 8, !alias.scope !13198, !nonnull !140, !noundef !140
  %i.go = icmp eq ptr %.val17.i.i.i, %.val18.i.i.i
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.as:                                            ; preds = %bb.b
  %i.gp = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gr = load <2 x i32>, ptr %i.gp, align 8, !alias.scope !13197
  %i.gs = load <2 x i32>, ptr %i.gq, align 8, !alias.scope !13198
  %i.gt = icmp eq <2 x i32> %i.gr, %i.gs          ; 2 uses
  %i.gu = extractelement <2 x i1> %i.gt, i64 0
  %i.gv = extractelement <2 x i1> %i.gt, i64 1
  %.sroa.0.0.i.i84.i.i.i = select i1 %i.gv, i1 %i.gu, i1 false
  br i1 %.sroa.0.0.i.i84.i.i.i, label %bb.at, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.at:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val15.i.i.i = load ptr, ptr %i.gx, align 8, !alias.scope !13197, !nonnull !140, !noundef !140
  %.val16.i.i.i = load ptr, ptr %i.gw, align 8, !alias.scope !13198, !nonnull !140, !noundef !140
  %i.gy = icmp eq ptr %.val15.i.i.i, %.val16.i.i.i
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.au:                                            ; preds = %bb.b
  %i.gz = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val55.i.i.i = load ptr, ptr %i.gz, align 8, !alias.scope !13197, !nonnull !140, !noundef !140
  %.val56.i.i.i = load ptr, ptr %i.ha, align 8, !alias.scope !13198, !nonnull !140, !noundef !140
  %i.hb = icmp eq ptr %.val55.i.i.i, %.val56.i.i.i
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.av:                                            ; preds = %bb.b
  %i.hc = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !13197, !nonnull !140, !noundef !140
  %.val14.i.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !13198, !nonnull !140, !noundef !140
  %i.he = icmp eq ptr %.val.i.i.i, %.val14.i.i.i
  br i1 %i.he, label %bb.aw, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.aw:                                            ; preds = %bb.av
  %i.hf = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13212)
  %i.hh = load i32, ptr %i.hg, align 8, !range !13213, !alias.scope !13214, !noundef !140
  %i.hi = load i32, ptr %i.hf, align 8, !range !13213, !alias.scope !13215, !noundef !140
  %i.hj = icmp eq i32 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ax, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hk = getelementptr inbounds nuw i8, ptr %.val2, i64 28
  %i.hl = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.hm = load <2 x i32>, ptr %i.hk, align 4, !alias.scope !13214
  %i.hn = load <2 x i32>, ptr %i.hl, align 4, !alias.scope !13215
  %i.ho = icmp eq <2 x i32> %i.hm, %i.hn          ; 2 uses
  %i.hp = extractelement <2 x i1> %i.ho, i64 0
  %i.hq = extractelement <2 x i1> %i.ho, i64 1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.hq, i1 %i.hp, i1 false
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.ay:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13217)
  %i.hr = getelementptr inbounds nuw i8, ptr %.val2, i64 28
  %i.hs = load i32, ptr %i.hr, align 4, !alias.scope !13218, !noundef !140
  %i.ht = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.hu = load i32, ptr %i.ht, align 4, !alias.scope !13219, !noundef !140
  %i.hv = icmp eq i32 %i.hs, %i.hu
  br i1 %i.hv, label %bb.az, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.az:                                            ; preds = %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.val2, i64 12
  %i.hy = tail call fastcc noundef zeroext i1 @_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.hx, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.hw) #51
  br i1 %i.hy, label %bb.ba, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.ba:                                            ; preds = %bb.az
  %i.hz = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ia = load i32, ptr %i.hz, align 8, !alias.scope !13218, !noundef !140
  %i.ib = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ic = load i32, ptr %i.ib, align 8, !alias.scope !13219, !noundef !140
  %i.id = icmp eq i32 %i.ia, %i.ic
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bb:                                            ; preds = %bb.b
  %i.ie = getelementptr inbounds nuw i8, ptr %.val2, i64 12
  %i.if = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ig = icmp eq i32 %i.i, %i.m
  br i1 %i.ig, label %bb.bc, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ih = and i32 %i.i, 1
  %or.cond.not.i.i.i = icmp eq i32 %i.ih, 0
  br i1 %or.cond.not.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ii = load i32, ptr %i.ie, align 4, !alias.scope !13197, !noundef !140
  %i.ij = load i32, ptr %i.if, align 4, !alias.scope !13198, !noundef !140
  %i.ik = icmp eq i32 %i.ii, %i.ij
  br i1 %i.ik, label %bb.be, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.il = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.in = load i32, ptr %i.im, align 8, !alias.scope !13197, !noundef !140
  %i.io = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.iq = load i32, ptr %i.ip, align 8, !alias.scope !13198, !noundef !140
  %i.ir = icmp eq i32 %i.in, %i.iq
  br i1 %i.ir, label %bb.bf, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bf:                                            ; preds = %bb.be
  %i.is = load i32, ptr %i.il, align 8, !range !176, !alias.scope !13197, !noundef !140
  %i.it = icmp ne i32 %i.is, -1                   ; 2 uses
  %i.iu = load i32, ptr %i.io, align 8, !range !176, !alias.scope !13198, !noundef !140
  %i.iv = icmp ne i32 %i.iu, -1                   ; 2 uses
  %i.iw = xor i1 %i.it, %i.iv
  br i1 %i.iw, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %brmerge.demorgan.i.i.i = and i1 %i.it, %i.iv
  br i1 %brmerge.demorgan.i.i.i, label %bb.bh, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ix = tail call fastcc noundef zeroext i1 @_RNvXsG_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB5_11SolverDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.il, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.io) #51
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bi:                                            ; preds = %bb.b
  %i.iy = getelementptr inbounds nuw i8, ptr %.val2, i64 12 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !alias.scope !13197, !noundef !140
  %i.jb = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.jd = load i32, ptr %i.jc, align 8, !alias.scope !13198, !noundef !140
  %i.je = icmp eq i32 %i.ja, %i.jd
  br i1 %i.je, label %bb.bj, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bj:                                            ; preds = %bb.bi
  %i.jf = getelementptr inbounds nuw i8, ptr %.val2, i64 28
  %i.jg = load i32, ptr %i.jf, align 4, !alias.scope !13197, !noundef !140
  %i.jh = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.ji = load i32, ptr %i.jh, align 4, !alias.scope !13198, !noundef !140
  %i.jj = icmp eq i32 %i.jg, %i.ji
  br i1 %i.jj, label %bb.bk, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jk = load i32, ptr %i.iy, align 4, !range !176, !alias.scope !13197, !noundef !140
  %i.jl = icmp ne i32 %i.jk, -1                   ; 2 uses
  %i.jm = load i32, ptr %i.jb, align 4, !range !176, !alias.scope !13198, !noundef !140
  %i.jn = icmp ne i32 %i.jm, -1                   ; 2 uses
  %i.jo = xor i1 %i.jl, %i.jn
  br i1 %i.jo, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %brmerge13.demorgan.i.i.i = and i1 %i.jl, %i.jn
  br i1 %brmerge13.demorgan.i.i.i, label %bb.bm, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bm:                                            ; preds = %bb.bl
  %i.jp = tail call fastcc noundef zeroext i1 @_RNvXsG_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB5_11SolverDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.iy, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.jb) #51
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

bb.bn:                                            ; preds = %bb.b
  %i.jq = getelementptr inbounds nuw i8, ptr %.val2, i64 12
  %i.jr = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.js = load <2 x i32>, ptr %i.jq, align 4, !alias.scope !13197
  %i.jt = load <2 x i32>, ptr %i.jr, align 4, !alias.scope !13198
  %i.ju = icmp eq <2 x i32> %i.js, %i.jt          ; 2 uses
  %i.jv = extractelement <2 x i1> %i.ju, i64 0
  %i.jw = extractelement <2 x i1> %i.ju, i64 1
  %spec.select.i.i.i.i = select i1 %i.jv, i1 %i.jw, i1 false
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit

_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gc0BT_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %.split.i.i, %bb.l, %.split4.i.i, %bb.m, %_RNvXs20_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_6AdtDefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %.split6.i.i, %.split7.i.i, %_RNvXs5J_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_17CallableIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.sroa.0.0.i.i.i = phi i1 [ false, %bb.a ], [ %i.v, %bb.c ], [ %i.aa, %bb.d ], [ %i.af, %bb.e ], [ %i.bw, %bb.n ], [ true, %bb.b ], [ %.sroa.0.0.i.i.i.i.i, %bb.o ], [ %i.cj, %bb.q ], [ false, %_RNvXs20_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_6AdtDefNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i ], [ %i.cp, %bb.s ], [ false, %bb.p ], [ %i.cs, %bb.t ], [ %i.da, %bb.v ], [ false, %bb.r ], [ %i.dl, %bb.y ], [ false, %bb.u ], [ %i.en, %bb.ae ], [ false, %bb.w ], [ %i.ey, %bb.ah ], [ false, %_RNvXs5J_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_17CallableIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i ], [ %i.fe, %bb.aj ], [ false, %bb.ag ], [ %i.fk, %bb.al ], [ false, %bb.ai ], [ %i.fu, %bb.an ], [ false, %bb.ak ], [ %i.ge, %bb.ap ], [ false, %bb.am ], [ %i.go, %bb.ar ], [ false, %bb.ao ], [ %i.gy, %bb.at ], [ false, %bb.aq ], [ %i.hb, %bb.au ], [ true, %bb.bl ], [ false, %bb.as ], [ false, %bb.aw ], [ %i.ix, %bb.bh ], [ false, %bb.bf ], [ false, %bb.be ], [ false, %bb.bd ], [ false, %bb.av ], [ false, %bb.bi ], [ true, %bb.bg ], [ %spec.select.i.i.i.i, %bb.bn ], [ false, %bb.az ], [ false, %bb.ay ], [ %i.id, %bb.ba ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ax ], [ false, %bb.bj ], [ false, %bb.bk ], [ %i.jp, %bb.bm ], [ false, %bb.bb ], [ false, %bb.af ], [ false, %bb.x ], [ false, %.split7.i.i ], [ false, %.split.i.i ], [ false, %.split4.i.i ], [ false, %bb.m ], [ false, %.split6.i.i ], [ false, %bb.f ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.z ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.ad ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern6internINtB40_8InternedB1A_E6new_gc0NCB3X_s_0E0B1G_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #12 !guid !13244 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !140, !align !141, !noundef !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !140, !align !141, !noundef !140
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !140, !noundef !140
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !140, !align !141, !noundef !140 ; 33 uses
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !140, !noundef !140 ; 33 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13250)
  %i.i = load i64, ptr %i.h, align 8, !range !13251, !alias.scope !13252, !noundef !140 ; 3 uses
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 8) ; 2 uses
  %i.k = load i64, ptr %.val, align 8, !range !13251, !alias.scope !13253, !noundef !140 ; 3 uses
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 8)
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %.split17.i.i.i
    i64 2, label %bb.o
    i64 3, label %bb.q
    i64 4, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.u
    i64 5, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i
  ]

default.unreachable:                              ; preds = %bb.e, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i64 %i.k, 9
  br i1 %i.n, label %bb.d, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13255)
  %i.o = icmp eq i64 %i.i, %i.k
  br i1 %i.o, label %bb.e, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.e:                                             ; preds = %bb.d
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %.split6.i.i.i.a
    i64 6, label %.split.i.i.i
    i64 7, label %bb.m
    i64 8, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13257)
  %i.r = load <2 x i32>, ptr %i.p, align 8, !alias.scope !13258
  %i.s = load <2 x i32>, ptr %i.q, align 8, !alias.scope !13259
  %i.t = icmp eq <2 x i32> %i.r, %i.s             ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 0
  %i.v = extractelement <2 x i1> %i.t, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.u, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !13258, !nonnull !140, !noundef !140
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !13259, !nonnull !140, !noundef !140
  %i.y = icmp eq ptr %.val4.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  br i1 %i.y, label %.split13.i.i.i.a, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split13.i.i.i.a:                                 ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !range !143, !alias.scope !13258, !noundef !140
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !range !143, !alias.scope !13259, !noundef !140
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val6.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %i.ag = icmp eq ptr %.val5.i.i.i.i.i, %.val6.i.i.i.i.i
  br i1 %i.ag, label %.split7.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.i:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val10.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %i.aj = icmp eq ptr %.val9.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.aj, label %.split15.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.j:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13263)
  %i.am = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val.i17.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !13264, !nonnull !140, !noundef !140
  %.val1.i18.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !13265, !nonnull !140, !noundef !140
  %i.ao = icmp eq ptr %.val.i17.i.i.i.i.i, %.val1.i18.i.i.i.i.i
  br i1 %i.ao, label %bb.k, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.aq, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ap) #51
  br i1 %i.ar, label %.split8.i.i.i.a, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split8.i.i.i.a:                                  ; preds = %bb.k
  %.val2.i20.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !13264, !nonnull !140, !noundef !140
  %.val3.i21.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !13265, !nonnull !140, !noundef !140
  %i.as = icmp eq ptr %.val2.i20.i.i.i.i.i, %.val3.i21.i.i.i.i.i
  br i1 %i.as, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.l:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val15.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val16.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %i.av = icmp eq ptr %.val15.i.i.i.i.i, %.val16.i.i.i.i.i
  br i1 %i.av, label %.split11.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split6.i.i.i.a:                                  ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val11.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val12.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %i.ay = icmp eq ptr %.val11.i.i.i.i.i, %.val12.i.i.i.i.i
  br i1 %i.ay, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split.i.i.i:                                     ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val13.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val14.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %i.bb = icmp eq ptr %.val13.i.i.i.i.i, %.val14.i.i.i.i.i
  br i1 %i.bb, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.m:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13267)
  %i.be = load <2 x i32>, ptr %i.bc, align 8, !alias.scope !13268
  %i.bf = load <2 x i32>, ptr %i.bd, align 8, !alias.scope !13269
  %i.bg = icmp eq <2 x i32> %i.be, %i.bf          ; 2 uses
  %i.bh = extractelement <2 x i1> %i.bg, i64 0
  %i.bi = extractelement <2 x i1> %i.bg, i64 1
  %.sroa.0.0.i.i.i26.i.i.i.i.i = select i1 %i.bi, i1 %i.bh, i1 false
  br i1 %.sroa.0.0.i.i.i26.i.i.i.i.i, label %bb.n, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val4.i28.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !13268, !nonnull !140, !noundef !140
  %.val5.i29.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !13269, !nonnull !140, !noundef !140
  %i.bl = icmp eq ptr %.val4.i28.i.i.i.i.i, %.val5.i29.i.i.i.i.i
  br i1 %i.bl, label %.split10.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split10.i.i.i:                                   ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !range !143, !alias.scope !13268, !noundef !140
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bp = load i8, ptr %i.bo, align 8, !range !143, !alias.scope !13269, !noundef !140
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br i1 %i.bq, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split7.i.i.i:                                    ; preds = %bb.h
  %2 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val3.i.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val4.i.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %4 = icmp eq ptr %.val3.i.i.i.i.i, %.val4.i.i.i.i.i
  br i1 %4, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split15.i.i.i:                                   ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val.i.i.i.i.i.a = load ptr, ptr %i.bs, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val2.i.i.i.i.i.a = load ptr, ptr %i.br, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %i.bt = icmp eq ptr %.val.i.i.i.i.i.a, %.val2.i.i.i.i.i.a
  br i1 %i.bt, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split11.i.i.i:                                   ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val7.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !13260, !nonnull !140, !noundef !140
  %.val8.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !13261, !nonnull !140, !noundef !140
  %i.bw = icmp eq ptr %.val7.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %i.bw, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split17.i.i.i:                                   ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bz = load <2 x i32>, ptr %i.bx, align 8, !alias.scope !13252
  %i.ca = load <2 x i32>, ptr %i.by, align 8, !alias.scope !13253
  %i.cb = icmp eq <2 x i32> %i.bz, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = extractelement <2 x i1> %i.cb, i64 1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.cd, i1 %i.cc, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.o:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.ch = load i8, ptr %i.cg, align 8, !range !143, !alias.scope !13252, !noundef !140
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cj = load i8, ptr %i.ci, align 8, !range !143, !alias.scope !13253, !noundef !140
  %i.ck = icmp eq i8 %i.ch, %i.cj
  br i1 %i.ck, label %bb.p, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %.val11.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val12.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.cn = icmp eq ptr %.val11.i.i.i.i, %.val12.i.i.i.i
  br i1 %i.cn, label %.split16.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split16.i.i.i:                                   ; preds = %bb.p
  %.val9.i.i.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val10.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.co = icmp eq ptr %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.co, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.q:                                             ; preds = %bb.b
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val7.i.i.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val8.i.i.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.cr = icmp eq ptr %.val7.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.cr, label %.split14.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split14.i.i.i:                                   ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val5.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val6.i.i.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.cu = icmp eq ptr %.val5.i.i.i.i, %.val6.i.i.i.i
  br i1 %i.cu, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.r:                                             ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val19.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val20.i.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.cx = icmp eq ptr %.val19.i.i.i.i, %.val20.i.i.i.i
  br i1 %i.cx, label %.split12.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split12.i.i.i:                                   ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val17.i.i.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val18.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.da = icmp eq ptr %.val17.i.i.i.i, %.val18.i.i.i.i
  br i1 %i.da, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.s:                                             ; preds = %bb.b
  %i.db = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13271)
  %i.dd = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val.i21.i.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !13272, !nonnull !140, !noundef !140
  %.val1.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !13273, !nonnull !140, !noundef !140
  %i.df = icmp eq ptr %.val.i21.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.df, label %bb.t, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.di = tail call fastcc noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.dh, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.dg) #51
  br i1 %i.di, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.u:                                             ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val15.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val16.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.dl = icmp eq ptr %.val15.i.i.i.i, %.val16.i.i.i.i
  br i1 %i.dl, label %bb.v, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val13.i.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !13252, !nonnull !140, !noundef !140
  %.val14.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !13253, !nonnull !140, !noundef !140
  %i.do = icmp eq ptr %.val13.i.i.i.i, %.val14.i.i.i.i
  br i1 %i.do, label %.split9.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

.split9.i.i.i:                                    ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.dq = load i8, ptr %i.dp, align 8, !range !143, !alias.scope !13252, !noundef !140
  %i.dr = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ds = load i8, ptr %i.dr, align 8, !range !143, !alias.scope !13253, !noundef !140
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i.i.i: ; preds = %bb.t
  %.val2.i22.i.i.i.i.a = load ptr, ptr %i.dd, align 8, !alias.scope !13272, !nonnull !140, !noundef !140
  %.val3.i23.i.i.i.i.a = load ptr, ptr %i.de, align 8, !alias.scope !13273, !nonnull !140, !noundef !140
  %i.du = icmp eq ptr %.val2.i22.i.i.i.i.a, %.val3.i23.i.i.i.i.a
  br i1 %i.du, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i, label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i: ; preds = %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i.i.i, %.split9.i.i.i, %.split12.i.i.i, %.split14.i.i.i, %.split16.i.i.i, %.split17.i.i.i, %.split11.i.i.i, %.split15.i.i.i, %.split7.i.i.i, %.split10.i.i.i, %.split.i.i.i, %.split6.i.i.i.a, %.split8.i.i.i.a, %.split13.i.i.i.a, %bb.e, %bb.c, %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2, i64 48
  %.val.i.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !13274, !nonnull !140, !noundef !140
  %.val1.i.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !13275, !nonnull !140, !noundef !140
  %i.dx = icmp eq ptr %.val.i.i.i, %.val1.i.i.i
  br label %_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit

_RNCNvMNtCs39E2wp1vf7X_6intern6internINtB4_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedE6new_gc0BT_.exit: ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %.split13.i.i.i.a, %bb.h, %bb.i, %bb.j, %bb.k, %.split8.i.i.i.a, %bb.l, %.split6.i.i.i.a, %.split.i.i.i, %bb.m, %bb.n, %.split10.i.i.i, %.split7.i.i.i, %.split15.i.i.i, %.split11.i.i.i, %.split17.i.i.i, %bb.o, %bb.p, %.split16.i.i.i, %bb.q, %.split14.i.i.i, %bb.r, %.split12.i.i.i, %bb.s, %bb.t, %bb.u, %bb.v, %.split9.i.i.i, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i.i.i, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %i.dx, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i.i.i ], [ false, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i.i.i ], [ false, %.split17.i.i.i ], [ false, %.split.i.i.i ], [ false, %.split6.i.i.i.a ], [ false, %.split7.i.i.i ], [ false, %.split8.i.i.i.a ], [ false, %.split9.i.i.i ], [ false, %.split10.i.i.i ], [ false, %.split11.i.i.i ], [ false, %.split12.i.i.i ], [ false, %.split13.i.i.i.a ], [ false, %.split14.i.i.i ], [ false, %.split15.i.i.i ], [ false, %.split16.i.i.i ], [ false, %bb.u ], [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.p ], [ false, %bb.v ], [ false, %bb.l ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNCINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical43compute_query_response_instantiation_valuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1M_8interner10DbInternerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve8ResponseB2I_EE0B1O_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dead_on_return dereferenceable(28) %3) unnamed_addr #6 !guid !13278 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i32, ptr %3, align 4, !range !171, !noundef !140 ; 3 uses
  switch i32 %i.b, label %default.unreachable11 [
    i32 0, label %bb.c
    i32 7, label %bb.c
    i32 6, label %bb.c
    i32 3, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.f
  ]

default.unreachable11:                            ; preds = %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.sink = phi i64 [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 24, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %.sink
  %.sroa.01.0 = load i32, ptr %i.c, align 4, !noundef !140
  %.not = icmp eq i32 %.sroa.01.0, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  switch i32 %i.b, label %default.unreachable11 [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.f
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !nonnull !140, !align !141, !noundef !140
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !140, !align !150, !noundef !140 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !range !139, !noundef !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !140, !align !150, !noundef !140
  %i.l = tail call noundef nonnull ptr @_RINvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solverNtB6_13SolverContextNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver8delegate14SolverDelegate25instantiate_canonical_varNCNCINvNtB1d_9canonical43compute_query_response_instantiation_valuesBP_NtNtB8_8interner10DbInternerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve8ResponseB3V_EE00EBa_(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(28) %3, i32 noundef %i.g, i32 %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k)
  br label %bb.q

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !140, !align !141, !noundef !140 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !140, !noundef !140
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !140 ; 2 uses
  %i.s = icmp samesign ult i64 %2, 4294967041
  br i1 %i.s, label %bb.k, label %bb.j, !prof !147

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13279)
  switch i32 %i.b, label %default.unreachable4.i [
    i32 7, label %bb.i
    i32 6, label %bb.h
    i32 5, label %_RNvMs3_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_placeholder_indexB1k_.exit
    i32 3, label %_RNvMs3_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_placeholder_indexB1k_.exit
    i32 4, label %bb.h
  ], !prof !177

default.unreachable4.i:                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13279
  store ptr %3, ptr %i.a, align 8, !noalias !13279
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsm_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1k_, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !13279
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @229, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #47
  unreachable

bb.i:                                             ; preds = %bb.g
  br label %_RNvMs3_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_placeholder_indexB1k_.exit

_RNvMs3_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_placeholder_indexB1k_.exit: ; preds = %bb.g, %bb.g, %bb.i
  %.sink.i = phi i64 [ 8, %bb.i ], [ 20, %bb.g ], [ 20, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %.sink.i
  %.sroa.0.0.in.i = load i32, ptr %i.t, align 4, !alias.scope !13279, !noundef !140
  %.sroa.0.0.i = zext i32 %.sroa.0.0.in.i to i64  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !140 ; 2 uses
  %i.w = icmp ugt i64 %i.v, %.sroa.0.0.i
  br i1 %i.w, label %bb.o, label %bb.p

bb.j:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #47
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %2, %i.r
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %2
  %i.z = load ptr, ptr %i.y, align 8, !noundef !140 ; 2 uses
  %.not7 = icmp eq ptr %i.z, null
  br i1 %.not7, label %bb.n, label %bb.q

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #47
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %0, align 8, !nonnull !140, !align !141, !noundef !140
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !140, !align !150, !noundef !140 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !range !139, !noundef !140
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !140, !align !150, !noundef !140
  %i.ai = tail call noundef nonnull ptr @_RINvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solverNtB6_13SolverContextNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver8delegate14SolverDelegate25instantiate_canonical_varNCNCINvNtB1d_9canonical43compute_query_response_instantiation_valuesBP_NtNtB8_8interner10DbInternerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve8ResponseB3V_EE0s_0EBa_(ptr noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(28) %3, i32 noundef %i.ad, i32 %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ah)
  br label %bb.q

bb.o:                                             ; preds = %_RNvMs3_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_placeholder_indexB1k_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !140, !align !141, !noundef !140
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.0.0.i
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !140, !noundef !140
  br label %bb.q

bb.p:                                             ; preds = %_RNvMs3_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_placeholder_indexB1k_.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #47
  unreachable

bb.q:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.e
  %.sroa.0.0 = phi ptr [ %i.l, %bb.e ], [ %i.am, %bb.o ], [ %i.ai, %bb.n ], [ %i.z, %bb.l ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNCINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical43compute_query_response_instantiation_valuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1M_8interner10DbInternerINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve7inspect5StateB2I_INtB3g_4GoalB2I_NtNtB1M_9predicate9PredicateEEE0B1O_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dead_on_return dereferenceable(28) %3) unnamed_addr #6 !guid !13282 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i32, ptr %3, align 4, !range !171, !noundef !140 ; 3 uses
  switch i32 %i.b, label %default.unreachable11 [
    i32 0, label %bb.c
    i32 7, label %bb.c
    i32 6, label %bb.c
    i32 3, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.f
  ]

default.unreachable11:                            ; preds = %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.sink = phi i64 [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 24, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %.sink
  %.sroa.01.0 = load i32, ptr %i.c, align 4, !noundef !140
  %.not = icmp eq i32 %.sroa.01.0, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  switch i32 %i.b, label %default.unreachable11 [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.f
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !nonnull !140, !align !141, !noundef !140
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !140, !align !150, !noundef !140 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !range !139, !noundef !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !140, !align !150, !noundef !140
  %i.l = tail call noundef nonnull ptr @_RINvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solverNtB6_13SolverContextNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver8delegate14SolverDelegate25instantiate_canonical_varNCNCINvNtB1d_9canonical43compute_query_response_instantiation_valuesBP_NtNtB8_8interner10DbInternerINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve7inspect5StateB3V_INtB4s_4GoalB3V_NtNtB8_9predicate9PredicateEEE00EBa_(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(28) %3, i32 noundef %i.g, i32 %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k)
  br label %bb.q

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
end_hunk_0
