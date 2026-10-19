Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MaterialSystem?download=true
inline.NumInlined: 310
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10aiMaterial5ClearEv:bb.a
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !1
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK10aiMaterial7GetNameEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.aiString) align 4 captures(none) initializes((0, 1028)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %0, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.11, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not58.i = icmp eq i32 %i.c, 0
  br i1 %.not58.i, label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  %wide.trip.count82.i = zext i32 %i.c to i64
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #25
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1028
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1032
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %aiGetMaterialProperty.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count82.i
  br i1 %exitcond.not.i, label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit, label %.lr.ph.split.split.i, !llvm.loop !0

aiGetMaterialProperty.exit:                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1040
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %aiGetMaterialProperty.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1048
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  store i32 %i.u, ptr %0, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = add i32 %i.u, 1
  %i.y = zext i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr nonnull align 4 %i.w, i64 %i.y, i1 false)
  br label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit

bb.g:                                             ; preds = %aiGetMaterialProperty.exit
  %i.z = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA18_KcRPS2_RA29_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 1 dereferenceable(18) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(29) @.str.2)
  br label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit

_ZNK10aiMaterial3GetEPKcjjR8aiString.exit:        ; preds = %bb.e, %bb.a, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 -1, 1) i32 @_ZN10aiMaterial14RemovePropertyEPKcjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not33 = icmp eq i32 %i.b, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #25
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1028
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, %2
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1032
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, %3
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw i64 %indvars.iv to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN18aiMaterialPropertyD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br label %_ZN18aiMaterialPropertyD2Ev.exit

_ZN18aiMaterialPropertyD2Ev.exit:                 ; preds = %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 1056) #27
  %i.r = load i32, ptr %i.a, align 8
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.a, align 8
  %i.t = icmp ugt i32 %i.s, %i.n
  br i1 %i.t, label %.lr.ph32, label %.critedge

.lr.ph32:                                         ; preds = %_ZN18aiMaterialPropertyD2Ev.exit, %.lr.ph32
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.lr.ph32 ], [ %indvars.iv, %_ZN18aiMaterialPropertyD2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv39
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load i32, ptr %i.a, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next40, %i.z
  br i1 %i.aa, label %.lr.ph32, label %.critedge, !llvm.loop !21

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !22

.critedge:                                        ; preds = %bb.h, %.lr.ph32, %bb.a, %_ZN18aiMaterialPropertyD2Ev.exit
  %i.ab = phi i32 [ 0, %_ZN18aiMaterialPropertyD2Ev.exit ], [ -1, %bb.a ], [ 0, %.lr.ph32 ], [ -1, %bb.h ]
  ret i32 %i.ab
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -3, 1) i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not51 = icmp eq i32 %i.c, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.037.lcssa = phi i32 [ -1, %.preheader ], [ %.138, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.d = tail call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #28 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.d, i8 0, i64 1032, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1048 ; 2 uses
  store ptr null, ptr %i.f, align 8
  store ptr %i.d, ptr %7, align 8
  store i32 %6, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1028
  store i32 %4, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  store i32 %5, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1036
  store i32 %2, ptr %i.i, align 4
  %i.j = zext i32 %2 to i64                       ; 2 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #28
          to label %bb.h unwind label %8          ; 2 uses

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.l = phi i32 [ %i.ab, %bb.g ], [ %i.c, %.preheader ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %.03749 = phi i32 [ %.138, %bb.g ], [ -1, %.preheader ] ; 4 uses
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %.not47 = icmp eq ptr %i.o, null
  br i1 %.not47, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %3) #25
  %.not48 = icmp eq i32 %i.q, 0
  br i1 %.not48, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1028
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, %4
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1032
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, %5
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1048
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN18aiMaterialPropertyD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %_ZN18aiMaterialPropertyD2Ev.exit

_ZN18aiMaterialPropertyD2Ev.exit:                 ; preds = %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 1056) #27
  %i.aa = trunc nuw i64 %indvars.iv to i32
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN18aiMaterialPropertyD2Ev.exit, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.ab = phi i32 [ %i.l, %bb.b ], [ %.pre, %_ZN18aiMaterialPropertyD2Ev.exit ], [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %.lr.ph ] ; 2 uses
  %.138 = phi i32 [ %.03749, %bb.b ], [ %i.aa, %_ZN18aiMaterialPropertyD2Ev.exit ], [ %.03749, %bb.d ], [ %.03749, %bb.c ], [ %.03749, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !23

bb.h:                                             ; preds = %._crit_edge
  store ptr %i.k, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %i.j, i1 false)
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ah = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %3) #26 ; 0 uses
  %.not = icmp eq i32 %.037.lcssa, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = zext i32 %.037.lcssa to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  store ptr %i.d, ptr %i.ak, align 8
  br label %_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev.exit

