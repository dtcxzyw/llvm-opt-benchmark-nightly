Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-impl-test?download=true
inline.NumInlined: 4849
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN23bigint_test_square_Test8TestBodyEv:_ZN3fmt3v126detail6bigintC2Em.exit
  br label %_ZN7testing7MessageD2Ev.exit211

bb.ce:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit205
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #30
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn63 = phi { ptr, i32 } [ %i.ja, %bb.cf ], [ %i.iz, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.jb = load ptr, ptr %24, align 8, !tbaa !86   ; 3 uses
  %.not.i.i209 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i209, label %_ZN7testing7MessageD2Ev.exit211, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.cg
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !45
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(128) %i.jb) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit211

_ZN7testing7MessageD2Ev.exit211:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, %bb.cg, %bb.cd
  %.pn63.pn = phi { ptr, i32 } [ %i.iy, %bb.cd ], [ %.pn63, %bb.cg ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #30
  br label %bb.co

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZN7testing7MessageD2Ev.exit208
  %i.jf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !84 ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i212, label %_ZN7testing15AssertionResultD2Ev.exit216, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !70 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213: ; preds = %bb.ci
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !71
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit216

_ZN7testing15AssertionResultD2Ev.exit216:         ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.jm = load ptr, ptr %21, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.jm, %i.hl
  br i1 %.not.i.i.i217, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit216
  call void @free(ptr noundef %i.jm) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %_ZN7testing15AssertionResultD2Ev.exit216, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.jn = load ptr, ptr %16, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.jn, %i.fh
  br i1 %.not.i.i.i219, label %_ZN3fmt3v126detail6bigintD2Ev.exit221, label %bb.ck

bb.ck:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.jn) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit221

_ZN3fmt3v126detail6bigintD2Ev.exit221:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.jo = load ptr, ptr %11, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %i.jo, %i.dc
  br i1 %.not.i.i.i222, label %_ZN3fmt3v126detail6bigintD2Ev.exit224, label %bb.cl

bb.cl:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit221
  call void @free(ptr noundef %i.jo) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit224

_ZN3fmt3v126detail6bigintD2Ev.exit224:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit221, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.jp = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %i.jp, %i.ay
  br i1 %.not.i.i.i225, label %_ZN3fmt3v126detail6bigintD2Ev.exit227, label %bb.cm

bb.cm:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit224
  call void @free(ptr noundef %i.jp) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit227

_ZN3fmt3v126detail6bigintD2Ev.exit227:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit224, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.jq = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %.not.i.i.i228 = icmp eq ptr %i.jq, %i.d
  br i1 %.not.i.i.i228, label %_ZN3fmt3v126detail6bigintD2Ev.exit230, label %bb.cn

bb.cn:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit227
  call void @free(ptr noundef %i.jq) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit230

_ZN3fmt3v126detail6bigintD2Ev.exit230:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit227, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.co:                                            ; preds = %_ZN7testing7MessageD2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit211 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bv
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.co ], [ %i.ii, %bb.bv ]
  %i.jr = load ptr, ptr %21, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i231 = icmp eq ptr %i.jr, %i.hl
  br i1 %.not.i.i.i231, label %_ZN3fmt3v126detail6bigintD2Ev.exit233, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @free(ptr noundef %i.jr) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit233

_ZN3fmt3v126detail6bigintD2Ev.exit233:            ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit233, %bb.bu, %bb.bd
  %.pn63.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn.pn, %_ZN3fmt3v126detail6bigintD2Ev.exit233 ], [ %.pn57.pn.pn, %bb.bu ], [ %i.ge, %bb.bd ]
  %i.js = load ptr, ptr %16, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i234 = icmp eq ptr %i.js, %i.fh
  br i1 %.not.i.i.i234, label %.body164, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @free(ptr noundef %i.js) #30
  br label %.body164

.body164:                                         ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.ct

bb.ct:                                            ; preds = %.body164, %bb.bc, %bb.al
  %.pn63.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn.pn.pn.pn, %.body164 ], [ %.pn51.pn.pn, %bb.bc ], [ %i.ea, %bb.al ]
  %i.jt = load ptr, ptr %11, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %i.jt, %i.dc
  br i1 %.not.i.i.i237, label %.body128, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef %i.jt) #30
  br label %.body128

