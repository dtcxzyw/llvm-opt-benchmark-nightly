Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_sweep?download=true
inline.NumInlined: 1667
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7CaDiCaL8Internal16add_sweep_binaryENS_18sweep_proof_clauseEii:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %.not.i17.i.i37 = icmp eq ptr %i.dj, null
  br i1 %.not.i17.i.i37, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i38, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i36
  %i.dy = load ptr, ptr %i.ck, align 8, !tbaa !252
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.dl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.ea) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i38

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i38: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i36
  store ptr %i.du, ptr %i.ch, align 8, !tbaa !212
  store ptr %i.dx, ptr %i.ci, align 8, !tbaa !211
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.eb, ptr %i.ck, align 8, !tbaa !252
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit39

_ZNSt6vectorIiSaIiEE9push_backERKi.exit39:        ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i38
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !284
  %i.ee = add nsw i64 %i.ed, 1                    ; 6 uses
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !284
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !265 ; 2 uses
  %.not18 = icmp eq ptr %i.eg, null
  br i1 %.not18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit39
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120) %i.eg, i64 noundef %i.ee, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.eh) #19
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !265
  tail call void @_ZN7CaDiCaL5Proof12weaken_minusElRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ei, i64 noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit39
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !221
  tail call void @_ZN7CaDiCaL8External37push_binary_clause_on_extension_stackElii(ptr noundef nonnull align 8 dereferenceable(616) %i.ek, i64 noundef %i.ee, i32 noundef %2, i32 noundef %3) #19
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 3496
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !330 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !330 ; 5 uses
  %i.ep = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  %i.er = zext nneg i32 %i.ep to i64              ; 4 uses
  %.not6366 = icmp eq ptr %i.em, %i.eo
  br i1 %.not6366, label %.critedge, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.ac
  %i.es = icmp slt i32 %2, 0
  %i.et = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.eu = zext nneg i32 %i.et to i64              ; 4 uses
  %i.ev = icmp slt i32 %3, 0                      ; 2 uses
  br i1 %i.es, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  br i1 %i.ev, label %.lr.ph69.split.us.split.us, label %.lr.ph69.split.us.split

.lr.ph69.split.us.split.us:                       ; preds = %.lr.ph69.split.us, %bb.ad
  %.sroa.043.067.us.us = phi ptr [ %i.fh, %bb.ad ], [ %i.em, %.lr.ph69.split.us ] ; 2 uses
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !212 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.er
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !207 ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 1
  br i1 %i.ez, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %.lr.ph69.split.us.split.us
  %i.fa = sub nsw i32 0, %i.ey
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.eu
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !207
  %i.fd = load ptr, ptr %.sroa.043.067.us.us, align 8, !tbaa !332 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !275
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8
  tail call void %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i32 noundef %i.fa, i32 noundef %i.fc) #19
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.043.067.us.us, i64 8 ; 2 uses
  %.not63.us.us = icmp eq ptr %i.fh, %i.eo
  br i1 %.not63.us.us, label %.critedge, label %.lr.ph69.split.us.split.us

.lr.ph69.split.us.split:                          ; preds = %.lr.ph69.split.us, %bb.ae
  %.sroa.043.067.us = phi ptr [ %i.fu, %bb.ae ], [ %i.em, %.lr.ph69.split.us ] ; 2 uses
  %i.fi = load ptr, ptr %i.eq, align 8, !tbaa !212 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.er
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !207 ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 1
  br i1 %i.fl, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %.lr.ph69.split.us.split
  %i.fm = sub nsw i32 0, %i.fk
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.eu
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !207
  %i.fp = sub i32 0, %i.fo
  %i.fq = load ptr, ptr %.sroa.043.067.us, align 8, !tbaa !332 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !275
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 152
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, i32 noundef %i.fm, i32 noundef %i.fp) #19
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.043.067.us, i64 8 ; 2 uses
  %.not63.us = icmp eq ptr %i.fu, %i.eo
  br i1 %.not63.us, label %.critedge, label %.lr.ph69.split.us.split

.lr.ph69.split:                                   ; preds = %.lr.ph69
  br i1 %i.ev, label %.lr.ph69.split.split.us, label %.lr.ph69.split.split

.lr.ph69.split.split.us:                          ; preds = %.lr.ph69.split, %bb.af
  %.sroa.043.067.us71 = phi ptr [ %i.gf, %bb.af ], [ %i.em, %.lr.ph69.split ] ; 2 uses
  %i.fv = load ptr, ptr %i.eq, align 8, !tbaa !212 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.er
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !207 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %bb.af, label %.critedge

bb.af:                                            ; preds = %.lr.ph69.split.split.us
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.eu
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !207
  %i.gb = load ptr, ptr %.sroa.043.067.us71, align 8, !tbaa !332 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !275
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 152
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, i32 noundef %i.fx, i32 noundef %i.ga) #19
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.043.067.us71, i64 8 ; 2 uses
  %.not63.us73 = icmp eq ptr %i.gf, %i.eo
  br i1 %.not63.us73, label %.critedge, label %.lr.ph69.split.split.us

