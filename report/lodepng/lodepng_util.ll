Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepng12getChunkInfoERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERS0_ImSaImEERKS0_IhSaIhEE:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.01943 = phi ptr [ %i.g, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @_Z18lodepng_chunk_typePcPKh(ptr noundef nonnull %i.c, ptr noundef %.01943)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.n, ptr %3, align 8, !tbaa !21
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.v, ptr %i.b, align 8, !tbaa !15
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !23
  %i.y = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.y, ptr %i.n, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.n, %bb.b ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.c, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  store i64 %i.ab, ptr %i.o, align 8, !tbaa !25
  %i.ac = load ptr, ptr %3, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  %.not = icmp eq i64 %i.ae, 4
  %i.af = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.n
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.ah = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.ah)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !20
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = call noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef %.01943)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.p, ptr %4, align 8, !tbaa !21
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.al, ptr %i.a, align 8, !tbaa !15
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i27, label %._crit_edge.i.i26

.noexc.i27:                                       ; preds = %bb.f
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !23
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.ao, ptr %i.p, align 8, !tbaa !20
  br label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %.noexc.i27, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc.i27 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.al, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i26
  %i.aq = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.c, i64 %i.al, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i26
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !25
  %i.as = load ptr, ptr %4, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !26  ; 6 uses
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !21
  %i.ax = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.p
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.q, align 8, !tbaa !25  ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !23
  %i.bc = load i64, ptr %i.p, align 8, !tbaa !20
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !20
  %.pre = load i64, ptr %i.q, align 8, !tbaa !25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bd = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.az, %bb.k ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !25
  store ptr %i.p, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %i.q, align 8, !tbaa !25
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %i.bg, ptr %i.r, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.l:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.r

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l
  %.pre44 = load ptr, ptr %4, align 8, !tbaa !23  ; 2 uses
  %i.bh = icmp eq ptr %.pre44, %i.p
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !20
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %.pre44, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bk = zext i32 %i.ak to i64                   ; 2 uses
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !30  ; 4 uses
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !33
  %.not.i.i34 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i34, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.t, align 8, !tbaa !30
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.bo = load ptr, ptr %1, align 8, !tbaa !34    ; 4 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.o, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #31 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store i64 %i.bk, ptr %i.ca, align 8, !tbaa !15
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.p, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cf) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bz, ptr %1, align 8, !tbaa !34
  store ptr %i.cc, ptr %i.t, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cg, ptr %i.u, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.m, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ch = call noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.01943, ptr noundef nonnull %i.e) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ci = icmp ult ptr %i.ch, %i.e
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.h, %i.cj
  %i.cl = icmp sgt i64 %i.ck, 7
  %i.cm = and i1 %i.ci, %i.cl
  br i1 %i.cm, label %bb.b, label %.loopexit, !llvm.loop !35

bb.r:                                             ; preds = %bb.l
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.p
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.r
  %i.cq = load i64, ptr %i.p, align 8, !tbaa !20
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  resume { ptr, i32 } %i.cn

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.a, %.critedge
  %.2 = phi i32 [ 1, %.critedge ], [ 0, %bb.a ], [ 0, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  ret i32 %.2
}

