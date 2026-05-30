inline.NumInlined: 199
inline.NumDeleted: 97
begin_hunk_0_@_ZN6google8protobuf8compiler9ZipWriter14WriteDirectoryEv:bb.a
  store ptr %i.gi, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i16 0, ptr %i.e, align 2
  %i.gj = load ptr, ptr %1, align 8, !tbaa !39
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = icmp slt i64 %i.gm, 2
  br i1 %i.gn, label %bb.bc, label %bb.bd, !prof !55

bb.bc:                                            ; preds = %bb.bb
  %i.go = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.e, i32 noundef 2, ptr noundef nonnull %i.gi)
          to label %bb.be unwind label %bb.bw

bb.bd:                                            ; preds = %bb.bb
  store i16 0, ptr %i.gi, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 6
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i.i.i81 = phi ptr [ %i.gp, %bb.bd ], [ %i.go, %bb.bc ] ; 5 uses
  store ptr %.0.i.i.i81, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i16 0, ptr %i.d, align 2
  %i.gq = load ptr, ptr %1, align 8, !tbaa !39
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %.0.i.i.i81 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = icmp slt i64 %i.gt, 2
  br i1 %i.gu, label %bb.bf, label %bb.bg, !prof !55

bb.bf:                                            ; preds = %bb.be
  %i.gv = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.d, i32 noundef 2, ptr noundef %.0.i.i.i81)
          to label %bb.bh unwind label %bb.bw

bb.bg:                                            ; preds = %bb.be
  store i16 0, ptr %.0.i.i.i81, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i.i.i81, i64 2
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0.i.i.i84 = phi ptr [ %i.gw, %bb.bg ], [ %i.gv, %bb.bf ] ; 5 uses
  store ptr %.0.i.i.i84, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i16 %i.aa, ptr %i.c, align 2
  %i.gx = load ptr, ptr %1, align 8, !tbaa !39
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %.0.i.i.i84 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp slt i64 %i.ha, 2
  br i1 %i.hb, label %bb.bi, label %bb.bj, !prof !55

bb.bi:                                            ; preds = %bb.bh
  %i.hc = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef %.0.i.i.i84)
          to label %bb.bk unwind label %bb.bw

bb.bj:                                            ; preds = %bb.bh
  store i16 %i.aa, ptr %.0.i.i.i84, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i.i.i84, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0.i.i.i87 = phi ptr [ %i.hd, %bb.bj ], [ %i.hc, %bb.bi ] ; 5 uses
  store ptr %.0.i.i.i87, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i16 %i.aa, ptr %i.b, align 2
  %i.he = load ptr, ptr %1, align 8, !tbaa !39
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %.0.i.i.i87 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = icmp slt i64 %i.hh, 2
  br i1 %i.hi, label %bb.bl, label %bb.bm, !prof !55

bb.bl:                                            ; preds = %bb.bk
  %i.hj = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef %.0.i.i.i87)
          to label %bb.bn unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bk
  store i16 %i.aa, ptr %.0.i.i.i87, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i.i.i87, i64 2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0.i.i.i90 = phi ptr [ %i.hk, %bb.bm ], [ %i.hj, %bb.bl ] ; 4 uses
  store ptr %.0.i.i.i90, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.hl = load ptr, ptr %1, align 8, !tbaa !39
  %.not.i.i93 = icmp ult ptr %.0.i.i.i90, %i.hl
  br i1 %.not.i.i93, label %bb.bp, label %bb.bo, !prof !52

bb.bo:                                            ; preds = %bb.bn
  %i.hm = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %.0.i.i.i90)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.0.i.i94 = phi ptr [ %.0.i.i.i90, %bb.bn ], [ %i.hm, %bb.bo ] ; 2 uses
  store i32 %i.ge, ptr %.0.i.i94, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 4 ; 4 uses
  store ptr %i.hn, ptr %i.aj, align 8, !tbaa !53
  %i.ho = load ptr, ptr %1, align 8, !tbaa !39
  %.not.i.i97 = icmp ult ptr %i.hn, %i.ho
  br i1 %.not.i.i97, label %bb.br, label %bb.bq, !prof !52

bb.bq:                                            ; preds = %bb.bp
  %i.hp = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.hn)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.0.i.i98 = phi ptr [ %i.hn, %bb.bp ], [ %i.hp, %bb.bq ] ; 3 uses
  store i32 %i.ag, ptr %.0.i.i98, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 4 ; 4 uses
  store ptr %i.hq, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i16 0, ptr %i.a, align 2
  %i.hr = load ptr, ptr %1, align 8, !tbaa !39
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = icmp slt i64 %i.hu, 2
  br i1 %i.hv, label %bb.bs, label %bb.bt, !prof !55

bb.bs:                                            ; preds = %bb.br
  %i.hw = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull %i.hq)
          to label %bb.bu unwind label %bb.bw

