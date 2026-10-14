Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-test?download=true
inline.NumInlined: 17970
inline.NumDeleted: 3487
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN64memory_buffer_test_move_ctor_dynamic_buffer_non_propagating_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20)
          to label %_ZN7testing8internal11CmpHelperNEIPSaIcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.co

bb.cm:                                            ; preds = %bb.ck
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIPSaIcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_S6_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.140, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.2309)
          to label %_ZN7testing8internal11CmpHelperNEIPSaIcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.co

_ZN7testing8internal11CmpHelperNEIPSaIcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  %i.iu = load i8, ptr %20, align 8, !tbaa !126, !range !127, !noundef !128
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.cy, label %bb.cp

bb.cn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit136, %bb.by
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %_ZN7testing7MessageD2Ev.exit136 ], [ %i.hv, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.dd

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  br label %bb.dc

bb.cp:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIPSaIcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  %i.ix = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !129 ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i145, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !133
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146

_ZNK7testing15AssertionResult15failure_messageEv.exit146: ; preds = %bb.cr, %bb.cq
  %i.ja = phi ptr [ %i.iz, %bb.cr ], [ @.str.886, %bb.cq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 393, ptr noundef %i.ja)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.ct unwind label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  %i.jb = load ptr, ptr %21, align 8, !tbaa !135  ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.ct
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !105
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(128) %i.jb) #36, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %bb.ct, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cp
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152

bb.cv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cs
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #36
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pn55 = phi { ptr, i32 } [ %i.jh, %bb.cw ], [ %i.jg, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  %i.ji = load ptr, ptr %21, align 8, !tbaa !135  ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.cx
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !105
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(128) %i.ji) #36, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, %bb.cx, %bb.cu
  %.pn55.pn = phi { ptr, i32 } [ %i.jf, %bb.cu ], [ %.pn55, %bb.cx ], [ %.pn55, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #36
  br label %bb.dc

bb.cy:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIPSaIcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit149
  %i.jm = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !129 ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !133 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.cz
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !136
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #37
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.jt = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.jt, %i.dc
  br i1 %.not.i.i158, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.ju = load i64, ptr %i.cy, align 8, !tbaa !204
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.ju) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit157, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.jv = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.jv, %i.n
  br i1 %.not.i.i159, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit160, label %bb.db

bb.db:                                            ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit
  %i.jw = load i64, ptr %i.j, align 8, !tbaa !204
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jw) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit160

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit160: ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.dc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152, %bb.co
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.iw, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cn, %bb.bx, %bb.bh, %bb.as
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn, %bb.dc ], [ %.pn51.pn.pn, %bb.cn ], [ %.pn47.pn.pn, %bb.bx ], [ %.pn43.pn.pn, %bb.bh ], [ %.pn39.pn.pn, %bb.as ]
  %i.jx = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %.not.i.i161 = icmp eq ptr %i.jx, %i.dc
  br i1 %.not.i.i161, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit162, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jy = load i64, ptr %i.cy, align 8, !tbaa !204
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.jy) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit162

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit162: ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.df

bb.df:                                            ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit162, %bb.ac, %bb.j
  %.pn55.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit162 ], [ %.pn.pn.pn, %bb.ac ], [ %i.bz, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.i
  %.pn55.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn.pn.pn.pn, %bb.df ], [ %i.by, %bb.i ]
  %i.jz = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.jz, %i.n
  br i1 %.not.i.i163, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit164, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ka = load i64, ptr %i.j, align 8, !tbaa !204
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.ka) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit164

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEED2Ev.exit164: ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn55.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !203    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %.not.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !204
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !203    ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !205  ; 28 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !204  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  %i.o = icmp ne ptr %i.k, null
  %i.p = icmp ne ptr %i.m, null
  %or.cond.i.i.i = and i1 %i.o, %i.p
  %.0.i.i.i = or i1 %i.n, %or.cond.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.r = icmp eq ptr %i.e, %i.q                   ; 2 uses
  %or.cond.i.i = select i1 %.0.i.i.i, i1 true, i1 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %or.cond.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit
  %i.t = load i64, ptr %i.s, align 8, !tbaa !204
  %i.u = icmp ugt i64 %i.g, %i.t
  br i1 %i.u, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !202
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.g)
          to label %.noexc unwind label %bb.g, !inline_history !783

.noexc:                                           ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !204
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %.pre.i.i.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !205
  br label %iter.check

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.z, align 8, !tbaa !205
  %.not6.i.i.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i, %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !203   ; 6 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  %2 = ptrtoaddr ptr %i.ab to i64
  %i.ac = ptrtoaddr ptr %i.e to i64               ; 2 uses
  %i.ad = sub i64 %i.ac, %2
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 %n.vec
  %i.ag = getelementptr i8, ptr %i.e, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.e, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep11, align 1, !tbaa !136
  %wide.load12 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !136
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !136
  store <16 x i8> %wide.load12, ptr %i.ai, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.g, -8                     ; 4 uses
  %i.ak = getelementptr i8, ptr %i.ab, i64 %n.vec14
  %i.al = getelementptr i8, ptr %i.e, i64 %n.vec14
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %next.gep16 = getelementptr i8, ptr %i.ab, i64 %index15
  %next.gep17 = getelementptr i8, ptr %i.e, i64 %index15
  %wide.load18 = load <8 x i8>, ptr %next.gep17, align 1, !tbaa !136
  store <8 x i8> %wide.load18, ptr %next.gep16, align 1, !tbaa !136
  %index.next19 = add nuw i64 %index15, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !785

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.g, %n.vec14
  br i1 %cmp.n20, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %i.e, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 3 uses
  %i.an = add i64 %i.g, %i.ac                     ; 2 uses
  %.057.i.i.i.ph59 = ptrtoaddr ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.ao = sub i64 %i.an, %.057.i.i.i.ph59
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !136
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.08.i.i.i.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !786

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.prol ]
  %i.as = sub i64 %.057.i.i.i.ph59, %i.an
  %i.at = icmp ugt i64 %i.as, -8
  br i1 %i.at, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.av = load i8, ptr %.057.i.i.i, align 1, !tbaa !136
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.av, ptr %.08.i.i.i, align 1, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !136
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !136
  %i.ba = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !136
  %i.bd = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !136
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !136
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !136
  %i.bp = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !136
  %.not.i.i.i.7 = icmp eq ptr %i.bp, %i.aa
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !787

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i: ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  store ptr %i.b, ptr %0, align 8, !tbaa !203
  store i64 %i.i, ptr %i.s, align 8, !tbaa !204
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  %.not6.i.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %iter.check41

iter.check41:                                     ; preds = %bb.d
  %min.iters.check25 = icmp ult i64 %i.g, 8
  %3 = ptrtoaddr ptr %0 to i64
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.bt = sub i64 %4, %3
  %diff.check24 = icmp ugt i64 %i.bt, -32
  %or.cond58 = or i1 %min.iters.check25, %diff.check24
  br i1 %or.cond58, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check26

vector.main.loop.iter.check26:                    ; preds = %iter.check41
  %min.iters.check27 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check27, label %vec.epilog.ph45, label %vector.ph28

vector.ph28:                                      ; preds = %vector.main.loop.iter.check26
  %i.bu = and i64 %i.g, 24
  %n.vec29 = and i64 %i.g, -32                    ; 5 uses
  %i.bv = getelementptr i8, ptr %i.b, i64 %n.vec29
  %i.bw = getelementptr i8, ptr %i.q, i64 %n.vec29
  br label %vector.body30

vector.body30:                                    ; preds = %vector.ph28, %vector.body30
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 3 uses
  %next.gep32 = getelementptr i8, ptr %i.b, i64 %index31 ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.q, i64 %index31 ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load34 = load <16 x i8>, ptr %next.gep33, align 8, !tbaa !136
  %wide.load35 = load <16 x i8>, ptr %i.bx, align 8, !tbaa !136
  %i.by = getelementptr i8, ptr %next.gep32, i64 16
  store <16 x i8> %wide.load34, ptr %next.gep32, align 8, !tbaa !136
  store <16 x i8> %wide.load35, ptr %i.by, align 8, !tbaa !136
  %index.next36 = add nuw i64 %index31, 32        ; 2 uses
  %i.bz = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.bz, label %middle.block37, label %vector.body30, !llvm.loop !788

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %i.g, %n.vec29
  br i1 %cmp.n38, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %vec.epilog.iter.check43

vec.epilog.iter.check43:                          ; preds = %middle.block37
  %min.epilog.iters.check44 = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check44, label %.lr.ph.i.i.preheader, label %vec.epilog.ph45, !prof !223

vec.epilog.ph45:                                  ; preds = %vector.main.loop.iter.check26, %vec.epilog.iter.check43
  %vec.epilog.resume.val39 = phi i64 [ %n.vec29, %vec.epilog.iter.check43 ], [ 0, %vector.main.loop.iter.check26 ]
  %n.vec46 = and i64 %i.g, -8                     ; 4 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %n.vec46
  %i.cb = getelementptr i8, ptr %i.q, i64 %n.vec46
  br label %vec.epilog.vector.body47

vec.epilog.vector.body47:                         ; preds = %vec.epilog.vector.body47, %vec.epilog.ph45
  %index48 = phi i64 [ %vec.epilog.resume.val39, %vec.epilog.ph45 ], [ %index.next52, %vec.epilog.vector.body47 ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.b, i64 %index48
  %next.gep50 = getelementptr i8, ptr %i.q, i64 %index48
  %wide.load51 = load <8 x i8>, ptr %next.gep50, align 8, !tbaa !136
  store <8 x i8> %wide.load51, ptr %next.gep49, align 8, !tbaa !136
  %index.next52 = add nuw i64 %index48, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.cc, label %vec.epilog.middle.block53, label %vec.epilog.vector.body47, !llvm.loop !789

vec.epilog.middle.block53:                        ; preds = %vec.epilog.vector.body47
  %cmp.n54 = icmp eq i64 %i.g, %n.vec46
  br i1 %cmp.n54, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check41, %vec.epilog.iter.check43, %vec.epilog.middle.block53
  %.08.i.i.ph = phi ptr [ %i.b, %iter.check41 ], [ %i.bv, %vec.epilog.iter.check43 ], [ %i.ca, %vec.epilog.middle.block53 ] ; 2 uses
  %.057.i.i.ph = phi ptr [ %i.q, %iter.check41 ], [ %i.bw, %vec.epilog.iter.check43 ], [ %i.cb, %vec.epilog.middle.block53 ] ; 3 uses
  %i.cd = add i64 %i.g, %4
  %.057.i.i.ph60 = ptrtoaddr ptr %.057.i.i.ph to i64 ; 2 uses
  %i.ce = sub i64 %i.g, %.057.i.i.ph60
  %i.cf = add i64 %i.cd, 31
  %i.cg = sub i64 %i.cf, %.057.i.i.ph60
  %xtraiter61 = and i64 %i.ce, 7                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.08.i.i.prol = phi ptr [ %i.cj, %.lr.ph.i.i.prol ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.prol ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.057.i.i.prol, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.057.i.i.prol, align 1, !tbaa !136
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ci, ptr %.08.i.i.prol, align 1, !tbaa !136
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !790

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %.08.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.prol ]
  %.057.i.i.unr = phi ptr [ %.057.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.prol ]
  %i.ck = icmp ult i64 %i.cg, 7
  br i1 %i.ck, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %.057.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1
  %i.cm = load i8, ptr %.057.i.i, align 1, !tbaa !136
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  store i8 %i.cm, ptr %.08.i.i, align 1, !tbaa !136
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 2
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !136
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 2
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !136
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 3
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !136
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 3
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !136
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !136
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !136
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 5
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !136
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 5
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 6
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !136
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 6
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !136
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 7
  %i.de = load i8, ptr %i.da, align 1, !tbaa !136
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 7
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !136
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !136
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !136
  %.not.i.i.7 = icmp eq ptr %i.dg, %i.bs
  br i1 %.not.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i, !llvm.loop !791

bb.e:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  store ptr %i.e, ptr %0, align 8, !tbaa !203
  store i64 %i.i, ptr %i.s, align 8, !tbaa !204
  store ptr %i.q, ptr %1, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block37, %vec.epilog.middle.block53, %bb.e, %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !204 ; 2 uses
  %i.dl = icmp ugt i64 %i.g, %i.dk
  br i1 %i.dl, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !202
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.g)
          to label %.noexc3 unwind label %bb.g, !inline_history !783

.noexc3:                                          ; preds = %bb.f
  %.pre.i.i.i = load i64, ptr %i.dj, align 8, !tbaa !204
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i: ; preds = %.noexc3, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.do = phi i64 [ %i.dk, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i ], [ %.pre.i.i.i, %.noexc3 ]
  %i.dp = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.do)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !205
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i, %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i
  ret ptr %0

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  tail call void @__clang_call_terminate(ptr %i.ds) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24check_move_assign_bufferPKcRN3fmt3v1219basic_memory_bufferIcLm5ENS2_6detail9allocatorIcEEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN3fmt3v1219basic_memory_bufferIcLm5ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.fmt::v12::basic_memory_buffer.62", align 8 ; 13 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm5ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.g, align 8, !tbaa !202
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !203    ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !205  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !204  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.p = icmp eq ptr %i.j, %i.o
  br i1 %i.p, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i
  store ptr %i.i, ptr %2, align 8, !tbaa !203
  store i64 %i.n, ptr %i.f, align 8, !tbaa !204
  %.not6.i.i.i = icmp samesign eq i64 %i.l, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.o, i64 %i.l, i1 false), !tbaa !136
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

bb.b:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i
  store ptr %i.j, ptr %2, align 8, !tbaa !203
  store i64 %i.n, ptr %i.f, align 8, !tbaa !204
  store ptr %i.o, ptr %1, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.b, %bb.a
  %i.q = phi ptr [ %i.i, %.lr.ph.i.i.i.preheader ], [ %i.j, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.r = phi i64 [ %i.l, %.lr.ph.i.i.i.preheader ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.s = phi ptr [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.o, %bb.b ], [ %i.j, %bb.a ]
  %i.t = icmp ugt i64 %i.l, %i.n
  br i1 %i.t, label %bb.c, label %_ZN3fmt3v1219basic_memory_bufferIcLm5ENS0_6detail9allocatorIcEEEaSEOS5_.exit

bb.c:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.u = lshr i64 %i.n, 1
  %i.v = add i64 %i.u, %i.n
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.l, i64 %i.v) ; 4 uses
  %i.w = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %spec.select.i)
          to label %.noexc135 unwind label %bb.e  ; 2 uses

