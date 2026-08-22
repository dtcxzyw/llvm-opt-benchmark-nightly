Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/symtab?download=true
inline.NumInlined: 496
inline.NumDeleted: 284
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx20ExceptionInitializerC2EPKc:bb.a

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !24
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !25
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !22
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.g, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !24
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i32 } @_ZNK11StringTableixEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %1
  %i.c = trunc i64 %1 to i32
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.c, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16StringTableEntry9serializeEPN3gmx11ISerializerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK16StringTableEntry9serializeEPN3gmx11ISerializerEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 153) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !103
  store i32 %i.g, ptr %i.a, align 4, !tbaa !36
  %i.h = load ptr, ptr %1, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, i32 } @_Z20readStringTableEntryPN3gmx11ISerializerERK11StringTable(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ20readStringTableEntryPN3gmx11ISerializerERK11StringTableENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 160) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.f = load ptr, ptr %0, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !36
  %i.j = sext i32 %i.i to i64
  %i.k = call { ptr, i32 } @_ZNK11StringTable2atEl(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11StringTable18copyToLegacySymtabEP8t_symtab(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.f, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.05.09, align 8, !tbaa !22
  %i.e = tail call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef %1, ptr noundef %i.d) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.c = icmp ugt i64 %i.b, 1022
  br i1 %i.c, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(64) @.str.1, i8 noundef zeroext 2)
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 194, ptr noundef nonnull @.str.17, ptr noundef nonnull %1, i64 noundef %i.d, i32 noundef 1022) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.e

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi ptr [ %i.h, %.preheader.i ], [ %1, %bb.a ] ; 5 uses
  %i.f = load i8, ptr %.0.i, align 1, !tbaa !26
  %i.g = icmp eq i8 %i.f, 32
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.g, label %.preheader.i, label %bb.e, !llvm.loop !106

bb.e:                                             ; preds = %.preheader.i
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #29
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZL11trim_stringPKcPci.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.02325.i = phi i32 [ %4, %bb.f ], [ %i.j, %bb.e ] ; 4 uses
  %3 = zext nneg i32 %.02325.i to i64
  %i.l = getelementptr i8, ptr %.0.i, i64 %3
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.n, 32
  br i1 %.not.i, label %bb.f, label %.lr.ph31.preheader.i

bb.f:                                             ; preds = %.lr.ph.i
  %4 = add nsw i32 %.02325.i, -1
  %i.o = icmp sgt i32 %.02325.i, 1
  br i1 %i.o, label %.lr.ph.i, label %_ZL11trim_stringPKcPci.exit, !llvm.loop !107

.lr.ph31.preheader.i:                             ; preds = %.lr.ph.i
  %i.p = tail call i32 @llvm.umin.i32(i32 %.02325.i, i32 1023)
  %wide.trip.count.i = zext nneg i32 %i.p to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.0.i, i64 %wide.trip.count.i, i1 false), !tbaa !26
  br label %_ZL11trim_stringPKcPci.exit

_ZL11trim_stringPKcPci.exit:                      ; preds = %bb.f, %.lr.ph31.preheader.i, %bb.e
  %.024.lcssa.i = phi i64 [ %wide.trip.count.i, %.lr.ph31.preheader.i ], [ 0, %bb.e ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %.024.lcssa.i
  store i8 0, ptr %i.q, align 1, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %.preheader

bb.g:                                             ; preds = %_ZL11trim_stringPKcPci.exit
  %i.u = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 260, i64 noundef 1, i64 noundef 24) ; 5 uses
  store i32 5, ptr %i.u, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 262, i64 noundef 5, i64 noundef 8)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !115
  store ptr %i.u, ptr %i.r, align 8, !tbaa !108
  br label %.preheader

.preheader:                                       ; preds = %bb.g, %_ZL11trim_stringPKcPci.exit
  %.030.i.ph = phi ptr [ %i.s, %_ZL11trim_stringPKcPci.exit ], [ %i.u, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %._crit_edge.i.a
  %.030.i = phi ptr [ %i.an, %._crit_edge.i.a ], [ %.030.i.ph, %.preheader ] ; 5 uses
  %i.y = load i32, ptr %.030.i, align 8, !tbaa !111 ; 2 uses
  %.not46.i = icmp sgt i32 %i.y, 0
  br i1 %.not46.i, label %.lr.ph.i2, label %._crit_edge.i.a

.lr.ph.i2:                                        ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %wide.trip.count.i3 = zext nneg i32 %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.l
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i4, 1 ; 2 uses
  %exitcond.not.i6 = icmp eq i64 %indvars.iv.next.i5, %wide.trip.count.i3
  br i1 %exitcond.not.i6, label %._crit_edge.i.a, label %bb.j, !llvm.loop !117

bb.j:                                             ; preds = %bb.i, %.lr.ph.i2
  %indvars.iv.i4 = phi i64 [ 0, %.lr.ph.i2 ], [ %indvars.iv.next.i5, %bb.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i4
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.af = load i32, ptr %0, align 8, !tbaa !118
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %0, align 8, !tbaa !118
  %i.ah = call noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.a)
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !116
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i4 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !53
  br label %_ZL9enter_bufP8t_symtabPc.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) %i.a) #29
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZL9enter_bufP8t_symtabPc.exit.loopexit, label %bb.i

