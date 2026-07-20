inline.NumInlined: 3791
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6hermes2vm7Runtime21initPredefinedStringsEv:.preheader39.preheader
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !19
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bq, %i.by            ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 9 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !19
  %i.ce = zext i8 %i.cd to i64
  %i.cf = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.cb, i64 %i.ce) #29 ; 0 uses
  %i.cg = load i8, ptr %i.cc, align 1, !tbaa !19
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.bz, %i.ch            ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 10 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.cn = zext i8 %i.cm to i64
  %i.co = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ck, i64 %i.cn) #29 ; 0 uses
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.ci, %i.cq            ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 11 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cw = zext i8 %i.cv to i64
  %i.cx = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ct, i64 %i.cw) #29 ; 0 uses
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cr, %i.cz            ; 2 uses
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 12 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !19
  %i.df = zext i8 %i.de to i64
  %i.dg = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.dc, i64 %i.df) #29 ; 0 uses
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !19
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nuw nsw i32 %i.da, %i.di            ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 13 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !19
  %i.do = zext i8 %i.dn to i64
  %i.dp = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.dl, i64 %i.do) #29 ; 0 uses
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !19
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dj, %i.dr
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader39.preheader, %.preheader39
  %indvars.iv = phi i64 [ 0, %.preheader39.preheader ], [ %indvars.iv.next, %.preheader39 ] ; 3 uses
  %.143 = phi i32 [ %i.ds, %.preheader39.preheader ], [ %i.ed, %.preheader39 ] ; 2 uses
  %i.dt = zext i32 %.143 to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload, i64 %indvars.iv ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6hermes2vm7Runtime21initPredefinedStringsEvE6hashes, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = tail call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.du, i64 %i.dx, i32 noundef %i.dz) #29 ; 0 uses
  %i.eb = load i8, ptr %i.dv, align 1, !tbaa !19
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add i32 %.143, %i.ec                    ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 546
  br i1 %exitcond.not, label %.preheader.preheader, label %.preheader39, !llvm.loop !462

.preheader.preheader:                             ; preds = %.preheader39
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.ee
  %i.eg = load i8, ptr %.sroa.028.0.copyload, align 1, !tbaa !19
  %i.eh = zext i8 %i.eg to i64
  %i.ei = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ef, i64 %i.eh) #29 ; 0 uses
  %i.ej = load i8, ptr %.sroa.028.0.copyload, align 1, !tbaa !19
  %i.ek = zext i8 %i.ej to i32
  %i.el = add i32 %i.ed, %i.ek                    ; 2 uses
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 1 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !19
  %i.eq = zext i8 %i.ep to i64
  %i.er = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.en, i64 %i.eq) #29 ; 0 uses
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !19
  %i.et = zext i8 %i.es to i32
  %i.eu = add i32 %i.el, %i.et                    ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 2 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !19
  %i.ez = zext i8 %i.ey to i64
  %i.fa = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ew, i64 %i.ez) #29 ; 0 uses
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !19
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add i32 %i.eu, %i.fc                    ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 3 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !19
  %i.fi = zext i8 %i.fh to i64
  %i.fj = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ff, i64 %i.fi) #29 ; 0 uses
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !19
  %i.fl = zext i8 %i.fk to i32
  %i.fm = add i32 %i.fd, %i.fl                    ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 4 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !19
  %i.fr = zext i8 %i.fq to i64
  %i.fs = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.fo, i64 %i.fr) #29 ; 0 uses
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !19
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add i32 %i.fm, %i.fu                    ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 5 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.ga = zext i8 %i.fz to i64
  %i.gb = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.fx, i64 %i.ga) #29 ; 0 uses
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add i32 %i.fv, %i.gd                    ; 2 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 6 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gj = zext i8 %i.gi to i64
  %i.gk = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gg, i64 %i.gj) #29 ; 0 uses
  %i.gl = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add i32 %i.ge, %i.gm                    ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 7 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !19
  %i.gs = zext i8 %i.gr to i64
  %i.gt = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gp, i64 %i.gs) #29 ; 0 uses
  %i.gu = load i8, ptr %i.gq, align 1, !tbaa !19
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add i32 %i.gn, %i.gv                    ; 2 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 8 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !19
  %i.hb = zext i8 %i.ha to i64
  %i.hc = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gy, i64 %i.hb) #29 ; 0 uses
  %i.hd = load i8, ptr %i.gz, align 1, !tbaa !19
  %i.he = zext i8 %i.hd to i32
  %i.hf = add i32 %i.gw, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 9
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !19
  %i.hk = zext i8 %i.hj to i64
  %i.hl = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.hh, i64 %i.hk) #29 ; 0 uses
  ret void
}