.noexc135:                                        ; preds = %bb.c
  %i.x = load i64, ptr %i.h, align 8, !tbaa !205  ; 2 uses
  %i.y = icmp ule i64 %i.x, %spec.select.i
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.x, i1 false)
  store ptr %i.w, ptr %2, align 8, !tbaa !203
  store i64 %spec.select.i, ptr %i.f, align 8, !tbaa !204
  %.not.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i, label %.noexc.i, label %bb.d

bb.d:                                             ; preds = %.noexc135
  call void @free(ptr noundef %i.q) #36
  %.pre.i.i.i.i.pre = load i64, ptr %i.f, align 8, !tbaa !204
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.d, %.noexc135
  %.pre.i.i.i.i = phi i64 [ %.pre.i.i.i.i.pre, %bb.d ], [ %spec.select.i, %.noexc135 ]
  %.pre = load ptr, ptr %1, align 8, !tbaa !203
  %.pre99 = load i64, ptr %i.k, align 8, !tbaa !205
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm5ENS0_6detail9allocatorIcEEEaSEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #40
  unreachable
end_hunk_0
begin_hunk_1_@_ZN7testing13PrintToStringIDnEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !133, !alias.scope !6044 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !136, !alias.scope !6044
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #37
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIDnE5PrintERKDnPSo.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !105
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !105
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !133 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !136
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #37
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #36
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !105
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !105
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !321
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI48memory_buffer_test_move_ctor_dynamic_buffer_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI48memory_buffer_test_move_ctor_dynamic_buffer_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV48memory_buffer_test_move_ctor_dynamic_buffer_Test, i64 16), ptr %i.a, align 8, !tbaa !105
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb1EEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !203    ; 3 uses
  %i.f = icmp slt i64 %spec.select, 0
  br i1 %i.f, label %bb.b, label %_ZN13allocator_refISaIcELb1EE8allocateEm.exit, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZN13allocator_refISaIcELb1EE8allocateEm.exit:    ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #41 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !205  ; 2 uses
  %i.j = icmp ule i64 %i.i, %spec.select
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.e, i64 %i.i, i1 false)
  store ptr %i.g, ptr %0, align 8, !tbaa !203
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.e, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN13allocator_refISaIcELb1EE8allocateEm.exit
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.b) #37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN13allocator_refISaIcELb1EE8allocateEm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI63memory_buffer_test_move_ctor_inline_buffer_non_propagating_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI63memory_buffer_test_move_ctor_inline_buffer_non_propagating_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV63memory_buffer_test_move_ctor_inline_buffer_non_propagating_Test, i64 16), ptr %i.a, align 8, !tbaa !105
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !203    ; 3 uses
  %i.f = icmp slt i64 %spec.select, 0
  br i1 %i.f, label %bb.b, label %_ZN13allocator_refISaIcELb0EE8allocateEm.exit, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZN13allocator_refISaIcELb0EE8allocateEm.exit:    ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #41 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !205  ; 2 uses
  %i.j = icmp ule i64 %i.i, %spec.select
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.e, i64 %i.i, i1 false)
  store ptr %i.g, ptr %0, align 8, !tbaa !203
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.e, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN13allocator_refISaIcELb0EE8allocateEm.exit
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.b) #37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN13allocator_refISaIcELb0EE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4growERNS0_6detail6bufferIcEEm, ptr %i.c, align 8, !tbaa !202
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !222
  %i.e = load ptr, ptr %1, align 8, !tbaa !203    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !205  ; 27 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !204  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.l = icmp eq ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.n = icmp eq ptr %i.e, %i.m                   ; 2 uses
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i: ; preds = %bb.b
  %i.o = icmp slt i64 %i.g, 0
  br i1 %i.o, label %bb.c, label %_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i, !prof !191

bb.c:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  invoke void @_ZSt17__throw_bad_allocv() #39
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i:  ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #41
          to label %iter.check unwind label %bb.g ; 6 uses

iter.check:                                       ; preds = %_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i
  store ptr %i.p, ptr %0, align 8, !tbaa !203
  store i64 %i.g, ptr %i.b, align 8, !tbaa !204
  store i64 %i.g, ptr %i.a, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 9223372036854775776      ; 5 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %n.vec
  %i.t = getelementptr i8, ptr %i.e, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.e, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep15, align 1, !tbaa !136
  %wide.load16 = load <16 x i8>, ptr %i.u, align 1, !tbaa !136
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !136
  store <16 x i8> %wide.load16, ptr %i.v, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !6045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.g, 9223372036854775800    ; 4 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %n.vec18
  %i.y = getelementptr i8, ptr %i.e, i64 %n.vec18
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.p, i64 %index19
  %next.gep21 = getelementptr i8, ptr %i.e, i64 %index19
  %wide.load22 = load <8 x i8>, ptr %next.gep21, align 1, !tbaa !136
  store <8 x i8> %wide.load22, ptr %next.gep20, align 1, !tbaa !136
  %index.next23 = add nuw i64 %index19, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6046

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.g, %n.vec18
  br i1 %cmp.n24, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.057.i.i.i.ph = phi ptr [ %i.e, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.057.i.i.i, align 1, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.ab, ptr %.08.i.i.i, align 1, !tbaa !136
  %.not.i.i.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !6047

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i: ; preds = %bb.a
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !203
  store i64 %i.i, ptr %i.b, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  %.not6.i.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %iter.check43

iter.check43:                                     ; preds = %bb.d
  %min.iters.check27 = icmp ult i64 %i.g, 8
  %2 = ptrtoaddr ptr %0 to i64
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.af = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check27, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check28

vector.main.loop.iter.check28:                    ; preds = %iter.check43
  %min.iters.check29 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check29, label %vec.epilog.ph47, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check28
  %i.ag = and i64 %i.g, 24
  %n.vec31 = and i64 %i.g, -32                    ; 5 uses
  %i.ah = getelementptr i8, ptr %i.ad, i64 %n.vec31
  %i.ai = getelementptr i8, ptr %i.m, i64 %n.vec31
  br label %vector.body32

vector.body32:                                    ; preds = %vector.ph30, %vector.body32
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.ad, i64 %index33 ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.m, i64 %index33 ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <16 x i8>, ptr %next.gep35, align 8, !tbaa !136
  %wide.load37 = load <16 x i8>, ptr %i.aj, align 8, !tbaa !136
  %i.ak = getelementptr i8, ptr %next.gep34, i64 16
  store <16 x i8> %wide.load36, ptr %next.gep34, align 8, !tbaa !136
  store <16 x i8> %wide.load37, ptr %i.ak, align 8, !tbaa !136
  %index.next38 = add nuw i64 %index33, 32        ; 2 uses
  %i.al = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.al, label %middle.block39, label %vector.body32, !llvm.loop !6048

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.g, %n.vec31
  br i1 %cmp.n40, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %vec.epilog.iter.check45

vec.epilog.iter.check45:                          ; preds = %middle.block39
  %min.epilog.iters.check46 = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check46, label %.lr.ph.i.i.preheader, label %vec.epilog.ph47, !prof !223

vec.epilog.ph47:                                  ; preds = %vector.main.loop.iter.check28, %vec.epilog.iter.check45
  %vec.epilog.resume.val41 = phi i64 [ %n.vec31, %vec.epilog.iter.check45 ], [ 0, %vector.main.loop.iter.check28 ]
  %n.vec48 = and i64 %i.g, -8                     ; 4 uses
  %i.am = getelementptr i8, ptr %i.ad, i64 %n.vec48
  %i.an = getelementptr i8, ptr %i.m, i64 %n.vec48
  br label %vec.epilog.vector.body49

vec.epilog.vector.body49:                         ; preds = %vec.epilog.vector.body49, %vec.epilog.ph47
  %index50 = phi i64 [ %vec.epilog.resume.val41, %vec.epilog.ph47 ], [ %index.next54, %vec.epilog.vector.body49 ] ; 3 uses
  %next.gep51 = getelementptr i8, ptr %i.ad, i64 %index50
  %next.gep52 = getelementptr i8, ptr %i.m, i64 %index50
  %wide.load53 = load <8 x i8>, ptr %next.gep52, align 8, !tbaa !136
  store <8 x i8> %wide.load53, ptr %next.gep51, align 8, !tbaa !136
  %index.next54 = add nuw i64 %index50, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.ao, label %vec.epilog.middle.block55, label %vec.epilog.vector.body49, !llvm.loop !6049

vec.epilog.middle.block55:                        ; preds = %vec.epilog.vector.body49
  %cmp.n56 = icmp eq i64 %i.g, %n.vec48
  br i1 %cmp.n56, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check43, %vec.epilog.iter.check45, %vec.epilog.middle.block55
  %.08.i.i.ph = phi ptr [ %i.ad, %iter.check43 ], [ %i.ah, %vec.epilog.iter.check45 ], [ %i.am, %vec.epilog.middle.block55 ] ; 2 uses
  %.057.i.i.ph = phi ptr [ %i.m, %iter.check43 ], [ %i.ai, %vec.epilog.iter.check45 ], [ %i.an, %vec.epilog.middle.block55 ] ; 3 uses
  %i.ap = add i64 %i.g, %3
  %.057.i.i.ph59 = ptrtoaddr ptr %.057.i.i.ph to i64 ; 2 uses
  %i.aq = sub i64 %i.g, %.057.i.i.ph59
  %i.ar = add i64 %i.ap, 31
  %i.as = sub i64 %i.ar, %.057.i.i.ph59
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.08.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.prol ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.prol ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %.057.i.i.prol, i64 1 ; 2 uses
  %i.au = load i8, ptr %.057.i.i.prol, align 1, !tbaa !136
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.prol, i64 1 ; 2 uses
  store i8 %i.au, ptr %.08.i.i.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !6050

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %.08.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ]
  %.057.i.i.unr = phi ptr [ %.057.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.at, %.lr.ph.i.i.prol ]
  %i.aw = icmp ult i64 %i.as, 7
  br i1 %i.aw, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.057.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1
  %i.ay = load i8, ptr %.057.i.i, align 1, !tbaa !136
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  store i8 %i.ay, ptr %.08.i.i, align 1, !tbaa !136
  %i.ba = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 2
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 2
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !136
  %i.bd = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 3
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !136
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 3
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 5
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 5
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 6
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !136
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 6
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !136
  %i.bp = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 7
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 7
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !136
  %i.bs = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !136
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !136
  %.not.i.i.7 = icmp eq ptr %i.bs, %i.ae
  br i1 %.not.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i, !llvm.loop !6051

bb.e:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  store ptr %i.e, ptr %0, align 8, !tbaa !203
  store i64 %i.i, ptr %i.b, align 8, !tbaa !204
  store ptr %i.m, ptr %1, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block39, %vec.epilog.middle.block55, %bb.e, %bb.d
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !204 ; 2 uses
  %i.bw = icmp ugt i64 %i.g, %i.bv
  br i1 %i.bw, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !202
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.g)
          to label %.noexc2 unwind label %bb.g, !inline_history !6052

.noexc2:                                          ; preds = %bb.f
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !204
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i: ; preds = %.noexc2, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.by = phi i64 [ %i.bv, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i ], [ %.pre.i.i.i, %.noexc2 ]
  %i.bz = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.by)
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !205
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.b, %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i
  ret void

bb.g:                                             ; preds = %_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i, %bb.c, %bb.f
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperOpFailureIPKcS3_EENS_15AssertionResultES3_S3_RKT_RKT0_S3_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %15, align 8, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.2310, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.f = load ptr, ptr %15, align 8, !tbaa !135   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(128) %i.f) #36, !inline_history !49
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %15, align 8, !tbaa !135   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #36, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.aj

.noexc15:                                         ; preds = %bb.d
  %i.o = icmp eq ptr %1, null
  %i.p = load ptr, ptr %14, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br i1 %i.o, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.s = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.2350, %.noexc15 ]
  %i.t = phi i64 [ %i.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.s, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.v = load ptr, ptr %14, align 8, !tbaa !135   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE:bb.a

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !204
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !202
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad), !inline_history !56
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !205 ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !204
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !203 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.026.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <16 x i8>, ptr %i.ao, align 1, !tbaa !136
  %wide.load41 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !136
  store <16 x i8> %wide.load41, ptr %i.ar, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !7010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.at, align 1, !tbaa !136
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.au, align 1, !tbaa !136
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7011

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.025.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !136
  %i.az = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !7012

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %i.ba = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.s, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bd = add i64 %i.bc, %.025.i.i                ; 2 uses
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !205
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit, label %bb.d, !llvm.loop !12

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !136
  %i.bi = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bi
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !136
  %i.bm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !136
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !136
  %i.bq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !136
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !136
  %i.bu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !7013

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !421 ; 3 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit
  %i.bw = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.not12 = icmp eq ptr %i.bv, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !7014

.loopexit:                                        ; preds = %bb.g, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bw, %bb.g ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !205 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !204
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

bb.h:                                             ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !202
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.bz), !inline_history !57
  %.pre.i.i16 = load i64, ptr %i.bx, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