._crit_edge.i.a:                                  ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !115 ; 2 uses
  %.not36.not.i = icmp eq ptr %i.an, null
  br i1 %.not36.not.i, label %bb.m, label %bb.h, !llvm.loop !119

bb.m:                                             ; preds = %._crit_edge.i.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.ap = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 260, i64 noundef 1, i64 noundef 24) ; 4 uses
  store i32 5, ptr %i.ap, align 8, !tbaa !111
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 262, i64 noundef 5, i64 noundef 8)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr null, ptr %i.as, align 8, !tbaa !115
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !115
  %i.at = load i32, ptr %0, align 8, !tbaa !118
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8, !tbaa !118
  %i.av = call noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.a)
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !116 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !53
  br label %_ZL9enter_bufP8t_symtabPc.exit

_ZL9enter_bufP8t_symtabPc.exit.loopexit:          ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i4
  br label %_ZL9enter_bufP8t_symtabPc.exit

_ZL9enter_bufP8t_symtabPc.exit:                   ; preds = %_ZL9enter_bufP8t_symtabPc.exit.loopexit, %bb.k, %bb.m
  %.2.i = phi ptr [ %i.aw, %bb.m ], [ %i.aj, %bb.k ], [ %i.ax, %_ZL9enter_bufP8t_symtabPc.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %.2.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z13lookup_symtabP8t_symtabPPc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01928 = load ptr, ptr %i.a, align 8, !tbaa !120 ; 2 uses
  %.not29 = icmp eq ptr %.01928, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01931 = phi ptr [ %.01928, %.lr.ph ], [ %.019, %bb.c ] ; 3 uses
  %.01630 = phi i32 [ 0, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01931, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %i.b, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  %.pre = load i32, ptr %.01931, align 8, !tbaa !111 ; 2 uses
  %i.j = icmp sgt i32 %.pre, %i.h
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.pre, %.01630
  %i.l = getelementptr inbounds nuw i8, ptr %.01931, i64 16
  %.019 = load ptr, ptr %i.l, align 8, !tbaa !120 ; 2 uses
  %.not = icmp eq ptr %.019, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(64) @.str.1, i8 noundef zeroext 2)
  %i.m = load ptr, ptr %1, align 8, !tbaa !53
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 234, ptr noundef nonnull @.str.13, ptr noundef %i.m) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %._crit_edge
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.b
  %i.o = add nsw i32 %.01630, %i.h
  ret i32 %i.o
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(64) %1) #24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.b, ptr %i.a, align 8, !tbaa !25
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !22
  %i.f = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.f, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.h, ptr %i.g, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
end_hunk_0
begin_hunk_1_@_Z11free_symtabP8t_symtab:bb.a
  %i.f = sub nsw i32 %i.c, %i.e
  store i32 %i.f, ptr %0, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %.01419, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115  ; 2 uses
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull %.01419)
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !108
  %i.i = load i32, ptr %0, align 8, !tbaa !118
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.h, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(64) @.str.1, i8 noundef zeroext 2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 407) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.l = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z9pr_symtabP8_IO_FILEiPKcP8t_symtab(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.2", align 1  ; 3 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 8, !tbaa !118
  %i.c = tail call noundef i32 @_Z10pr_title_nP8_IO_FILEiPKci(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.b)
  %i.d = load i32, ptr %3, align 8, !tbaa !118    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.03141 = load ptr, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %.not42 = icmp eq ptr %.03141, null
  br i1 %.not42, label %._crit_edge46, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.03145 = phi ptr [ %.031, %._crit_edge ], [ %.03141, %bb.b ] ; 4 uses
  %.03244 = phi i32 [ %i.x, %._crit_edge ], [ %i.d, %bb.b ] ; 3 uses
  %.03343 = phi i32 [ %.134.lcssa, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.f = load i32, ptr %.03145, align 8, !tbaa !111
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = icmp sgt i32 %.03244, 0
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.03145, i64 8
  %i.k = zext nneg i32 %.03244 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.13438 = phi i32 [ %.03343, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.c) ; 0 uses
  %i.m = add nsw i32 %.13438, 1                   ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %2, i32 noundef %.13438, ptr noundef %i.p) #24 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.r = load i32, ptr %.03145, align 8, !tbaa !111
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.k
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.134.lcssa = phi i32 [ %.03343, %.preheader ], [ %i.m, %._crit_edge.loopexit ]
  %.030.lcssa = phi i32 [ 0, %.preheader ], [ %i.w, %._crit_edge.loopexit ]
  %i.x = sub nsw i32 %.03244, %.030.lcssa         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03145, i64 16
  %.031 = load ptr, ptr %i.y, align 8, !tbaa !120 ; 2 uses
  %.not = icmp eq ptr %.031, null
  br i1 %.not, label %._crit_edge46, label %.preheader, !llvm.loop !131

._crit_edge46:                                    ; preds = %._crit_edge, %bb.b
  %.032.lcssa = phi i32 [ %i.d, %bb.b ], [ %i.x, %._crit_edge ]
  %.not35 = icmp eq i32 %.032.lcssa, 0
  br i1 %.not35, label %bb.j, label %bb.d

bb.d:                                             ; preds = %._crit_edge46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(64) @.str.1, i8 noundef zeroext 2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 432) #28
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ab = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %._crit_edge46, %bb.a
  ret void
}

