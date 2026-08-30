Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_re2c_lexer_str?download=true
inline.NumInlined: 1342
inline.NumDeleted: 400
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEC2ENS0_8token_idERKSE_RKSG_RKNS_8optionalISG_EE:bb.a
_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28
          to label %.noexc8 unwind label %bb.n    ; 5 uses

.noexc8:                                          ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !14
  %i.aq = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !10
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.ar, i64 %i.av, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i: ; preds = %.noexc8, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i
  %i.aw = phi ptr [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i ], [ %i.am, %.noexc8 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 1, ptr %i.ax, align 1, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEEC2ERKSB_.exit
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !33
  %i.ay = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ac, align 1, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.bd = load i8, ptr %4, align 8, !tbaa !234, !range !18, !noalias !231, !noundef !19
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 1, ptr %i.bc, align 8, !tbaa !141, !alias.scope !231
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !33, !noalias !231 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15, !noalias !231 ; 2 uses
  %i.bk = icmp eq i8 %i.bj, -1
  br i1 %i.bk, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !10, !noalias !231 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = icmp eq ptr %i.bl, %i.bi
  br i1 %i.bp, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i, label %bb.k

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.j
  store ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, ptr %i.bg, align 8, !tbaa !33, !alias.scope !231
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bq = add i64 %i.bo, 24                       ; 2 uses
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %.noexc.i.i.i.i.i.i.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i, !prof !36

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc9 unwind label %bb.o

.noexc9:                                          ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #28
          to label %.noexc10 unwind label %bb.o   ; 5 uses

.noexc10:                                         ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bs, ptr %i.bg, align 8, !tbaa !33, !alias.scope !231
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bo ; 2 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !10, !noalias !231
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !14, !noalias !231
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !33, !noalias !231 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !10, !noalias !231
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull align 8 %i.bx, i64 %i.cb, i1 false), !noalias !231
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %.noexc10, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i
  %i.cc = phi ptr [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE4InitEmm.exit.thread.i.i.i.i.i.i.i.i ], [ %i.bs, %.noexc10 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 1, ptr %i.cd, align 1, !tbaa !15, !noalias !231
  br label %_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i

bb.l:                                             ; preds = %bb.i
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !33, !alias.scope !231
  %i.ce = add nuw i8 %i.bj, 1
  store i8 %i.ce, ptr %i.bi, align 1, !tbaa !15, !noalias !231
  br label %_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i

_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i: ; preds = %bb.l, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false)
  br label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEEC2ERKSF_.exit

bb.m:                                             ; preds = %bb.h
  store i8 0, ptr %i.bc, align 8, !tbaa !141, !alias.scope !231
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.ch, align 8, !tbaa !15, !alias.scope !231
  br label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEEC2ERKSF_.exit

_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEEC2ERKSF_.exit: ; preds = %bb.m, %_ZN5boost15optional_detail24fallback_guarded_storageINS_4wave4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2IJRKSF_EEENS_11optional_ns15in_place_init_tEDpOT_.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.ci, align 8, !tbaa !235
  ret void

bb.n:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.o ], [ %i.cj, %bb.n ]
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
  store i32 -1, ptr %i.e, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 -1, ptr %i.f, align 4, !tbaa !125
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %.biased.i = add i64 %i.c, 7
  %.0.i = and i64 %.biased.i, -8                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = mul i64 %.0.i, %i.e
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.g, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.k = icmp ugt i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.j, 1                         ; 2 uses
  store i64 %i.l, ptr %i.d, align 8, !tbaa !26
  %i.m = load i64, ptr %i.a, align 8, !tbaa !56
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8)
  %.biased.i21 = add i64 %i.n, 7
  %.0.i22 = and i64 %.biased.i21, -8              ; 2 uses
  %i.o = mul i64 %.0.i22, %i.l
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.p, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.115 = phi i64 [ %.0.i22, %bb.c ], [ %.0.i, %bb.a ] ; 6 uses
  %.113 = phi i64 [ %i.p, %bb.c ], [ %i.g, %bb.a ] ; 3 uses
  %.1 = phi ptr [ %i.q, %bb.c ], [ %i.h, %bb.a ]  ; 7 uses
  %i.s = sub i64 0, %.115                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq i64 %i.u, 0
  %i.v = load i64, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = shl i64 %i.v, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.y = mul i64 %i.v, %.115
  %i.z = udiv i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.z, %i.u
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i64 %i.v, 1
  %i.ac = mul i64 %i.w, %i.u
  %i.ad = udiv i64 %i.ac, %.115
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ab)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sroa.speculated.sink = phi i64 [ %.sroa.speculated, %bb.g ], [ %i.x, %bb.e ]
  %i.ae = tail call i64 @llvm.umax.i64(i64 %i.w, i64 8)
  %.biased.i.i.i23 = add i64 %i.ae, 7
  %.0.i.i.i24 = and i64 %.biased.i.i.i23, -8
  %i.af = udiv i64 -17, %.0.i.i.i24
  %.sroa.speculated.i25 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.speculated.sink) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated.i25, ptr %i.ag, align 8, !tbaa !25
  store i64 %.sroa.speculated.i25, ptr %i.d, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.ah = load ptr, ptr %0, align 8, !tbaa !135
  %reass.sub = sub i64 %.113, %.115
  %i.ai = add i64 %reass.sub, -16                 ; 3 uses
  %i.aj = urem i64 %i.ai, %.115                   ; 2 uses
  %i.ak = sub nuw i64 %i.ai, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ak ; 4 uses
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !136
  %1 = icmp eq i64 %i.ai, %i.aj
  br i1 %1, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not27.i.i = icmp eq i64 %i.ak, %.115
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.026.i.i = getelementptr inbounds i8, ptr %i.al, i64 %i.s
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %.022.lcssa.i.i = phi ptr [ %i.al, %bb.i ], [ %.029.i.i, %.lr.ph.i.i ]
  store ptr %.022.lcssa.i.i, ptr %.1, align 8, !tbaa !136
  br label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.029.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.026.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %.02228.i.i = phi ptr [ %.029.i.i, %.lr.ph.i.i ], [ %i.al, %.lr.ph.preheader.i.i ]
  store ptr %.02228.i.i, ptr %.029.i.i, align 8, !tbaa !136
  %.0.i.i = getelementptr inbounds i8, ptr %.029.i.i, i64 %i.s ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !236

_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit: ; preds = %bb.h, %._crit_edge.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !237
  %i.ao = getelementptr inbounds nuw i8, ptr %.1, i64 %.113 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !238
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !56
  store ptr %.1, ptr %i.am, align 8, !tbaa !28
  store i64 %.113, ptr %i.aq, align 8, !tbaa !56
  %i.at = load ptr, ptr %.1, align 8, !tbaa !136
  store ptr %i.at, ptr %0, align 8, !tbaa !135
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !127 ; 0 uses

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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !126
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %.body, !inline_history !239

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #31, !inline_history !240
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
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #31, !inline_history !241
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit unwind label %bb.c, !inline_history !127 ; 0 uses

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
end_hunk_0