_ZN3fmt3v1214basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.h
  %.pre-phi.i.i15 = phi i64 [ %i.bz, %.loopexit ], [ %.pre2.i.i17, %bb.h ]
  %i.cf = phi i64 [ %i.by, %.loopexit ], [ %.pre.i.i16, %bb.h ]
  %i.cg = load ptr, ptr %.sroa.022.127, align 8, !tbaa !203
  store i64 %.pre-phi.i.i15, ptr %i.bx, align 8, !tbaa !205
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 34, ptr %i.ch, align 1, !tbaa !136
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %0, i64 %1, ptr noundef byval(%class.anon.624) align 8 %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %3 = alloca %class.anon.628, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !7022
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.024 = phi ptr [ %0, %bb.b ], [ %i.bp, %bb.d ] ; 8 uses
  %.not30 = icmp ult ptr %.024, %i.e
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %.024, align 1, !tbaa !136
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.2425, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !136
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.024, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !141
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !136   ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !136 ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.024, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !136 ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !141
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !141
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i32 64, i32 0
  %.mask.i.i = and i32 %i.an, 2147481600
  %i.as = icmp eq i32 %.mask.i.i, 55296
  %i.at = select i1 %i.as, i32 128, i32 0
  %i.au = icmp samesign ugt i32 %i.an, 1114111
  %i.av = select i1 %i.au, i32 256, i32 0
  %i.aw = lshr i8 %i.v, 2
  %i.ax = and i8 %i.aw, 48
  %i.ay = lshr i8 %i.ab, 4
  %i.az = and i8 %i.ay, 12
  %i.ba = lshr i8 %i.ah, 6
  %i.bb = or disjoint i8 %i.az, %i.ax
  %i.bc = or disjoint i8 %i.bb, %i.ba
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ar, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.av
  %i.bg = or disjoint i32 %i.bf, %i.at
  %i.bh = xor i32 %i.bg, 42
  %i.bi = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.l
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !141
  %i.bk = lshr i32 %i.bh, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0                  ; 3 uses
  %i.bl = select i1 %.not.i, i32 %i.an, i32 -1
  %i.bm = add nsw i64 %i.o, %i.l
  %i.bn = select i1 %.not.i, i64 %i.bm, i64 1
  %i.bo = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.bl, ptr nonnull %.024, i64 %i.bn)
  %i.bp = select i1 %.not.i, ptr %i.p, ptr %i.u
  br i1 %i.bo, label %bb.c, label %.thread, !llvm.loop !7016

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.024, %bb.c ]   ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 8 uses
  %i.bu = icmp eq ptr %i.bq, %.2
  br i1 %i.bu, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bt, 8
  %4 = ptrtoaddr ptr %i.b to i64
  %i.bv = sub i64 %i.bs, %4
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond61 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond61, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.bt, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bt, 24
  %n.vec = and i64 %i.bt, -32                     ; 5 uses
  %i.bx = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.by = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !136
  %wide.load50 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !136
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !136
  store <16 x i8> %wide.load50, ptr %i.ca, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !7017

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bt, -8                    ; 4 uses
  %i.cc = getelementptr i8, ptr %i.b, i64 %n.vec52
  %i.cd = getelementptr i8, ptr %.2, i64 %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.b, i64 %index53
  %next.gep55 = getelementptr i8, ptr %.2, i64 %index53
  %wide.load56 = load <8 x i8>, ptr %next.gep55, align 1, !tbaa !136
  store <8 x i8> %wide.load56, ptr %next.gep54, align 1, !tbaa !136
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7018

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.bt, %n.vec52
  br i1 %cmp.n58, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 3 uses
  %i.cf = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph63 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.cg = sub i64 %i.cf, %.057.i.ph63
  %xtraiter = and i64 %i.cg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ch, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.057.i.prol, align 1, !tbaa !136
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ci, ptr %.08.i.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !7019

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %i.ck = sub i64 %.057.i.ph63, %i.cf
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cn = load i8, ptr %.057.i, align 1, !tbaa !136
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cn, ptr %.08.i, align 1, !tbaa !136
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !136
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !136
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !136
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !136
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !136
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !136
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !136
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !136
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !136
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.df = load i8, ptr %i.db, align 1, !tbaa !136
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !136
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.di = load i8, ptr %i.de, align 1, !tbaa !136
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !136
  %.not.i33.7 = icmp eq ptr %i.dh, %i.bq
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i, !llvm.loop !7020

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 7 uses
  %i.dl = load i8, ptr %.0, align 1, !tbaa !136
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = lshr i32 %i.dm, 3                       ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @.str.2425, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !136
  %i.dr = sext i8 %i.dq to i64                    ; 6 uses
  %i.ds = getelementptr inbounds i8, ptr %.0, i64 %i.dr
  %.not.i.i34 = lshr i32 -2130771968, %i.dn
  %i.dt = and i32 %.not.i.i34, 1
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dr
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !141
  %i.dy = and i32 %i.dx, %i.dm
  %i.dz = shl nuw nsw i32 %i.dy, 18
  %i.ea = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !136 ; 2 uses
  %i.ec = and i8 %i.eb, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 12
  %i.ef = or disjoint i32 %i.ee, %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !136 ; 2 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 6
  %i.el = or disjoint i32 %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !136 ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.el, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dr
  %i.es = load i32, ptr %i.er, align 4, !tbaa !141
  %i.et = lshr i32 %i.eq, %i.es                   ; 4 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dr
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !141
  %i.ew = icmp ult i32 %i.et, %i.ev
  %i.ex = select i1 %i.ew, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.et, 2147481600
  %i.ey = icmp eq i32 %.mask.i.i35, 55296
  %i.ez = select i1 %i.ey, i32 128, i32 0
  %i.fa = icmp samesign ugt i32 %i.et, 1114111
  %i.fb = select i1 %i.fa, i32 256, i32 0
  %i.fc = lshr i8 %i.eb, 2
  %i.fd = and i8 %i.fc, 48
  %i.fe = lshr i8 %i.eh, 4
  %i.ff = and i8 %i.fe, 12
  %i.fg = lshr i8 %i.en, 6
  %i.fh = or disjoint i8 %i.ff, %i.fd
  %i.fi = or disjoint i8 %i.fh, %i.fg
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.ex, %i.fj
  %i.fl = or disjoint i32 %i.fk, %i.fb
  %i.fm = or disjoint i32 %i.fl, %i.ez
  %i.fn = xor i32 %i.fm, 42
  %i.fo = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dr
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !141
  %i.fq = lshr i32 %i.fn, %i.fp
  %.not.i36 = icmp eq i32 %i.fq, 0                ; 3 uses
  %i.fr = select i1 %.not.i36, i32 %i.et, i32 -1
  %i.fs = add nsw i64 %i.du, %i.dr
  %i.ft = select i1 %.not.i36, i64 %i.fs, i64 1
  %i.fu = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fr, ptr %.3, i64 %i.ft) ; 3 uses
  %i.fv = select i1 %.not.i36, ptr %i.dv, ptr %i.ea ; 2 uses
  %i.fw = ptrtoint ptr %i.fv to i64
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_:bb.a
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !543
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !156
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !148
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !368 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !543 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !205
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.ca, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !204
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !202
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az), !inline_history !7023
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !205 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !204
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !203 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.026.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !136
  %wide.load36 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load, ptr %i.bm, align 1, !tbaa !136
  store <16 x i8> %wide.load36, ptr %i.bn, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !7024

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !136
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bq, align 1, !tbaa !136
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7025

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !136
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !136
  %i.bv = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !7026

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.prol ]
  %i.bw = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !205
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.by = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bz = add i64 %i.by, %.025.i.i.i              ; 2 uses
  store i64 %i.bz, ptr %i.ao, align 8, !tbaa !205
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !12

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !136
  %i.ce = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !136
  %i.ci = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !136
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !136
  %i.cm = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !136
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !136
  %i.cq = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cq, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !7027

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cr = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cr, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.f = load i8, ptr %.02455, align 1, !tbaa !136
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.2425, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !136
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.02455, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !141
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !136   ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !136 ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !136 ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !141
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !141
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i32 64, i32 0
  %.mask.i.i = and i32 %i.an, 2147481600
  %i.as = icmp eq i32 %.mask.i.i, 55296
  %i.at = select i1 %i.as, i32 128, i32 0
  %i.au = icmp samesign ugt i32 %i.an, 1114111
  %i.av = select i1 %i.au, i32 256, i32 0
  %i.aw = lshr i8 %i.v, 2
  %i.ax = and i8 %i.aw, 48
  %i.ay = lshr i8 %i.ab, 4
  %i.az = and i8 %i.ay, 12
  %i.ba = lshr i8 %i.ah, 6
  %i.bb = or disjoint i8 %i.az, %i.ax
  %i.bc = or disjoint i8 %i.bb, %i.ba
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ar, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.av
  %i.bg = or disjoint i32 %i.bf, %i.at
  %i.bh = xor i32 %i.bg, 42
  %i.bi = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.l
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !141
  %i.bk = lshr i32 %i.bh, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0                  ; 3 uses
  %i.bl = select i1 %.not.i, i32 %i.an, i32 -1    ; 4 uses
  %i.bm = icmp ult i32 %i.bl, 32
  br i1 %i.bm, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bl, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bn = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bl)
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bo = add nsw i64 %i.o, %i.l
  %i.bp = select i1 %.not.i, i64 %i.bo, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bp
  store ptr %.02455, ptr %2, align 8, !tbaa !156
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !156
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !141
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.br = select i1 %.not.i, ptr %i.p, ptr %i.u   ; 3 uses
  %.not30 = icmp ult ptr %i.br, %i.e
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !7028

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq ptr %i.bs, %.2
  br i1 %i.bw, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %3 = ptrtoaddr ptr %i.b to i64
  %i.bx = sub i64 %i.bu, %3
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !136
  %wide.load109 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !136
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !136
  store <16 x i8> %wide.load109, ptr %i.cc, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !7029

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.bv, -8                   ; 4 uses
  %i.ce = getelementptr i8, ptr %i.b, i64 %n.vec111
  %i.cf = getelementptr i8, ptr %.2, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %next.gep113 = getelementptr i8, ptr %i.b, i64 %index112
  %next.gep114 = getelementptr i8, ptr %.2, i64 %index112
  %wide.load115 = load <8 x i8>, ptr %next.gep114, align 1, !tbaa !136
  store <8 x i8> %wide.load115, ptr %next.gep113, align 1, !tbaa !136
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7030

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.bv, %n.vec111
  br i1 %cmp.n117, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 3 uses
  %i.ch = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph136 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.ci = sub i64 %i.ch, %.057.i.ph136
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.057.i.prol, align 1, !tbaa !136
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.08.i.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !7031

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cm = sub i64 %.057.i.ph136, %i.ch
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cp = load i8, ptr %.057.i, align 1, !tbaa !136
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cp, ptr %.08.i, align 1, !tbaa !136
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !136
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !136
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !136
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !136
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !136
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !136
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !136
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !136
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !136
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !136
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !136
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !136
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !136
  %.not.i33.7 = icmp eq ptr %i.dj, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i, !llvm.loop !7032

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.fz, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 6 uses
  %i.dn = load i8, ptr %.0, align 1, !tbaa !136
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @.str.2425, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !136
  %i.dt = sext i8 %i.ds to i64                    ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %.0, i64 %i.dt
  %.not.i.i34 = lshr i32 -2130771968, %i.dp
  %i.dv = and i32 %.not.i.i34, 1
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !141
  %i.ea = and i32 %i.dz, %i.do
  %i.eb = shl nuw nsw i32 %i.ea, 18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !136 ; 2 uses
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !136 ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 6
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !136 ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.en, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dt
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !141
  %i.ev = lshr i32 %i.es, %i.eu                   ; 4 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dt
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !141
  %i.ey = icmp ult i32 %i.ev, %i.ex
  %i.ez = select i1 %i.ey, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ev, 2147481600
  %i.fa = icmp eq i32 %.mask.i.i35, 55296
  %i.fb = select i1 %i.fa, i32 128, i32 0
  %i.fc = icmp samesign ugt i32 %i.ev, 1114111
  %i.fd = select i1 %i.fc, i32 256, i32 0
  %i.fe = lshr i8 %i.ed, 2
  %i.ff = and i8 %i.fe, 48
  %i.fg = lshr i8 %i.ej, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.ep, 6
  %i.fj = or disjoint i8 %i.fh, %i.ff
  %i.fk = or disjoint i8 %i.fj, %i.fi
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.ez, %i.fl
  %i.fn = or disjoint i32 %i.fm, %i.fd
  %i.fo = or disjoint i32 %i.fn, %i.fb
  %i.fp = xor i32 %i.fo, 42
  %i.fq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dt
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !141
  %i.fs = lshr i32 %i.fp, %i.fr
  %.not.i36 = icmp eq i32 %i.fs, 0                ; 3 uses
  %i.ft = select i1 %.not.i36, i32 %i.ev, i32 -1  ; 4 uses
  %i.fu = icmp ult i32 %i.ft, 32
  br i1 %i.fu, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

end_hunk_3
begin_hunk_4_@_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE:bb.a
  store i8 %i.dh, ptr %i.dp, align 1, !tbaa !136
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !7122

bb.t:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.dq, %bb.t ], [ %i.df, %bb.p ]
  %i.dr = load ptr, ptr %4, align 8, !tbaa !226   ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.dr, %i.e
  br i1 %.not.i.i37, label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dr) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38