8:                                                ; preds = %._crit_edge
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.b, align 8             ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.j
  %.pre54 = load ptr, ptr %0, align 8
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ap = shl i32 %i.al, 1                        ; 2 uses
  store i32 %i.ap, ptr %i.am, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #28
          to label %bb.l unwind label %bb.m       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %i.au = zext i32 %i.al to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.at, i64 %i.av, i1 false)
  %i.aw = icmp eq ptr %i.at, null
  br i1 %i.aw, label %.critedge, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.ay = extractvalue { ptr, i32 } %i.ax, 1
  %i.az = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bb = extractvalue { ptr, i32 } %i.ax, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.l
  store ptr %i.as, ptr %0, align 8
  %.pre55 = load i32, ptr %i.b, align 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge53, %.critedge
  %i.be = phi i32 [ %i.al, %._crit_edge53 ], [ %.pre55, %.critedge ] ; 2 uses
  %i.bf = phi ptr [ %.pre54, %._crit_edge53 ], [ %i.as, %.critedge ]
  %i.bg = add i32 %i.be, 1
  store i32 %i.bg, ptr %i.b, align 8
  %i.bh = zext i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  store ptr %i.d, ptr %i.bi, align 8
  br label %_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev.exit

bb.r:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 1048
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZdaPv(ptr noundef nonnull %i.bk) #27
  br label %_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit.i

_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit.i: ; preds = %bb.s, %bb.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1056) #27
  br label %_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.q, %bb.i, %_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit.i
  %.14065 = phi i32 [ -3, %_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit.i ], [ 0, %bb.i ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.m, %bb.o, %8
  %.merged = phi { ptr, i32 } [ %9, %8 ], [ %i.bd, %bb.o ], [ %i.ax, %bb.m ]
  call void @_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.merged

bb.u:                                             ; preds = %bb.a, %_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev.exit
  %.2 = phi i32 [ %.14065, %_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev.exit ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI18aiMaterialPropertySt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #27
  br label %_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit

_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1056) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteI18aiMaterialPropertyEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -3, 1) i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = add i32 %i.a, 5
  %i.c = tail call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 3)
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not75 = icmp eq i32 %i.b, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.r, %bb.a
  %.018.lcssa = phi i32 [ 1503, %bb.a ], [ %.1, %bb.r ]
  ret i32 %.018.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.01873 = phi i32 [ 1503, %.lr.ph ], [ %.1, %bb.r ] ; 5 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 12 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %.not20 = icmp eq i8 %i.g, 63
  br i1 %.not20, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 5 uses
  %i.i = load i32, ptr %i.e, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25
  %i.l = trunc i64 %i.k to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.054.i = phi i32 [ %i.l, %bb.f ], [ %i.i, %bb.e ] ; 3 uses
  %i.m = and i32 %.054.i, 3
  %i.n = lshr i32 %.054.i, 2                      ; 5 uses
  %.not60.i = icmp eq i32 %i.n, 0
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.o = and i32 %.054.i, 4
  %lcmp.mod.not = icmp eq i32 %i.o, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.p = load i16, ptr %i.h, align 4
  %i.q = zext i16 %i.p to i32
  %i.r = add i32 %.01873, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 11
  %i.w = shl i32 %i.r, 16
  %i.x = xor i32 %i.v, %i.w
  %i.y = xor i32 %i.x, %i.r                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = lshr i32 %i.y, 11
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = add nsw i32 %i.n, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.063.i.unr = phi i32 [ %.01873, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.15562.i.unr = phi i32 [ %i.n, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.05661.i.unr = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %i.ad = icmp eq i32 %i.n, 1
  br i1 %i.ad, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.063.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.063.i.unr, %.lr.ph.i.prol.loopexit ]
  %.15562.i = phi i32 [ %i.be, %.lr.ph.i ], [ %.15562.i.unr, %.lr.ph.i.prol.loopexit ]
  %.05661.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.05661.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ae = load i16, ptr %.05661.i, align 1
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i32 %.063.i, %i.af                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05661.i, i64 2
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 11
  %i.al = shl i32 %i.ag, 16
  %i.am = xor i32 %i.ak, %i.al
  %i.an = xor i32 %i.am, %i.ag                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05661.i, i64 4
  %i.ap = lshr i32 %i.an, 11
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = load i16, ptr %i.ao, align 1
  %i.as = zext i16 %i.ar to i32
  %i.at = add i32 %i.aq, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05661.i, i64 6
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 11
  %i.ay = shl i32 %i.at, 16
  %i.az = xor i32 %i.ax, %i.ay
  %i.ba = xor i32 %i.az, %i.at                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05661.i, i64 8
  %i.bc = lshr i32 %i.ba, 11
  %i.bd = add i32 %i.bc, %i.ba                    ; 2 uses
  %i.be = add nsw i32 %.15562.i, -2               ; 2 uses
  %.not.i.1 = icmp eq i32 %i.be, 0
  br i1 %.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !24

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bd, %.lr.ph.i ]
  %i.bf = add nsw i32 %i.n, -1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = getelementptr i8, ptr %i.h, i64 %i.bh
  %scevgep.i = getelementptr i8, ptr %i.bi, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.g
  %.056.lcssa.i = phi ptr [ %i.h, %bb.g ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ %.01873, %bb.g ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.m, label %default.unreachable [
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
    i32 0, label %_Z13SuperFastHashPKcjj.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.056.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.0.lcssa.i, %i.bk              ; 2 uses
  %i.bm = shl i32 %i.bl, 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.056.lcssa.i, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = tail call i8 @llvm.abs.i8(i8 %i.bo, i1 false)
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 18
  %i.bs = xor i32 %i.bm, %i.br
end_hunk_0