.body128:                                         ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.cv

bb.cv:                                            ; preds = %.body128, %bb.ak, %bb.t
  %.pn63.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn.pn.pn.pn.pn.pn, %.body128 ], [ %.pn45.pn.pn, %bb.ak ], [ %i.bv, %bb.t ]
  %i.ju = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.ju, %i.ay
  br i1 %.not.i.i.i240, label %.body, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @free(ptr noundef %i.ju) #30
  br label %.body

.body:                                            ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.cx

bb.cx:                                            ; preds = %.body, %bb.s, %bb.c
  %.pn63.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn39.pn.pn, %bb.s ], [ %i.r, %bb.c ]
  %i.jv = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %i.jv, %i.d
  br i1 %.not.i.i.i243, label %_ZN3fmt3v126detail6bigintD2Ev.exit245, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @free(ptr noundef %i.jv) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit245

_ZN3fmt3v126detail6bigintD2Ev.exit245:            ; preds = %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn63.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88   ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 10 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !59
  %i.g = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !60
  store i64 %i.i, ptr %i.e, align 8, !tbaa !61
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !87
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !60
  store i64 %i.i, ptr %i.e, align 8, !tbaa !61
  store ptr %i.j, ptr %0, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %2 = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = icmp ugt i64 %i.b, %i.i
  br i1 %i.m, label %bb.d, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = lshr i64 %i.i, 1
  %i.p = add i64 %i.o, %i.i                       ; 3 uses
  %i.q = icmp ugt i64 %i.b, %i.p
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %i.p, 4611686018427387903
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ %i.b, %bb.d ] ; 4 uses
  %i.t = invoke noundef ptr @_ZN3fmt3v126detail9allocatorIjE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i64 noundef %.0.i)
          to label %.noexc120 unwind label %bb.i  ; 2 uses

.noexc120:                                        ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !88   ; 2 uses
  %i.w = icmp ule i64 %i.v, %.0.i
  call void @llvm.assume(i1 %i.w)
  %i.x = shl i64 %i.v, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.t, ptr align 4 %2, i64 %i.x, i1 false)
  store ptr %i.t, ptr %1, align 8, !tbaa !60
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %2, %i.y
  br i1 %.not.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc120
  call void @free(ptr noundef %2) #30
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !61
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #33
  unreachable

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit: ; preds = %.noexc120, %bb.h, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.h ], [ %.0.i, %.noexc120 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !88
  %i.ae = icmp sgt i32 %i.c, -1
  br i1 %i.ae, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.187)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.af, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.af) #30
  br label %.body

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %3 = zext nneg i32 %i.d to i64                  ; 3 uses
  %4 = load i64, ptr %i.h, align 8, !tbaa !61     ; 2 uses
  %i.ah = icmp ult i64 %4, %3
  br i1 %i.ah, label %bb.m, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %3)
          to label %.noexc43 unwind label %bb.n, !inline_history !371

.noexc43:                                         ; preds = %bb.m
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !61
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit, %.noexc43
  %i.ak = phi i64 [ %4, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit ], [ %.pre.i.i42, %.noexc43 ] ; 3 uses
  %i.al = call noundef i64 @llvm.umin.i64(i64 %3, i64 %i.ak) ; 4 uses
  store i64 %i.al, ptr %i.a, align 8, !tbaa !88
  %.not = icmp eq i32 %i.c, 0
  %.pre106.pre107 = load ptr, ptr %0, align 8     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader53.lr.ph

.preheader53.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !60    ; 6 uses
  %wide.trip.count90 = and i64 %i.b, 2147483647
  br label %.preheader53

