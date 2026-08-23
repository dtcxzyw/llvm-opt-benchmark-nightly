Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mesh_compare?download=true
inline.NumInlined: 484
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSteqIN5video9S3DVertexELm3EEbRKSt5arrayIT_XT0_EES6_:.lr.ph.i.i.i.i
bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !59
  %i.w = fcmp nsz oeq float %i.t, %i.v
  br i1 %i.w, label %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i:    ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !60
  %i.ab = fcmp nsz oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.d:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !61
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !61
  %i.al = fcmp nsz oeq float %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load float, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp nsz oeq float %i.an, %i.ap
  %i.ar = select i1 %i.al, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i:        ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.at = load i16, ptr %i.as, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i16, ptr %i.au, align 4, !tbaa !63
  %i.aw = icmp eq i16 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.0810.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load float, ptr %.0810.i.i.i.i.ptr.1, align 4, !tbaa !57
  %i.az = load float, ptr %i.ax, align 4, !tbaa !57
  %i.ba = fcmp nsz oeq float %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load float, ptr %i.bd, align 4, !tbaa !59
  %i.bf = fcmp nsz oeq float %i.bc, %i.be
  br i1 %i.bf, label %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1:   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !60
  %i.bk = fcmp nsz oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.g, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.g:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bn = load float, ptr %i.bl, align 4, !tbaa !57
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !57
  %i.bp = fcmp nsz oeq float %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !59
  %i.bu = fcmp nsz oeq float %i.br, %i.bt
  br i1 %i.bu, label %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1:  ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !60
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4, !tbaa !60
  %i.bz = fcmp nsz oeq float %i.bw, %i.by
  br i1 %i.bz, label %bb.i, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.i:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !24
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.j, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !61
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !61
  %i.cj = fcmp nsz oeq float %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = fcmp nsz oeq float %i.cl, %i.cn
  %i.cp = select i1 %i.cj, i1 %i.co, i1 false
  br i1 %i.cp, label %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1:      ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !63
  %i.cu = icmp eq i16 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

.lr.ph.i.i.i.i.2:                                 ; preds = %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.0810.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cw = load float, ptr %.0810.i.i.i.i.ptr.2, align 4, !tbaa !57
  %i.cx = load float, ptr %i.cv, align 4, !tbaa !57
  %i.cy = fcmp nsz oeq float %i.cw, %i.cx
  br i1 %i.cy, label %bb.k, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.da = load float, ptr %i.cz, align 4, !tbaa !59
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = load float, ptr %i.db, align 4, !tbaa !59
  %i.dd = fcmp nsz oeq float %i.da, %i.dc
  br i1 %i.dd, label %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2:   ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.df = load float, ptr %i.de, align 4, !tbaa !60
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !60
  %i.di = fcmp nsz oeq float %i.df, %i.dh
  br i1 %i.di, label %bb.l, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.l:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dl = load float, ptr %i.dj, align 4, !tbaa !57
  %i.dm = load float, ptr %i.dk, align 4, !tbaa !57
  %i.dn = fcmp nsz oeq float %i.dl, %i.dm
  br i1 %i.dn, label %bb.m, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dp = load float, ptr %i.do, align 4, !tbaa !59
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !59
  %i.ds = fcmp nsz oeq float %i.dp, %i.dr
  br i1 %i.ds, label %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2:  ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.du = load float, ptr %i.dt, align 4, !tbaa !60
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !60
  %i.dx = fcmp nsz oeq float %i.du, %i.dw
  br i1 %i.dx, label %bb.n, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.n:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !24
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !24
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.o, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !61
  %i.eg = load float, ptr %i.ee, align 4, !tbaa !61
  %i.eh = fcmp nsz oeq float %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.el = load float, ptr %i.ek, align 4
  %i.em = fcmp nsz oeq float %i.ej, %i.el
  %i.en = select i1 %i.eh, i1 %i.em, i1 false
  br i1 %i.en, label %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2:      ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !63
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.er = load i16, ptr %i.eq, align 4, !tbaa !63
  %i.es = icmp eq i16 %i.ep, %i.er
  br label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit: ; preds = %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2, %bb.o, %bb.n, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2, %bb.m, %bb.l, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2, %bb.k, %.lr.ph.i.i.i.i.2, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1, %bb.j, %bb.i, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1, %bb.h, %bb.g, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1, %bb.f, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i, %bb.a, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i, %bb.b, %bb.c, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i, %bb.d, %bb.e, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i
  %.not.lcssa.i.i.i.i = phi i1 [ false, %bb.b ], [ false, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph.i.i.i.i.1 ], [ false, %bb.f ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1 ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1 ], [ false, %bb.i ], [ false, %bb.j ], [ false, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1 ], [ %i.es, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2 ], [ false, %.lr.ph.i.i.i.i.2 ], [ false, %bb.k ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2 ], [ false, %bb.l ], [ false, %bb.m ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2 ], [ false, %bb.n ]
  ret i1 %.not.lcssa.i.i.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 short", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE: argument 0"}