declare ptr @_ZN6hermes2vm6Domain6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule19createUninitializedERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS0_18RuntimeModuleFlagsEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime20initCharacterStringsEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %0, ptr %1, align 8, !tbaa !422
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  store ptr %i.c, ptr %i.a, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !115
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %1, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9568 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9584 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !463
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !464  ; 7 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 2048
  br i1 %i.s, label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9576 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !465  ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.q
  %i.x = call noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #31 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.u
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i
  %i.y = ptrtoaddr ptr %i.x to i64
  %2 = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %2, %i.q
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 72
  %i.ad = sub i64 %i.q, %i.y
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.o, i64 %i.ah ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.ai = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !alias.scope !469, !noalias !466
  %wide.load19 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !469, !noalias !466
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !466, !noalias !469
  store <2 x i64> %wide.load19, ptr %i.aj, align 8, !alias.scope !466, !noalias !469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader41

.lr.ph.i.i.i.i.preheader41:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader41, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !469, !noalias !466
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !alias.scope !466, !noalias !469
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !472

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #30
  br label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.x, ptr %i.l, align 8, !tbaa !464
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store ptr %i.ao, ptr %i.t, align 8, !tbaa !465
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 2048
  store ptr %i.ap, ptr %i.m, align 8, !tbaa !463
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9576 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit
  %.010 = phi i16 [ 0, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit ], [ %i.ce, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !419
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %i.at, ptr %i.j, align 8, !tbaa !110
  store ptr %i.e, ptr %i.i, align 8, !tbaa !100
  %i.au = call ptr @_ZN6hermes2vm7Runtime23allocateCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %0, i16 noundef zeroext %.010)
  %.sroa.0.0.copyload.i = load i64, ptr %i.au, align 8, !tbaa !18 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !465 ; 5 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !463
  %.not.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !465
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !465
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !464 ; 7 uses
  %i.ba = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.g, label %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #31 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i64 %.sroa.0.0.copyload.i, ptr %i.bl, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = ptrtoaddr ptr %i.bk to i64
  %i.bn = sub i64 %i.ba, %i.bb
  %i.bo = add i64 %i.bn, -8                       ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.bo, 24
  %i.br = sub i64 %i.bb, %i.bm
  %diff.check22 = icmp ugt i64 %i.br, -32
  %or.cond39 = or i1 %min.iters.check24, %diff.check22
  br i1 %or.cond39, label %.lr.ph.i.i.i.i.i.i.preheader40, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec27 = and i64 %i.bq, 4611686018427387900   ; 3 uses
  %i.bs = shl i64 %n.vec27, 3                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.az, i64 %i.bs
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph25
  %index29 = phi i64 [ 0, %vector.ph25 ], [ %index.next34, %vector.body28 ] ; 2 uses
  %i.bv = shl i64 %index29, 3                     ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.bk, i64 %i.bv ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.az, i64 %i.bv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.bw = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load32 = load <2 x i64>, ptr %next.gep31, align 8, !alias.scope !476, !noalias !473
  %wide.load33 = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !476, !noalias !473
  %i.bx = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x i64> %wide.load32, ptr %next.gep30, align 8, !alias.scope !473, !noalias !476
  store <2 x i64> %wide.load33, ptr %i.bx, align 8, !alias.scope !473, !noalias !476
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next34, %n.vec27
  br i1 %i.by, label %middle.block35, label %vector.body28, !llvm.loop !478

middle.block35:                                   ; preds = %vector.body28
  %cmp.n36 = icmp eq i64 %i.bq, %n.vec27
  br i1 %cmp.n36, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader40

.lr.ph.i.i.i.i.i.i.preheader40:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block35
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block35 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block35 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !476, !noalias !473
  store i64 %i.bz, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !473, !noalias !476
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !479

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block35, %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bt, %middle.block35 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !464
  store ptr %i.cc, ptr %i.aq, align 8, !tbaa !465
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
end_hunk_0
begin_hunk_1_@_ZN4llvh7hashing6detail23hash_combine_range_implIN6hermes2vm10StringView14const_iteratorEEENS_9hash_codeET_S8_:bb.a
  %.idx84 = add nuw nsw i64 %.2.idx, 2
  br label %bb.i, !llvm.loop !1255