_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !227  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !226    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !228  ; 2 uses
  %i.m = icmp ule i64 %i.l, %.0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl i64 %i.l, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.h, i64 %i.n, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !226
  store i64 %.0, ptr %i.a, align 8, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.o
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.h) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI5pointEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.667, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::formatter.664", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store i32 32768, ptr %4, align 8, !tbaa !346
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !136
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 32768, ptr %i.c, align 8, !tbaa !346
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 32, ptr %i.d, align 4, !tbaa !136
  %scevgep.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.e, align 4, !tbaa !348
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !136
  %i.g = call noundef ptr @_ZN3fmt3v1216nested_formatterIdcE5parseERNS0_13parse_contextIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.h = load ptr, ptr %1, align 8, !tbaa !368    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  store ptr %i.l, ptr %1, align 8, !tbaa !368
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !369
  %i.o = sub i64 %i.n, %i.k
  store i64 %i.o, ptr %i.m, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %4, ptr %3, align 8, !tbaa !550
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load <2 x double>, ptr %0, align 8, !tbaa !325
  store <2 x double> %i.q, ptr %i.p, align 8, !tbaa !325
  %i.r = call ptr @_ZNK3fmt3v1216nested_formatterIdcE12write_paddedINS0_7contextEZNKS0_9formatterI5pointcvE6formatES6_RS4_EUlT_E_EEDTcldtfp_3outEERS9_T0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull byval(%class.anon.667) align 8 %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v1216nested_formatterIdcE5parseERNS0_13parse_contextIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 11 uses
  %3 = alloca %"union.fmt::v12::detail::arg_ref", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !368    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store i32 32768, ptr %2, align 8, !tbaa !346
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 32, ptr %i.f, align 4, !tbaa !136
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !348
  %i.h = call noundef ptr @_ZN3fmt3v126detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 3 uses
  %i.i = load i64, ptr %2, align 8
  store i64 %i.i, ptr %0, align 8
  %i.j = load i8, ptr %i.h, align 1, !tbaa !136   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i32 0, ptr %3, align 8, !tbaa !136
  %i.k = add i8 %i.j, -48
  %or.cond = icmp ult i8 %i.k, 10
  %i.l = icmp eq i8 %i.j, 123
  %or.cond5 = or i1 %i.l, %or.cond
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = call { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = extractvalue { ptr, i32 } %i.n, 1
  %i.q = load i32, ptr %2, align 8, !tbaa !346
  %i.r = and i32 %i.q, -193
  %i.s = shl i32 %i.p, 6
  %i.t = or i32 %i.r, %i.s
  store i32 %i.t, ptr %2, align 8, !tbaa !346
  %i.u = load i32, ptr %i.m, align 8, !tbaa !418
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.v, align 8, !tbaa !555
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !368    ; 3 uses
  %i.x = ptrtoint ptr %.0 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z ; 5 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !368
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !369 ; 3 uses
  %i.ac = sub i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !369
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab
  %i.af = icmp eq i64 %i.ab, %i.z
  br i1 %i.af, label %_ZN3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE5parseERNS0_13parse_contextIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !136
  %i.ah = icmp eq i8 %i.ag, 125
  br i1 %i.ah, label %_ZN3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE5parseERNS0_13parse_contextIcEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 10)
  br label %_ZN3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ai, %bb.f ], [ %i.aa, %bb.e ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE5parseERNS0_13parse_contextIcEE.exit
  %.023 = phi ptr [ %.0.i, %_ZN3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE5parseERNS0_13parse_contextIcEE.exit ], [ %i.a, %bb.a ]
  ret ptr %.023
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
.peel.begin:
  %i.a = load i8, ptr %0, align 1, !tbaa !136     ; 3 uses
  %i.b = lshr i8 %i.a, 2
  %i.c = and i8 %i.b, 62
  %i.d = zext nneg i8 %i.c to i64
  %i.e = lshr i64 4203265827220226048, %i.d
  %i.f = and i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp slt i64 %i.k, 1
  %spec.select = select i1 %i.l, ptr %0, ptr %i.h ; 5 uses
  %i.m = load i8, ptr %spec.select, align 1, !tbaa !136
  switch i8 %i.m, label %bb.a [
    i8 60, label %.loopexit
    i8 62, label %.loopexit49
    i8 94, label %.loopexit55
  ]

bb.a:                                             ; preds = %.peel.begin
  %i.n = icmp eq ptr %spec.select, %0
  br i1 %i.n, label %.loopexit44, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  switch i8 %i.a, label %.loopexit44 [
    i8 60, label %.loopexit55.thread60
    i8 62, label %.loopexit55.thread64
    i8 94, label %.loopexit55.thread
  ]

.loopexit55.thread64:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit55.thread60:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit:                                        ; preds = %.peel.begin
  br label %.loopexit55

.loopexit49:                                      ; preds = %.peel.begin
  br label %.loopexit55

.loopexit55:                                      ; preds = %.peel.begin, %.loopexit49, %.loopexit
  %.130.ph = phi i32 [ 1, %.loopexit ], [ 3, %.peel.begin ], [ 2, %.loopexit49 ] ; 2 uses
  %.not38 = icmp eq ptr %spec.select, %0
  br i1 %.not38, label %.loopexit55.thread, label %bb.b

bb.b:                                             ; preds = %.loopexit55
  switch i8 %i.a, label %bb.d [
    i8 125, label %.critedge
    i8 123, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.538) #39
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %spec.select to i64         ; 4 uses
  %i.p = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.q = sub i64 %i.o, %i.p                       ; 10 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !346
  %i.s = and i32 %i.r, -229377
  %i.t = trunc i64 %i.q to i32
  %i.u = shl i32 %i.t, 15
  %i.v = or i32 %i.s, %i.u
  store i32 %i.v, ptr %2, align 4, !tbaa !346
  switch i64 %i.q, label %iter.check [
    i64 1, label %bb.e
    i64 0, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit
  ]

iter.check:                                       ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 4
  %i.x = sub i64 %i.p, %i.o
  %i.y = icmp ult i64 %i.x, -4
  %or.cond = or i1 %min.iters.check, %i.y
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = ptrtoaddr ptr %2 to i64
  %i.z = sub i64 %3, %i.p
  %i.aa = add i64 %i.z, 3
  %diff.check = icmp ult i64 %i.aa, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check68 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check68, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.q, 28
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !136
  %wide.load69 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !136
  store <16 x i8> %wide.load, ptr %i.w, align 4, !tbaa !136
  store <16 x i8> %wide.load69, ptr %i.ac, align 4, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !7123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.q, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %index71
  %wide.load72 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !136
  store <4 x i8> %wide.load72, ptr %i.w, align 4, !tbaa !136
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next73, %n.vec70
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.q, %n.vec70
  br i1 %cmp.n74, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ] ; 3 uses
  %i.ai = sub i64 %i.o, %i.p
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.013.i.prol = phi i64 [ %i.an, %vec.epilog.scalar.ph.prol ], [ %.013.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !136
  %i.al = and i64 %.013.i.prol, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.al
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !136
  %i.an = add nuw i64 %.013.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !7125

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.013.i.unr = phi i64 [ %.013.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ] ; 5 uses
  %i.ao = sub i64 %.013.i.ph, %i.o
  %i.ap = add i64 %i.ao, %i.p
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %i.ar = and i64 %.013.i.unr, 3
  %i.as = add i64 %.013.i.unr, 1
  %i.at = and i64 %i.as, 3
  %i.au = and i64 %.013.i.unr, 3
  %i.av = xor i64 %i.au, 2
  %i.aw = add i64 %.013.i.unr, 3
  %i.ax = and i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ar
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ax
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %bb.d
  %i.bc = load i8, ptr %0, align 1, !tbaa !136
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.bc, ptr %i.bd, align 4, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 0, ptr %i.be, align 1, !tbaa !136
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 0, ptr %i.bf, align 2, !tbaa !136
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.013.i = phi i64 [ %.013.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.br, %vec.epilog.scalar.ph ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !136
  store i8 %i.bh, ptr %i.ay, align 1, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !136
  store i8 %i.bk, ptr %i.az, align 1, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !136
  store i8 %i.bn, ptr %i.ba, align 1, !tbaa !136
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !136
  store i8 %i.bq, ptr %i.bb, align 1, !tbaa !136
  %i.br = add nuw i64 %.013.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.br, %i.q
  br i1 %exitcond.not.i.3, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.scalar.ph, !llvm.loop !7126

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %.loopexit44

.loopexit55.thread:                               ; preds = %.loopexit55.thread64, %.loopexit55.thread60, %.peel.next, %.loopexit55
  %.130.ph59 = phi i32 [ %.130.ph, %.loopexit55 ], [ 3, %.peel.next ], [ 1, %.loopexit55.thread60 ], [ 2, %.loopexit55.thread64 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.loopexit44

.loopexit44:                                      ; preds = %bb.a, %.peel.next, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %.loopexit55.thread
  %.13042 = phi i32 [ %.130.ph, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %.130.ph59, %.loopexit55.thread ], [ 0, %.peel.next ], [ 0, %bb.a ]
  %.134 = phi ptr [ %i.bs, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.bt, %.loopexit55.thread ], [ %0, %.peel.next ], [ %0, %bb.a ]
  %i.bu = load i32, ptr %2, align 4, !tbaa !346
  %i.bv = and i32 %i.bu, -57
  %i.bw = shl nuw nsw i32 %.13042, 3
  %i.bx = or i32 %i.bv, %i.bw
  store i32 %i.bx, ptr %2, align 4, !tbaa !346
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.loopexit44
  %.132 = phi ptr [ %.134, %.loopexit44 ], [ %0, %bb.b ]
  ret ptr %.132
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v1216nested_formatterIdcE12write_paddedINS0_7contextEZNKS0_9formatterI5pointcvE6formatES6_RS4_EUlT_E_EEDTcldtfp_3outEERS9_T0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef byval(%class.anon.667) align 8 %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.669", align 16 ; 7 uses
  %4 = alloca %"struct.fmt::v12::nested_view", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::nested_view", align 8 ; 5 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.669", align 16 ; 7 uses
  %7 = alloca %"struct.fmt::v12::nested_view", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::nested_view", align 8 ; 5 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer.39", align 8 ; 12 uses
  %10 = alloca %"struct.fmt::v12::format_specs", align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !555
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !376 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !550
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.f, ptr %7, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.e, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.f, ptr %8, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %7, ptr %6, align 16, !tbaa !136
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_11nested_viewIdcEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.j, align 8, !tbaa !136
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %8, ptr %i.k, align 16, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_11nested_viewIdcEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.l, align 8, !tbaa !136
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, ptr nonnull @.str.2431, i64 8, i64 255, ptr nonnull %6, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.n, align 8, !tbaa !202
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

bb.o:                                             ; preds = %.noexc141, %bb.m
  %i.ck = phi i64 [ %i.cg, %bb.m ], [ %.pre.i.i.i.i140, %.noexc141 ]
  %i.cl = phi i64 [ 1, %bb.m ], [ %i.cj, %.noexc141 ] ; 2 uses
  store i64 %i.cl, ptr %i.r, align 8, !tbaa !585
  %i.cm = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cn = lshr i32 %i.cm, 5
  store i32 %i.cn, ptr %i.t, align 8, !tbaa !584
  %i.co = and i32 %i.cm, 31                       ; 3 uses
  %i.cp = icmp eq i32 %i.co, 0
  %.not19.i143 = icmp eq i64 %i.cl, 0
  %or.cond558 = or i1 %i.cp, %.not19.i143
  br i1 %or.cond558, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.o
  %i.cq = load ptr, ptr %8, align 8, !tbaa !579   ; 3 uses
  %i.cr = sub nuw nsw i32 32, %i.co
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !141 ; 2 uses
  %i.ct = lshr i32 %i.cs, %i.cr                   ; 2 uses
  %i.cu = shl i32 %i.cs, %i.co
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !141
  %.not.i149 = icmp eq i32 %i.ct, 0
  br i1 %.not.i149, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i144
  %.not565 = icmp ugt i64 %i.ck, 1
  br i1 %.not565, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !578
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 2)
          to label %.noexc154 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc154:                                        ; preds = %bb.q
  %.pre.i.i152 = load i64, ptr %i.r, align 8, !tbaa !585 ; 2 uses
  %.pre2.i.i153 = add i64 %.pre.i.i152, 1
  %.pre680 = load ptr, ptr %8, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150: ; preds = %.noexc154, %bb.p
  %i.cw = phi ptr [ %i.cq, %bb.p ], [ %.pre680, %.noexc154 ]
  %.pre-phi.i.i151 = phi i64 [ 2, %bb.p ], [ %.pre2.i.i153, %.noexc154 ]
  %i.cx = phi i64 [ 1, %bb.p ], [ %.pre.i.i152, %.noexc154 ]
  store i64 %.pre-phi.i.i151, ptr %i.r, align 8, !tbaa !585
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit566:                                     ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.al, %bb.e, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.v, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.h, %bb.i, %bb.l, %bb.n, %bb.q, %bb.t, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.z, %bb.ad, %bb.ae, %bb.ah, %bb.ao, %bb.as, %bb.at, %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, %.lr.ph.i144, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.079 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.o ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150 ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.cz = load i32, ptr %4, align 4, !tbaa !141
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.cz)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.da = load i64, ptr %i.h, align 8, !tbaa !585 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.da, 0
  %extract.t814 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.r
  %i.db = load ptr, ptr %6, align 8, !tbaa !579   ; 3 uses
  %i.dc = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1305 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check1305, label %scalar.ph1304.preheader, label %vector.ph1306

vector.ph1306:                                    ; preds = %.lr.ph.i157
  %n.vec1307 = and i64 %i.da, -8                  ; 3 uses
  %broadcast.splatinsert1308 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat1309 = shufflevector <4 x i32> %broadcast.splatinsert1308, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1306
  %index1313 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1317, %vector.body1312 ] ; 2 uses
  %vector.recur1314 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1306 ], [ %i.dg, %vector.body1312 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index1313 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load1315 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !141 ; 2 uses
  %wide.load1316 = load <4 x i32>, ptr %i.de, align 4, !tbaa !141 ; 2 uses
  %i.df = lshr <4 x i32> %wide.load1315, %broadcast.splat1309 ; 2 uses
  %i.dg = lshr <4 x i32> %wide.load1316, %broadcast.splat1309 ; 3 uses
  %i.dh = shufflevector <4 x i32> %vector.recur1314, <4 x i32> %i.df, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.di = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dj = shl <4 x i32> %wide.load1315, %broadcast.splat1311
  %i.dk = shl <4 x i32> %wide.load1316, %broadcast.splat1311
  %i.dl = add <4 x i32> %i.dj, %i.dh
  %i.dm = add <4 x i32> %i.dk, %i.di
  store <4 x i32> %i.dl, ptr %i.dd, align 4, !tbaa !141
  store <4 x i32> %i.dm, ptr %i.de, align 4, !tbaa !141
  %index.next1317 = add nuw i64 %index1313, 8     ; 2 uses
  %i.dn = icmp eq i64 %index.next1317, %n.vec1307
  br i1 %i.dn, label %middle.block1318, label %vector.body1312, !llvm.loop !7189

middle.block1318:                                 ; preds = %vector.body1312
  %vector.recur.extract1319 = extractelement <4 x i32> %i.dg, i64 3 ; 2 uses
  %cmp.n1320 = icmp eq i64 %i.da, %n.vec1307
  br i1 %cmp.n1320, label %._crit_edge.i161, label %scalar.ph1304.preheader

scalar.ph1304.preheader:                          ; preds = %.lr.ph.i157, %middle.block1318
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1307, %middle.block1318 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1319, %middle.block1318 ]
  br label %scalar.ph1304