declare noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { cold noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !14, i64 24}
!10 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!11 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!17 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !18, i64 0, !14, i64 8}
!18 = !{!"float", !7, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!23, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !14, i64 8, !7, i64 16}
!24 = !{!23, !14, i64 8}
!25 = !{!14, !14, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!28, !6, i64 32}
!28 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !23, i64 0, !6, i64 32}
!29 = !{!30, !6, i64 32}
!30 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !23, i64 0, !6, i64 32}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !33, i64 0, !34, i64 8}
!33 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEEE", !13, i64 0}
!34 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEE", !13, i64 0}
!35 = !{!15, !16, i64 0}
!36 = !{!6, !6, i64 0}
!37 = !{!32, !34, i64 8}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!10, !14, i64 8}
!41 = !{!10, !11, i64 0}
!42 = !{!16, !16, i64 0}
!43 = !{!44, !14, i64 0}
!44 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !14, i64 0}
!45 = distinct !{!45, !39}
!46 = !{!17, !14, i64 8}
!47 = !{!10, !16, i64 16}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!10, !16, i64 48}
!50 = distinct !{!50, !39}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !8, i64 0}
!53 = !{!21, !21, i64 0}
!54 = !{i64 0, i64 8, !53, i64 8, i64 8, !53, i64 16, i64 4, !36}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !13, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSSt10type_index", !59, i64 0}
!59 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!60 = distinct !{null, null, null}
!61 = !{!13, !13, i64 0}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !64, i64 0}
!64 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!65 = !{!66, !67, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !63, i64 8}
!67 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !13, i64 0}
!68 = !{!69, !6, i64 8}
!69 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!70 = !{!69, !6, i64 12}
!71 = distinct !{null, null, null}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!75 = !{!73, !74, i64 8}
!76 = !{!77, !13, i64 0}
!77 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!78 = distinct !{!78, !39}
!79 = !{!73, !74, i64 16}
!80 = distinct !{!80, !39}
!81 = distinct !{null}
!82 = !{!83, !84, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!85 = !{!83, !84, i64 16}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !39}
!89 = !{!83, !84, i64 8}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = !{!84, !84, i64 0}
!94 = distinct !{!94, !87}
!95 = distinct !{!95, !87}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!101 = !{!97, !100}
!102 = distinct !{!102, !39}
!103 = !{!104, !6, i64 8}
!104 = !{!"_ZTS16StringTableEntry", !105, i64 0, !6, i64 8}
!105 = !{!"_ZTSSt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !84, i64 0}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = !{!109, !110, i64 8}
!109 = !{!"_ZTS8t_symtab", !6, i64 0, !110, i64 8}
!110 = !{!"p1 _ZTS8t_symbuf", !13, i64 0}
!111 = !{!112, !6, i64 0}
!112 = !{!"_ZTS8t_symbuf", !6, i64 0, !113, i64 8, !110, i64 16}
!113 = !{!"p2 omnipotent char", !12, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!112, !110, i64 16}
!116 = !{!112, !113, i64 8}
!117 = distinct !{!117, !39}
!118 = !{!109, !6, i64 0}
!119 = distinct !{!119, !39}
!120 = !{!110, !110, i64 0}
!121 = distinct !{!121, !39}
!122 = !{!123, !123, i64 0}
!123 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !39}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
end_hunk_1
