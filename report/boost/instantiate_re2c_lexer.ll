inline.NumInlined: 1314
inline.NumDeleted: 384
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEC2ENS0_8token_idERKSE_RKSG_RKNS_8optionalISG_EE:bb.a
  br label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEEC2ERKSB_.exit

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEEC2ERKSB_.exit: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !35    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEEC2ERKSB_.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp eq ptr %i.af, %i.ac
  br i1 %i.aj, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i, label %bb.f

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i: ; preds = %bb.e
  store ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, ptr %i.aa, align 8, !tbaa !35
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %i.ai, 24                       ; 2 uses
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %.noexc.i.i.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i, !prof !38

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28
          to label %.noexc8 unwind label %bb.n    ; 5 uses

.noexc8:                                          ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !14
  %i.aq = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !10
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ar, i64 %i.av, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i: ; preds = %.noexc8, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i
  %i.aw = phi ptr [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i ], [ %i.am, %.noexc8 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 1, ptr %i.ax, align 1, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEEC2ERKSB_.exit
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !35
  %i.ay = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ac, align 1, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.bd = load i8, ptr %4, align 8, !tbaa !235, !range !18, !noalias !232, !noundef !19
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %i.bc, align 8, !tbaa !143, !alias.scope !232
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !35, !noalias !232 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15, !noalias !232 ; 2 uses
  %i.bk = icmp eq i8 %i.bj, -1
  br i1 %i.bk, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !10, !noalias !232 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq ptr %i.bl, %i.bi
  br i1 %i.bp, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i, label %bb.k

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.j
  store ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, ptr %i.bg, align 8, !tbaa !35, !alias.scope !232
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bq = add i64 %i.bo, 24                       ; 2 uses
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %.noexc.i.i.i.i.i.i.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i, !prof !38

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc9 unwind label %bb.o

.noexc9:                                          ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #28
          to label %.noexc10 unwind label %bb.o   ; 5 uses

.noexc10:                                         ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bs, ptr %i.bg, align 8, !tbaa !35, !alias.scope !232
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bo ; 2 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !10, !noalias !232
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !14, !noalias !232
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %i.bi, i64 %i.bo, i1 false), !noalias !232
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %.noexc10, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i
  %i.bw = phi ptr [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i ], [ %i.bs, %.noexc10 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i8 1, ptr %i.bx, align 1, !tbaa !15, !noalias !232
  br label %_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i

bb.l:                                             ; preds = %bb.i
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !35, !alias.scope !232
  %i.by = add nuw i8 %i.bj, 1
  store i8 %i.by, ptr %i.bi, align 1, !tbaa !15, !noalias !232
  br label %_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i

_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i: ; preds = %bb.l, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  br label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEEC2ERKSF_.exit

bb.m:                                             ; preds = %bb.h
  store i8 0, ptr %i.bc, align 8, !tbaa !143, !alias.scope !232
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.cb, align 8, !tbaa !15, !alias.scope !232
  br label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEEC2ERKSF_.exit

_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEEC2ERKSF_.exit: ; preds = %bb.m, %_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.cc, align 8, !tbaa !236
  ret void

bb.n:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.o ], [ %i.cd, %bb.n ]
  tail call void @_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt9bad_allocEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #31 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.e, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 -1, ptr %i.f, align 4, !tbaa !127
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.b, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.c, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt9bad_allocEE, ptr nonnull @_ZN5boost10wrapexceptISt9bad_allocED2Ev) #30
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4poolINS_33default_user_allocator_new_deleteEE18malloc_need_resizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %.biased.i = add i64 %i.c, 7
  %.0.i = and i64 %.biased.i, -8                  ; 10 uses
  %i.d = sub i64 0, %.0.i                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 4 uses
  %i.g = mul i64 %.0.i, %i.f
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.f, 4
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.f, 1                         ; 3 uses
  store i64 %i.l, ptr %i.e, align 8, !tbaa !26
  %i.m = mul i64 %.0.i, %i.l
  %i.n = add i64 %i.m, 16                         ; 2 uses
  %i.o = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.n, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.q = phi i64 [ %i.l, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %.113 = phi i64 [ %i.n, %bb.c ], [ %i.h, %bb.a ] ; 3 uses
  %.1 = phi ptr [ %i.o, %bb.c ], [ %i.i, %bb.a ]  ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = shl i64 %i.q, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.u = mul i64 %i.q, %.0.i
  %i.v = udiv i64 %i.u, %i.b
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = shl i64 %i.q, 1
  %i.y = mul i64 %i.s, %i.b
  %i.z = udiv i64 %i.y, %.0.i
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sroa.speculated.sink = phi i64 [ %.sroa.speculated, %bb.g ], [ %i.t, %bb.e ]
  %i.aa = udiv i64 -17, %.0.i
  %.sroa.speculated.i25 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %.sroa.speculated.sink) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated.i25, ptr %i.ab, align 8, !tbaa !25
  store i64 %.sroa.speculated.i25, ptr %i.e, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !137
  %reass.sub = sub i64 %.113, %.0.i
  %i.ad = add i64 %reass.sub, -16                 ; 3 uses
  %i.ae = urem i64 %i.ad, %.0.i
  %i.af = sub nuw i64 %i.ad, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 %i.af ; 4 uses
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !138
  %1 = icmp ult i64 %i.ad, %.0.i
  br i1 %1, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not27.i.i = icmp eq i64 %i.af, %.0.i
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.026.i.i = getelementptr inbounds i8, ptr %i.ag, i64 %i.d
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %.022.lcssa.i.i = phi ptr [ %i.ag, %bb.i ], [ %.029.i.i, %.lr.ph.i.i ]
  store ptr %.022.lcssa.i.i, ptr %.1, align 8, !tbaa !138
  br label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.029.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.026.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %.02228.i.i = phi ptr [ %.029.i.i, %.lr.ph.i.i ], [ %i.ag, %.lr.ph.preheader.i.i ]
  store ptr %.02228.i.i, ptr %.029.i.i, align 8, !tbaa !138
  %.0.i.i = getelementptr inbounds i8, ptr %.029.i.i, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !237

_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit: ; preds = %bb.h, %._crit_edge.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !238
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 %.113 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !239
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !58
  store ptr %.1, ptr %i.ah, align 8, !tbaa !28
  store i64 %.113, ptr %i.al, align 8, !tbaa !58
  %i.ao = load ptr, ptr %.1, align 8, !tbaa !138
  store ptr %i.ao, ptr %0, align 8, !tbaa !137
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit
  %.016 = phi ptr [ %.1, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.016
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt9bad_allocED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !129 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #32
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt9bad_allocE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !128
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %.body, !inline_history !240

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #31, !inline_history !241
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.b, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.c, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #31, !inline_history !242
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.n, %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7 ], [ %i.j, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost10wrapexceptISt9bad_allocE7rethrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #31 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt9bad_allocEE, ptr nonnull @_ZN5boost10wrapexceptISt9bad_allocED2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt9bad_allocED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit unwind label %bb.c, !inline_history !129 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #32
  unreachable

_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptISt9bad_allocED1Ev(ptr noundef %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
end_hunk_0