declare void @_Z18lodepng_chunk_typePcPKh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng9getChunksEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS0_IS0_IhSaIhEESaISB_EERKSB_(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [5 x i8], align 1                 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = icmp ult ptr %i.g, %i.e
  %i.n = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.o = sub i64 %i.h, %i.n
  %i.p = icmp sgt i64 %i.o, 7
  %i.q = and i1 %i.m, %i.p
  br i1 %i.q, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0
  %i.r = phi i64 [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ], [ %i.n, %.preheader ]
  %.02595 = phi i32 [ %.227.jt0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ], [ 0, %.preheader ] ; 2 uses
  %.02894 = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ], [ %i.g, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @_Z18lodepng_chunk_typePcPKh(ptr noundef nonnull %i.c, ptr noundef %.02894)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.i, ptr %3, align 8, !tbaa !21
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.s, ptr %i.b, align 8, !tbaa !15
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.lr.ph
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !23
  %i.v = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.v, ptr %i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.lr.ph
  %i.w = phi ptr [ %i.u, %.noexc.i ], [ %i.i, %.lr.ph ] ; 2 uses
  switch i64 %i.s, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.x, ptr %i.w, align 1, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.c, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !25
  %i.z = load ptr, ptr %3, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !25
  %.not = icmp eq i64 %i.ab, 4
  br i1 %.not, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1

bb.d:                                             ; preds = %bb.c
  %i.ac = invoke noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.02894, ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.f       ; 6 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !25  ; 5 uses
  %cond = icmp eq i64 %i.ad, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %3, align 8, !tbaa !23    ; 4 uses
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = icmp ne i32 %i.af, 1380206665
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

bb.f:                                             ; preds = %bb.k, %.noexc.i.i, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ak = load i32, ptr %i.ae, align 1
  %i.al = icmp ne i32 %i.ak, 1163152464
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58
  %i.ao = load i32, ptr %i.ae, align 1
  %i.ap = icmp ne i32 %i.ao, 1413563465
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59
  %i.as = load i32, ptr %i.ae, align 1
  %i.at = icmp ne i32 %i.as, 1145980233
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60
  %.not35 = icmp ult ptr %i.ac, %i.e
  br i1 %.not35, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61
  %i.aw = zext nneg i32 %.02595 to i64            ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.az, %i.bb
end_hunk_0
begin_hunk_1_@_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_:bb.a

bb.p:                                             ; preds = %bb.o
  %i.be = load i32, ptr %.pre, align 1
  %i.bf = icmp ne i32 %i.be, 1413563465
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.p, %bb.o
  %i.bi = phi i1 [ false, %bb.o ], [ %i.bh, %bb.p ]
  %i.bj = icmp eq ptr %.pre, %i.z
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bk = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !20
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.bi, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.bn = invoke noundef ptr @_Z24lodepng_chunk_data_constPKh(ptr noundef %.064155)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bo = invoke noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef %.064155)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.064155, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 2 uses
  %i.bs = icmp ugt ptr %i.br, %i.o
  br i1 %i.bs, label %.critedge105, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.bu = load ptr, ptr %1, align 8, !tbaa !37
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bp
  %i.bz = icmp ult ptr %i.br, %i.q
  %or.cond = or i1 %i.by, %i.bz
  br i1 %or.cond, label %.critedge105, label %bb.x

bb.u:                                             ; preds = %.noexc.i108
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aa

bb.v:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.cf = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cj, ptr noundef %i.bn, ptr noundef %i.ce)
          to label %.critedge unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.critedge:                                        ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.cl = invoke noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.064155, ptr noundef nonnull %i.o)
          to label %bb.z unwind label %bb.j       ; 3 uses

bb.z:                                             ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.cm = icmp ult ptr %i.cl, %i.o
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.r, %i.cn
  %i.cp = icmp sgt i64 %i.co, 7
  %i.cq = and i1 %i.cm, %i.cp
  br i1 %i.cq, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !53