.lr.ph69.split.split:                             ; preds = %.lr.ph69.split, %bb.ag
  %.sroa.043.067 = phi ptr [ %i.gr, %bb.ag ], [ %i.em, %.lr.ph69.split ] ; 2 uses
  %i.gg = load ptr, ptr %i.eq, align 8, !tbaa !212 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.er
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !207 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, -1
  br i1 %i.gj, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %.lr.ph69.split.split
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.eu
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !207
  %i.gm = sub i32 0, %i.gl
  %i.gn = load ptr, ptr %.sroa.043.067, align 8, !tbaa !332 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !275
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 152
  %i.gq = load ptr, ptr %i.gp, align 8
  tail call void %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, i32 noundef %i.gi, i32 noundef %i.gm) #19
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.043.067, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.gr, %i.eo
  br i1 %.not63, label %.critedge, label %.lr.ph69.split.split

.critedge:                                        ; preds = %bb.ag, %.lr.ph69.split.split, %bb.af, %.lr.ph69.split.split.us, %bb.ae, %.lr.ph69.split.us.split, %bb.ad, %.lr.ph69.split.us.split.us, %bb.ac
  %i.gs = load ptr, ptr %i.ch, align 8, !tbaa !212 ; 2 uses
  %i.gt = load ptr, ptr %i.ci, align 8, !tbaa !211
  %.not.i.i = icmp eq ptr %i.gt, %i.gs
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  store ptr %i.gs, ptr %i.ci, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.critedge, %bb.ah
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !260 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !281
  %.not.i.i42 = icmp eq ptr %i.gx, %i.gv
  br i1 %.not.i.i42, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !281
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.ee, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.ee, %bb.ai ]
  ret i64 %.0
}

declare void @_ZN7CaDiCaL5Proof12weaken_minusElRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External37push_binary_clause_on_extension_stackElii(ptr noundef nonnull align 8 dereferenceable(616), i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal19delete_sweep_binaryERKNS_12sweep_binaryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !266, !range !237, !noundef !213
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !265
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11

_ZNSt6vectorIiSaIiEE9push_backERKi.exit11:        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20 ; 3 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !207
  store i32 %i.i, ptr %i.h, align 4, !tbaa !207
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.j, align 4, !tbaa !207
  store i32 %i.m, ptr %i.l, align 4, !tbaa !207
  %i.n = load i32, ptr %i.h, align 4
  store i32 %i.n, ptr %i.k, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 4) #21
  store ptr %i.k, ptr %2, align 8, !tbaa !212
  store ptr %i.o, ptr %i.f, align 8, !tbaa !211
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %3, ptr %i.g, align 8, !tbaa !252
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !265
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !294
  call void @_ZN7CaDiCaL5Proof13delete_clauseElbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120) %i.p, i64 noundef %i.r, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %i.s = load ptr, ptr %2, align 8, !tbaa !212    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !252
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal18scheduled_variableERNS_7SweeperEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7296) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !207
  %.not = icmp ne i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %2
  %i.i = select i1 %.not, i1 true, i1 %i.h
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal14schedule_innerERNS_7SweeperEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(464) %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.e = getelementptr inbounds nuw [6 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.g = load i8, ptr %i.f, align 1
  %.mask.i.i = and i8 %i.g, -32
  %i.h = icmp eq i8 %.mask.i.i, 32
  br i1 %i.h, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = sext i32 %2 to i64                       ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !212  ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !207  ; 4 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !212  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.j ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !207  ; 3 uses
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.r
  store i32 %i.q, ptr %i.s, align 4, !tbaa !207
  %i.t = icmp eq i32 %i.q, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.m, ptr %i.u, align 8, !tbaa !216
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = zext i32 %i.q to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  store i32 %i.m, ptr %i.w, align 4, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !215  ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %2, ptr %i.aa, align 8, !tbaa !216
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  store i32 %2, ptr %i.ac, align 4, !tbaa !207
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 %i.y, ptr %i.p, align 4, !tbaa !207
  store i32 0, ptr %i.l, align 4, !tbaa !207
  store i32 %2, ptr %i.x, align 4, !tbaa !215
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !215 ; 4 uses
  %.not47 = icmp eq i32 %i.ae, %2
  br i1 %.not47, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %2, ptr %i.ag, align 8, !tbaa !216
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ah
  store i32 %2, ptr %i.ai, align 4, !tbaa !207
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !212
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.j
  store i32 %i.ae, ptr %i.al, align 4, !tbaa !207
  store i32 %2, ptr %i.ad, align 4, !tbaa !215
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal14schedule_outerERNS_7SweeperEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7296) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(464) %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 %2, ptr %i.d, align 4, !tbaa !215
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = sext i32 %i.b to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  store i32 %2, ptr %i.h, align 4, !tbaa !207
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = sext i32 %2 to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !212
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  store i32 %i.b, ptr %i.l, align 4, !tbaa !207
  store i32 %2, ptr %i.a, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN7CaDiCaL8Internal14next_scheduledERNS_7SweeperE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7296) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(464) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !215  ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = sext i32 %i.b to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !207  ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !207
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 0, ptr %i.j, align 8, !tbaa !216
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = zext i32 %i.h to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !212
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
end_hunk_0
