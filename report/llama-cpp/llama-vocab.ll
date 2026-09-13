Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-vocab?download=true
inline.NumInlined: 5573
inline.NumDeleted: 1989
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK11llama_vocab24get_precompiled_charsmapEv:bb.a
  %i.p = load i8, ptr %i.e, align 1, !tbaa !39
  store i8 %i.p, ptr %i.j, align 1, !tbaa !39
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.e, %bb.d, %bb.f
  %i.q = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.k, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK11llama_vocab8tokenizeEPKciPiibb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !34
  %i.e = icmp eq ptr %1, null
  %i.f = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.286) #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.c, ptr %i.b, align 8, !tbaa !36
  %i.g = icmp ugt i32 %2, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20 unwind label %bb.h   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %8, align 8, !tbaa !38
  %i.i = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.i, ptr %i.d, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc20, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc20 ], [ %i.d, %bb.c ] ; 2 uses
  switch i32 %2, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.k, ptr %i.j, align 1, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !40
  %i.n = load ptr, ptr %8, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.p = load ptr, ptr %0, align 8, !tbaa !166, !noalias !573
  invoke void @_ZNK11llama_vocab4impl8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.64") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %5, i1 noundef zeroext %6)
          to label %_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit unwind label %bb.i

_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit: ; preds = %bb.f
  %i.q = load ptr, ptr %8, align 8, !tbaa !38     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !39
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !136  ; 2 uses
  %i.w = load ptr, ptr %7, align 8, !tbaa !132    ; 13 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2                  ; 9 uses
  %.not = icmp ult i64 %i.aa, 2147483647
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.266, ptr noundef nonnull @__FUNCTION__._ZNK11llama_vocab4impl8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb, i64 noundef %i.aa)
          to label %..loopexit_crit_edge unwind label %bb.j

..loopexit_crit_edge:                             ; preds = %bb.g
  %.pre = load ptr, ptr %7, align 8, !tbaa !132
  br label %.loopexit

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.i
  %i.af = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !132   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = trunc nuw nsw i64 %i.aa to i32          ; 6 uses
  %i.ap = icmp slt i32 %4, %i.ao
  br i1 %i.ap, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.not28 = icmp eq ptr %i.v, %i.w
  br i1 %.not28, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.aa, 8
  %i.aq = sub i64 %i.y, %i.a
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aa, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !97
  %wide.load43 = load <4 x i32>, ptr %i.as, align 4, !tbaa !97
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %wide.load, ptr %i.at, align 4, !tbaa !97
  store <4 x i32> %wide.load43, ptr %i.au, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !570

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %.lr.ph.preheader44