bb.aa:                                            ; preds = %bb.v, %bb.y, %bb.w, %bb.u, %bb.k, %bb.j
  %.pn100 = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.as, %bb.k ], [ %i.ca, %bb.u ], [ %i.cb, %bb.v ], [ %i.ck, %bb.y ], [ %i.cc, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.bg

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre170 = load ptr, ptr %3, align 8, !tbaa !8
  %.pre171 = load ptr, ptr %i.ab, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.cr = phi ptr [ %.pre171, %._crit_edge.loopexit ], [ null, %bb.d ] ; 2 uses
  %i.cs = phi ptr [ %.pre170, %._crit_edge.loopexit ], [ null, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ct = icmp eq ptr %i.cs, %i.cr
  %spec.select141 = select i1 %i.ct, ptr null, ptr %i.cs
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = invoke noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %spec.select141, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(40) @lodepng_default_decompress_settings)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %.not87 = icmp eq i32 %i.cx, 0
  br i1 %.not87, label %bb.ad, label %thread-pre-split

bb.ac:                                            ; preds = %bb.ao, %bb.ae, %._crit_edge
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ad:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !54
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i32, ptr %i.c, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.de = invoke noundef i64 @_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode(i32 noundef %i.dc, i32 noundef 1, ptr noundef nonnull %i.dd)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.df = add i64 %i.de, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.di = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %.not168 = icmp eq ptr %i.dh, %i.di
  br i1 %.not168, label %.loopexit, label %.lr.ph165

bb.ah:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph165:                                        ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.dk = phi ptr [ %i.eo, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ %i.di, %bb.ag ]
  %.060163 = phi i64 [ %i.em, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ 0, %bb.ag ] ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !47    ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.060163 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !41 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph165
  %i.dr = load i8, ptr %i.dm, align 1, !tbaa !20
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !20
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store ptr %i.dt, ptr %i.dn, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.aj:                                            ; preds = %.lr.ph165
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !37 ; 4 uses
  %i.dv = ptrtoint ptr %i.do to i64
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 7 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775807
  br i1 %i.dy, label %bb.ak, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
          to label %.noexc118 unwind label %.loopexit.split-lp

.noexc118:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dz = add i64 %.sroa.speculated.i.i.i, %i.dx  ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dx
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 9223372036854775807)
  %i.ec = select i1 %i.ea, i64 9223372036854775807, i64 %i.eb ; 2 uses
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #31
          to label %.noexc119 unwind label %.loopexit144.a ; 4 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx ; 2 uses
  %i.ef = load i8, ptr %i.dm, align 1, !tbaa !20
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !20
  %i.eg = icmp sgt i64 %i.dx, 0
  br i1 %i.eg, label %bb.al, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.al:                                            ; preds = %.noexc119
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr align 1 %i.du, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.al, %.noexc119
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %.not.i17.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.ei = load ptr, ptr %i.dp, align 8, !tbaa !39
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.ej, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.ek) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.ed, ptr %i.dl, align 8, !tbaa !37
  store ptr %i.eh, ptr %i.dn, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  store ptr %i.el, ptr %i.dp, align 8, !tbaa !39
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.ai
  %i.em = add i64 %i.df, %.060163                 ; 2 uses
  %i.en = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.eo = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp ult i64 %i.em, %i.er
  br i1 %i.es, label %.lr.ph165, label %.loopexit, !llvm.loop !64

.loopexit144.a:                                   ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.an:                                            ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !42 ; 3 uses
  %i.ev = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 2 uses
  %i.ez = sdiv exact i64 %i.ey, 24                ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 7
  br i1 %i.fa, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fb = sub nuw nsw i64 7, %i.ez
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.fb)
          to label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit unwind label %bb.ac

bb.ap:                                            ; preds = %bb.an
  %.not142 = icmp eq i64 %i.ey, 168
  br i1 %.not142, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 168 ; 3 uses
  %.not.i.i = icmp eq ptr %i.eu, %i.fc
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fj, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i ], [ %i.fc, %bb.aq ] ; 3 uses
  %i.fd = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !39
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fi) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i: ; preds = %bb.ar, %.lr.ph.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fj, %i.eu
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !42
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit:    ; preds = %bb.ao, %bb.ap, %bb.aq, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 224
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, %.loopexit145
  %.058161 = phi i64 [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %i.hn, %.loopexit145 ] ; 6 uses
  %.059160 = phi i64 [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %.2, %.loopexit145 ] ; 3 uses
  %i.fl = load i32, ptr %i.c, align 4, !tbaa !12  ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_IX, i64 %.058161
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !12 ; 2 uses
  %i.fo = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_IY, i64 %.058161
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !12 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_DY, i64 %.058161
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !12 ; 3 uses
  %i.ft = xor i32 %i.fq, -1
  %i.fu = add i32 %i.fo, %i.ft
  %i.fv = add i32 %i.fu, %i.fs                    ; 2 uses
  %i.fw = udiv i32 %i.fv, %i.fs
  %.not88 = icmp ult i32 %i.fn, %i.fl
  %.not89 = icmp ult i32 %i.fq, %i.fo
  %or.cond106 = select i1 %.not88, i1 %.not89, i1 false
  br i1 %or.cond106, label %bb.at, label %.loopexit145