.preheader53:                                     ; preds = %.preheader53.lr.ph, %bb.o
  %indvars.iv85 = phi i64 [ 1, %.preheader53.lr.ph ], [ %indvars.iv.next86, %bb.o ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader53.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.03760 = phi i128 [ 0, %.preheader53.lr.ph ], [ %i.bf, %bb.o ] ; 2 uses
  %xtraiter = and i64 %indvars.iv85, 1
  %i.an = icmp eq i64 %indvars.iv, 0
  br i1 %i.an, label %.epil.preheader, label %.preheader53.new

.preheader53.new:                                 ; preds = %.preheader53
  %unroll_iter = and i64 %indvars.iv85, 9223372036854775806
  br label %bb.p

.preheader.loopexit:                              ; preds = %bb.o
  %.pre106.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre106 = phi ptr [ %.pre106.pre107, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre106.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bf, %.preheader.loopexit ]
  %i.ao = icmp sgt i32 %i.d, %i.c
  br i1 %i.ao, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.ap = load ptr, ptr %1, align 8               ; 6 uses
  %i.aq = and i64 %i.b, 2147483647                ; 3 uses
  %i.ar = add nsw i32 %i.c, -2
  %invariant.op = sub i32 1, %i.c
  %indvars.iv96.prol = add nsw i64 %i.aq, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv96.prol
  br label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.unr-lcssa:                                       ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.o, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader53
  %indvars.iv78.epil.init = phi i64 [ 0, %.preheader53 ], [ %indvars.iv.next79.1, %.unr-lcssa ]
  %indvars.iv76.epil.init = phi i64 [ %indvars.iv, %.preheader53 ], [ %indvars.iv.next77.1, %.unr-lcssa ]
  %.157.epil.init = phi i128 [ %.03760, %.preheader53 ], [ %i.bz, %.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %indvars.iv85 to i1
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv78.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !87
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv76.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !87
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add i128 %.157.epil.init, %i.bb
  br label %bb.o

bb.o:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa151 = phi i128 [ %i.bz, %.unr-lcssa ], [ %i.bc, %.epil.preheader ] ; 2 uses
  %i.bd = trunc i128 %.lcssa151 to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre106.pre107, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !87
  %i.bf = lshr i128 %.lcssa151, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next, %wide.trip.count90
  br i1 %exitcond91.not, label %.preheader.loopexit, label %.preheader53, !llvm.loop !372

bb.p:                                             ; preds = %bb.p, %.preheader53.new
  %indvars.iv78 = phi i64 [ 0, %.preheader53.new ], [ %indvars.iv.next79.1, %bb.p ] ; 3 uses
  %indvars.iv76 = phi i64 [ %indvars.iv, %.preheader53.new ], [ %indvars.iv.next77.1, %bb.p ] ; 3 uses
  %.157 = phi i128 [ %.03760, %.preheader53.new ], [ %i.bz, %bb.p ]
  %niter = phi i64 [ 0, %.preheader53.new ], [ %niter.next.1, %bb.p ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv78
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !87
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv76
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = zext i64 %i.bm to i128
  %i.bo = add i128 %.157, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv78
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !87
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv76
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !87
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bs
  %i.by = zext i64 %i.bx to i128
  %i.bz = add i128 %i.bo, %i.by                   ; 3 uses
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %indvars.iv.next77.1 = add nsw i64 %indvars.iv76, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.p, !llvm.loop !373

._crit_edge69.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre, %._crit_edge69.loopexit ], [ %.pre106, %.preheader ]
  %i.cb = icmp samesign ugt i64 %i.al, 1
  br i1 %i.cb, label %.lr.ph146, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i

bb.q:                                             ; preds = %.lr.ph146
  %i.cc = trunc nuw i64 %i.ce to i32
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph146, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i, !llvm.loop !6

.lr.ph146:                                        ; preds = %._crit_edge69, %bb.q
  %indvars.iv.i145 = phi i64 [ %i.ce, %bb.q ], [ %i.al, %._crit_edge69 ] ; 2 uses
  %i.ce = add nsw i64 %indvars.iv.i145, -1        ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !87
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge, !llvm.loop !6

._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge: ; preds = %.lr.ph146
  br label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i, !llvm.loop !6

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i: ; preds = %bb.q, %._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge, %._crit_edge69
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i145, %._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge ], [ %i.al, %._crit_edge69 ], [ %i.ce, %bb.q ] ; 3 uses
  %i.ci = icmp ult i64 %i.ak, %indvars.iv.i.lcssa
  br i1 %i.ci, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !59
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %indvars.iv.i.lcssa)
          to label %.noexc47 unwind label %bb.v, !inline_history !374

