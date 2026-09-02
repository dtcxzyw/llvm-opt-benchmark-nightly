Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-impl-test?download=true
inline.NumInlined: 4849
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN23bigint_test_square_Test8TestBodyEv:_ZN3fmt3v126detail6bigintC2Em.exit
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(128) %i.iu) #30, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.ch

bb.cd:                                            ; preds = %bb.by
  %i.iy = landingpad { ptr, i32 }
          cleanup
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
  %i.jb = load ptr, ptr %24, align 8, !tbaa !56   ; 3 uses
  %.not.i.i209 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i209, label %_ZN7testing7MessageD2Ev.exit211, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.cg
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !10
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(128) %i.jb) #30, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit211

_ZN7testing7MessageD2Ev.exit211:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, %bb.cg, %bb.cd
  %.pn63.pn = phi { ptr, i32 } [ %i.iy, %bb.cd ], [ %.pn63, %bb.cg ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #30
  br label %bb.co

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZN7testing7MessageD2Ev.exit208
  %i.jf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !55 ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i212, label %_ZN7testing15AssertionResultD2Ev.exit216, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !41 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213: ; preds = %bb.ci
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !42
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit216

_ZN7testing15AssertionResultD2Ev.exit216:         ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.jm = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.jm, %i.hl
  br i1 %.not.i.i.i217, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit216
  call void @free(ptr noundef %i.jm) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %_ZN7testing15AssertionResultD2Ev.exit216, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.jn = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.jn, %i.fh
  br i1 %.not.i.i.i219, label %_ZN3fmt3v126detail6bigintD2Ev.exit221, label %bb.ck

bb.ck:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.jn) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit221

_ZN3fmt3v126detail6bigintD2Ev.exit221:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.jo = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %i.jo, %i.dc
  br i1 %.not.i.i.i222, label %_ZN3fmt3v126detail6bigintD2Ev.exit224, label %bb.cl

bb.cl:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit221
  call void @free(ptr noundef %i.jo) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit224

_ZN3fmt3v126detail6bigintD2Ev.exit224:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit221, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.jp = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %i.jp, %i.ay
  br i1 %.not.i.i.i225, label %_ZN3fmt3v126detail6bigintD2Ev.exit227, label %bb.cm

bb.cm:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit224
  call void @free(ptr noundef %i.jp) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit227

_ZN3fmt3v126detail6bigintD2Ev.exit227:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit224, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.jq = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
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
  %i.jr = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
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
  %i.js = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
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
  %i.jt = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
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
  %i.ju = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
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
  %i.jv = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 11 uses
  %i.c = trunc i64 %i.b to i32                    ; 9 uses
  %i.d = shl nuw nsw i32 %i.c, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !23
  %i.g = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !26
  store i64 %i.i, ptr %i.e, align 8, !tbaa !27
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !59
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !26
  store i64 %i.i, ptr %i.e, align 8, !tbaa !27
  store ptr %i.j, ptr %0, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.n = icmp ugt i64 %i.b, %i.i
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = lshr i64 %i.i, 1
  %i.q = add i64 %i.p, %i.i                       ; 3 uses
  %i.r = icmp ugt i64 %i.b, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.b, %bb.d ] ; 4 uses
  %i.u = invoke noundef ptr @_ZN3fmt3v126detail9allocatorIjE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i64 noundef %.0.i)
          to label %.noexc120 unwind label %bb.i  ; 2 uses

.noexc120:                                        ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !60   ; 2 uses
  %i.x = icmp ule i64 %i.w, %.0.i
  call void @llvm.assume(i1 %i.x)
  %i.y = shl i64 %i.w, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.m, i64 %i.y, i1 false)
  store ptr %i.u, ptr %1, align 8, !tbaa !26
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.m, %i.z
  br i1 %.not.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc120
  call void @free(ptr noundef %i.m) #30
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !27
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #33
  unreachable

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit: ; preds = %.noexc120, %bb.h, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.ac = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.h ], [ %.0.i, %.noexc120 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ac)
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !60
  %i.af = icmp sgt i32 %i.c, -1
  br i1 %i.af, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.187)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.ag, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #30
  br label %.body

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %i.ai = zext nneg i32 %i.d to i64               ; 3 uses
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !27  ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.m, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ai)
          to label %.noexc43 unwind label %bb.n, !inline_history !175