bb.at:                                            ; preds = %bb.as
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_DX, i64 %.058161
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !12 ; 2 uses
  %i.fz = xor i32 %i.fn, -1
  %i.ga = add i32 %i.fl, %i.fz
  %i.gb = add i32 %i.ga, %i.fy
  %i.gc = udiv i32 %i.gb, %i.fy
  %i.gd = invoke noundef i64 @_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode(i32 noundef %i.gc, i32 noundef 1, ptr noundef nonnull %i.fk)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ge = add i64 %i.gd, 1
  %i.gf = zext i32 %i.fw to i64
  %.not167 = icmp ugt i32 %i.fs, %i.fv
  br i1 %.not167, label %.loopexit145, label %.lr.ph159

bb.av:                                            ; preds = %bb.at
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph159:                                        ; preds = %bb.au, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130
  %.0157 = phi i64 [ %i.hl, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130 ], [ 0, %bb.au ]
  %.1156 = phi i64 [ %i.hk, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130 ], [ %.059160, %bb.au ] ; 2 uses
  %i.gh = load ptr, ptr %0, align 8, !tbaa !47
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %.058161 ; 4 uses
  %i.gj = load ptr, ptr %6, align 8, !tbaa !37
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.1156 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !41 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !39
  %.not.i121 = icmp eq ptr %i.gm, %i.go
  br i1 %.not.i121, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph159
  %i.gp = load i8, ptr %i.gk, align 1, !tbaa !20
  store i8 %i.gp, ptr %i.gm, align 1, !tbaa !20
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !41
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store ptr %i.gr, ptr %i.gl, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130

bb.ax:                                            ; preds = %.lr.ph159
  %i.gs = load ptr, ptr %i.gi, align 8, !tbaa !37 ; 4 uses
  %i.gt = ptrtoint ptr %i.gm to i64
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 7 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775807
  br i1 %i.gw, label %bb.ay, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
          to label %.noexc128.a unwind label %.loopexit.split-lp147

.noexc128.a:                                      ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122: ; preds = %bb.ax
  %.sroa.speculated.i.i.i123 = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gx = add i64 %.sroa.speculated.i.i.i123, %i.gv ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gv
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 9223372036854775807)
  %i.ha = select i1 %i.gy, i64 9223372036854775807, i64 %i.gz ; 2 uses
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #31
          to label %.noexc129 unwind label %.loopexit146 ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gv ; 2 uses
  %i.hd = load i8, ptr %i.gk, align 1, !tbaa !20
  store i8 %i.hd, ptr %i.hc, align 1, !tbaa !20
  %i.he = icmp sgt i64 %i.gv, 0
  br i1 %i.he, label %bb.az, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125

bb.az:                                            ; preds = %.noexc129
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hb, ptr align 1 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125: ; preds = %bb.az, %.noexc129
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %.not.i17.i.i126 = icmp eq ptr %i.gs, null
  br i1 %.not.i17.i.i126, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125
  %i.hg = load ptr, ptr %i.gn, align 8, !tbaa !39
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hi) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127: ; preds = %bb.ba, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125
  store ptr %i.hb, ptr %i.gi, align 8, !tbaa !37
  store ptr %i.hf, ptr %i.gl, align 8, !tbaa !41
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ha
  store ptr %i.hj, ptr %i.gn, align 8, !tbaa !39
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130

_ZNSt6vectorIhSaIhEE9push_backERKh.exit130:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127, %bb.aw
  %i.hk = add i64 %i.ge, %.1156                   ; 2 uses
  %i.hl = add nuw nsw i64 %.0157, 1               ; 2 uses
  %i.hm = icmp samesign ult i64 %i.hl, %i.gf
  br i1 %i.hm, label %.lr.ph159, label %.loopexit145, !llvm.loop !66

