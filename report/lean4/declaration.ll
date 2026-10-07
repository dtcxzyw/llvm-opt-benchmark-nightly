Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/declaration?download=true
inline.NumInlined: 418
inline.NumDeleted: 132
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4lean12recursor_valC2ERKNS_4nameERKNS_8list_refIS1_EERKNS_4exprES7_jjjjRKNS4_INS_13recursor_ruleEEEbb:bb.a
  %12 = alloca %"class.lean::nat", align 8        ; 5 uses
  %13 = alloca %"class.lean::nat", align 8        ; 5 uses
  %14 = alloca %"class.lean::nat", align 8        ; 5 uses
  %15 = alloca %"class.lean::nat", align 8        ; 5 uses
  %i.a = zext i1 %10 to i8
  %i.b = zext i1 %11 to i8
  %i.c = load ptr, ptr %1, align 8, !tbaa !10     ; 7 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.g, ptr %i.c, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %.pre.i, %bb.e ]
  %i.j = load ptr, ptr %2, align 8, !tbaa !10     ; 7 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i.i.i25 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i25, label %bb.f, label %_ZNK4lean10object_ref10to_obj_argEv.exit29

bb.f:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  %.val.i.i.i.i26 = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i.i.i26, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i.i.i26, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit29

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i27 = icmp eq i32 %.val.i.i.i.i26, 0
  br i1 %.not.i.i.i.i27, label %_ZNK4lean10object_ref10to_obj_argEv.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i28 = load ptr, ptr %2, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit29