._crit_edge.i161:                                 ; preds = %scalar.ph1304, %middle.block1318
  %.lcssa1181 = phi i32 [ %vector.recur.extract1319, %middle.block1318 ], [ %i.dq, %scalar.ph1304 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1181, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.s

scalar.ph1304:                                    ; preds = %scalar.ph1304.preheader, %scalar.ph1304
  %.01418.i158 = phi i64 [ %i.dt, %scalar.ph1304 ], [ %.01418.i158.ph, %scalar.ph1304.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.dq, %scalar.ph1304 ], [ %.017.i159.ph, %scalar.ph1304.preheader ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.01418.i158 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !141 ; 2 uses
  %i.dq = lshr i32 %i.dp, %i.dc                   ; 2 uses
  %i.dr = shl i32 %i.dp, %i.v
  %i.ds = add i32 %i.dr, %.017.i159
  store i32 %i.ds, ptr %i.do, align 4, !tbaa !141
  %i.dt = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.dt, %i.da
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1304, !llvm.loop !7190

bb.s:                                             ; preds = %._crit_edge.i161
  %i.du = add i64 %i.da, 1                        ; 3 uses
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !580
  %i.dw = icmp ugt i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.t, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.t:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.g, align 8, !tbaa !578
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.du)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc167:                                        ; preds = %bb.t
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !585 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre681 = load ptr, ptr %6, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.s
  %i.dy = phi ptr [ %i.db, %bb.s ], [ %.pre681, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.du, %bb.s ], [ %.pre2.i.i166, %.noexc167 ]
  %i.dz = phi i64 [ %i.da, %bb.s ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !585
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  store i32 %.lcssa1181, ptr %i.ea, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.u:                                             ; preds = %bb.a
  %i.eb = load i32, ptr %4, align 4, !tbaa !141   ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.ed = sub nsw i32 0, %i.eb
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.ed)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !585 ; 7 uses
  %i.ef = load i64, ptr %i.k, align 8, !tbaa !580
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.w
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !578
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ee)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !7191

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !580
  %i.ei = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %.pre.i.i.i)
  store i64 %i.ei, ptr %i.m, align 8, !tbaa !585
  %i.ej = load ptr, ptr %5, align 8, !tbaa !579   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.ee, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.w
  store i64 %i.ee, ptr %i.m, align 8, !tbaa !585
  %i.el = load ptr, ptr %5, align 8, !tbaa !579   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ee, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not6.i.i, label %.loopexit567, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.en = phi ptr [ %i.ek, %.noexc170 ], [ %i.em, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.eo = phi ptr [ %i.ej, %.noexc170 ], [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !579      ; 4 uses
  %10 = ptrtoaddr ptr %i.en to i64
  %i.ep = ptrtoaddr ptr %i.eo to i64              ; 2 uses
  %i.eq = add i64 %10, -4
  %i.er = sub i64 %i.eq, %i.ep                    ; 2 uses
  %i.es = lshr i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check1221 = icmp ult i64 %i.er, 44
  %i.eu = ptrtoaddr ptr %9 to i64
  %i.ev = sub i64 %i.ep, %i.eu
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond1325 = select i1 %min.iters.check1221, i1 true, i1 %diff.check
  br i1 %or.cond1325, label %.lr.ph.i.i.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1223 = and i64 %i.et, 9223372036854775800 ; 3 uses
  %i.ew = shl i64 %n.vec1223, 2                   ; 2 uses
  %i.ex = getelementptr i8, ptr %9, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.ew
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1229, %vector.body1224 ] ; 2 uses
  %i.ez = shl i64 %index1225, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %9, i64 %i.ez ; 2 uses
  %next.gep1226 = getelementptr i8, ptr %i.eo, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep1226, i64 16
  %wide.load1227 = load <4 x i32>, ptr %next.gep1226, align 4, !tbaa !141
  %wide.load1228 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !141
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1227, ptr %next.gep, align 4, !tbaa !141
  store <4 x i32> %wide.load1228, ptr %i.fb, align 4, !tbaa !141
  %index.next1229 = add nuw i64 %index1225, 8     ; 2 uses
  %i.fc = icmp eq i64 %index.next1229, %n.vec1223
  br i1 %i.fc, label %middle.block1230, label %vector.body1224, !llvm.loop !7192

middle.block1230:                                 ; preds = %vector.body1224
  %cmp.n1231 = icmp eq i64 %i.et, %n.vec1223
  br i1 %cmp.n1231, label %.loopexit567, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1230
  %.08.i.i.ph = phi ptr [ %9, %.lr.ph.i.preheader.i ], [ %i.ex, %middle.block1230 ]
  %.057.i.i.ph = phi ptr [ %i.eo, %.lr.ph.i.preheader.i ], [ %i.ey, %middle.block1230 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fe = load i32, ptr %.057.i.i, align 4, !tbaa !141
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fe, ptr %.08.i.i, align 4, !tbaa !141
  %.not.i.i169 = icmp eq ptr %i.fd, %i.en
  br i1 %.not.i.i169, label %.loopexit567, label %.lr.ph.i.i, !llvm.loop !7193

.loopexit567:                                     ; preds = %.lr.ph.i.i, %middle.block1230, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fg = phi ptr [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.eo, %middle.block1230 ], [ %i.eo, %.lr.ph.i.i ] ; 2 uses
  %i.fh = load i32, ptr %i.e, align 8, !tbaa !584 ; 2 uses
  store i32 %i.fh, ptr %i.o, align 8, !tbaa !584
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.x

bb.x:                                             ; preds = %.loopexit567
  %i.fi = load i64, ptr %i.c, align 8, !tbaa !585 ; 8 uses
  %i.fj = load i64, ptr %i.p, align 8, !tbaa !580 ; 2 uses
  %i.fk = icmp ugt i64 %i.fi, %i.fj
  br i1 %i.fk, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.x
  %i.fl = load ptr, ptr %i.q, align 8, !tbaa !578
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fi)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !7191

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !580 ; 2 uses
  %i.fm = call noundef i64 @llvm.umin.i64(i64 %i.fi, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.fm, ptr %i.r, align 8, !tbaa !585
  %i.fn = load ptr, ptr %5, align 8, !tbaa !579   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.fi, 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.x
  store i64 %i.fi, ptr %i.r, align 8, !tbaa !585
  %.idx.i172 = shl nuw nsw i64 %i.fi, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.fi, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.fh, ptr %i.t, align 8, !tbaa !584
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.fq = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.fj, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.fm, %.noexc182 ], [ %i.fi, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.fr = phi ptr [ %i.fo, %.noexc182 ], [ %i.fp, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.fs = phi ptr [ %i.fn, %.noexc182 ], [ %i.fg, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %11 = load ptr, ptr %8, align 8, !tbaa !579     ; 7 uses
  %12 = ptrtoaddr ptr %i.fr to i64
  %i.ft = ptrtoaddr ptr %i.fs to i64              ; 2 uses
  %i.fu = add i64 %12, -4
  %i.fv = sub i64 %i.fu, %i.ft                    ; 2 uses
  %i.fw = lshr i64 %i.fv, 2
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check1237 = icmp ult i64 %i.fv, 44
  %i.fy = ptrtoaddr ptr %11 to i64
  %i.fz = sub i64 %i.ft, %i.fy
  %diff.check1235 = icmp ugt i64 %i.fz, -32
  %or.cond1327 = select i1 %min.iters.check1237, i1 true, i1 %diff.check1235
  br i1 %or.cond1327, label %.lr.ph.i.i175.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1239 = and i64 %i.fx, 9223372036854775800 ; 3 uses
  %i.ga = shl i64 %n.vec1239, 2                   ; 2 uses
  %i.gb = getelementptr i8, ptr %11, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.fs, i64 %i.ga
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1246, %vector.body1240 ] ; 2 uses
  %i.gd = shl i64 %index1241, 2                   ; 2 uses
  %next.gep1242 = getelementptr i8, ptr %11, i64 %i.gd ; 2 uses
  %next.gep1243 = getelementptr i8, ptr %i.fs, i64 %i.gd ; 2 uses
  %i.ge = getelementptr i8, ptr %next.gep1243, i64 16
  %wide.load1244 = load <4 x i32>, ptr %next.gep1243, align 4, !tbaa !141
  %wide.load1245 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !141
  %i.gf = getelementptr i8, ptr %next.gep1242, i64 16
  store <4 x i32> %wide.load1244, ptr %next.gep1242, align 4, !tbaa !141
  store <4 x i32> %wide.load1245, ptr %i.gf, align 4, !tbaa !141
  %index.next1246 = add nuw i64 %index1241, 8     ; 2 uses
  %i.gg = icmp eq i64 %index.next1246, %n.vec1239
  br i1 %i.gg, label %middle.block1247, label %vector.body1240, !llvm.loop !7194

middle.block1247:                                 ; preds = %vector.body1240
  %cmp.n1248 = icmp eq i64 %i.fx, %n.vec1239
  br i1 %cmp.n1248, label %.loopexit1323, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1247
  %.08.i.i176.ph = phi ptr [ %11, %.lr.ph.i.preheader.i174 ], [ %i.gb, %middle.block1247 ]
  %.057.i.i177.ph = phi ptr [ %i.fs, %.lr.ph.i.preheader.i174 ], [ %i.gc, %middle.block1247 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.gj, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.gh, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.gi = load i32, ptr %.057.i.i177, align 4, !tbaa !141
  %i.gj = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.gi, ptr %.08.i.i176, align 4, !tbaa !141
  %.not.i.i178 = icmp eq ptr %i.gh, %i.fr
  br i1 %.not.i.i178, label %.loopexit1323, label %.lr.ph.i.i175, !llvm.loop !7195

.loopexit1323:                                    ; preds = %.lr.ph.i.i175, %middle.block1247
  %i.gk = load i32, ptr %i.e, align 8, !tbaa !584
  store i32 %i.gk, ptr %i.t, align 8, !tbaa !584
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1323
  %min.iters.check1252 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1252, label %.lr.ph.i185.preheader1371, label %vector.ph1253

vector.ph1253:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1254 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1260, %vector.body1255 ] ; 2 uses
  %vector.recur1257 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1253 ], [ %i.go, %vector.body1255 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index1256 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %wide.load1258 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !141 ; 2 uses
  %wide.load1259 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !141 ; 3 uses
  %i.gn = lshr <4 x i32> %wide.load1258, splat (i32 31) ; 2 uses
  %i.go = lshr <4 x i32> %wide.load1259, splat (i32 31) ; 3 uses
  %i.gp = shufflevector <4 x i32> %vector.recur1257, <4 x i32> %i.gn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gq = shufflevector <4 x i32> %i.gn, <4 x i32> %i.go, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gr = shl <4 x i32> %wide.load1258, splat (i32 1)
  %i.gs = shl <4 x i32> %wide.load1259, splat (i32 1)
  %i.gt = or disjoint <4 x i32> %i.gr, %i.gp
  %i.gu = or disjoint <4 x i32> %i.gs, %i.gq
  store <4 x i32> %i.gt, ptr %i.gl, align 4, !tbaa !141
  store <4 x i32> %i.gu, ptr %i.gm, align 4, !tbaa !141
  %index.next1260 = add nuw i64 %index1256, 8     ; 2 uses
  %i.gv = icmp eq i64 %index.next1260, %n.vec1254
  br i1 %i.gv, label %middle.block1261, label %vector.body1255, !llvm.loop !7196

middle.block1261:                                 ; preds = %vector.body1255
  %vector.recur.extract1262 = extractelement <4 x i32> %i.go, i64 3 ; 2 uses
  %i.gw = extractelement <4 x i32> %wide.load1259, i64 3
  %cmp.n1263 = icmp eq i64 %.pr, %n.vec1254
  br i1 %cmp.n1263, label %._crit_edge.i189, label %.lr.ph.i185.preheader1371

.lr.ph.i185.preheader1371:                        ; preds = %.lr.ph.i185.preheader, %middle.block1261
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1254, %middle.block1261 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1262, %middle.block1261 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1261
  %.lcssa1188 = phi i32 [ %i.gw, %middle.block1261 ], [ %i.gy, %.lr.ph.i185 ]
  %.lcssa1187 = phi i32 [ %vector.recur.extract1262, %middle.block1261 ], [ %i.gz, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1188, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.y

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1371, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.hc, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1371 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.gz, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1371 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.01418.i186 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !141 ; 3 uses
  %i.gz = lshr i32 %i.gy, 31                      ; 2 uses
  %i.ha = shl i32 %i.gy, 1
  %i.hb = or disjoint i32 %i.ha, %.017.i187
  store i32 %i.hb, ptr %i.gx, align 4, !tbaa !141
  %i.hc = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.hc, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !7197

bb.y:                                             ; preds = %._crit_edge.i189
  %i.hd = add i64 %.pr, 1                         ; 3 uses
  %i.he = icmp ugt i64 %i.hd, %i.fq
  br i1 %i.he, label %bb.z, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.z:                                             ; preds = %bb.y
  %i.hf = load ptr, ptr %i.q, align 8, !tbaa !578
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.hd)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc195:                                        ; preds = %bb.z
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !585 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre675 = load ptr, ptr %8, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.y
  %i.hg = phi ptr [ %11, %bb.y ], [ %.pre675, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.hd, %bb.y ], [ %.pre2.i.i194, %.noexc195 ]
  %i.hh = phi i64 [ %.pr, %bb.y ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !585
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hh
  store i32 %.lcssa1187, ptr %i.hi, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1323, %.thread, %.loopexit567
  %.1 = phi ptr [ null, %.loopexit567 ], [ %8, %.thread ], [ %8, %.loopexit1323 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.hj = load i128, ptr %0, align 16, !tbaa !7216 ; 3 uses
  %i.hk = and i128 %i.hj, 18446744073709551615
  %i.hl = load i64, ptr %i.c, align 8, !tbaa !585 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.hm = load ptr, ptr %5, align 8, !tbaa !579   ; 3 uses
  %i.hn = lshr i128 %i.hj, 32
  %i.ho = and i128 %i.hn, 79228162514264337589248983040
  br label %bb.aa

.preheader.i.i:                                   ; preds = %bb.aa
  %.not20.i.i = icmp eq i128 %i.hz, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i197
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.ib, %bb.aa ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.hz, %bb.aa ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.019.i.i ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !141
  %i.hr = zext i32 %i.hq to i128                  ; 2 uses
  %i.hs = mul nuw nsw i128 %i.hk, %i.hr
  %i.ht = and i128 %.01718.i.i, 4294967295
  %i.hu = add nuw nsw i128 %i.hs, %i.ht           ; 2 uses
  %i.hv = mul nuw i128 %i.ho, %i.hr
  %i.hw = lshr i128 %i.hu, 32
  %i.hx = lshr i128 %.01718.i.i, 32
  %i.hy = add nuw i128 %i.hv, %i.hx
  %i.hz = add nuw i128 %i.hy, %i.hw               ; 3 uses
  %i.ia = trunc i128 %i.hu to i32
  store i32 %i.ia, ptr %i.hp, align 4, !tbaa !141
  %i.ib = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ib, %i.hl
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.aa, !llvm.loop !7198

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.ic = phi ptr [ %i.ij, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hm, %.preheader.i.i ]
  %i.id = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hl, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.im, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hz, %.preheader.i.i ] ; 2 uses
  %i.ie = trunc i128 %.121.i.i to i32
  %i.if = add i64 %i.id, 1                        ; 3 uses
  %i.ig = load i64, ptr %i.a, align 8, !tbaa !580
  %i.ih = icmp ugt i64 %i.if, %i.ig
  br i1 %i.ih, label %bb.ab, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.ab:                                            ; preds = %.lr.ph22.i.i
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !578
  invoke void %i.ii(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.if)
          to label %.noexc200 unwind label %.loopexit566, !inline_history !7199

.noexc200:                                        ; preds = %bb.ab
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !585 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.ij = phi ptr [ %i.ic, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.if, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.ik = phi i64 [ %i.id, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !585
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ik
  store i32 %i.ie, ptr %i.il, align 4, !tbaa !141
  %i.im = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i198 = icmp eq i128 %i.im, 0
  br i1 %.not.i.i198, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !7200

_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %.not19.i201 = icmp eq i64 %.pre-phi.i.i.i, 0
  br i1 %.not19.i201, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.in = phi ptr [ %i.ij, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.hm, %.preheader.i.i ] ; 3 uses
  %i.io = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.hl, %.preheader.i.i ] ; 6 uses
  %i.ip = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1267 = icmp ult i64 %i.io, 8
  br i1 %min.iters.check1267, label %scalar.ph1266.preheader, label %vector.ph1268

vector.ph1268:                                    ; preds = %.lr.ph.i202
  %n.vec1269 = and i64 %i.io, -8                  ; 3 uses
  %broadcast.splatinsert1270 = insertelement <4 x i32> poison, i32 %i.ip, i64 0
  %broadcast.splat1271 = shufflevector <4 x i32> %broadcast.splatinsert1270, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1268
  %index1275 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1279, %vector.body1274 ] ; 2 uses
  %vector.recur1276 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1268 ], [ %i.it, %vector.body1274 ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index1275 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %wide.load1277 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !141 ; 2 uses
  %wide.load1278 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !141 ; 2 uses
  %i.is = lshr <4 x i32> %wide.load1277, %broadcast.splat1271 ; 2 uses
  %i.it = lshr <4 x i32> %wide.load1278, %broadcast.splat1271 ; 3 uses
  %i.iu = shufflevector <4 x i32> %vector.recur1276, <4 x i32> %i.is, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.iv = shufflevector <4 x i32> %i.is, <4 x i32> %i.it, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.iw = shl <4 x i32> %wide.load1277, %broadcast.splat1273
  %i.ix = shl <4 x i32> %wide.load1278, %broadcast.splat1273
  %i.iy = add <4 x i32> %i.iw, %i.iu
  %i.iz = add <4 x i32> %i.ix, %i.iv
  store <4 x i32> %i.iy, ptr %i.iq, align 4, !tbaa !141
  store <4 x i32> %i.iz, ptr %i.ir, align 4, !tbaa !141
  %index.next1279 = add nuw i64 %index1275, 8     ; 2 uses
  %i.ja = icmp eq i64 %index.next1279, %n.vec1269
  br i1 %i.ja, label %middle.block1280, label %vector.body1274, !llvm.loop !7201

middle.block1280:                                 ; preds = %vector.body1274
  %vector.recur.extract1281 = extractelement <4 x i32> %i.it, i64 3 ; 2 uses
  %cmp.n1282 = icmp eq i64 %i.io, %n.vec1269
  br i1 %cmp.n1282, label %._crit_edge.i206, label %scalar.ph1266.preheader

scalar.ph1266.preheader:                          ; preds = %.lr.ph.i202, %middle.block1280
  %.01418.i203.ph = phi i64 [ 0, %.lr.ph.i202 ], [ %n.vec1269, %middle.block1280 ]
  %.017.i204.ph = phi i32 [ 0, %.lr.ph.i202 ], [ %vector.recur.extract1281, %middle.block1280 ]
  br label %scalar.ph1266

._crit_edge.i206:                                 ; preds = %scalar.ph1266, %middle.block1280
  %.lcssa1184 = phi i32 [ %vector.recur.extract1281, %middle.block1280 ], [ %i.jd, %scalar.ph1266 ] ; 2 uses
  %.not.i207 = icmp eq i32 %.lcssa1184, 0
  br i1 %.not.i207, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %bb.ac

scalar.ph1266:                                    ; preds = %scalar.ph1266.preheader, %scalar.ph1266
  %.01418.i203 = phi i64 [ %i.jg, %scalar.ph1266 ], [ %.01418.i203.ph, %scalar.ph1266.preheader ] ; 2 uses
  %.017.i204 = phi i32 [ %i.jd, %scalar.ph1266 ], [ %.017.i204.ph, %scalar.ph1266.preheader ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %.01418.i203 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !141 ; 2 uses
  %i.jd = lshr i32 %i.jc, %i.ip                   ; 2 uses
  %i.je = shl i32 %i.jc, %i.v
  %i.jf = add i32 %i.je, %.017.i204
  store i32 %i.jf, ptr %i.jb, align 4, !tbaa !141
  %i.jg = add nuw i64 %.01418.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.jg, %i.io
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1266, !llvm.loop !7202

bb.ac:                                            ; preds = %._crit_edge.i206
  %i.jh = add i64 %i.io, 1                        ; 3 uses
  %i.ji = load i64, ptr %i.a, align 8, !tbaa !580
  %i.jj = icmp ugt i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.ad, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.ad:                                            ; preds = %bb.ac
  %i.jk = load ptr, ptr %i.b, align 8, !tbaa !578
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.jh)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc212:                                        ; preds = %bb.ad
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !585 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre676 = load ptr, ptr %5, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.ac
  %i.jl = phi ptr [ %i.in, %bb.ac ], [ %.pre676, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.jh, %bb.ac ], [ %.pre2.i.i211, %.noexc212 ]
  %i.jm = phi i64 [ %i.io, %bb.ac ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !585
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jm
  store i32 %.lcssa1184, ptr %i.jn, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.jo = load ptr, ptr %6, align 8, !tbaa !579
  store i32 1, ptr %i.jo, align 4, !tbaa !141
  %i.jp = load i64, ptr %i.f, align 8, !tbaa !580 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.jp, 0
  br i1 %.not8.i.i217.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.jq = load ptr, ptr %i.g, align 8, !tbaa !578
  invoke void %i.jq(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !7188

.noexc219:                                        ; preds = %bb.ae
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !580 ; 2 uses
  %i.jr = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.js = zext i1 %i.jr to i64
  br label %bb.af

bb.af:                                            ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.jt = phi i64 [ %i.jp, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.ju = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.js, %.noexc219 ] ; 2 uses
  store i64 %i.ju, ptr %i.h, align 8, !tbaa !585
  %i.jv = load i32, ptr %i.w, align 16, !tbaa !7215
  %i.jw = sub nsw i32 %i.v, %i.jv                 ; 2 uses
  %i.jx = sdiv i32 %i.jw, 32
  store i32 %i.jx, ptr %i.j, align 8, !tbaa !584
  %i.jy = srem i32 %i.jw, 32                      ; 3 uses
  %i.jz = icmp eq i32 %i.jy, 0
  %.not19.i221 = icmp eq i64 %i.ju, 0
end_hunk_5
begin_hunk_6_@_ZN3fmt3v1210vformat_toIRSt20back_insert_iteratorI20nongrowing_containerETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESD_OS9_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE:bb.a
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.2446)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #36
  br label %.body

_ZN3fmt3v126detail15iterator_bufferISt20back_insert_iteratorI20nongrowing_containerEcNS1_13buffer_traitsEED2Ev.exit: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret ptr %.sroa.0.0.copyload.i.i

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @_ZN3fmt3v126detail15iterator_bufferISt20back_insert_iteratorI20nongrowing_containerEcNS1_13buffer_traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail15iterator_bufferISt20back_insert_iteratorI20nongrowing_containerEcNS1_13buffer_traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !205
  store i64 0, ptr %i.a, align 8, !tbaa !205
  %.not.i.i = icmp samesign eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail15iterator_bufferISt20back_insert_iteratorI20nongrowing_containerEcNS1_13buffer_traitsEE5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.2446)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #36
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  %i.f = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #36 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN3fmt3v126detail15iterator_bufferISt20back_insert_iteratorI20nongrowing_containerEcNS1_13buffer_traitsEE5flushEv.exit unwind label %bb.f

_ZN3fmt3v126detail15iterator_bufferISt20back_insert_iteratorI20nongrowing_containerEcNS1_13buffer_traitsEE5flushEv.exit: ; preds = %bb.a, %.body
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail15iterator_bufferISt20back_insert_iteratorI20nongrowing_containerEcNS1_13buffer_traitsEE4growERNS1_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !205
  %i.c = icmp eq i64 %i.b, 256
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !205
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.2446)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #36
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA5_cN3fmt3v1217basic_string_viewIcEEEENS_15AssertionResultEPKcS9_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36, !noalias !7355
  store ptr %3, ptr %i.a, align 8, !tbaa !254, !noalias !7355
  call void @_ZN7testing13PrintToStringIPKvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36, !noalias !7355
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZN7testing13PrintToStringIN3fmt3v1217basic_string_viewIcEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN3fmt3v1217basic_string_viewIcEEA5_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN3fmt3v1217basic_string_viewIcEEA5_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN3fmt3v1217basic_string_viewIcEEA5_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !136
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.g = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !136
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN3fmt3v1217basic_string_viewIcEEA5_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !136
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.s = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !136
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN3fmt3v1212vformat_to_nI20test_output_iteratorJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr %0, i64 noundef %1, ptr %2, i64 %3, i64 %4, ptr %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v12::detail::iterator_buffer.709", align 8 ; 21 uses
  %i.a = ptrtoaddr ptr %6 to i64                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i64 0, ptr %6, align 8, !tbaa !333
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !334
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 22 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !203
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  store i64 0, ptr %i.e, align 8, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 256, ptr %i.f, align 8, !tbaa !204
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr @_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm, ptr %i.g, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  store ptr %0, ptr %i.h, align 8, !tbaa !156
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr %2, i64 %3, i64 %4, ptr %5, ptr null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !205
  %i.j = load i64, ptr %i.b, align 8, !tbaa !334  ; 2 uses
  %i.k = load i64, ptr %6, align 8, !tbaa !333    ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.k)
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  store i64 %i.l, ptr %6, align 8, !tbaa !333
  %i.m = call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %spec.select.i.i.i) ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !156 ; 8 uses
  %.not4.i.i.i = icmp samesign eq i64 %i.m, 0
  br i1 %.not4.i.i.i, label %.loopexit, label %iter.check62

iter.check62:                                     ; preds = %bb.b
  %min.iters.check46 = icmp ult i64 %i.m, 8
  br i1 %min.iters.check46, label %.lr.ph.i.i.i.preheader, label %vector.memcheck43

vector.memcheck43:                                ; preds = %iter.check62
  %7 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  %8 = ptrtoaddr ptr %6 to i64
  %i.o = sub i64 %7, %8
  %i.p = add i64 %i.o, -57
  %diff.check45 = icmp ult i64 %i.p, 31
  br i1 %diff.check45, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check47

vector.main.loop.iter.check47:                    ; preds = %vector.memcheck43
  %min.iters.check48 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check48, label %vec.epilog.ph66, label %vector.ph49

vector.ph49:                                      ; preds = %vector.main.loop.iter.check47
  %i.q = and i64 %i.m, 24
  %n.vec50 = and i64 %i.m, -32                    ; 5 uses
  %i.r = getelementptr i8, ptr %i.d, i64 %n.vec50
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %n.vec50 ; 2 uses
  br label %vector.body51

vector.body51:                                    ; preds = %vector.ph49, %vector.body51
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next57, %vector.body51 ] ; 3 uses
  %next.gep53 = getelementptr i8, ptr %i.d, i64 %index52 ; 2 uses
  %next.gep54 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %index52 ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load55 = load <16 x i8>, ptr %next.gep53, align 8, !tbaa !136
  %wide.load56 = load <16 x i8>, ptr %i.t, align 8, !tbaa !136
  %i.u = getelementptr i8, ptr %next.gep54, i64 16
  store <16 x i8> %wide.load55, ptr %next.gep54, align 1, !tbaa !136
  store <16 x i8> %wide.load56, ptr %i.u, align 1, !tbaa !136
  %index.next57 = add nuw i64 %index52, 32        ; 2 uses
  %i.v = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.v, label %middle.block58, label %vector.body51, !llvm.loop !7356

