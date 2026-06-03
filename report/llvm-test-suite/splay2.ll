inline.NumInlined: 8
begin_hunk_0_@CHsplay:bb.a
  br i1 %i.an, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.dx = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  store ptr %i.dx, ptr %i.al, align 8, !tbaa !20
  %.not32.i52 = icmp eq ptr %i.dx, null
  br i1 %.not32.i52, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store ptr %i.ah, ptr %i.dy, align 8, !tbaa !21
  %.pre34.i53 = load ptr, ptr %i.ad, align 8, !tbaa !21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.dz = phi ptr [ %.pre34.i53, %bb.bn ], [ %i.ah, %bb.bm ] ; 2 uses
  store ptr %i.dz, ptr %i.ag, align 8, !tbaa !19
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bl
  %i.ea = load ptr, ptr %i.af, align 8, !tbaa !20 ; 3 uses
  store ptr %i.ea, ptr %i.ck, align 8, !tbaa !19
  %.not.i49 = icmp eq ptr %i.ea, null
  br i1 %.not.i49, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store ptr %i.ah, ptr %i.eb, align 8, !tbaa !21
  %.pre.i50 = load ptr, ptr %i.ad, align 8, !tbaa !21
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ec = phi ptr [ %.pre.i50, %bb.bq ], [ %i.ah, %bb.bp ] ; 2 uses
  store ptr %i.ec, ptr %i.af, align 8, !tbaa !20
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %i.ed = phi ptr [ %i.ec, %bb.br ], [ %i.dz, %bb.bo ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !21 ; 11 uses
  store ptr %.tr.i, ptr %i.ee, align 8, !tbaa !21
  %.not33.i51 = icmp eq ptr %i.ef, null
  br i1 %.not33.i51, label %.CHrotate.exit54_crit_edge, label %bb.bt

.CHrotate.exit54_crit_edge:                       ; preds = %bb.bs
  %.pre = load ptr, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !20
  br label %CHrotate.exit54

bb.bt:                                            ; preds = %bb.bs
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.ei = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %CHrotate.exit54.thread, label %bb.bu

CHrotate.exit54.thread:                           ; preds = %bb.bt
  store ptr %i.ef, ptr %i.ad, align 8, !tbaa !21
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store ptr %.tr.i, ptr %i.ek, align 8, !tbaa !19
  br label %CHrotate.exit54

CHrotate.exit54:                                  ; preds = %.CHrotate.exit54_crit_edge, %bb.bu
  %i.el = phi ptr [ %.pre, %.CHrotate.exit54_crit_edge ], [ %i.eh, %bb.bu ]
  store ptr %i.ef, ptr %i.ad, align 8, !tbaa !21
  %i.em = icmp eq ptr %i.el, %.tr.i
  br i1 %i.em, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %CHrotate.exit54.thread, %CHrotate.exit54
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eo = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !20
  %.not32.i58 = icmp eq ptr %i.eo, null
  br i1 %.not32.i58, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store ptr %i.ef, ptr %i.ep, align 8, !tbaa !21
  %.pre34.i59 = load ptr, ptr %i.ad, align 8, !tbaa !21
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.eq = phi ptr [ %.pre34.i59, %bb.bw ], [ %i.ef, %bb.bv ] ; 2 uses
  store ptr %i.eq, ptr %i.ag, align 8, !tbaa !19
  br label %bb.cb

bb.by:                                            ; preds = %CHrotate.exit54
  %i.er = load ptr, ptr %i.af, align 8, !tbaa !20 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store ptr %i.er, ptr %i.es, align 8, !tbaa !19
  %.not.i55 = icmp eq ptr %i.er, null
  br i1 %.not.i55, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store ptr %i.ef, ptr %i.et, align 8, !tbaa !21
  %.pre.i56 = load ptr, ptr %i.ad, align 8, !tbaa !21
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.eu = phi ptr [ %.pre.i56, %bb.bz ], [ %i.ef, %bb.by ] ; 2 uses
  store ptr %i.eu, ptr %i.af, align 8, !tbaa !20
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %i.ev = phi ptr [ %i.eu, %bb.ca ], [ %i.eq, %bb.bx ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !21 ; 6 uses
  store ptr %.tr.i, ptr %i.ew, align 8, !tbaa !21
  %.not33.i57 = icmp eq ptr %i.ex, null
  br i1 %.not33.i57, label %CHrotate.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !20
  %i.fa = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store ptr %.tr.i, ptr %i.ey, align 8, !tbaa !20
  br label %CHrotate.exit

bb.ce:                                            ; preds = %bb.cc
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  store ptr %.tr.i, ptr %i.fc, align 8, !tbaa !19
  br label %CHrotate.exit

CHrotate.exit:                                    ; preds = %bb.ce, %bb.cd, %bb.cb, %bb.bk, %bb.bj, %bb.bh, %bb.ap, %bb.ao, %bb.am, %bb.x, %bb.w, %bb.u
  %.sink = phi ptr [ %i.ax, %bb.x ], [ %i.dr, %bb.bk ], [ %i.ce, %bb.ap ], [ %i.ax, %bb.u ], [ %i.ax, %bb.w ], [ %i.ce, %bb.am ], [ %i.ce, %bb.ao ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bj ], [ %i.ex, %bb.cb ], [ %i.ex, %bb.cd ], [ %i.ex, %bb.ce ] ; 3 uses
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !21
  %.not = icmp eq ptr %.sink, null
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !23

._crit_edge:                                      ; preds = %CHrotate.exit, %CHfind.exit
  store ptr %.tr.i, ptr %0, align 8, !tbaa !22
  ret ptr undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @CHtraverse(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not8 = icmp eq ptr %0, null
  br i1 %.not8, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr9 = phi ptr [ %i.p, %tailrecurse ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr9, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @CHtraverse(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.tr9, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %i.i = load double, ptr %.tr9, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %.tr9, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %.tr9, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.f, i32 noundef %i.h, double noundef %i.i, double noundef %i.k, i32 noundef %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr9, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @CHfree_tree(ptr noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %common.ret4, label %bb.b

common.ret4:                                      ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @CHfree_tree(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @CHfree_tree(ptr noundef %i.d)
  tail call void @free(ptr noundef nonnull %0) #15
  br label %common.ret4
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @CHcreate_node(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #16 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 0) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @before(ptr noundef %0) #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = tail call ptr @next(ptr noundef %0) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i64, ptr %i.d, align 4
  %i.i = load i64, ptr %i.e, align 4
  %i.j = load i64, ptr %i.g, align 4
  %i.k = tail call { double, double } @centre(i64 %i.h, i64 %i.i, i64 %i.j) #15 ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = load i64, ptr %i.e, align 4
  %i.o = tail call double @radius2(i64 %i.n, double %i.l, double %i.m) #15
  %i.p = tail call ptr @before(ptr noundef %0) #15
  %i.q = tail call ptr @next(ptr noundef %0) #15
  %i.r = tail call double @angle(ptr noundef %i.p, ptr noundef %0, ptr noundef %i.q) #15
  %i.s = load i32, ptr %0, align 8, !tbaa !30
  store double %i.o, ptr %i.a, align 8, !tbaa !31
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.r, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.t, align 8, !tbaa !25
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare { double, double } @centre(i64, i64, i64) local_unnamed_addr #11

declare ptr @before(ptr noundef) local_unnamed_addr #11

declare ptr @next(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare double @radius2(i64, double, double) local_unnamed_addr #11

declare double @angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @CHinit() local_unnamed_addr #12 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @CHinsert(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @CHcreate_node(ptr noundef %1) ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CHsplay(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.key) align 8 %i.a) ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.f = load double, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.g = fcmp ogt double %i.e, %i.f
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp oeq double %i.e, %i.f
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !17 ; 2 uses
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp oeq double %i.j, %i.l
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp sgt i32 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !20
  %.not41 = icmp eq ptr %i.u, null
  br i1 %.not41, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %.not40 = icmp eq ptr %i.x, null
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.u, %bb.g ], [ %i.x, %bb.h ]
  %.sink50.ph = phi i64 [ 48, %bb.g ], [ 40, %bb.h ]
  %.sink48.ph = phi i64 [ 40, %bb.g ], [ 48, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sink50 = phi i64 [ 48, %bb.g ], [ 40, %bb.h ], [ %.sink50.ph, %bb.i ]
  %.sink48 = phi i64 [ 40, %bb.g ], [ 48, %bb.h ], [ %.sink48.ph, %bb.i ]
  %2 = load ptr, ptr %0, align 8, !tbaa !22       ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink50
  store ptr %2, ptr %3, align 8, !tbaa !22
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 %.sink48
  store ptr null, ptr %4, align 8, !tbaa !22
  %i.ab = load ptr, ptr %0, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  ret ptr undef
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CHdelete_max(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %1 = alloca %struct.key, align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store <2 x double> <double f0x47EFFFFFE0000000, double 1.000000e+03>, ptr %1, align 16, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1000, ptr %i.a, align 16, !tbaa !32
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CHsplay(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.key) align 8 %1) ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !22
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %.sroa.3.0.copyload, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @CHdelete(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.key) align 8 captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.key, align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @CHsplay(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.key) align 8 %1) ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 6 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.g, null                   ; 2 uses
  %i.k = icmp eq ptr %i.i, null                   ; 2 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !22
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ne ptr %i.i, null
  %or.cond3 = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.m, align 8, !tbaa !21
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.g, null
  %or.cond5 = select i1 %i.n, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.o, align 8, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store <2 x double> <double f0x47EFFFFFE0000000, double 1.000000e+03>, ptr %2, align 16, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 1000, ptr %i.p, align 16, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !21
  %i.r = call ptr @CHsplay(ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.key) align 8 %2) ; 0 uses
  store <2 x double> splat (double -1.000000e+00), ptr %2, align 16, !tbaa !31
  store i32 -1, ptr %i.p, align 16, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.s, align 8, !tbaa !21
  %i.t = call ptr @CHsplay(ptr noundef nonnull %i.b, ptr noundef nonnull byval(%struct.key) align 8 %2) ; 0 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.u, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.x, align 8, !tbaa !21
  store ptr %i.v, ptr %0, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"key", !10, i64 0, !10, i64 8, !5, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"CHsplay_node", !13, i64 0, !16, i64 32, !16, i64 40, !16, i64 48}
!13 = !{!"CHsplay_element", !9, i64 0, !14, i64 24}
!14 = !{!"p1 _ZTS8CHpoints", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS12CHsplay_node", !15, i64 0}
!17 = !{!12, !10, i64 8}
!18 = !{!12, !5, i64 16}
!19 = !{!12, !16, i64 48}
!20 = !{!12, !16, i64 40}
!21 = !{!12, !16, i64 32}
!22 = !{!16, !16, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!12, !14, i64 24}
!26 = !{!27, !5, i64 4}
!27 = !{!"CHpoints", !5, i64 0, !28, i64 4, !5, i64 12, !14, i64 16, !14, i64 24}
!28 = !{!"point", !5, i64 0, !5, i64 4}
!29 = !{!27, !5, i64 8}
end_hunk_0