_ZNK4lean10object_ref10to_obj_argEv.exit29:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit, %bb.g, %bb.h, %bb.i
  %i.p = phi ptr [ %i.j, %_ZNK4lean10object_ref10to_obj_argEv.exit ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %.pre.i28, %bb.i ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !10     ; 7 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i.i30 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i30, label %bb.j, label %_ZNK4lean10object_ref10to_obj_argEv.exit34

bb.j:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit29
  %.val.i.i.i.i31 = load i32, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i.i.i31, 0
  br i1 %i.t, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.u = add nuw i32 %.val.i.i.i.i31, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit34

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i.i32 = icmp eq i32 %.val.i.i.i.i31, 0
  br i1 %.not.i.i.i.i32, label %_ZNK4lean10object_ref10to_obj_argEv.exit34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i33 = load ptr, ptr %3, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit34

_ZNK4lean10object_ref10to_obj_argEv.exit34:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit29, %bb.k, %bb.l, %bb.m
  %i.w = phi ptr [ %i.q, %_ZNK4lean10object_ref10to_obj_argEv.exit29 ], [ %i.q, %bb.k ], [ %i.q, %bb.l ], [ %.pre.i33, %bb.m ]
  %i.x = load ptr, ptr %4, align 8, !tbaa !10     ; 7 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, 1
  %.not.i.i.i35 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i35, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit34
  %.val.i.i.i.i36 = load i32, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.aa = icmp sgt i32 %.val.i.i.i.i36, 0
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ab = add nuw i32 %.val.i.i.i.i36, 1
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !12
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i.i37 = icmp eq i32 %.val.i.i.i.i36, 0
  br i1 %.not.i.i.i.i37, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = atomicrmw sub ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i38 = load ptr, ptr %4, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %_ZNK4lean10object_ref10to_obj_argEv.exit34
  %i.ad = phi ptr [ %i.x, %_ZNK4lean10object_ref10to_obj_argEv.exit34 ], [ %i.x, %bb.o ], [ %i.x, %bb.p ], [ %.pre.i38, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.ae = zext i32 %5 to i64
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = or disjoint i64 %i.af, 1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  store ptr %i.ah, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ai = zext i32 %6 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = or disjoint i64 %i.aj, 1
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  store ptr %i.al, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.am = zext i32 %7 to i64
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = or disjoint i64 %i.an, 1
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  store ptr %i.ap, ptr %14, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.aq = zext i32 %8 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  store ptr %i.at, ptr %15, align 8, !tbaa !10
  %i.au = load ptr, ptr %9, align 8, !tbaa !10    ; 7 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 1
  %.not.i.i.i60 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i60, label %bb.s, label %_ZNK4lean10object_ref10to_obj_argEv.exit64

bb.s:                                             ; preds = %bb.r
  %.val.i.i.i.i61 = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ax = icmp sgt i32 %.val.i.i.i.i61, 0
  br i1 %i.ax, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ay = add nuw i32 %.val.i.i.i.i61, 1
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit64

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i.i62 = icmp eq i32 %.val.i.i.i.i61, 0
  br i1 %.not.i.i.i.i62, label %_ZNK4lean10object_ref10to_obj_argEv.exit64, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = atomicrmw sub ptr %i.au, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i63 = load ptr, ptr %9, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit64

_ZNK4lean10object_ref10to_obj_argEv.exit64:       ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %i.ba = phi ptr [ %i.au, %bb.r ], [ %i.au, %bb.t ], [ %i.au, %bb.u ], [ %.pre.i63, %bb.v ]
  %i.bb = invoke ptr @lean_mk_recursor_val(ptr noundef %i.i, ptr noundef %i.p, ptr noundef %i.w, ptr noundef %i.ad, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.at, ptr noundef %i.ba, i8 noundef zeroext %i.a, i8 noundef zeroext %i.b)
          to label %_ZN4lean10object_refD2Ev.exit74 unwind label %bb.w

_ZN4lean10object_refD2Ev.exit74:                  ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit64
  store ptr %i.bb, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  ret void

bb.w:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit64
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  resume { ptr, i32 } %i.bc
}

declare ptr @lean_mk_recursor_val(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4lean12recursor_val16get_major_inductEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = lshr i64 %i.i, 1
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = lshr i64 %i.n, 1
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = lshr i64 %i.s, 1
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = add i32 %i.k, %i.f
  %i.x = add i32 %i.w, %i.p
  %i.y = add i32 %i.x, %i.u                       ; 2 uses
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %xtraiter = and i32 %i.z, 7                     ; 3 uses
  %i.aa = icmp ult i32 %i.y, 7
  br i1 %i.aa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i32 %i.z, -8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.pn.in = phi ptr [ %i.v, %.new ], [ %.07.7, %bb.b ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.7, %bb.b ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !10
  %.07 = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.pn.1 = load ptr, ptr %.07, align 8, !tbaa !10
  %.07.1 = getelementptr inbounds nuw i8, ptr %.pn.1, i64 24
  %.pn.2 = load ptr, ptr %.07.1, align 8, !tbaa !10
  %.07.2 = getelementptr inbounds nuw i8, ptr %.pn.2, i64 24
  %.pn.3 = load ptr, ptr %.07.2, align 8, !tbaa !10
  %.07.3 = getelementptr inbounds nuw i8, ptr %.pn.3, i64 24
  %.pn.4 = load ptr, ptr %.07.3, align 8, !tbaa !10
  %.07.4 = getelementptr inbounds nuw i8, ptr %.pn.4, i64 24
  %.pn.5 = load ptr, ptr %.07.4, align 8, !tbaa !10
  %.07.5 = getelementptr inbounds nuw i8, ptr %.pn.5, i64 24
  %.pn.6 = load ptr, ptr %.07.5, align 8, !tbaa !10
  %.07.6 = getelementptr inbounds nuw i8, ptr %.pn.6, i64 24
  %.pn.7 = load ptr, ptr %.07.6, align 8, !tbaa !10
  %.07.7 = getelementptr inbounds nuw i8, ptr %.pn.7, i64 24 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.b, !llvm.loop !54

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.pn.in.epil.init = phi ptr [ %i.v, %bb.a ], [ %.07.7, %.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.pn.in.epil = phi ptr [ %.pn.in.epil.init, %.epil.preheader ], [ %.07.epil, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.pn.epil = load ptr, ptr %.pn.in.epil, align 8, !tbaa !10
  %.07.epil = getelementptr inbounds nuw i8, ptr %.pn.epil, i64 24 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !55

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.07.lcssa = phi ptr [ %.07.7, %.unr-lcssa ], [ %.07.epil, %bb.c ]
  %i.ab = load ptr, ptr %.07.lcssa, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  ret ptr %i.af
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4lean12recursor_val4is_kEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw sub ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %.pre.i, %bb.e ]
  %i.h = tail call zeroext i8 @lean_recursor_k(ptr noundef %i.g)
  %i.i = icmp ne i8 %i.h, 0
  ret i1 %i.i
}

declare zeroext i8 @lean_recursor_k(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4lean12recursor_val9is_unsafeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw sub ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %.pre.i, %bb.e ]
  %i.h = tail call zeroext i8 @lean_recursor_is_unsafe(ptr noundef %i.g)
  %i.i = icmp ne i8 %i.h, 0
  ret i1 %i.i
}

declare zeroext i8 @lean_recursor_is_unsafe(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4lean11declaration9is_unsafeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::inductive_decl", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 16 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0               ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %_ZNK4lean11declaration4kindEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i.i.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i.i.i, 24
  br label %_ZNK4lean11declaration4kindEv.exit

_ZNK4lean11declaration4kindEv.exit:               ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  switch i32 %.0.i.i.i, label %bb.aj [
    i32 1, label %bb.d
    i32 0, label %bb.i
    i32 2, label %bb.ak
    i32 3, label %bb.n
    i32 6, label %bb.s
    i32 4, label %bb.ak
    i32 5, label %bb.ai
  ]

bb.d:                                             ; preds = %_ZNK4lean11declaration4kindEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10   ; 7 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4lean14definition_val10get_safetyEv.exit

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !12
  br label %_ZNK4lean14definition_val10get_safetyEv.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4lean14definition_val10get_safetyEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  br label %_ZNK4lean14definition_val10get_safetyEv.exit

_ZNK4lean14definition_val10get_safetyEv.exit:     ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %i.o = phi ptr [ %i.i, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.p = tail call zeroext i8 @lean_definition_val_get_safety(ptr noundef %i.o)
  %i.q = icmp eq i8 %i.p, 0
  br label %bb.ak

end_hunk_0