middle.block58:                                   ; preds = %vector.body51
  %cmp.n59 = icmp eq i64 %i.m, %n.vec50
  br i1 %cmp.n59, label %.loopexit.loopexit, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block58
  %min.epilog.iters.check65 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check65, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph66, !prof !223

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check47, %vec.epilog.iter.check64
  %vec.epilog.resume.val60 = phi i64 [ %n.vec50, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check47 ]
  %n.vec67 = and i64 %i.m, -8                     ; 4 uses
  %i.w = getelementptr i8, ptr %i.d, i64 %n.vec67
  %i.x = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %n.vec67 ; 2 uses
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph66
  %index69 = phi i64 [ %vec.epilog.resume.val60, %vec.epilog.ph66 ], [ %index.next73, %vec.epilog.vector.body68 ] ; 3 uses
  %next.gep70 = getelementptr i8, ptr %i.d, i64 %index69
  %next.gep71 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %index69
  %wide.load72 = load <8 x i8>, ptr %next.gep70, align 8, !tbaa !136
  store <8 x i8> %wide.load72, ptr %next.gep71, align 1, !tbaa !136
  %index.next73 = add nuw i64 %index69, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.y, label %vec.epilog.middle.block74, label %vec.epilog.vector.body68, !llvm.loop !7357