.lr.ph.preheader44:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader44, %.lr.ph.prol
  %.027.prol = phi i64 [ %i.az, %.lr.ph.prol ], [ %.027.ph, %.lr.ph.preheader44 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader44 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.027.prol
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !97
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.027.prol
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !97
  %i.az = add nuw nsw i64 %.027.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !571

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader44
  %.027.unr = phi i64 [ %.027.ph, %.lr.ph.preheader44 ], [ %i.az, %.lr.ph.prol ]
  %i.ba = sub nsw i64 %.027.ph, %i.aa
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.loopexit.thread, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.bc = sub nsw i32 0, %i.ao
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.027 = phi i64 [ %i.bs, %.lr.ph ], [ %.027.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.027
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !97
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.027
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !97
  %i.bg = add nuw nsw i64 %.027, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !97
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bg
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !97
  %i.bk = add nuw nsw i64 %.027, 2                ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !97
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bk
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !97
  %i.bo = add nuw nsw i64 %.027, 3                ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !97
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bo
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !97
  %i.bs = add nuw nsw i64 %.027, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bs, %i.aa
  br i1 %exitcond.not.3, label %.loopexit.thread, label %.lr.ph, !llvm.loop !572

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader, %bb.m
  %i.bt = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.w, %bb.m ], [ %i.w, %.preheader ] ; 2 uses
  %.016 = phi i32 [ -2147483648, %..loopexit_crit_edge ], [ %i.bc, %bb.m ], [ %i.ao, %.preheader ] ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit26, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.loopexit
  %.01641 = phi i32 [ %.016, %.loopexit ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph ], [ %i.ao, %.lr.ph.prol.loopexit ]
  %i.bu = phi ptr [ %i.bt, %.loopexit ], [ %i.w, %middle.block ], [ %i.w, %.lr.ph ], [ %i.w, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !133
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit26

_ZNSt6vectorIiSaIiEED2Ev.exit26:                  ; preds = %.loopexit, %.loopexit.thread
  %.01642 = phi i32 [ %.016, %.loopexit ], [ %.01641, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret i32 %.01642

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn18 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.64") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !166
  tail call void @_ZNK11llama_vocab4impl8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind writable sret(%"class.std::vector.64") align 8 %0, ptr noundef nonnull align 8 dereferenceable(456) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11llama_vocab14token_to_pieceB5cxx11Ei(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.j, %i.c
  br i1 %.not.i.i.i, label %_ZNK11llama_vocab4impl14token_to_pieceB5cxx11Ei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.293, i64 noundef %i.c, i64 noundef %i.j) #33
  unreachable

_ZNK11llama_vocab4impl14token_to_pieceB5cxx11Ei.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.c
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK11llama_vocab10detokenizeEPKiiPcibb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !166
  %i.b = tail call noundef i32 @_ZNK11llama_vocab4impl10detokenizeEPKiiPcibb(ptr noundef nonnull align 8 dereferenceable(456) %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11llama_vocab10detokenizeB5cxx11ERKSt6vectorIiSaIiEEb(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !40
  store i8 0, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = load ptr, ptr %2, align 8, !tbaa !132
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.i, i64 15)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.speculated, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !132    ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  %i.q = load ptr, ptr %0, align 8, !tbaa !38
  %i.r = load i64, ptr %i.b, align 8, !tbaa !40
  %i.s = trunc i64 %i.r to i32
  %i.t = load ptr, ptr %1, align 8, !tbaa !166
  %i.u = invoke noundef i32 @_ZNK11llama_vocab4impl10detokenizeEPKiiPcibb(ptr noundef nonnull align 8 dereferenceable(456) %i.t, ptr noundef readonly %i.j, i32 noundef %i.p, ptr noundef nonnull %i.q, i32 noundef %i.s, i1 noundef zeroext false, i1 noundef zeroext %3)
          to label %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit unwind label %bb.e ; 3 uses

_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.a, label %bb.f

bb.a:                                             ; preds = %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit
  %i.w = sub nsw i32 0, %i.u
  %i.x = zext nneg i32 %i.w to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit19 unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit19: ; preds = %bb.a
  %i.y = load ptr, ptr %2, align 8, !tbaa !132    ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = trunc i64 %i.ad to i32
  %i.af = load ptr, ptr %0, align 8, !tbaa !38
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !40
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = load ptr, ptr %1, align 8, !tbaa !166
  %i.aj = invoke noundef i32 @_ZNK11llama_vocab4impl10detokenizeEPKiiPcibb(ptr noundef nonnull align 8 dereferenceable(456) %i.ai, ptr noundef readonly %i.y, i32 noundef %i.ae, ptr noundef nonnull %i.af, i32 noundef %i.ah, i1 noundef zeroext false, i1 noundef zeroext %3)
          to label %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit20 unwind label %bb.e ; 2 uses

_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit20:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit19
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !40
  %i.al = trunc i64 %i.ak to i32
  %.not = icmp sgt i32 %i.aj, %i.al
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit20
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.118, i32 noundef 4178, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.267) #33
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit19, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit20, %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit
  %.0 = phi i32 [ %i.aj, %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit20 ], [ %i.u, %_ZNK11llama_vocab10detokenizeEPKiiPcibb.exit ]
  %i.ao = sext i32 %.0 to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ao, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit21 unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit21: ; preds = %bb.f
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.an, %bb.e ], [ %i.am, %bb.d ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !39
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11llama_vocab10print_infoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !166
  tail call void @_ZNK11llama_vocab4impl10print_infoEv(ptr noundef nonnull align 8 dereferenceable(456) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @llama_vocab_n_tokens(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = trunc i64 %i.i to i32
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE13_M_assign_auxIPKcEEvT_S5_St20forward_iterator_tag:bb.a
  %i.ae = sub i64 %i.a, %i.z                      ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.o, label %bb.p, !prof !151

bb.o:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %.sink.i, i64 %i.ae, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit17
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.q, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i8, ptr %.sink.i, align 1, !tbaa !39
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !39
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !102
  br label %_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc.exit

_ZNSt6vectorIcSaIcEE15_M_erase_at_endEPc.exit:    ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #35
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !629

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.041.i = load ptr, ptr %i.a, align 8, !tbaa !150 ; 3 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !97     ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %.0.i, %bb.e ] ; 7 uses
  %.02243.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97   ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.c, %i.e
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !278  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !277  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %.lr.ph.i.i ], [ %.044.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !97
  %i.n = icmp slt i32 %i.m, %i.c                  ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 2 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !150 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i, label %.lr.ph.i.i, !llvm.loop !630

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.08.lcssa.i.i = phi ptr [ %.044.i, %bb.d ], [ %.19.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not10.i24.i = icmp eq ptr %i.k, null
  br i1 %.not10.i24.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i, %.lr.ph.i25.i
  %.012.i26.i = phi ptr [ %.1.i31.i, %.lr.ph.i25.i ], [ %i.k, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i ] ; 3 uses
  %.0811.i27.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !97
  %i.q = icmp slt i32 %i.c, %i.p                  ; 2 uses
  %.19.i28.i = select i1 %i.q, ptr %.012.i26.i, ptr %.0811.i27.i ; 2 uses
  %.1.in.v.i29.i = select i1 %i.q, i64 16, i64 24
  %.1.in.i30.i = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 %.1.in.v.i29.i
  %.1.i31.i = load ptr, ptr %.1.in.i30.i, align 8, !tbaa !150 ; 2 uses
  %.not.i32.i = icmp eq ptr %.1.i31.i, null
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit, label %.lr.ph.i25.i, !llvm.loop !631

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !150 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit, label %bb.b, !llvm.loop !632

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !149  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !147
  %i.w = icmp eq ptr %.sroa.037.0.i, %i.v
  %i.x = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.041.i)
          to label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i: ; preds = %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !146
  store ptr %i.b, ptr %i.u, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !148
  store i64 0, ptr %i.s, align 8, !tbaa !149
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit
  %.not8.i = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.09.i = phi ptr [ %i.ab, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #38 ; 2 uses
  %i.ac = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 40) #35
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !149
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !149
  %.not.i3 = icmp eq ptr %i.ab, %.sroa.3.0.i
  br i1 %.not.i3, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_.exit, label %.lr.ph.i2, !llvm.loop !633

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_.exit: ; preds = %.lr.ph.i2, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i, %.critedge.i
  %i.af = phi i64 [ %i.t, %.critedge.i ], [ 0, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i ], [ %i.ae, %.lr.ph.i2 ]
  %i.ag = sub i64 %i.t, %i.af
  ret i64 %i.ag
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #26 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 216        ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr26, i64 4 ; 4 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEET_SI_SI_T0_.exit"
  %i.i = icmp eq i64 %i.dk, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph54, !llvm.loop !634

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fg, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i.i25.lcssa, 2             ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i.i25.lcssa, 4
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %._crit_edge
  %.09.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bh, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %.09.i.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97   ; 2 uses
  %i.v = icmp slt i64 %.09.i.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %.val.val.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !99 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.w = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !97
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !97
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i.i, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !40
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i.i, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !40
  %i.al = icmp ugt i64 %i.ag, %i.ak
  %spec.select.i.i.i.i = select i1 %i.al, i64 %i.z, i64 %i.x ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !97
  %i.ao = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %.038.i.i.i.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !97
  %i.ap = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ap, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !635

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.aq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.aq, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = load i32, ptr %i.r, align 4, !tbaa !97
  store i32 %i.ar, ptr %i.s, align 4, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.as = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %.val.val.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !99 ; 2 uses
  %i.at = sext i32 %i.u to i64
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !97 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !40
  %i.bd = icmp ugt i64 %i.bc, %i.aw
  br i1 %i.bd, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !97
  %i.bf = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", !llvm.loop !636

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.u, ptr %i.bg, align 4, !tbaa !97
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bh = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_RT0_.exit.i.i", label %bb.c, !llvm.loop !637

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"
  %4 = icmp sgt i64 %.fr.i.i25.lcssa, 4
  br i1 %4, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bi, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_RT0_.exit.i.i" ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !97 ; 2 uses
  %i.bk = load i32, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !97
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bl, %i.a                     ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 3 uses
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = icmp sgt i64 %i.bn, 2
  br i1 %i.bq, label %.lr.ph.i.i.i18.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i18.i:                                 ; preds = %.lr.ph.i9.i
  %.val.val.i.i.i19.i = load ptr, ptr %i.f, align 8, !tbaa !99 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i18.i
  %.038.i.i.i20.i = phi i64 [ 0, %.lr.ph.i.i.i18.i ], [ %spec.select.i.i.i21.i, %bb.i ] ; 2 uses
  %i.br = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.bs = add i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %i.bs
  %i.bu = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %i.bu
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !97
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i19.i, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !40
  %i.cc = sext i32 %i.bx to i64
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i19.i, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !40
  %i.cg = icmp ugt i64 %i.cb, %i.cf
  %spec.select.i.i.i21.i = select i1 %i.cg, i64 %i.bu, i64 %i.bs ; 4 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %spec.select.i.i.i21.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !97
  %i.cj = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %.038.i.i.i20.i
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !97
  %i.ck = icmp slt i64 %spec.select.i.i.i21.i, %i.bp
  br i1 %i.ck, label %bb.i, label %._crit_edge.i.i.i10.i, !llvm.loop !635

._crit_edge.i.i.i10.i:                            ; preds = %bb.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i21.i, %bb.i ] ; 5 uses
  %i.cl = and i64 %i.bm, 4
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cn = add nsw i64 %i.bn, -2
  %i.co = ashr exact i64 %i.cn, 1
  %i.cp = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.co
  br i1 %i.cp, label %.thread.i.i.i, label %bb.k

.thread.i.i.i:                                    ; preds = %bb.j
  %i.cq = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cr = or disjoint i64 %i.cq, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !97
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i11.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !97
  br label %.lr.ph.i.i.i.i13.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.k, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cr, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.k ]
  %.val.val.i.i.i.i14.i = load ptr, ptr %i.f, align 8, !tbaa !99 ; 2 uses
  %i.cv = sext i32 %i.bj to i64
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.m ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %.0911.i.i78.i.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !97 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !40
  %i.df = icmp ugt i64 %i.de, %i.cy
  br i1 %i.df, label %bb.m, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_RT0_.exit.i.i"

bb.m:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %.010.i.i.i.i15.i
  store i32 %i.da, ptr %i.dg, align 4, !tbaa !97
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %bb.l, !llvm.loop !636

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_RT0_.exit.i.i": ; preds = %bb.m, %bb.l, %bb.k
  %.0.lcssa.i.i.i.i17.i = phi i64 [ 0, %bb.k ], [ %.010.i.i.i.i15.i, %bb.l ], [ 0, %bb.m ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i17.i
  store i32 %i.bj, ptr %i.dh, align 4, !tbaa !97
  %i.di = icmp sgt i64 %i.bm, 4
  br i1 %i.di, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !638

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2353 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 3 uses
  %.02452 = phi i64 [ %i.dk, %bb.b ], [ %2, %.lr.ph ]
  %i.dj = phi i64 [ %i.fh, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dk = add nsw i64 %.02452, -1                 ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !99  ; 6 uses
  %i.dl = lshr i64 %i.dj, 1
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.fr26, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %storemerge2353, i64 -4 ; 3 uses
  %i.do = load i32, ptr %i.g, align 4, !tbaa !97  ; 3 uses
  %i.dp = load i32, ptr %i.dm, align 4, !tbaa !97 ; 3 uses
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !40 ; 3 uses
  %i.du = sext i32 %i.dp to i64
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !40 ; 3 uses
  %i.dy = icmp ugt i64 %i.dt, %i.dx
  %i.dz = load i32, ptr %i.dn, align 4, !tbaa !97 ; 3 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !40 ; 4 uses
  br i1 %i.dy, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.lr.ph54
  %i.ee = icmp ugt i64 %i.dx, %i.ed
  br i1 %i.ee, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ef = load i32, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.dp, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.ef, ptr %i.dm, align 4, !tbaa !97
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  %i.eg = icmp ugt i64 %i.dt, %i.ed
  %i.eh = load i32, ptr %.fr26, align 4, !tbaa !97 ; 2 uses
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.dz, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.eh, ptr %i.dn, align 4, !tbaa !97
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  store i32 %i.do, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.eh, ptr %i.g, align 4, !tbaa !97
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.s:                                             ; preds = %.lr.ph54
  %i.ei = icmp ugt i64 %i.dt, %i.ed
  br i1 %i.ei, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ej = load i32, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.do, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.ej, ptr %i.g, align 4, !tbaa !97
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  %i.ek = icmp ugt i64 %i.dx, %i.ed
  %i.el = load i32, ptr %.fr26, align 4, !tbaa !97 ; 2 uses
  br i1 %i.ek, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.dz, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.el, ptr %i.dn, align 4, !tbaa !97
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  store i32 %i.dp, ptr %.fr26, align 4, !tbaa !97
  store i32 %i.el, ptr %i.dm, align 4, !tbaa !97
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader": ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader", %bb.z
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.z ], [ %storemerge2353, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.sroa.012.0.i.i = phi ptr [ %i.ex, %bb.z ], [ %i.g, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %i.em = load i32, ptr %.fr26, align 4, !tbaa !97
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !40 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %i.ex, %bb.x ] ; 8 uses
  %i.er = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !97 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !40
  %i.ew = icmp ugt i64 %i.ev, %i.eq
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.ew, label %bb.x, label %.preheader.i.i, !llvm.loop !639

.preheader.i.i:                                   ; preds = %bb.x, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.x ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.ey = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !97 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !40
  %i.fd = icmp ugt i64 %i.eq, %i.fc
  br i1 %i.fd, label %.preheader.i.i, label %bb.y, !llvm.loop !640

bb.y:                                             ; preds = %.preheader.i.i
  %i.fe = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.fe, label %bb.z, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEET_SI_SI_T0_.exit"

bb.z:                                             ; preds = %bb.y
  store i32 %i.ey, ptr %.sroa.012.1.i.i, align 4, !tbaa !97
  store i32 %i.er, ptr %.sroa.09.1.i.i, align 4, !tbaa !97
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_SI_T0_.exit.i", !llvm.loop !641

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEET_SI_SI_T0_.exit": ; preds = %bb.y
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2353, i64 noundef %i.dk, ptr %3)
  %i.ff = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fg = sub i64 %i.ff, %i.a                     ; 2 uses
  %i.fh = ashr exact i64 %i.fg, 2                 ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, 16
  br i1 %i.fi, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !634

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_SI_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_0EEEvT_SI_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !137 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !137 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !642

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !40
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !137 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !642

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !40
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #36
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !209  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !210
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !137 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !213 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !137 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !213 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !40
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !38
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !137 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !213 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17llm_tokenizer_spmD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17llm_tokenizer_bpeC2ERK11llama_vocab(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %2 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %7 = alloca [6 x %"class.std::__cxx11::basic_string"], align 8 ; 37 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %15 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 17 uses
  %16 = alloca %"class.std::allocator", align 1   ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca [5 x %"class.std::__cxx11::basic_string"], align 8 ; 31 uses
  %19 = alloca %"class.std::allocator", align 1   ; 5 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %21 = alloca %"class.std::allocator", align 1   ; 7 uses
  %22 = alloca %"class.std::allocator", align 1   ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  %24 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 21 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  %26 = alloca %"class.std::allocator", align 1   ; 5 uses
  %27 = alloca %"class.std::allocator", align 1   ; 5 uses
end_hunk_1