.noexc47:                                         ; preds = %bb.r
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !61
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph68, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph68 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv102 = phi i64 [ %i.aq, %.lr.ph68 ], [ %indvars.iv.next103, %._crit_edge ] ; 3 uses
  %indvars.iv92 = phi i32 [ 1, %.lr.ph68 ], [ %indvars.iv.next93, %._crit_edge ] ; 3 uses
  %.266 = phi i128 [ %.037.lcssa, %.lr.ph68 ], [ %i.db, %._crit_edge ] ; 3 uses
  %i.cl = trunc nuw i64 %indvars.iv102 to i32
  %.reass.reass = add i32 %i.cl, %invariant.op
  %i.cm = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.cn = sext i32 %indvars.iv92 to i64           ; 3 uses
  %i.co = sub i32 %indvar, %i.c
  %i.cp = and i32 %i.co, 1
  %lcmp.mod156.not.not = icmp eq i32 %i.cp, 0
  br i1 %lcmp.mod156.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next95.prol = add nsw i64 %i.cn, 1
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cn
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !87
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i32, ptr %i.as, align 4, !tbaa !87
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul nuw i64 %i.cu, %i.cs
  %i.cw = zext i64 %i.cv to i128
  %i.cx = add nsw i128 %.266, %i.cw               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.cx, %.lr.ph.prol ]
  %indvars.iv96.in.unr = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %indvars.iv96.prol, %.lr.ph.prol ]
  %indvars.iv94.unr = phi i64 [ %i.cn, %.lr.ph.preheader ], [ %indvars.iv.next95.prol, %.lr.ph.prol ]
  %.362.unr = phi i128 [ %.266, %.lr.ph.preheader ], [ %i.cx, %.lr.ph.prol ]
  %i.cy = icmp eq i32 %i.ar, %indvar
  br i1 %i.cy, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.s
  %.3.lcssa = phi i128 [ %.266, %bb.s ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dv, %.lr.ph ] ; 2 uses
  %i.cz = trunc i128 %.3.lcssa to i32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre106, i64 %indvars.iv102
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !87
  %i.db = lshr i128 %.3.lcssa, 32
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %indvars.iv.next93 = add i32 %indvars.iv92, 1
  %exitcond105.not = icmp eq i32 %indvars.iv92, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond105.not, label %._crit_edge69.loopexit, label %bb.s, !llvm.loop !375

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv96.in = phi i64 [ %indvars.iv96.1, %.lr.ph ], [ %indvars.iv96.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.1, %.lr.ph ], [ %indvars.iv94.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.362 = phi i128 [ %i.dv, %.lr.ph ], [ %.362.unr, %.lr.ph.prol.loopexit ]
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv94
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !87
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv96.in
  %i.dg = getelementptr i8, ptr %i.df, i64 -4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !87
  %i.di = zext i32 %i.dh to i64
  %i.dj = mul nuw i64 %i.di, %i.de
  %i.dk = zext i64 %i.dj to i128
  %i.dl = add i128 %.362, %i.dk
  %indvars.iv96.1 = add nsw i64 %indvars.iv96.in, -2 ; 2 uses
  %indvars.iv.next95.1 = add nsw i64 %indvars.iv94, 2 ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv94
  %i.dn = getelementptr i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !87
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv96.1
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !87
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul nuw i64 %i.ds, %i.dp
  %i.du = zext i64 %i.dt to i128
  %i.dv = add i128 %i.dl, %i.du                   ; 2 uses
  %lftr.wideiv126.1 = trunc i64 %indvars.iv.next95.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv126.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !376

bb.t:                                             ; preds = %.noexc47, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i
  %i.dw = phi i64 [ %i.ak, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i ], [ %.pre.i.i.i, %.noexc47 ]
  %i.dx = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.i.lcssa, i64 %i.dw)
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !88
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !65
  %i.ea = shl nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !124 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.209) #32
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !71 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.221) #32
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !87
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #30
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !221
  %i.e = load i8, ptr %0, align 1, !tbaa !71      ; 2 uses
  %i.f = add i8 %i.e, -48
  %or.cond24 = icmp ult i8 %i.f, 10
  br i1 %or.cond24, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.g = call noundef i32 @_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1, i32 noundef -1) #30 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.207) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  store i32 %i.g, ptr %2, align 4, !tbaa !87
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !104
  br label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.j = icmp eq i8 %i.e, 123
  br i1 %i.j, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not22 = icmp eq ptr %i.k, %1
  br i1 %.not22, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !71
  switch i8 %i.l, label %bb.n [
    i8 125, label %bb.l
    i8 58, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107  ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.214) #32
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.l
  %i.p = add nuw nsw i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !107
  store i32 %i.n, ptr %3, align 8
  store i32 1, ptr %i.b, align 4, !tbaa !221
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %4, ptr %5, align 8, !tbaa !751
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.q, align 8, !tbaa !752
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.r, align 8, !tbaa !108
  %i.s = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.k, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.n, %bb.j
  %6 = phi ptr [ %i.k, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ], [ %i.s, %bb.n ], [ %i.k, %bb.j ] ; 3 uses
  %.not23 = icmp eq ptr %6, %1
  br i1 %.not23, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = load i8, ptr %6, align 1, !tbaa !71
  %i.u = icmp eq i8 %i.t, 125
  br i1 %i.u, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.b, align 4, !tbaa !221
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.i
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.211) #32
  unreachable