vec.epilog.middle.block74:                        ; preds = %vec.epilog.vector.body68
  %cmp.n75 = icmp eq i64 %i.m, %n.vec67
  br i1 %cmp.n75, label %.loopexit.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check62, %vector.memcheck43, %vec.epilog.iter.check64, %vec.epilog.middle.block74
  %.06.i.i.i.ph = phi ptr [ %i.d, %iter.check62 ], [ %i.d, %vector.memcheck43 ], [ %i.r, %vec.epilog.iter.check64 ], [ %i.w, %vec.epilog.middle.block74 ] ; 3 uses
  %.sroa.03.05.i.i.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i, %iter.check62 ], [ %.sroa.0.0.copyload.i.i, %vector.memcheck43 ], [ %i.s, %vec.epilog.iter.check64 ], [ %i.x, %vec.epilog.middle.block74 ] ; 2 uses
  %i.z = add i64 %i.m, %i.a
  %.06.i.i.i.ph115 = ptrtoaddr ptr %.06.i.i.i.ph to i64 ; 2 uses
  %i.aa = sub i64 %i.m, %.06.i.i.i.ph115
  %i.ab = add i64 %i.z, 55
  %i.ac = sub i64 %i.ab, %.06.i.i.i.ph115
  %xtraiter116 = and i64 %i.aa, 7                 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.prol ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.03.05.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.prol ], [ %.sroa.03.05.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.06.i.i.i.prol, align 1, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.ae, ptr %.sroa.03.05.i.i.i.prol, align 1, !tbaa !136
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !7358

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa113.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.prol ]
  %.06.i.i.i.unr = phi ptr [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %.sroa.03.05.i.i.i.unr = phi ptr [ %.sroa.03.05.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.ac, 7
  br i1 %i.ag, label %.loopexit.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.03.05.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.sroa.03.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 1
  %i.ai = load i8, ptr %.06.i.i.i, align 1, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 1
  store i8 %i.ai, ptr %.sroa.03.05.i.i.i, align 1, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !136
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 2
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !136
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 3
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 3
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !136
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 4
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !136
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 5
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !136
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 5
  store i8 %i.au, ptr %i.as, align 1, !tbaa !136
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 6
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !136
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 6
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !136
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 7
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 7
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 2 uses
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !136
  %.not.i.i.i.7 = icmp eq ptr %i.bc, %i.n
  br i1 %.not.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !7359

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block74, %middle.block58
  %.lcssa = phi ptr [ %i.x, %vec.epilog.middle.block74 ], [ %i.s, %middle.block58 ], [ %.lcssa113.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.be, %.lr.ph.i.i.i ]
  %.pre = load i64, ptr %6, align 8, !tbaa !333
  %.pre27 = load i64, ptr %i.e, align 8, !tbaa !205
  %.pre28 = load i64, ptr %i.b, align 8, !tbaa !334
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.bf = phi i64 [ %i.j, %bb.b ], [ %.pre28, %.loopexit.loopexit ]
  %i.bg = phi i64 [ 0, %bb.b ], [ %.pre27, %.loopexit.loopexit ] ; 2 uses
  %i.bh = phi i64 [ %i.l, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.b ], [ %.lcssa, %.loopexit.loopexit ] ; 9 uses
  store ptr %.sroa.03.0.lcssa.i.i.i, ptr %i.h, align 8, !tbaa !156
  %i.bi = add i64 %i.bg, %i.bh                    ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !205
  %spec.select.i.i.i12 = call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 %i.bh)
  store i64 %i.bi, ptr %6, align 8, !tbaa !333
  %i.bj = call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %spec.select.i.i.i12) ; 11 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bj
  %.not4.i.i.i14 = icmp samesign eq i64 %i.bj, 0
  br i1 %.not4.i.i.i14, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit, label %iter.check97

iter.check97:                                     ; preds = %.loopexit
  %min.iters.check81 = icmp ult i64 %i.bj, 8
  br i1 %min.iters.check81, label %.lr.ph.i.i.i15.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %iter.check97
  %9 = ptrtoaddr ptr %.sroa.03.0.lcssa.i.i.i to i64
  %10 = ptrtoaddr ptr %6 to i64
  %i.bl = sub i64 %9, %10
  %i.bm = add i64 %i.bl, -57
  %diff.check80 = icmp ult i64 %i.bm, 31
  br i1 %diff.check80, label %.lr.ph.i.i.i15.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %vector.memcheck78
  %min.iters.check83 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check83, label %vec.epilog.ph101, label %vector.ph84

vector.ph84:                                      ; preds = %vector.main.loop.iter.check82
  %i.bn = and i64 %i.bj, 24
  %n.vec85 = and i64 %i.bj, -32                   ; 5 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %n.vec85
  %i.bp = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 %n.vec85
  br label %vector.body86

vector.body86:                                    ; preds = %vector.ph84, %vector.body86
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next92, %vector.body86 ] ; 3 uses
  %next.gep88 = getelementptr i8, ptr %i.d, i64 %index87 ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 %index87 ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load90 = load <16 x i8>, ptr %next.gep88, align 8, !tbaa !136
  %wide.load91 = load <16 x i8>, ptr %i.bq, align 8, !tbaa !136
  %i.br = getelementptr i8, ptr %next.gep89, i64 16
  store <16 x i8> %wide.load90, ptr %next.gep89, align 1, !tbaa !136
  store <16 x i8> %wide.load91, ptr %i.br, align 1, !tbaa !136
  %index.next92 = add nuw i64 %index87, 32        ; 2 uses
  %i.bs = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.bs, label %middle.block93, label %vector.body86, !llvm.loop !7360

middle.block93:                                   ; preds = %vector.body86
  %cmp.n94 = icmp eq i64 %i.bj, %n.vec85
  br i1 %cmp.n94, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit, label %vec.epilog.iter.check99

vec.epilog.iter.check99:                          ; preds = %middle.block93
  %min.epilog.iters.check100 = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check100, label %.lr.ph.i.i.i15.preheader, label %vec.epilog.ph101, !prof !223

vec.epilog.ph101:                                 ; preds = %vector.main.loop.iter.check82, %vec.epilog.iter.check99
  %vec.epilog.resume.val95 = phi i64 [ %n.vec85, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check82 ]
  %n.vec102 = and i64 %i.bj, -8                   ; 4 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %n.vec102
  %i.bu = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 %n.vec102
  br label %vec.epilog.vector.body103

vec.epilog.vector.body103:                        ; preds = %vec.epilog.vector.body103, %vec.epilog.ph101
  %index104 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph101 ], [ %index.next108, %vec.epilog.vector.body103 ] ; 3 uses
  %next.gep105 = getelementptr i8, ptr %i.d, i64 %index104
  %next.gep106 = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 %index104
  %wide.load107 = load <8 x i8>, ptr %next.gep105, align 8, !tbaa !136
  store <8 x i8> %wide.load107, ptr %next.gep106, align 1, !tbaa !136
  %index.next108 = add nuw i64 %index104, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next108, %n.vec102
  br i1 %i.bv, label %vec.epilog.middle.block109, label %vec.epilog.vector.body103, !llvm.loop !7361

vec.epilog.middle.block109:                       ; preds = %vec.epilog.vector.body103
  %cmp.n110 = icmp eq i64 %i.bj, %n.vec102
  br i1 %cmp.n110, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit, label %.lr.ph.i.i.i15.preheader

.lr.ph.i.i.i15.preheader:                         ; preds = %iter.check97, %vector.memcheck78, %vec.epilog.iter.check99, %vec.epilog.middle.block109
  %.06.i.i.i16.ph = phi ptr [ %i.d, %iter.check97 ], [ %i.d, %vector.memcheck78 ], [ %i.bo, %vec.epilog.iter.check99 ], [ %i.bt, %vec.epilog.middle.block109 ] ; 3 uses
  %.sroa.03.05.i.i.i17.ph = phi ptr [ %.sroa.03.0.lcssa.i.i.i, %iter.check97 ], [ %.sroa.03.0.lcssa.i.i.i, %vector.memcheck78 ], [ %i.bp, %vec.epilog.iter.check99 ], [ %i.bu, %vec.epilog.middle.block109 ] ; 2 uses
  %i.bw = add i64 %i.bj, %i.a
  %.06.i.i.i16.ph119 = ptrtoaddr ptr %.06.i.i.i16.ph to i64 ; 2 uses
  %i.bx = sub i64 %i.bj, %.06.i.i.i16.ph119
  %i.by = add i64 %i.bw, 55
  %i.bz = sub i64 %i.by, %.06.i.i.i16.ph119
  %xtraiter120 = and i64 %i.bx, 7                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.i.i15.prol.loopexit, label %.lr.ph.i.i.i15.prol

.lr.ph.i.i.i15.prol:                              ; preds = %.lr.ph.i.i.i15.preheader, %.lr.ph.i.i.i15.prol
  %.06.i.i.i16.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i15.prol ], [ %.06.i.i.i16.ph, %.lr.ph.i.i.i15.preheader ] ; 2 uses
  %.sroa.03.05.i.i.i17.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i15.prol ], [ %.sroa.03.05.i.i.i17.ph, %.lr.ph.i.i.i15.preheader ] ; 2 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph.i.i.i15.prol ], [ 0, %.lr.ph.i.i.i15.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i16.prol, i64 1 ; 2 uses
  %i.cb = load i8, ptr %.06.i.i.i16.prol, align 1, !tbaa !136
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17.prol, i64 1 ; 2 uses
  store i8 %i.cb, ptr %.sroa.03.05.i.i.i17.prol, align 1, !tbaa !136
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph.i.i.i15.prol.loopexit, label %.lr.ph.i.i.i15.prol, !llvm.loop !7362

.lr.ph.i.i.i15.prol.loopexit:                     ; preds = %.lr.ph.i.i.i15.prol, %.lr.ph.i.i.i15.preheader
  %.06.i.i.i16.unr = phi ptr [ %.06.i.i.i16.ph, %.lr.ph.i.i.i15.preheader ], [ %i.ca, %.lr.ph.i.i.i15.prol ]
  %.sroa.03.05.i.i.i17.unr = phi ptr [ %.sroa.03.05.i.i.i17.ph, %.lr.ph.i.i.i15.preheader ], [ %i.cc, %.lr.ph.i.i.i15.prol ]
  %i.cd = icmp ult i64 %i.bz, 7
  br i1 %i.cd, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit, label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %.lr.ph.i.i.i15.prol.loopexit, %.lr.ph.i.i.i15
  %.06.i.i.i16 = phi ptr [ %i.cz, %.lr.ph.i.i.i15 ], [ %.06.i.i.i16.unr, %.lr.ph.i.i.i15.prol.loopexit ] ; 9 uses
  %.sroa.03.05.i.i.i17 = phi ptr [ %i.db, %.lr.ph.i.i.i15 ], [ %.sroa.03.05.i.i.i17.unr, %.lr.ph.i.i.i15.prol.loopexit ] ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 1
  %i.cf = load i8, ptr %.06.i.i.i16, align 1, !tbaa !136
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 1
  store i8 %i.cf, ptr %.sroa.03.05.i.i.i17, align 1, !tbaa !136
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 2
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !136
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 2
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !136
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 3
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !136
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 3
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !136
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 4
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !136
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 4
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !136
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 5
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !136
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 5
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !136
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 6
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !136
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 6
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !136
  %i.cw = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 7
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !136
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 7
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !136
  %i.cz = getelementptr inbounds nuw i8, ptr %.06.i.i.i16, i64 8 ; 2 uses
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !136
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i17, i64 8
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !136
  %.not.i.i.i18.7 = icmp eq ptr %i.cz, %i.bk
  br i1 %.not.i.i.i18.7, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit, label %.lr.ph.i.i.i15, !llvm.loop !7363

_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit: ; preds = %.lr.ph.i.i.i15.prol.loopexit, %.lr.ph.i.i.i15, %middle.block93, %vec.epilog.middle.block109, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.03.0.lcssa.i.i.i, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.bi, 1
  ret { ptr, i64 } %.fca.1.insert

bb.c:                                             ; preds = %bb.a
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load i64, ptr %i.e, align 8, !tbaa !205 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !205
  %i.de = load i64, ptr %i.b, align 8, !tbaa !334
  %i.df = load i64, ptr %6, align 8, !tbaa !333   ; 2 uses
  %spec.select.i.i.i19 = call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.df)
  %i.dg = add i64 %i.df, %i.dd
  store i64 %i.dg, ptr %6, align 8, !tbaa !333
  %i.dh = call noundef i64 @llvm.umin.i64(i64 %i.dd, i64 %spec.select.i.i.i19) ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dh
  %.not4.i.i.i21 = icmp samesign eq i64 %i.dh, 0
  br i1 %.not4.i.i.i21, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit26, label %iter.check

