inline.NumInlined: 1028
inline.NumDeleted: 519
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %.not.i.i.i20 = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !191

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.aq, %.lr.ph.i.i.i17 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !143
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #18
  br label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !142
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !143
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !198

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !200

_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #16
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #17 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !201

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !200

_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.aw = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #18
  br label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ay, ptr %i.h, align 8, !tbaa !74
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE13_M_deallocateEPS4_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_assign_auxIPS4_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = load ptr, ptr %0, align 8, !tbaa !136    ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775776
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #17 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i
  %3 = ptrtoaddr ptr %2 to i64
  %4 = ptrtoaddr ptr %1 to i64
  %reass.sub = sub i64 %3, %4
  %i.m = and i64 %reass.sub, -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %1, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #18
  br label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE20_M_allocate_and_copyIPS4_EES8_mT_S9_.exit, %bb.d
  store ptr %i.l, ptr %0, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !137
  store ptr %i.o, ptr %i.d, align 8, !tbaa !138
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.s, %i.c
  br i1 %.not, label %_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp sgt i64 %i.c, 32
  br i1 %i.t, label %bb.g, label %bb.h, !prof !57

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %i.c, 32
  br i1 %i.u, label %bb.i, label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !137
  %.not.i16 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i16, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit
  store ptr %i.v, ptr %i.p, align 8, !tbaa !137
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit

_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.s ; 2 uses
  %i.x = icmp sgt i64 %i.s, 32
  br i1 %i.x, label %bb.j, label %bb.k, !prof !57

bb.j:                                             ; preds = %_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.s, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoElEvRT_T0_St26random_access_iterator_tag.exit
  %i.y = icmp eq i64 %i.s, 32
  br i1 %i.y, label %bb.l, label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17

_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !137  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0810.i.i.i.i, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !202

_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.z, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17 ], [ %i.ab, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !137
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE15_M_erase_at_endEPS4_.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES4_EvT_S6_RSaIT0_E.exit.i, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_deallocateEPS4_m.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 4}
!8 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !10, i64 3, !10, i64 3, !5, i64 3, !4, i64 4, !11, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !5, i64 40, !5, i64 48, !17, i64 56, !18, i64 64, !18, i64 72, !5, i64 80}
!9 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !13, i64 0}
!15 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !13, i64 0}
!16 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !13, i64 0}
!17 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !13, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !13, i64 0}
!19 = !{!8, !5, i64 2}
!20 = !{!21, !21, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal14WireFormatLite8WireTypeE", !5, i64 0}
!22 = !{!23, !16, i64 32}
!23 = !{!"_ZTSN6google8protobuf10DescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !5, i64 1, !5, i64 2, !24, i64 4, !4, i64 8, !11, i64 16, !14, i64 24, !16, i64 32, !25, i64 40, !18, i64 48, !18, i64 56, !26, i64 64, !27, i64 72, !16, i64 80, !28, i64 88, !29, i64 96, !26, i64 104, !30, i64 112, !31, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!24 = !{!"short", !5, i64 0}
!25 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !13, i64 0}
!26 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !13, i64 0}
!27 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !13, i64 0}
!28 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !13, i64 0}
!29 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !13, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !13, i64 0}
!31 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!32 = !{!"any p2 pointer", !13, i64 0}
!33 = !{!23, !4, i64 8}
!34 = !{!23, !26, i64 64}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!8, !17, i64 56}
!38 = !{!5, !5, i64 0}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTSN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoE", !13, i64 0}
!44 = !{!42, !43, i64 8}
!45 = !{!42, !43, i64 16}
!46 = !{!47, !48, i64 8}
end_hunk_0