bb.bt:                                            ; preds = %bb.br
  store i16 0, ptr %i.hq, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.0.i.i.i101 = phi ptr [ %i.hx, %bb.bt ], [ %i.hw, %bb.bs ] ; 2 uses
  store ptr %.0.i.i.i101, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.hy = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %.0.i.i.i101)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.hy, ptr %i.aj, align 8, !tbaa !53
  %i.hz = load i8, ptr %i.an, align 8, !tbaa !44, !range !37, !noundef !38
  %i.ia = trunc nuw i8 %i.hz to i1
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i1 %i.ia

bb.bw:                                            ; preds = %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.ba, %._crit_edge
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.ay ], [ %i.ib, %bb.bw ]
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = sdiv exact i64 %i.g, 48                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 192153584101141162)
  %7 = select i1 %5, i64 192153584101141162, i64 %6 ; 2 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %10 = mul nuw nsw i64 %7, 48                    ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #19 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !27
  %i.k = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.m, ptr %i.a, align 8, !tbaa !36
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !18
  %i.p = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.p, ptr %i.j, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !23
  store i8 %i.r, ptr %i.q, align 1, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !28
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !58, !noalias !61
  %i.z = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !61, !noalias !58 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !28, !alias.scope !61, !noalias !58 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !63
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.z, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !58, !noalias !61
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !23, !alias.scope !61, !noalias !58
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !23, !alias.scope !58, !noalias !61
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !28, !alias.scope !61, !noalias !58
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.ah = phi i64 [ %i.ad, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !28, !alias.scope !58, !noalias !61
  store ptr %i.aa, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !61, !noalias !58
  store i64 0, ptr %i.ai, align 8, !tbaa !28, !alias.scope !61, !noalias !58
  store i8 0, ptr %i.aa, align 8, !tbaa !23, !alias.scope !61, !noalias !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false), !alias.scope !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !64

_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.e ], [ %i.an, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ao, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ap, ptr %.012.i.i.i28, align 8, !tbaa !27, !alias.scope !65, !noalias !68
  %i.aq = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !18, !alias.scope !68, !noalias !65 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28, !alias.scope !68, !noalias !65 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false), !alias.scope !70
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.aq, ptr %.012.i.i.i28, align 8, !tbaa !18, !alias.scope !65, !noalias !68
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !23, !alias.scope !65, !noalias !68
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !28, !alias.scope !68, !noalias !65
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !28, !alias.scope !65, !noalias !68
  store ptr %i.ar, ptr %.0911.i.i.i29, align 8, !tbaa !18, !alias.scope !68, !noalias !65
  store i64 0, ptr %i.az, align 8, !tbaa !28, !alias.scope !68, !noalias !65
  store i8 0, ptr %i.ar, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, ptr noundef nonnull align 8 dereferenceable(12) %i.bc, i64 12, i1 false), !alias.scope !70
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !64

_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ao, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.be, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #15
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, %bb.h
  store ptr %11, ptr %0, align 8, !tbaa !16
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %11, i64 %7
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !26
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #16 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #15
  invoke void @__cxa_rethrow() #18
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #17
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8compiler9ZipWriterE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSN6google8protobuf8compiler9ZipWriter8FileInfoE", !10, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!19, !21, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !22, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!5, !5, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!14, !15, i64 16}
!27 = !{!20, !21, i64 0}
!28 = !{!19, !22, i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !6, i64 0}
!31 = !{!32, !4, i64 32}
!32 = !{!"_ZTSN6google8protobuf8compiler9ZipWriter8FileInfoE", !19, i64 0, !4, i64 32, !4, i64 36, !4, i64 40}
!33 = !{!32, !4, i64 36}
!34 = distinct !{!34, !25}
!35 = !{!32, !4, i64 40}
!36 = !{!22, !22, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!40, !21, i64 0}
!40 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !21, i64 0, !21, i64 8, !5, i64 16, !9, i64 48, !41, i64 56, !41, i64 57, !41, i64 58, !41, i64 59}
!41 = !{!"bool", !5, i64 0}
!42 = !{!40, !21, i64 8}
!43 = !{!40, !9, i64 48}
!44 = !{!40, !41, i64 56}
!45 = !{!40, !41, i64 57}
!46 = !{!40, !41, i64 58}
!47 = !{!40, !41, i64 59}
!48 = !{!21, !21, i64 0}
!49 = distinct !{null}
!50 = !{!51, !22, i64 72}
!51 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !40, i64 0, !21, i64 64, !22, i64 72}
!52 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!53 = !{!51, !21, i64 64}
!54 = !{!10, !10, i64 0}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = distinct !{null, null}
!57 = distinct !{!57, !25}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!63 = !{!59, !62}
!64 = distinct !{!64, !25}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!70 = !{!66, !69}
end_hunk_0