.loopexit146:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp147:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit145:                                     ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130, %bb.au, %bb.as
  %.2 = phi i64 [ %.059160, %bb.as ], [ %.059160, %bb.au ], [ %i.hk, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130 ]
  %i.hn = add nuw nsw i64 %.058161, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hn, 7
  br i1 %exitcond.not, label %thread-pre-split, label %bb.as, !llvm.loop !67

thread-pre-split:                                 ; preds = %.loopexit145, %bb.ab
  %.4.ph = phi i32 [ 1, %bb.ab ], [ 0, %.loopexit145 ]
  %.pr = load ptr, ptr %6, align 8, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.ag, %thread-pre-split
  %i.ho = phi ptr [ %.pr, %thread-pre-split ], [ %i.di, %bb.ag ], [ %i.eo, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %.4 = phi i32 [ %.4.ph, %thread-pre-split ], [ 0, %bb.ag ], [ 0, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.not.i.i.i131 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !39
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.be

bb.bc:                                            ; preds = %.loopexit146, %.loopexit.split-lp147, %.loopexit144.a, %.loopexit.split-lp, %bb.av, %bb.ah, %bb.ac
  %.pn91.pn = phi { ptr, i32 } [ %i.dj, %bb.ah ], [ %i.cy, %bb.ac ], [ %i.gg, %bb.av ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit144.a ], [ %lpad.loopexit148, %.loopexit146 ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ]
  %i.hu = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i132.a = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i132.a, label %_ZNSt6vectorIhSaIhEED2Ev.exit133.a, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !39
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit133.a

_ZNSt6vectorIhSaIhEED2Ev.exit133.a:               ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.bg

.critedge105:                                     ; preds = %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.be

bb.be:                                            ; preds = %.critedge105, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.5 = phi i32 [ 1, %.critedge105 ], [ %.4, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  %i.ia = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i134.a = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i134.a, label %_ZNSt6vectorIhSaIhEED2Ev.exit135.a, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !39
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit135.a

_ZNSt6vectorIhSaIhEED2Ev.exit135.a:               ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bi

bb.bg:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit133.a, %bb.aa
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.aa ], [ %.pn91.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit133.a ]
  %i.ig = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIhSaIhEED2Ev.exit137, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !39
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.il) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit137

_ZNSt6vectorIhSaIhEED2Ev.exit137:                 ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bj

bb.bi:                                            ; preds = %bb.b, %_ZNSt6vectorIhSaIhEED2Ev.exit135.a
  %.6 = phi i32 [ %.5, %_ZNSt6vectorIhSaIhEED2Ev.exit135.a ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.6

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit137, %bb.c
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit137 ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn100.pn.pn
}

declare noundef ptr @_Z24lodepng_chunk_data_constPKh(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.e, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

declare noundef i64 @_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 13 uses
  %3 = alloca %"class.lodepng::State", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = invoke noundef i32 @_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 0
  %.pre34 = load ptr, ptr %2, align 8, !tbaa !47  ; 6 uses
  br i1 %.not, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %.pre34 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 24
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = load <2 x ptr>, ptr %.pre34, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %.pre34, i64 16 ; 2 uses
  %i.o = load <2 x ptr>, ptr %0, align 8, !tbaa !8
  store <2 x ptr> %i.m, ptr %0, align 8, !tbaa !8
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !39
  store ptr %i.p, ptr %i.k, align 8, !tbaa !39
  store <2 x ptr> %i.o, ptr %.pre34, align 8, !tbaa !8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !39
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.q = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  %spec.select = select i1 %i.t, ptr null, ptr %i.q
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %spec.select, i64 noundef %i.w)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.a, align 4, !tbaa !12
  %i.z = icmp ugt i32 %i.y, 1                     ; 2 uses
  %..sroa.sel = select i1 %i.z, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column1, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column0
  %.sroa.sel = select i1 %i.z, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift1, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift0
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !12
  %.not32 = icmp eq i32 %i.aa, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !41
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre33 = load ptr, ptr %2, align 8, !tbaa !47
  br label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.af = phi ptr [ %.pre, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %.031 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %i.ag = and i64 %.031, 7                        ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %..sroa.sel, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %2, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.ag
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 %.031, %i.ao
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.af, %i.as
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !20
  store i8 %i.at, ptr %i.af, align 1, !tbaa !20
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %0, align 8, !tbaa !37    ; 4 uses
  %i.ax = ptrtoint ptr %i.af to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 7 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775807
  br i1 %i.ba, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i.i.i, %i.az  ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 2 uses
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31
          to label %.noexc29 unwind label %.loopexit ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.az ; 2 uses
  %i.bh = load i8, ptr %i.ar, align 1, !tbaa !20
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !20
  %i.bi = icmp sgt i64 %i.az, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bm) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.bf, ptr %0, align 8, !tbaa !37
  store ptr %i.bj, ptr %i.ab, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store ptr %i.bn, ptr %i.ac, align 8, !tbaa !39
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.l
  %i.bo = phi ptr [ %i.bj, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.av, %bb.l ]
  %i.bp = add nuw nsw i64 %.031, 1                ; 2 uses
  %i.bq = load i32, ptr %i.b, align 4, !tbaa !12
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.k, label %._crit_edge, !llvm.loop !68

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %3) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.v