!15 = distinct !{!15, !"_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE"}
!16 = !{!10, !11, i64 8}
!17 = !{!18, !19, i64 8}
!18 = !{!"_ZTSNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSSt5arrayIN5video9S3DVertexELm3EE", !12, i64 0}
!20 = !{!18, !19, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!18, !19, i64 16}
!24 = !{!25, !6, i64 0}
!25 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!26 = distinct !{!26, !22}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !7, i64 0}
!29 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30, i64 20, i64 4, !30, i64 24, i64 4, !32, i64 28, i64 4, !30, i64 32, i64 4, !30, i64 36, i64 2, !27}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !7, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{i64 0, i64 120, !34}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = !{!38, !39, i64 8}
!38 = !{!"_ZTSNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm4EESaIS3_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTSSt5arrayIN5video9S3DVertexELm4EE", !12, i64 0}
!40 = !{!38, !39, i64 0}
!41 = !{i64 0, i64 16, !34}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !22}
!45 = !{!46, !48, i64 0}
!46 = !{!"_ZTSSt15_Rb_tree_header", !47, i64 0, !50, i64 32}
!47 = !{!"_ZTSSt18_Rb_tree_node_base", !48, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!48 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!49 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!50 = !{!"long", !7, i64 0}
!51 = !{!46, !49, i64 8}
!52 = !{!46, !49, i64 16}
!53 = !{!46, !49, i64 24}
!54 = !{!46, !50, i64 32}
!55 = distinct !{!55, !22}
!56 = !{!19, !19, i64 0}
!57 = !{!58, !31, i64 0}
!58 = !{!"_ZTSN4core8vector3dIfEE", !31, i64 0, !31, i64 4, !31, i64 8}
!59 = !{!58, !31, i64 4}
!60 = !{!58, !31, i64 8}
!61 = !{!62, !31, i64 0}
!62 = !{!"_ZTSN4core8vector2dIfEE", !31, i64 0, !31, i64 4}
!63 = !{!64, !28, i64 36}
!64 = !{!"_ZTSN5video9S3DVertexE", !58, i64 0, !58, i64 12, !25, i64 24, !62, i64 28, !28, i64 36}
!65 = !{!49, !49, i64 0}
!66 = distinct !{!66, !22}
!67 = !{!68, !6, i64 120}
!68 = !{!"_ZTSSt4pairIKSt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS5_ItSaItEERKS5_IS0_IS2_Lm4EESaISE_EEE7QuadRefE", !69, i64 0, !70, i64 120}
!69 = !{!"_ZTSSt5arrayIN5video9S3DVertexELm3EE", !7, i64 0}
!70 = !{!"_ZTSZ14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EEE7QuadRef", !6, i64 0, !6, i64 4}
!71 = !{!68, !6, i64 124}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!83 = distinct !{!83, !22, !84}
!84 = !{!"llvm.loop.peeled.count", i32 1}
!85 = distinct !{!85, !22}
!86 = !{!47, !49, i64 24}
!87 = !{!47, !49, i64 16}
!88 = distinct !{!88, !22}
end_hunk_0