_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit16, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit16.thread
  %i.ck = call noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %.2.ptr, ptr noundef nonnull %i.h) ; 0 uses
  %.0.copyload.i.i = load i64, ptr %i.al, align 8 ; 2 uses
  %i.cl = add i64 %.sroa.8.0107, %.sroa.18.0105
  %i.cm = add i64 %i.cl, %.sroa.0.0108
  %i.cn = add i64 %i.cm, %.0.copyload.i.i         ; 2 uses
  %i.co = call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 27)
  %i.cp = mul i64 %i.co, -5435081209227447693
  %i.cq = add i64 %.sroa.8.0107, %.sroa.24.0104
  %.0.copyload.i7.i = load i64, ptr %i.aq, align 16 ; 2 uses
  %i.cr = add i64 %i.cq, %.0.copyload.i7.i        ; 2 uses
  %i.cs = call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 22)
  %i.ct = mul i64 %i.cs, -5435081209227447693
  %i.cu = xor i64 %i.cp, %.sroa.36.0102           ; 3 uses
  %.0.copyload.i8.i = load i64, ptr %i.av, align 8 ; 2 uses
  %i.cv = add i64 %.0.copyload.i8.i, %.sroa.18.0105
  %i.cw = add i64 %i.cv, %i.ct                    ; 3 uses
  %i.cx = add i64 %.sroa.13.0106, %.sroa.30.0103  ; 2 uses
  %i.cy = call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 31)
  %i.cz = mul i64 %i.cy, -5435081209227447693     ; 3 uses
  %i.da = mul i64 %.sroa.24.0104, -5435081209227447693
  %i.db = add i64 %i.cu, %.sroa.30.0103
  %.0.copyload.i.i.i22 = load i64, ptr %i.a, align 16
  %i.dc = add i64 %.0.copyload.i.i.i22, %i.da     ; 3 uses
  %.0.copyload.i15.i.i = load i64, ptr %i.be, align 8 ; 2 uses
  %i.dd = add i64 %i.db, %i.dc
  %i.de = add i64 %i.dd, %.0.copyload.i15.i.i     ; 2 uses
  %i.df = call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 43)
  %.0.copyload.i17.i.i = load i64, ptr %i.bi, align 16 ; 2 uses
  %i.dg = add i64 %i.dc, %.0.copyload.i.i
  %i.dh = add i64 %i.dg, %.0.copyload.i17.i.i     ; 3 uses
  %i.di = call i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 20)
  %i.dj = add i64 %i.di, %i.dc
  %i.dk = add i64 %i.dj, %i.df                    ; 2 uses
  %i.dl = add i64 %i.dh, %.0.copyload.i15.i.i     ; 2 uses
  %i.dm = add i64 %i.cz, %.sroa.36.0102
  %i.dn = add i64 %i.cw, %.0.copyload.i17.i.i
  %.0.copyload.i.i10.i = load i64, ptr %i.br, align 16
  %i.do = add i64 %i.dm, %.0.copyload.i.i10.i     ; 3 uses
  %.0.copyload.i15.i11.i = load i64, ptr %i.bt, align 8 ; 2 uses
  %i.dp = add i64 %i.dn, %i.do
  %i.dq = add i64 %i.dp, %.0.copyload.i15.i11.i   ; 2 uses
  %i.dr = call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 43)
  %i.ds = add i64 %.0.copyload.i8.i, %.0.copyload.i7.i
  %i.dt = add i64 %i.ds, %i.do                    ; 3 uses
  %i.du = call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 20)
  %i.dv = add i64 %i.dr, %i.do
  %i.dw = add i64 %i.dv, %i.du                    ; 2 uses
  %i.dx = add i64 %i.dt, %.0.copyload.i15.i11.i   ; 2 uses
  %i.dy = add i64 %.2.idx, %.0110                 ; 2 uses
  %.not.i.i11 = icmp eq ptr %.sroa.045.2, null
  %i.dz = icmp ne ptr %.sroa.045.2, %2
  %i.ea = icmp ne ptr %.sroa.11.2, %3
  %.0.i.i12 = select i1 %.not.i.i11, i1 %i.ea, i1 %i.dz
  br i1 %.0.i.i12, label %.preheader, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit13._crit_edge, !llvm.loop !1256

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit13._crit_edge: ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19, %bb.h
  %.sroa.36.0.lcssa = phi i64 [ %i.cb, %bb.h ], [ %i.dw, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ] ; 2 uses
  %.sroa.30.0.lcssa = phi i64 [ %i.cc, %bb.h ], [ %i.dx, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ] ; 2 uses
  %.sroa.24.0.lcssa = phi i64 [ %i.bn, %bb.h ], [ %i.dk, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ]
  %.sroa.18.0.lcssa = phi i64 [ %i.bo, %bb.h ], [ %i.dl, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ]
  %.sroa.13.0.lcssa = phi i64 [ %i.au, %bb.h ], [ %i.cu, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ]
  %.sroa.8.0.lcssa = phi i64 [ %i.ax, %bb.h ], [ %i.cw, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %i.ba, %bb.h ], [ %i.cz, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ]
  %.0.lcssa = phi i64 [ 64, %bb.h ], [ %i.dy, %_ZN4llvh7hashing6detail17store_and_advanceIDsEEbRPcS3_RKT_m.exit19 ] ; 2 uses
  %i.eb = xor i64 %.sroa.18.0.lcssa, %.sroa.30.0.lcssa
  %i.ec = mul i64 %i.eb, -7070675565921424023     ; 2 uses
  %i.ed = lshr i64 %i.ec, 47
  %i.ee = xor i64 %.sroa.30.0.lcssa, %i.ed
  %i.ef = xor i64 %i.ee, %i.ec
  %i.eg = mul i64 %i.ef, -7070675565921424023     ; 2 uses
  %i.eh = lshr i64 %i.eg, 47
  %i.ei = xor i64 %i.eh, %i.eg
  %i.ej = mul i64 %i.ei, -7070675565921424023
  %i.ek = lshr i64 %.sroa.8.0.lcssa, 47
  %i.el = xor i64 %i.ek, %.sroa.8.0.lcssa
  %i.em = mul i64 %i.el, -5435081209227447693
  %i.en = add i64 %i.em, %.sroa.13.0.lcssa
  %i.eo = add i64 %i.en, %i.ej
  %i.ep = xor i64 %.sroa.24.0.lcssa, %.sroa.36.0.lcssa
  %i.eq = mul i64 %i.ep, -7070675565921424023     ; 2 uses
  %i.er = lshr i64 %i.eq, 47
  %i.es = xor i64 %.sroa.36.0.lcssa, %i.er
  %i.et = xor i64 %i.es, %i.eq
  %i.eu = mul i64 %i.et, -7070675565921424023     ; 2 uses
  %i.ev = lshr i64 %i.eu, 47
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = mul i64 %i.ew, -7070675565921424023
  %i.ey = lshr i64 %.0.lcssa, 47
  %i.ez = xor i64 %i.ey, %.0.lcssa
  %i.fa = mul i64 %i.ez, -5435081209227447693
  %i.fb = add i64 %i.fa, %.sroa.0.0.lcssa
  %i.fc = add i64 %i.fb, %i.ex                    ; 2 uses
  %i.fd = xor i64 %i.fc, %i.eo
  %i.fe = mul i64 %i.fd, -7070675565921424023     ; 2 uses
  %i.ff = lshr i64 %i.fe, 47
  %i.fg = xor i64 %i.fc, %i.ff
  %i.fh = xor i64 %i.fg, %i.fe
  %i.fi = mul i64 %i.fh, -7070675565921424023     ; 2 uses
  %i.fj = lshr i64 %i.fi, 47
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = mul i64 %i.fk, -7070675565921424023
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit13._crit_edge, %bb.g
  %.sroa.060.0 = phi i64 [ %i.n, %bb.g ], [ %i.fl, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit13._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.sroa.060.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.d                       ; 10 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %iter.check222, label %bb.d

iter.check222:                                    ; preds = %bb.c
  %min.iters.check203 = icmp ult i64 %i.g, 4
  br i1 %min.iters.check203, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check222
  %min.iters.check205 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check205, label %vec.epilog.ph226, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %n.mod.vf207 = and i64 %i.g, 28
  %n.vec208 = and i64 %i.g, -32                   ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec208
  %i.k = getelementptr i8, ptr %0, i64 %n.vec208
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph206
  %index210 = phi i64 [ 0, %vector.ph206 ], [ %index.next217, %vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %1, i64 %index210 ; 3 uses
  %next.gep212 = getelementptr i8, ptr %0, i64 %index210 ; 3 uses
  %i.l = getelementptr i8, ptr %next.gep212, i64 16 ; 2 uses
  %wide.load213 = load <16 x i8>, ptr %next.gep212, align 1, !tbaa !19, !alias.scope !1257, !noalias !1260
  %wide.load214 = load <16 x i8>, ptr %i.l, align 1, !tbaa !19, !alias.scope !1257, !noalias !1260
  %i.m = getelementptr i8, ptr %next.gep211, i64 16 ; 2 uses
  %wide.load215 = load <16 x i8>, ptr %next.gep211, align 1, !tbaa !19, !alias.scope !1260
  %wide.load216 = load <16 x i8>, ptr %i.m, align 1, !tbaa !19, !alias.scope !1260
  store <16 x i8> %wide.load215, ptr %next.gep212, align 1, !tbaa !19, !alias.scope !1257, !noalias !1260
  store <16 x i8> %wide.load216, ptr %i.l, align 1, !tbaa !19, !alias.scope !1257, !noalias !1260
  store <16 x i8> %wide.load213, ptr %next.gep211, align 1, !tbaa !19, !alias.scope !1260
  store <16 x i8> %wide.load214, ptr %i.m, align 1, !tbaa !19, !alias.scope !1260
  %index.next217 = add nuw i64 %index210, 32      ; 2 uses
  %i.n = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.n, label %middle.block218, label %vector.body209, !llvm.loop !1262

middle.block218:                                  ; preds = %vector.body209
  %cmp.n219 = icmp eq i64 %i.g, %n.vec208
  br i1 %cmp.n219, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block218
  %min.epilog.iters.check225 = icmp eq i64 %n.mod.vf207, 0
  br i1 %min.epilog.iters.check225, label %.lr.ph.i.preheader, label %vec.epilog.ph226, !prof !1263

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check224
  %vec.epilog.resume.val220 = phi i64 [ %n.vec208, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec228 = and i64 %i.g, -4                    ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec228
  %i.p = getelementptr i8, ptr %0, i64 %n.vec228
  br label %vec.epilog.vector.body229

vec.epilog.vector.body229:                        ; preds = %vec.epilog.vector.body229, %vec.epilog.ph226
  %index230 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph226 ], [ %index.next235, %vec.epilog.vector.body229 ] ; 3 uses
  %next.gep231 = getelementptr i8, ptr %1, i64 %index230 ; 2 uses
  %next.gep232 = getelementptr i8, ptr %0, i64 %index230 ; 2 uses
  %wide.load233 = load <4 x i8>, ptr %next.gep232, align 1, !tbaa !19, !alias.scope !1257, !noalias !1260
  %wide.load234 = load <4 x i8>, ptr %next.gep231, align 1, !tbaa !19, !alias.scope !1260
  store <4 x i8> %wide.load234, ptr %next.gep232, align 1, !tbaa !19, !alias.scope !1257, !noalias !1260
  store <4 x i8> %wide.load233, ptr %next.gep231, align 1, !tbaa !19, !alias.scope !1260
  %index.next235 = add nuw i64 %index230, 4       ; 2 uses
  %i.q = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.q, label %vec.epilog.middle.block236, label %vec.epilog.vector.body229, !llvm.loop !1264

vec.epilog.middle.block236:                       ; preds = %vec.epilog.vector.body229
  %cmp.n237 = icmp eq i64 %i.g, %n.vec228
  br i1 %cmp.n237, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check222, %vec.epilog.iter.check224, %vec.epilog.middle.block236
  %.010.i.ph = phi ptr [ %1, %iter.check222 ], [ %i.j, %vec.epilog.iter.check224 ], [ %i.o, %vec.epilog.middle.block236 ] ; 2 uses
  %.079.i.ph = phi ptr [ %0, %iter.check222 ], [ %i.k, %vec.epilog.iter.check224 ], [ %i.p, %vec.epilog.middle.block236 ] ; 3 uses
  %.079.i.ph249 = ptrtoint ptr %.079.i.ph to i64  ; 2 uses
  %i.r = sub i64 %i.f, %.079.i.ph249
  %xtraiter250 = and i64 %i.r, 3                  ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi ptr [ %i.u, %.lr.ph.i.prol ], [ %.079.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter252 = phi i64 [ %prol.iter252.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.s = load i8, ptr %.079.i.prol, align 1, !tbaa !19
  %i.t = load i8, ptr %.010.i.prol, align 1, !tbaa !19
  store i8 %i.t, ptr %.079.i.prol, align 1, !tbaa !19
  store i8 %i.s, ptr %.010.i.prol, align 1, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %prol.iter252.next = add i64 %prol.iter252, 1   ; 2 uses
  %prol.iter252.cmp.not = icmp eq i64 %prol.iter252.next, %xtraiter250
  br i1 %prol.iter252.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1265

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %i.w = sub i64 %.079.i.ph249, %i.f
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.079.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.y = load i8, ptr %.079.i, align 1, !tbaa !19
  %i.z = load i8, ptr %.010.i, align 1, !tbaa !19
  store i8 %i.z, ptr %.079.i, align 1, !tbaa !19
  store i8 %i.y, ptr %.010.i, align 1, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !19
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !19
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i, i64 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !19
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !19
  store i8 %i.ah, ptr %i.ae, align 1, !tbaa !19
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !19
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !19
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i.3 = icmp eq ptr %i.am, %1
  br i1 %.not.i.3, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !1267

bb.d:                                             ; preds = %bb.c
  %i.ao = sub i64 %i.c, %i.f
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.aq = sub nsw i64 %.086, %.082                ; 16 uses
  %i.ar = icmp slt i64 %.082, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.as = icmp eq i64 %.082, 1
  br i1 %i.as, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.at = load i8, ptr %.058, align 1, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.av = getelementptr inbounds i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.au, i64 %gepdiff, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1
  store i8 %i.at, ptr %i.aw, align 1, !tbaa !19
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp sgt i64 %i.aq, 0
  br i1 %i.ax, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.058, i64 %i.aq
  %scevgep135 = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, 9223372036854775776     ; 6 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 %n.vec
  %i.ba = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bb = getelementptr i8, ptr %next.gep137, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep137, align 1, !tbaa !19, !alias.scope !1268, !noalias !1271
  %wide.load138 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !19, !alias.scope !1268, !noalias !1271
  %i.bc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19, !alias.scope !1271
  %wide.load140 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !19, !alias.scope !1271
  store <16 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !19, !alias.scope !1268, !noalias !1271
  store <16 x i8> %wide.load140, ptr %i.bb, align 1, !tbaa !19, !alias.scope !1268, !noalias !1271
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19, !alias.scope !1271
  store <16 x i8> %wide.load138, ptr %i.bc, align 1, !tbaa !19, !alias.scope !1271
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !1263

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.aq, 9223372036854775804  ; 5 uses
  %i.be = getelementptr i8, ptr %i.ay, i64 %n.vec143
  %i.bf = getelementptr i8, ptr %.058, i64 %n.vec143 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %i.ay, i64 %index144 ; 2 uses
  %next.gep146 = getelementptr i8, ptr %.058, i64 %index144 ; 2 uses
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !19, !alias.scope !1268, !noalias !1271
  %wide.load148 = load <4 x i8>, ptr %next.gep145, align 1, !tbaa !19, !alias.scope !1271
  store <4 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !19, !alias.scope !1268, !noalias !1271
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !19, !alias.scope !1271
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1274

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.aq, %n.vec143
  br i1 %cmp.n150, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.ay, %iter.check ], [ %i.ay, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 2 uses
  %i.bh = sub i64 %.086, %.082
  %xtraiter246 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.bm, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.bl, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.bk, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter248 = phi i64 [ %prol.iter248.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.bi = load i8, ptr %.159105.prol, align 1, !tbaa !19
  %i.bj = load i8, ptr %.055106.prol, align 1, !tbaa !19
  store i8 %i.bj, ptr %.159105.prol, align 1, !tbaa !19
  store i8 %i.bi, ptr %.055106.prol, align 1, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.bm = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !1275

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader ], [ %i.bk, %.lr.ph109.prol ]
  %.054107.unr = phi i64 [ %.054107.ph, %.lr.ph109.preheader ], [ %i.bm, %.lr.ph109.prol ]
  %.055106.unr = phi ptr [ %.055106.ph, %.lr.ph109.preheader ], [ %i.bl, %.lr.ph109.prol ]
  %.159105.unr = phi ptr [ %.159105.ph, %.lr.ph109.preheader ], [ %i.bk, %.lr.ph109.prol ]
  %i.bn = sub i64 %.054107.ph, %.086
  %i.bo = add i64 %i.bn, %.082
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %vec.epilog.middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.bf, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.cf, %.lr.ph109 ]
  %i.bq = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bq, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h
end_hunk_1