.noexc43:                                         ; preds = %bb.m
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !27
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit, %.noexc43
  %i.an = phi i64 [ %i.aj, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit ], [ %.pre.i.i42, %.noexc43 ] ; 3 uses
  %i.ao = call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %i.an) ; 4 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !60
  %.not = icmp eq i32 %i.c, 0
  %.pre106.pre107 = load ptr, ptr %0, align 8     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader53.lr.ph

.preheader53.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.ap = load ptr, ptr %1, align 8, !tbaa !26    ; 6 uses
  %wide.trip.count90 = and i64 %i.b, 2147483647
  br label %.preheader53

.preheader53:                                     ; preds = %.preheader53.lr.ph, %bb.o
  %indvars.iv85 = phi i64 [ 1, %.preheader53.lr.ph ], [ %indvars.iv.next86, %bb.o ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader53.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.03760 = phi i128 [ 0, %.preheader53.lr.ph ], [ %i.bi, %bb.o ] ; 2 uses
  %xtraiter = and i64 %indvars.iv85, 1
  %i.aq = icmp eq i64 %indvars.iv, 0
  br i1 %i.aq, label %.epil.preheader, label %.preheader53.new

.preheader53.new:                                 ; preds = %.preheader53
  %unroll_iter = and i64 %indvars.iv85, 9223372036854775806
  br label %bb.p

.preheader.loopexit:                              ; preds = %bb.o
  %.pre106.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre106 = phi ptr [ %.pre106.pre107, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre106.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bi, %.preheader.loopexit ]
  %i.ar = icmp sgt i32 %i.d, %i.c
  br i1 %i.ar, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.as = load ptr, ptr %1, align 8               ; 6 uses
  %i.at = and i64 %i.b, 2147483647                ; 3 uses
  %i.au = add nuw nsw i32 %i.c, 1
  %2 = add nsw i32 %i.c, -2
  %indvars.iv96.prol = add nsw i64 %i.at, -1      ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv96.prol
  br label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.unr-lcssa:                                       ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.o, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader53
  %indvars.iv78.epil.init = phi i64 [ 0, %.preheader53 ], [ %indvars.iv.next79.1, %.unr-lcssa ]
  %indvars.iv76.epil.init = phi i64 [ %indvars.iv, %.preheader53 ], [ %indvars.iv.next77.1, %.unr-lcssa ]
  %.157.epil.init = phi i128 [ %.03760, %.preheader53 ], [ %i.cc, %.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %indvars.iv85 to i1
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv78.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !59
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv76.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !59
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.az
  %i.be = zext i64 %i.bd to i128
  %i.bf = add i128 %.157.epil.init, %i.be
  br label %bb.o

bb.o:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa151 = phi i128 [ %i.cc, %.unr-lcssa ], [ %i.bf, %.epil.preheader ] ; 2 uses
  %i.bg = trunc i128 %.lcssa151 to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre106.pre107, i64 %indvars.iv
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !59
  %i.bi = lshr i128 %.lcssa151, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next, %wide.trip.count90
  br i1 %exitcond91.not, label %.preheader.loopexit, label %.preheader53, !llvm.loop !176

bb.p:                                             ; preds = %bb.p, %.preheader53.new
  %indvars.iv78 = phi i64 [ 0, %.preheader53.new ], [ %indvars.iv.next79.1, %bb.p ] ; 3 uses
  %indvars.iv76 = phi i64 [ %indvars.iv, %.preheader53.new ], [ %indvars.iv.next77.1, %bb.p ] ; 3 uses
  %.157 = phi i128 [ %.03760, %.preheader53.new ], [ %i.cc, %bb.p ]
  %niter = phi i64 [ 0, %.preheader53.new ], [ %niter.next.1, %bb.p ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv78
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv76
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !59
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %i.bo, %i.bl
  %i.bq = zext i64 %i.bp to i128
  %i.br = add i128 %.157, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv78
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !59
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv76
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !59
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bv
  %i.cb = zext i64 %i.ca to i128
  %i.cc = add i128 %i.br, %i.cb                   ; 3 uses
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %indvars.iv.next77.1 = add nsw i64 %indvars.iv76, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.p, !llvm.loop !177

._crit_edge69.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %.preheader
  %i.cd = phi ptr [ %.pre, %._crit_edge69.loopexit ], [ %.pre106, %.preheader ]
  %i.ce = icmp samesign ugt i64 %i.ao, 1
  br i1 %i.ce, label %.lr.ph146, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i

bb.q:                                             ; preds = %.lr.ph146
  %i.cf = trunc nuw i64 %i.ch to i32
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %.lr.ph146, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i, !llvm.loop !178

.lr.ph146:                                        ; preds = %._crit_edge69, %bb.q
  %indvars.iv.i145 = phi i64 [ %i.ch, %bb.q ], [ %i.ao, %._crit_edge69 ] ; 2 uses
  %i.ch = add nsw i64 %indvars.iv.i145, -1        ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge, !llvm.loop !178

._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge: ; preds = %.lr.ph146
  br label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i, !llvm.loop !178

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i: ; preds = %bb.q, %._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge, %._crit_edge69
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i145, %._ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i_crit_edge ], [ %i.ao, %._crit_edge69 ], [ %i.ch, %bb.q ] ; 3 uses
  %i.cl = icmp ult i64 %i.an, %indvars.iv.i.lcssa
  br i1 %i.cl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %indvars.iv.i.lcssa)
          to label %.noexc47 unwind label %bb.v, !inline_history !179

.noexc47:                                         ; preds = %bb.r
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !27
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph68, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph68 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv102 = phi i64 [ %i.at, %.lr.ph68 ], [ %indvars.iv.next103, %._crit_edge ] ; 3 uses
  %indvars.iv92 = phi i64 [ 1, %.lr.ph68 ], [ %indvars.iv.next93, %._crit_edge ] ; 4 uses
  %.266 = phi i128 [ %.037.lcssa, %.lr.ph68 ], [ %i.dd, %._crit_edge ] ; 3 uses
  %reass.sub = sub i64 %indvars.iv102, %i.b
  %i.co = trunc i64 %reass.sub to i32
  %.reass.reass = add i32 %i.co, 1
  %i.cp = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.cq = sub i32 %indvar, %i.c
  %i.cr = and i32 %i.cq, 1
  %lcmp.mod156.not.not = icmp eq i32 %i.cr, 0
  br i1 %lcmp.mod156.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next95.prol = add nuw nsw i64 %indvars.iv92, 1
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv92
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !59
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load i32, ptr %i.av, align 4, !tbaa !59
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.cw, %i.cu
  %i.cy = zext i64 %i.cx to i128
  %i.cz = add nsw i128 %.266, %i.cy               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %indvars.iv96.in.unr = phi i64 [ %i.at, %.lr.ph.preheader ], [ %indvars.iv96.prol, %.lr.ph.prol ]
  %indvars.iv94.unr = phi i64 [ %indvars.iv92, %.lr.ph.preheader ], [ %indvars.iv.next95.prol, %.lr.ph.prol ]
  %.362.unr = phi i128 [ %.266, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %i.da = icmp eq i32 %2, %indvar
  br i1 %i.da, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.s
  %.3.lcssa = phi i128 [ %.266, %bb.s ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dx, %.lr.ph ] ; 2 uses
  %i.db = trunc i128 %.3.lcssa to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre106, i64 %indvars.iv102
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !59
  %i.dd = lshr i128 %.3.lcssa, 32
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next93 to i32
  %exitcond105.not = icmp eq i32 %i.au, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond105.not, label %._crit_edge69.loopexit, label %bb.s, !llvm.loop !180

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv96.in = phi i64 [ %indvars.iv96.1, %.lr.ph ], [ %indvars.iv96.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.1, %.lr.ph ], [ %indvars.iv94.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.362 = phi i128 [ %i.dx, %.lr.ph ], [ %.362.unr, %.lr.ph.prol.loopexit ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv94
  %i.df = load i32, ptr %i.de, align 4, !tbaa !59
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv96.in
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw i64 %i.dk, %i.dg
  %i.dm = zext i64 %i.dl to i128
  %i.dn = add i128 %.362, %i.dm
  %indvars.iv96.1 = add nsw i64 %indvars.iv96.in, -2 ; 2 uses
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv94
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !59
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv96.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !59
  %i.du = zext i32 %i.dt to i64
  %i.dv = mul nuw i64 %i.du, %i.dr
  %i.dw = zext i64 %i.dv to i128
  %i.dx = add i128 %i.dn, %i.dw                   ; 2 uses
  %lftr.wideiv126.1 = trunc i64 %indvars.iv.next95.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv126.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !181

bb.t:                                             ; preds = %.noexc47, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i
  %i.dy = phi i64 [ %i.an, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit.i ], [ %.pre.i.i.i, %.noexc47 ]
  %i.dz = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.i.lcssa, i64 %i.dy)
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !60
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !28
  %i.ec = shl nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !28
  %i.ed = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.ed) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.v:                                             ; preds = %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.aw, %bb.n ], [ %i.ef, %bb.v ]
  %i.eg = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i48 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i48, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit49, label %bb.w

bb.w:                                             ; preds = %.body
  call void @free(ptr noundef %i.eg) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit49

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit49: ; preds = %.body, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #30
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr %0, align 8, !tbaa !26
  store i32 1, ptr %i.e, align 4, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %.not8.i.not.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.not.i, label %bb.g, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !182
  %.pre.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.j = icmp ne i64 %.pre.i.i.i.i, 0
  %i.k = zext i1 %i.j to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %bb.f, %bb.g
  %i.l = phi i64 [ 1, %bb.f ], [ %i.k, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.n, align 8, !tbaa !28
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.o = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !26
  store i32 5, ptr %i.p, align 4, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %.not8.i.not.i11 = icmp eq i64 %i.r, 0
  br i1 %.not8.i.not.i11, label %bb.i, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit13

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !182
  %.pre.i.i.i.i12 = load i64, ptr %i.q, align 8, !tbaa !27
  %i.u = icmp ne i64 %.pre.i.i.i.i12, 0
  %i.v = zext i1 %i.u to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit13

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit13:        ; preds = %bb.h, %bb.i
  %i.w = phi i64 [ 1, %bb.h ], [ %i.v, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.y, align 8, !tbaa !28
  %.not15 = icmp eq i32 %i.o, 31
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit13
  %.014 = lshr i32 1073741824, %i.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.016 = phi i32 [ %.014, %.lr.ph ], [ %.0, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit ] ; 2 uses
  tail call void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0)
  %i.aa = and i32 %.016, %1
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !60  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.ac = load ptr, ptr %0, align 8, !tbaa !26    ; 4 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ab, 1
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.ab, -2
  br label %bb.l

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.013.i.i.epil.init ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 5
  %i.ai = add nuw nsw i64 %i.ah, %.01112.i.i.epil.init ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !59
  %i.ak = lshr i64 %i.ai, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ba, %._crit_edge.i.i.unr-lcssa ], [ %i.ak, %.epil.preheader ] ; 2 uses
  %i.al = trunc nuw nsw i64 %.lcssa to i32
  %.not.i.i = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bb, %bb.l ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ba, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.l ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.013.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, %.01112.i.i      ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !59
  %i.as = lshr i64 %i.aq, 32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.013.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 5
end_hunk_0