iter.check:                                       ; preds = %bb.c
  %.sroa.0.0.copyload.i.i20 = load ptr, ptr %i.h, align 8, !tbaa !156 ; 7 uses
  %min.iters.check = icmp ult i64 %i.dh, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i22.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.sroa.0.0.copyload.i.i2029 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i20 to i64
  %11 = ptrtoaddr ptr %6 to i64
  %i.dj = sub i64 %.sroa.0.0.copyload.i.i2029, %11
  %i.dk = add i64 %i.dj, -57
  %diff.check = icmp ult i64 %i.dk, 31
  br i1 %diff.check, label %.lr.ph.i.i.i22.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.dh, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = and i64 %i.dh, 24
  %n.vec = and i64 %i.dh, -32                     ; 5 uses
  %i.dm = getelementptr i8, ptr %i.d, i64 %n.vec
  %i.dn = getelementptr i8, ptr %.sroa.0.0.copyload.i.i20, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %next.gep31 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i20, i64 %index ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 8, !tbaa !136
  %wide.load32 = load <16 x i8>, ptr %i.do, align 8, !tbaa !136
  %i.dp = getelementptr i8, ptr %next.gep31, i64 16
  store <16 x i8> %wide.load, ptr %next.gep31, align 1, !tbaa !136
  store <16 x i8> %wide.load32, ptr %i.dp, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !7364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit26, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i22.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.dh, -8                    ; 4 uses
  %i.dr = getelementptr i8, ptr %i.d, i64 %n.vec34
  %i.ds = getelementptr i8, ptr %.sroa.0.0.copyload.i.i20, i64 %n.vec34
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %index35
  %next.gep37 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i20, i64 %index35
  %wide.load38 = load <8 x i8>, ptr %next.gep36, align 8, !tbaa !136
  store <8 x i8> %wide.load38, ptr %next.gep37, align 1, !tbaa !136
  %index.next39 = add nuw i64 %index35, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7365

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.dh, %n.vec34
  br i1 %cmp.n40, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit26, label %.lr.ph.i.i.i22.preheader

.lr.ph.i.i.i22.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i23.ph = phi ptr [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.dm, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.03.05.i.i.i24.ph = phi ptr [ %.sroa.0.0.copyload.i.i20, %iter.check ], [ %.sroa.0.0.copyload.i.i20, %vector.memcheck ], [ %i.dn, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ] ; 2 uses
  %i.du = add i64 %i.dh, %i.a
  %.06.i.i.i23.ph114 = ptrtoaddr ptr %.06.i.i.i23.ph to i64 ; 2 uses
  %i.dv = sub i64 %i.dh, %.06.i.i.i23.ph114
  %i.dw = add i64 %i.du, 55
  %i.dx = sub i64 %i.dw, %.06.i.i.i23.ph114
  %xtraiter = and i64 %i.dv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i22.prol

.lr.ph.i.i.i22.prol:                              ; preds = %.lr.ph.i.i.i22.preheader, %.lr.ph.i.i.i22.prol
  %.06.i.i.i23.prol = phi ptr [ %i.dy, %.lr.ph.i.i.i22.prol ], [ %.06.i.i.i23.ph, %.lr.ph.i.i.i22.preheader ] ; 2 uses
  %.sroa.03.05.i.i.i24.prol = phi ptr [ %i.ea, %.lr.ph.i.i.i22.prol ], [ %.sroa.03.05.i.i.i24.ph, %.lr.ph.i.i.i22.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i22.prol ], [ 0, %.lr.ph.i.i.i22.preheader ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i23.prol, i64 1 ; 2 uses
  %i.dz = load i8, ptr %.06.i.i.i23.prol, align 1, !tbaa !136
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24.prol, i64 1 ; 2 uses
  store i8 %i.dz, ptr %.sroa.03.05.i.i.i24.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i22.prol, !llvm.loop !7366

.lr.ph.i.i.i22.prol.loopexit:                     ; preds = %.lr.ph.i.i.i22.prol, %.lr.ph.i.i.i22.preheader
  %.06.i.i.i23.unr = phi ptr [ %.06.i.i.i23.ph, %.lr.ph.i.i.i22.preheader ], [ %i.dy, %.lr.ph.i.i.i22.prol ]
  %.sroa.03.05.i.i.i24.unr = phi ptr [ %.sroa.03.05.i.i.i24.ph, %.lr.ph.i.i.i22.preheader ], [ %i.ea, %.lr.ph.i.i.i22.prol ]
  %i.eb = icmp ult i64 %i.dx, 7
  br i1 %i.eb, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit26, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.prol.loopexit, %.lr.ph.i.i.i22
  %.06.i.i.i23 = phi ptr [ %i.ex, %.lr.ph.i.i.i22 ], [ %.06.i.i.i23.unr, %.lr.ph.i.i.i22.prol.loopexit ] ; 9 uses
  %.sroa.03.05.i.i.i24 = phi ptr [ %i.ez, %.lr.ph.i.i.i22 ], [ %.sroa.03.05.i.i.i24.unr, %.lr.ph.i.i.i22.prol.loopexit ] ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 1
  %i.ed = load i8, ptr %.06.i.i.i23, align 1, !tbaa !136
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 1
  store i8 %i.ed, ptr %.sroa.03.05.i.i.i24, align 1, !tbaa !136
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 2
  %i.eg = load i8, ptr %i.ec, align 1, !tbaa !136
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 2
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !136
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 3
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !136
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 3
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !136
  %i.el = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 4
  %i.em = load i8, ptr %i.ei, align 1, !tbaa !136
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 4
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !136
  %i.eo = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 5
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !136
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 5
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !136
  %i.er = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 6
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !136
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 6
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !136
  %i.eu = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 7
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !136
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 7
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i23, i64 8 ; 2 uses
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !136
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i24, i64 8
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !136
  %.not.i.i.i25.7 = icmp eq ptr %i.ex, %i.di
  br i1 %.not.i.i.i25.7, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit26, label %.lr.ph.i.i.i22, !llvm.loop !7367

_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEED2Ev.exit26: ; preds = %.lr.ph.i.i.i22.prol.loopexit, %.lr.ph.i.i.i22, %middle.block, %vec.epilog.middle.block, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  resume { ptr, i32 } %i.dc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !205
  %i.d = icmp eq i64 %i.c, 256
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !334  ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !333  ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.i) ; 3 uses
  %i.j = add i64 %i.i, 256
  store i64 %i.j, ptr %i.e, align 8, !tbaa !333
  %i.k = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i, i64 256) ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !156 ; 23 uses
  %.not4.i.i.not = icmp ugt i64 %i.h, %i.i
  br i1 %.not4.i.i.not, label %iter.check, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEE5flushEv.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %3 = ptrtoaddr ptr %0 to i64
  %i.n = sub i64 %2, %3
  %i.o = add i64 %i.n, -41
  %diff.check = icmp ult i64 %i.o, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.k, 24
  %n.vec = and i64 %i.k, 480                      ; 11 uses
  %i.q = getelementptr i8, ptr %i.f, i64 %n.vec
  %i.r = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %n.vec ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 56
  %wide.load = load <16 x i8>, ptr %i.f, align 8, !tbaa !136
  %wide.load5 = load <16 x i8>, ptr %i.s, align 8, !tbaa !136
  %i.t = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 16
  store <16 x i8> %wide.load, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !136
  store <16 x i8> %wide.load5, ptr %i.t, align 1, !tbaa !136
  %i.u = icmp eq i64 %n.vec, 32
  br i1 %i.u, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %0, i64 72
  %next.gep4.1 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.v = getelementptr i8, ptr %0, i64 88
  %wide.load.1 = load <16 x i8>, ptr %next.gep.1, align 8, !tbaa !136
  %wide.load5.1 = load <16 x i8>, ptr %i.v, align 8, !tbaa !136
  %i.w = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep4.1, align 1, !tbaa !136
  store <16 x i8> %wide.load5.1, ptr %i.w, align 1, !tbaa !136
  %i.x = icmp eq i64 %n.vec, 64
  br i1 %i.x, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %0, i64 104
  %next.gep4.2 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 64
  %i.y = getelementptr i8, ptr %0, i64 120
  %wide.load.2 = load <16 x i8>, ptr %next.gep.2, align 8, !tbaa !136
  %wide.load5.2 = load <16 x i8>, ptr %i.y, align 8, !tbaa !136
  %i.z = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep4.2, align 1, !tbaa !136
  store <16 x i8> %wide.load5.2, ptr %i.z, align 1, !tbaa !136
  %i.aa = icmp eq i64 %n.vec, 96
  br i1 %i.aa, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %0, i64 136
  %next.gep4.3 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 96
  %i.ab = getelementptr i8, ptr %0, i64 152
  %wide.load.3 = load <16 x i8>, ptr %next.gep.3, align 8, !tbaa !136
  %wide.load5.3 = load <16 x i8>, ptr %i.ab, align 8, !tbaa !136
  %i.ac = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep4.3, align 1, !tbaa !136
  store <16 x i8> %wide.load5.3, ptr %i.ac, align 1, !tbaa !136
  %i.ad = icmp eq i64 %n.vec, 128
  br i1 %i.ad, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %0, i64 168
  %next.gep4.4 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 128
  %i.ae = getelementptr i8, ptr %0, i64 184
  %wide.load.4 = load <16 x i8>, ptr %next.gep.4, align 8, !tbaa !136
  %wide.load5.4 = load <16 x i8>, ptr %i.ae, align 8, !tbaa !136
  %i.af = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 144
  store <16 x i8> %wide.load.4, ptr %next.gep4.4, align 1, !tbaa !136
  store <16 x i8> %wide.load5.4, ptr %i.af, align 1, !tbaa !136
  %i.ag = icmp eq i64 %n.vec, 160
  br i1 %i.ag, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %0, i64 200
  %next.gep4.5 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 160
  %i.ah = getelementptr i8, ptr %0, i64 216
  %wide.load.5 = load <16 x i8>, ptr %next.gep.5, align 8, !tbaa !136
  %wide.load5.5 = load <16 x i8>, ptr %i.ah, align 8, !tbaa !136
  %i.ai = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 176
  store <16 x i8> %wide.load.5, ptr %next.gep4.5, align 1, !tbaa !136
  store <16 x i8> %wide.load5.5, ptr %i.ai, align 1, !tbaa !136
  %i.aj = icmp eq i64 %n.vec, 192
  br i1 %i.aj, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %0, i64 232
  %next.gep4.6 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 192
  %i.ak = getelementptr i8, ptr %0, i64 248
  %wide.load.6 = load <16 x i8>, ptr %next.gep.6, align 8, !tbaa !136
  %wide.load5.6 = load <16 x i8>, ptr %i.ak, align 8, !tbaa !136
  %i.al = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 208
  store <16 x i8> %wide.load.6, ptr %next.gep4.6, align 1, !tbaa !136
  store <16 x i8> %wide.load5.6, ptr %i.al, align 1, !tbaa !136
  %i.am = icmp eq i64 %n.vec, 224
  br i1 %i.am, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %next.gep.7 = getelementptr i8, ptr %0, i64 264
  %next.gep4.7 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 224
  %i.an = getelementptr i8, ptr %0, i64 280
  %wide.load.7 = load <16 x i8>, ptr %next.gep.7, align 8, !tbaa !136
  %wide.load5.7 = load <16 x i8>, ptr %i.an, align 8, !tbaa !136
  %i.ao = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 240
  store <16 x i8> %wide.load.7, ptr %next.gep4.7, align 1, !tbaa !136
  store <16 x i8> %wide.load5.7, ptr %i.ao, align 1, !tbaa !136
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEE5flushEv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.k, 504                     ; 4 uses
  %i.ap = getelementptr i8, ptr %i.f, i64 %n.vec7
  %i.aq = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %n.vec7 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %next.gep9 = getelementptr i8, ptr %i.f, i64 %index8
  %next.gep10 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %index8
  %wide.load11 = load <8 x i8>, ptr %next.gep9, align 8, !tbaa !136
  store <8 x i8> %wide.load11, ptr %next.gep10, align 1, !tbaa !136
  %index.next12 = add nuw i64 %index8, 8          ; 2 uses
  %i.ar = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.k, %n.vec7
  br i1 %cmp.n13, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEE5flushEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.03.05.i.i.ph = phi ptr [ %.sroa.0.0.copyload.i, %iter.check ], [ %.sroa.0.0.copyload.i, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 2 uses
  %i.as = add i64 %i.k, %i.a
  %.06.i.i.ph16 = ptrtoaddr ptr %.06.i.i.ph to i64 ; 2 uses
  %i.at = sub i64 %i.k, %.06.i.i.ph16
  %i.au = add i64 %i.as, 39
  %i.av = sub i64 %i.au, %.06.i.i.ph16
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.05.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.prol ], [ %.sroa.03.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 1 ; 2 uses
  %i.ax = load i8, ptr %.06.i.i.prol, align 1, !tbaa !136
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.prol, i64 1 ; 3 uses
  store i8 %i.ax, ptr %.sroa.03.05.i.i.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !7369

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.prol ]
  %.06.i.i.unr = phi ptr [ %.06.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %.sroa.03.05.i.i.unr = phi ptr [ %.sroa.03.05.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.prol ]
  %i.az = icmp ult i64 %i.av, 7
  br i1 %i.az, label %_ZN3fmt3v126detail15iterator_bufferI20test_output_iteratorcNS1_19fixed_buffer_traitsEE5flushEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.sroa.03.05.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.sroa.03.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.bb = load i8, ptr %.06.i.i, align 1, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 1
  store i8 %i.bb, ptr %.sroa.03.05.i.i, align 1, !tbaa !136
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 2
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !136
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 2
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 3
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 3
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 4
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 5
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !136
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 5
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !136
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 6
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 6
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !136
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 7
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !136
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 7
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !136
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !136
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 8 ; 2 uses
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !136
end_hunk_6