bb.s:                                             ; preds = %bb.e, %._crit_edge, %bb.b
  %i.bt = phi ptr [ %.pre34, %bb.b ], [ %.pre33, %._crit_edge ], [ %.pre34, %bb.e ] ; 3 uses
  %.024 = phi i32 [ 1, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.bt, %bb.s ] ; 3 uses
  %i.bw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.t, %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.cc, %i.bv
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.s
  %i.cd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bt, %bb.s ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #29
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.024

bb.v:                                             ; preds = %bb.r, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.d, %bb.c ]
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 256) i32 @_ZN7lodepng15getPaletteValueEPKhmi(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = zext i8 %i.e to i32
  br label %bb.f

bb.c:                                             ; preds = %.split
  %i.g = lshr i64 %1, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20
  %i.j = zext i8 %i.i to i32
  %.tr16 = trunc i64 %1 to i32
  %i.k = shl i32 %.tr16, 2
end_hunk_1
begin_hunk_2_@_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo:bb.a
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jx = extractelement <2 x float> %i.ic, i64 0
  %i.jy = fsub float 1.000000e+00, %i.jx
  %i.jz = extractelement <2 x float> %i.ic, i64 1
  %i.ka = fsub float %i.jy, %i.jz
  %i.kb = insertelement <2 x float> %i.ic, float %i.ka, i64 1
  %i.kc = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kd = fdiv <2 x float> %i.kb, %i.kc           ; 3 uses
  %i.ke = fpext <2 x float> %i.kd to <2 x double> ; 2 uses
  %i.kf = load <4 x float>, ptr %i.jw, align 4, !tbaa !82
  %i.kg = load <5 x float>, ptr %i.jv, align 8, !tbaa !82
  %i.kh = load <7 x float>, ptr %i.b, align 16, !tbaa !82
  %i.ki = shufflevector <7 x float> %i.kh, <7 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.kj = fpext <4 x float> %i.ki to <4 x double>
  %i.kk = load <2 x float>, ptr %i.ju, align 4, !tbaa !82 ; 2 uses
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.km = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> %i.kl, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.ko = fpext <4 x float> %i.kn to <4 x double>
  %i.kp = shufflevector <2 x double> %i.ke, <2 x double> poison, <4 x i32> zeroinitializer
  %i.kq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kp, <4 x double> %i.kj, <4 x double> %i.ko)
  %i.kr = shufflevector <2 x float> %i.kk, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ks = shufflevector <5 x float> %i.kg, <5 x float> %i.kr, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.kt = fpext <4 x float> %i.ks to <4 x double>
  %i.ku = shufflevector <2 x double> %i.ke, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ku, <4 x double> %i.kt, <4 x double> %i.kq)
  %i.kw = fptrunc <4 x double> %i.kv to <4 x float> ; 3 uses
  %i.kx = fmul <4 x float> %i.jh, %i.kw
  store <4 x float> %i.kx, ptr %0, align 4, !tbaa !82
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kz = extractelement <4 x float> %i.kw, i64 1
  store float %i.kz, ptr %i.ky, align 4, !tbaa !82
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.lb = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.lc = fmul <4 x float> %i.jn, %i.lb
  store <4 x float> %i.lc, ptr %i.la, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ld = extractelement <2 x float> %i.kd, i64 0
  store float %i.ld, ptr %1, align 4, !tbaa !82
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float 1.000000e+00, ptr %i.le, align 4, !tbaa !82
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lg = extractelement <2 x float> %i.kd, i64 1
  store float %i.lg, ptr %i.lf, align 4, !tbaa !82
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 16 dereferenceable(36) @_ZZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfoE4srgb, i64 36, i1 false), !tbaa !82
  store <2 x float> <float f0x3F735114, float 1.000000e+00>, ptr %1, align 4, !tbaa !82
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float f0x3F8B663F, ptr %i.lh, align 4, !tbaa !82
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.f, %bb.e, %bb.l, %bb.k, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit
  %.1 = phi i32 [ 1, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit ], [ 0, %bb.f ], [ 1, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.e ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL9invMatrixEPf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !82
  %i.e = fpext float %i.d to double               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load float, ptr %i.f, align 4, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load float, ptr %i.h, align 4, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !82
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.b, i64 1
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !82
  %i.q = extractelement <2 x double> %i.n, i64 0
  %i.r = fneg double %i.q                         ; 2 uses
  %i.s = load float, ptr %0, align 4, !tbaa !82
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.p, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = insertelement <2 x float> poison, float %i.g, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.i, i64 1
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 7 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.e, i64 0
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.ad = fmul <2 x double> %i.ac, %i.ab
  %i.ae = insertelement <2 x double> %i.z, double %i.e, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ae, <2 x double> %i.ad) ; 3 uses
  %i.ag = load <2 x float>, ptr %i.w, align 4, !tbaa !82
  %i.ah = fpext <2 x float> %i.ag to <2 x double> ; 8 uses
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.aj = insertelement <2 x double> %i.ah, double %i.r, i64 1
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = shufflevector <2 x double> %i.af, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.al, <2 x double> %i.ak) ; 3 uses
  %i.an = extractelement <2 x double> %i.ah, i64 1
  %i.ao = extractelement <2 x double> %i.am, i64 0
  %i.ap = extractelement <2 x double> %i.am, i64 1
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %i.ao)
  %i.ar = fdiv double 1.000000e+00, %i.aq         ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp ogt double %i.as, 1.000000e+15
  br i1 %i.at, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.au = shufflevector <2 x double> %i.n, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.av = fneg <2 x double> %i.au                 ; 2 uses
  %i.aw = shufflevector <2 x double> %i.ab, <2 x double> %i.av, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fmul <2 x double> %i.aw, %i.ax
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.z, <2 x double> %i.ay)
  %i.ba = shufflevector <2 x double> %i.af, <2 x double> %i.az, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %i.bb = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul <4 x double> %i.ba, %i.bc
  %i.be = fptrunc <4 x double> %i.bd to <4 x float>
  store <4 x float> %i.be, ptr %0, align 4, !tbaa !82
  %i.bf = shufflevector <2 x double> %i.z, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bg = fneg <2 x double> %i.bf
  %i.bh = fmul <2 x double> %i.v, %i.bg
  %i.bi = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.n, <2 x double> %i.bh) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1
  %i.bl = fmul double %i.bk, %i.ar
  %i.bm = insertelement <2 x double> %i.av, double %i.r, i64 0
  %i.bn = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 1, i32 2>
  %i.bo = fmul <2 x double> %i.bm, %i.bn
  %i.bp = insertelement <2 x double> %i.ah, double %i.e, i64 0
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.bp, <2 x double> %i.bo)
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.bs = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x double> %i.br, <4 x double> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = fmul <4 x double> %i.bt, %i.bc
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.a, align 4, !tbaa !82
  %i.bw = fptrunc double %i.bl to float
  store float %i.bw, ptr %i.c, align 4, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.062 = phi i32 [ 1, %bb.a ], [ 0, %.loopexit.loopexit ]
  ret i32 %.062
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !21
  %i.s = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !23
  %i.z = load i64, ptr %i.t, align 8, !tbaa !20
  store i64 %i.z, ptr %i.r, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !25
  store ptr %i.t, ptr %2, align 8, !tbaa !23
  store i64 0, ptr %i.ab, align 8, !tbaa !25
  store i8 0, ptr %i.t, align 8, !tbaa !20
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !154, !noalias !157
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !157, !noalias !154 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25, !alias.scope !157, !noalias !154 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !159
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !23, !alias.scope !154, !noalias !157
  %i.al = load i64, ptr %i.af, align 8, !tbaa !20, !alias.scope !157, !noalias !154
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !20, !alias.scope !154, !noalias !157
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !25, !alias.scope !157, !noalias !154
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !25, !alias.scope !154, !noalias !157
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !157, !noalias !154
  store i64 0, ptr %i.an, align 8, !tbaa !25, !alias.scope !157, !noalias !154
  store i8 0, ptr %i.af, align 8, !tbaa !20, !alias.scope !157, !noalias !154
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !160

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !161, !noalias !164
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !23, !alias.scope !164, !noalias !161 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !25, !alias.scope !164, !noalias !161 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !166
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !23, !alias.scope !161, !noalias !164
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !20, !alias.scope !164, !noalias !161
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !20, !alias.scope !161, !noalias !164
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !25, !alias.scope !164, !noalias !161
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !25, !alias.scope !161, !noalias !164
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !23, !alias.scope !164, !noalias !161
  store i64 0, ptr %i.bc, align 8, !tbaa !25, !alias.scope !164, !noalias !161
  store i8 0, ptr %i.au, align 8, !tbaa !20, !alias.scope !164, !noalias !161
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !160

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !153
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !29
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #23

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !21
  %i.t = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.v, ptr %i.a, align 8, !tbaa !15
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !23
  %i.y = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.y, ptr %i.s, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !25
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !167, !noalias !170
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !170, !noalias !167 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25, !alias.scope !170, !noalias !167 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !172
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !23, !alias.scope !167, !noalias !170
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !20, !alias.scope !170, !noalias !167
  store i64 %i.an, ptr %i.af, align 8, !tbaa !20, !alias.scope !167, !noalias !170
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !25, !alias.scope !170, !noalias !167
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !25, !alias.scope !167, !noalias !170
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !170, !noalias !167
  store i64 0, ptr %i.ap, align 8, !tbaa !25, !alias.scope !170, !noalias !167
  store i8 0, ptr %i.ah, align 8, !tbaa !20, !alias.scope !170, !noalias !167
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !160

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !21, !alias.scope !173, !noalias !176
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !23, !alias.scope !176, !noalias !173 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25, !alias.scope !176, !noalias !173 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !178
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !23, !alias.scope !173, !noalias !176
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !20, !alias.scope !176, !noalias !173
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !20, !alias.scope !173, !noalias !176
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !25, !alias.scope !176, !noalias !173
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !25, !alias.scope !173, !noalias !176
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !23, !alias.scope !176, !noalias !173
  store i64 0, ptr %i.be, align 8, !tbaa !25, !alias.scope !176, !noalias !173
  store i8 0, ptr %i.aw, align 8, !tbaa !20, !alias.scope !176, !noalias !173
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !160

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !153
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !29
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !8
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  store ptr %i.u, ptr %i.s, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !8, !alias.scope !182, !noalias !179
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !8, !alias.scope !179, !noalias !182
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39, !alias.scope !182, !noalias !179
  store ptr %i.y, ptr %i.w, align 8, !tbaa !39, !alias.scope !179, !noalias !182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !182, !noalias !179
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !184

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !8, !alias.scope !188, !noalias !185
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !8, !alias.scope !185, !noalias !188
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39, !alias.scope !188, !noalias !185
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !39, !alias.scope !185, !noalias !188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !188, !noalias !185
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !184

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #29
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !47
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !52

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !20
  store i8 %i.s, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !41
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !52

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !20
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !52

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.ad, ptr %1, align 1, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !52

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !20
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !41
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !52

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
end_hunk_2