bb.s:                                             ; preds = %bb.h, %bb.q
  %.sroa.3.0 = phi i32 [ 0, %bb.h ], [ %.sroa.3.0.pre, %bb.q ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.h ], [ %i.v, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !104
  %i.d = load i8, ptr %0, align 1, !tbaa !71      ; 4 uses
  %i.e = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.d, 48
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef i32 @_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %1, i32 noundef 2147483647) #30
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.021 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.d ]
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.h, align 1, !tbaa !71
  switch i8 %i.j, label %bb.g [
    i8 125, label %bb.h
    i8 58, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.211) #32
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !755, !nonnull !83, !align !168
  store i32 %.021, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !756, !nonnull !83, !align !162
  store i32 1, ptr %i.n, align 4, !tbaa !221
  %i.o = load ptr, ptr %2, align 8, !tbaa !757, !nonnull !83, !align !168
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !107
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.215) #32
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.h
  store i32 -1, ptr %i.p, align 8, !tbaa !107
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.t = and i8 %i.d, -33
  %i.u = add i8 %i.t, -65
  %or.cond10.i = icmp ult i8 %i.u, 26
  %i.v = icmp eq i8 %i.d, 95
  %i.w = or i1 %i.v, %or.cond10.i
  br i1 %i.w, label %.critedge4.preheader, label %bb.k

.critedge4.preheader:                             ; preds = %bb.j
  %i.x = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.x   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not37 = icmp eq ptr %i.y, %1
  br i1 %.not37, label %.critedge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.211) #32
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !753

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.aa = phi ptr [ %i.z, %.critedge4 ], [ %i.y, %.critedge4.preheader ] ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71  ; 3 uses
  %i.ac = and i8 %i.ab, -33
  %i.ad = add i8 %i.ac, -65
  %or.cond10.i32 = icmp ult i8 %i.ad, 26
  %i.ae = icmp eq i8 %i.ab, 95
  %i.af = or i1 %i.ae, %or.cond10.i32
  %i.ag = add i8 %i.ab, -48
  %or.cond31 = icmp ult i8 %i.ag, 10
  %or.cond33 = or i1 %or.cond31, %i.af
  br i1 %or.cond33, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !753

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !753

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa = phi ptr [ %i.aa, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.ah = ptrtoint ptr %.lcssa to i64
  %i.ai = ptrtoint ptr %0 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull @.str.187)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.al) #30
  resume { ptr, i32 } %i.am

_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit: ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !755, !nonnull !83, !align !168 ; 2 uses
  store ptr %0, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !756, !nonnull !83, !align !162
  store i32 2, ptr %i.aq, align 4, !tbaa !221
  %i.ar = load ptr, ptr %2, align 8, !tbaa !757, !nonnull !83, !align !168
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 -1, ptr %i.as, align 8, !tbaa !107
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %i.s, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa, %_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.65, align 1             ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %5 = alloca %"struct.fmt::v12::detail::size_padding", align 4 ; 5 uses
  %6 = alloca %class.anon.100, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 7 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !110    ; 7 uses
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 7
  switch i8 %i.e, label %bb.b [
    i8 0, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %.split.us.i
    i8 6, label %.split.us.i11
    i8 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.bq, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #30
  br label %common.resume

bb.e:                                             ; preds = %bb.a, %bb.a
end_hunk_1
