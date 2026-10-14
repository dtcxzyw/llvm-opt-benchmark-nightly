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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !203    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !204
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !203    ; 9 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !205  ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !222  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !222  ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  %i.r = icmp ne ptr %i.n, null
  %i.s = icmp ne ptr %i.p, null
  %or.cond.i.i.i = and i1 %i.r, %i.s
  %.0.i.i.i = or i1 %i.q, %or.cond.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.u = icmp eq ptr %i.g, %i.t                   ; 2 uses
  %or.cond.i.i = select i1 %.0.i.i.i, i1 true, i1 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %or.cond.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit
  %i.w = load i64, ptr %i.v, align 8, !tbaa !204
  %i.x = icmp ugt i64 %i.j, %i.w
  br i1 %i.x, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !202
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.j)
          to label %.noexc unwind label %bb.g, !inline_history !783

.noexc:                                           ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  %.pre.i.i.i.i = load i64, ptr %i.v, align 8, !tbaa !204
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %.pre.i.i.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !205
  br label %iter.check

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.ac, align 8, !tbaa !205
  %.not6.i.i.i = icmp samesign eq i64 %i.j, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i, %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.ae = load ptr, ptr %0, align 8, !tbaa !203   ; 6 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = sub i64 %i.h, %i.af
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 5 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %n.vec
  %i.aj = getelementptr i8, ptr %i.g, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %index ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep11, align 1, !tbaa !136
  %wide.load12 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !136
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !136
  store <16 x i8> %wide.load12, ptr %i.al, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.j, -8                     ; 4 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %n.vec14
  %i.ao = getelementptr i8, ptr %i.g, i64 %n.vec14
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %next.gep16 = getelementptr i8, ptr %i.ae, i64 %index15
  %next.gep17 = getelementptr i8, ptr %i.g, i64 %index15
  %wide.load18 = load <8 x i8>, ptr %next.gep17, align 1, !tbaa !136
  store <8 x i8> %wide.load18, ptr %next.gep16, align 1, !tbaa !136
  %index.next19 = add nuw i64 %index15, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !785

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.j, %n.vec14
  br i1 %cmp.n20, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.ae, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ] ; 3 uses
  %i.aq = add i64 %i.j, %i.h                      ; 2 uses
  %.057.i.i.i.ph59 = ptrtoaddr ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.ar = sub i64 %i.aq, %.057.i.i.i.ph59
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.at = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !136
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.at, ptr %.08.i.i.i.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !786

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.prol ]
  %i.av = sub i64 %.057.i.i.i.ph59, %i.aq
  %i.aw = icmp ugt i64 %i.av, -8
  br i1 %i.aw, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.ay = load i8, ptr %.057.i.i.i, align 1, !tbaa !136
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.ay, ptr %.08.i.i.i, align 1, !tbaa !136
  %i.ba = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !136
  %i.bd = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !136
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !136
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !136
  %i.bp = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !136
  %i.bs = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !136
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !136
  %.not.i.i.i.7 = icmp eq ptr %i.bs, %i.ad
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !787

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i: ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10deallocateEv.exit
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  store ptr %i.d, ptr %0, align 8, !tbaa !203
  store i64 %i.l, ptr %i.v, align 8, !tbaa !204
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  %.not6.i.i = icmp samesign eq i64 %i.j, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %iter.check41

iter.check41:                                     ; preds = %bb.d
  %min.iters.check25 = icmp ult i64 %i.j, 8
  %i.bw = sub i64 %i.a, %i.b
  %diff.check24 = icmp ugt i64 %i.bw, -32
  %or.cond58 = or i1 %min.iters.check25, %diff.check24
  br i1 %or.cond58, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check26

vector.main.loop.iter.check26:                    ; preds = %iter.check41
  %min.iters.check27 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check27, label %vec.epilog.ph45, label %vector.ph28

vector.ph28:                                      ; preds = %vector.main.loop.iter.check26
  %i.bx = and i64 %i.j, 24
  %n.vec29 = and i64 %i.j, -32                    ; 5 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %n.vec29
  %i.bz = getelementptr i8, ptr %i.t, i64 %n.vec29
  br label %vector.body30

vector.body30:                                    ; preds = %vector.ph28, %vector.body30
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 3 uses
  %next.gep32 = getelementptr i8, ptr %i.d, i64 %index31 ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.t, i64 %index31 ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load34 = load <16 x i8>, ptr %next.gep33, align 8, !tbaa !136
  %wide.load35 = load <16 x i8>, ptr %i.ca, align 8, !tbaa !136
  %i.cb = getelementptr i8, ptr %next.gep32, i64 16
  store <16 x i8> %wide.load34, ptr %next.gep32, align 8, !tbaa !136
  store <16 x i8> %wide.load35, ptr %i.cb, align 8, !tbaa !136
  %index.next36 = add nuw i64 %index31, 32        ; 2 uses
  %i.cc = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.cc, label %middle.block37, label %vector.body30, !llvm.loop !788

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %i.j, %n.vec29
  br i1 %cmp.n38, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %vec.epilog.iter.check43

vec.epilog.iter.check43:                          ; preds = %middle.block37
  %min.epilog.iters.check44 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check44, label %.lr.ph.i.i.preheader, label %vec.epilog.ph45, !prof !223

vec.epilog.ph45:                                  ; preds = %vector.main.loop.iter.check26, %vec.epilog.iter.check43
  %vec.epilog.resume.val39 = phi i64 [ %n.vec29, %vec.epilog.iter.check43 ], [ 0, %vector.main.loop.iter.check26 ]
  %n.vec46 = and i64 %i.j, -8                     ; 4 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %n.vec46
  %i.ce = getelementptr i8, ptr %i.t, i64 %n.vec46
  br label %vec.epilog.vector.body47

vec.epilog.vector.body47:                         ; preds = %vec.epilog.vector.body47, %vec.epilog.ph45
  %index48 = phi i64 [ %vec.epilog.resume.val39, %vec.epilog.ph45 ], [ %index.next52, %vec.epilog.vector.body47 ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.d, i64 %index48
  %next.gep50 = getelementptr i8, ptr %i.t, i64 %index48
  %wide.load51 = load <8 x i8>, ptr %next.gep50, align 8, !tbaa !136
  store <8 x i8> %wide.load51, ptr %next.gep49, align 8, !tbaa !136
  %index.next52 = add nuw i64 %index48, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.cf, label %vec.epilog.middle.block53, label %vec.epilog.vector.body47, !llvm.loop !789

vec.epilog.middle.block53:                        ; preds = %vec.epilog.vector.body47
  %cmp.n54 = icmp eq i64 %i.j, %n.vec46
  br i1 %cmp.n54, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check41, %vec.epilog.iter.check43, %vec.epilog.middle.block53
  %.08.i.i.ph = phi ptr [ %i.d, %iter.check41 ], [ %i.by, %vec.epilog.iter.check43 ], [ %i.cd, %vec.epilog.middle.block53 ] ; 2 uses
  %.057.i.i.ph = phi ptr [ %i.t, %iter.check41 ], [ %i.bz, %vec.epilog.iter.check43 ], [ %i.ce, %vec.epilog.middle.block53 ] ; 3 uses
  %i.cg = add i64 %i.j, %i.a
  %.057.i.i.ph60 = ptrtoaddr ptr %.057.i.i.ph to i64 ; 2 uses
  %i.ch = sub i64 %i.j, %.057.i.i.ph60
  %i.ci = add i64 %i.cg, 31
  %i.cj = sub i64 %i.ci, %.057.i.i.ph60
  %xtraiter61 = and i64 %i.ch, 7                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.08.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.prol ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i.prol = phi ptr [ %i.ck, %.lr.ph.i.i.prol ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.057.i.i.prol, i64 1 ; 2 uses
  %i.cl = load i8, ptr %.057.i.i.prol, align 1, !tbaa !136
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.prol, i64 1 ; 2 uses
  store i8 %i.cl, ptr %.08.i.i.prol, align 1, !tbaa !136
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !790

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %.08.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.057.i.i.unr = phi ptr [ %.057.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.prol ]
  %i.cn = icmp ult i64 %i.cj, 7
  br i1 %i.cn, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %.057.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1
  %i.cp = load i8, ptr %.057.i.i, align 1, !tbaa !136
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  store i8 %i.cp, ptr %.08.i.i, align 1, !tbaa !136
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !136
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !136
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !136
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !136
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !136
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !136
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !136
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !136
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !136
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !136
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !136
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !136
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !136
  %.not.i.i.7 = icmp eq ptr %i.dj, %i.bv
  br i1 %.not.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i, !llvm.loop !791

bb.e:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  store ptr %i.g, ptr %0, align 8, !tbaa !203
  store i64 %i.l, ptr %i.v, align 8, !tbaa !204
  store ptr %i.t, ptr %1, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block37, %vec.epilog.middle.block53, %bb.e, %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !204 ; 2 uses
  %i.do = icmp ugt i64 %i.j, %i.dn
  br i1 %i.do, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !202
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.j)
          to label %.noexc3 unwind label %bb.g, !inline_history !783

.noexc3:                                          ; preds = %bb.f
  %.pre.i.i.i = load i64, ptr %i.dm, align 8, !tbaa !204
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i: ; preds = %.noexc3, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.dr = phi i64 [ %i.dn, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i ], [ %.pre.i.i.i, %.noexc3 ]
  %i.ds = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.dr)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !205
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit

_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE4moveERS5_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i, %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.i.i
  ret ptr %0

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v1219basic_memory_bufferIcLm4E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  tail call void @__clang_call_terminate(ptr %i.dv) #40
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4growERNS0_6detail6bufferIcEEm, ptr %i.e, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !222
  %i.g = load ptr, ptr %1, align 8, !tbaa !203    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !205  ; 27 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !204  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.p = icmp eq ptr %i.g, %i.o                   ; 2 uses
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i: ; preds = %bb.b
  %i.q = icmp slt i64 %i.i, 0
  br i1 %i.q, label %bb.c, label %_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i, !prof !191

bb.c:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  invoke void @_ZSt17__throw_bad_allocv() #39
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i:  ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.thread.i.i
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #41
          to label %iter.check unwind label %bb.g ; 6 uses

iter.check:                                       ; preds = %_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i
  store ptr %i.r, ptr %0, align 8, !tbaa !203
  store i64 %i.i, ptr %i.d, align 8, !tbaa !204
  store i64 %i.i, ptr %i.c, align 8, !tbaa !205
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.i, 24
  %n.vec = and i64 %i.i, 9223372036854775776      ; 5 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.v = getelementptr i8, ptr %i.g, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep15, align 1, !tbaa !136
  %wide.load16 = load <16 x i8>, ptr %i.w, align 1, !tbaa !136
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !136
  store <16 x i8> %wide.load16, ptr %i.x, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !6045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.i, 9223372036854775800    ; 4 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %n.vec18
  %i.aa = getelementptr i8, ptr %i.g, i64 %n.vec18
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.r, i64 %index19
  %next.gep21 = getelementptr i8, ptr %i.g, i64 %index19
  %wide.load22 = load <8 x i8>, ptr %next.gep21, align 1, !tbaa !136
  store <8 x i8> %wide.load22, ptr %next.gep20, align 1, !tbaa !136
  %index.next23 = add nuw i64 %index19, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6046

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.i, %n.vec18
  br i1 %cmp.n24, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.057.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.057.i.i.i, align 1, !tbaa !136
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.ad, ptr %.08.i.i.i, align 1, !tbaa !136
  %.not.i.i.i = icmp eq ptr %i.ac, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !6047

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i: ; preds = %bb.a
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !203
  store i64 %i.k, ptr %i.d, align 8, !tbaa !204
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %.not6.i.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %iter.check43

iter.check43:                                     ; preds = %bb.d
  %min.iters.check27 = icmp ult i64 %i.i, 8
  %i.ah = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = or i1 %min.iters.check27, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check28

vector.main.loop.iter.check28:                    ; preds = %iter.check43
  %min.iters.check29 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check29, label %vec.epilog.ph47, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check28
  %i.ai = and i64 %i.i, 24
  %n.vec31 = and i64 %i.i, -32                    ; 5 uses
  %i.aj = getelementptr i8, ptr %i.af, i64 %n.vec31
  %i.ak = getelementptr i8, ptr %i.o, i64 %n.vec31
  br label %vector.body32

vector.body32:                                    ; preds = %vector.ph30, %vector.body32
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.af, i64 %index33 ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.o, i64 %index33 ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <16 x i8>, ptr %next.gep35, align 8, !tbaa !136
  %wide.load37 = load <16 x i8>, ptr %i.al, align 8, !tbaa !136
  %i.am = getelementptr i8, ptr %next.gep34, i64 16
  store <16 x i8> %wide.load36, ptr %next.gep34, align 8, !tbaa !136
  store <16 x i8> %wide.load37, ptr %i.am, align 8, !tbaa !136
  %index.next38 = add nuw i64 %index33, 32        ; 2 uses
  %i.an = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.an, label %middle.block39, label %vector.body32, !llvm.loop !6048

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.i, %n.vec31
  br i1 %cmp.n40, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %vec.epilog.iter.check45

vec.epilog.iter.check45:                          ; preds = %middle.block39
  %min.epilog.iters.check46 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check46, label %.lr.ph.i.i.preheader, label %vec.epilog.ph47, !prof !223

vec.epilog.ph47:                                  ; preds = %vector.main.loop.iter.check28, %vec.epilog.iter.check45
  %vec.epilog.resume.val41 = phi i64 [ %n.vec31, %vec.epilog.iter.check45 ], [ 0, %vector.main.loop.iter.check28 ]
  %n.vec48 = and i64 %i.i, -8                     ; 4 uses
  %i.ao = getelementptr i8, ptr %i.af, i64 %n.vec48
  %i.ap = getelementptr i8, ptr %i.o, i64 %n.vec48
  br label %vec.epilog.vector.body49

vec.epilog.vector.body49:                         ; preds = %vec.epilog.vector.body49, %vec.epilog.ph47
  %index50 = phi i64 [ %vec.epilog.resume.val41, %vec.epilog.ph47 ], [ %index.next54, %vec.epilog.vector.body49 ] ; 3 uses
  %next.gep51 = getelementptr i8, ptr %i.af, i64 %index50
  %next.gep52 = getelementptr i8, ptr %i.o, i64 %index50
  %wide.load53 = load <8 x i8>, ptr %next.gep52, align 8, !tbaa !136
  store <8 x i8> %wide.load53, ptr %next.gep51, align 8, !tbaa !136
  %index.next54 = add nuw i64 %index50, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.aq, label %vec.epilog.middle.block55, label %vec.epilog.vector.body49, !llvm.loop !6049

vec.epilog.middle.block55:                        ; preds = %vec.epilog.vector.body49
  %cmp.n56 = icmp eq i64 %i.i, %n.vec48
  br i1 %cmp.n56, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check43, %vec.epilog.iter.check45, %vec.epilog.middle.block55
  %.08.i.i.ph = phi ptr [ %i.af, %iter.check43 ], [ %i.aj, %vec.epilog.iter.check45 ], [ %i.ao, %vec.epilog.middle.block55 ] ; 2 uses
  %.057.i.i.ph = phi ptr [ %i.o, %iter.check43 ], [ %i.ak, %vec.epilog.iter.check45 ], [ %i.ap, %vec.epilog.middle.block55 ] ; 3 uses
  %i.ar = add i64 %i.i, %i.a
  %.057.i.i.ph59 = ptrtoaddr ptr %.057.i.i.ph to i64 ; 2 uses
  %i.as = sub i64 %i.i, %.057.i.i.ph59
  %i.at = add i64 %i.ar, 31
  %i.au = sub i64 %i.at, %.057.i.i.ph59
  %xtraiter = and i64 %i.as, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.08.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.prol ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.prol ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.057.i.i.prol, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.057.i.i.prol, align 1, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.prol, i64 1 ; 2 uses
  store i8 %i.aw, ptr %.08.i.i.prol, align 1, !tbaa !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !6050

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %.08.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %.057.i.i.unr = phi ptr [ %.057.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ]
  %i.ay = icmp ult i64 %i.au, 7
  br i1 %i.ay, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.057.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1
  %i.ba = load i8, ptr %.057.i.i, align 1, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  store i8 %i.ba, ptr %.08.i.i, align 1, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 2
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 2
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !136
  %i.bf = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 3
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 3
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !136
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 5
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !136
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 5
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !136
  %i.bo = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 6
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !136
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 6
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 7
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !136
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 7
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !136
  %i.bu = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !136
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !136
  %.not.i.i.7 = icmp eq ptr %i.bu, %i.ag
  br i1 %.not.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i, label %.lr.ph.i.i, !llvm.loop !6051

bb.e:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE10move_allocIS4_TnNSt9enable_ifIXntsr3std16allocator_traitsIT_E38propagate_on_container_move_assignmentE5valueEiE4typeELi0EEEbRS5_.exit.i
  store ptr %i.g, ptr %0, align 8, !tbaa !203
  store i64 %i.k, ptr %i.d, align 8, !tbaa !204
  store ptr %i.o, ptr %1, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block39, %vec.epilog.middle.block55, %bb.e, %bb.d
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !204 ; 2 uses
  %i.by = icmp ugt i64 %i.i, %i.bx
  br i1 %i.by, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !202
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.i)
          to label %.noexc2 unwind label %bb.g, !inline_history !6052

.noexc2:                                          ; preds = %bb.f
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !tbaa !204
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i: ; preds = %.noexc2, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i
  %i.ca = phi i64 [ %i.bx, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i ], [ %.pre.i.i.i, %.noexc2 ]
  %i.cb = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.ca)
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !205
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit

_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE4moveERS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.b, %_ZN3fmt3v1219basic_memory_bufferIcLm5E13allocator_refISaIcELb0EEE6resizeEm.exit.i
  ret void

bb.g:                                             ; preds = %_ZN13allocator_refISaIcELb0EE8allocateEm.exit.i, %bb.c, %bb.f
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #40
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
begin_hunk_2_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

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
  %i.ep = ptrtoaddr ptr %i.en to i64
  %i.eq = ptrtoaddr ptr %i.eo to i64              ; 2 uses
  %i.er = load ptr, ptr %7, align 8, !tbaa !579   ; 4 uses
  %i.es = add i64 %i.ep, -4
  %i.et = sub i64 %i.es, %i.eq                    ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check1221 = icmp ult i64 %i.et, 44
  %i.ew = ptrtoaddr ptr %i.er to i64
  %i.ex = sub i64 %i.eq, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond1325 = select i1 %min.iters.check1221, i1 true, i1 %diff.check
  br i1 %or.cond1325, label %.lr.ph.i.i.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1223 = and i64 %i.ev, 9223372036854775800 ; 3 uses
  %i.ey = shl i64 %n.vec1223, 2                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.er, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.eo, i64 %i.ey
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1229, %vector.body1224 ] ; 2 uses
  %i.fb = shl i64 %index1225, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.er, i64 %i.fb ; 2 uses
  %next.gep1226 = getelementptr i8, ptr %i.eo, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep1226, i64 16
  %wide.load1227 = load <4 x i32>, ptr %next.gep1226, align 4, !tbaa !141
  %wide.load1228 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !141
  %i.fd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1227, ptr %next.gep, align 4, !tbaa !141
  store <4 x i32> %wide.load1228, ptr %i.fd, align 4, !tbaa !141
  %index.next1229 = add nuw i64 %index1225, 8     ; 2 uses
  %i.fe = icmp eq i64 %index.next1229, %n.vec1223
  br i1 %i.fe, label %middle.block1230, label %vector.body1224, !llvm.loop !7192

middle.block1230:                                 ; preds = %vector.body1224
  %cmp.n1231 = icmp eq i64 %i.ev, %n.vec1223
  br i1 %cmp.n1231, label %.loopexit567, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1230
  %.08.i.i.ph = phi ptr [ %i.er, %.lr.ph.i.preheader.i ], [ %i.ez, %middle.block1230 ]
  %.057.i.i.ph = phi ptr [ %i.eo, %.lr.ph.i.preheader.i ], [ %i.fa, %middle.block1230 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fg = load i32, ptr %.057.i.i, align 4, !tbaa !141
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fg, ptr %.08.i.i, align 4, !tbaa !141
  %.not.i.i169 = icmp eq ptr %i.ff, %i.en
  br i1 %.not.i.i169, label %.loopexit567, label %.lr.ph.i.i, !llvm.loop !7193

.loopexit567:                                     ; preds = %.lr.ph.i.i, %middle.block1230, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fi = phi ptr [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.eo, %middle.block1230 ], [ %i.eo, %.lr.ph.i.i ] ; 2 uses
  %i.fj = load i32, ptr %i.e, align 8, !tbaa !584 ; 2 uses
  store i32 %i.fj, ptr %i.o, align 8, !tbaa !584
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.x

bb.x:                                             ; preds = %.loopexit567
  %i.fk = load i64, ptr %i.c, align 8, !tbaa !585 ; 8 uses
  %i.fl = load i64, ptr %i.p, align 8, !tbaa !580 ; 2 uses
  %i.fm = icmp ugt i64 %i.fk, %i.fl
  br i1 %i.fm, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.x
  %i.fn = load ptr, ptr %i.q, align 8, !tbaa !578
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fk)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !7191

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !580 ; 2 uses
  %i.fo = call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.fo, ptr %i.r, align 8, !tbaa !585
  %i.fp = load ptr, ptr %5, align 8, !tbaa !579   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.fk, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.x
  store i64 %i.fk, ptr %i.r, align 8, !tbaa !585
  %.idx.i172 = shl nuw nsw i64 %i.fk, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.fk, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.fj, ptr %i.t, align 8, !tbaa !584
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.fs = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.fl, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.fo, %.noexc182 ], [ %i.fk, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.ft = phi ptr [ %i.fq, %.noexc182 ], [ %i.fr, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.fu = phi ptr [ %i.fp, %.noexc182 ], [ %i.fi, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %i.fv = ptrtoaddr ptr %i.ft to i64
  %i.fw = ptrtoaddr ptr %i.fu to i64              ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !579   ; 7 uses
  %i.fy = add i64 %i.fv, -4
  %i.fz = sub i64 %i.fy, %i.fw                    ; 2 uses
  %i.ga = lshr i64 %i.fz, 2
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check1237 = icmp ult i64 %i.fz, 44
  %i.gc = ptrtoaddr ptr %i.fx to i64
  %i.gd = sub i64 %i.fw, %i.gc
  %diff.check1235 = icmp ugt i64 %i.gd, -32
  %or.cond1327 = select i1 %min.iters.check1237, i1 true, i1 %diff.check1235
  br i1 %or.cond1327, label %.lr.ph.i.i175.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1239 = and i64 %i.gb, 9223372036854775800 ; 3 uses
  %i.ge = shl i64 %n.vec1239, 2                   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fx, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.fu, i64 %i.ge
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1246, %vector.body1240 ] ; 2 uses
  %i.gh = shl i64 %index1241, 2                   ; 2 uses
  %next.gep1242 = getelementptr i8, ptr %i.fx, i64 %i.gh ; 2 uses
  %next.gep1243 = getelementptr i8, ptr %i.fu, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep1243, i64 16
  %wide.load1244 = load <4 x i32>, ptr %next.gep1243, align 4, !tbaa !141
  %wide.load1245 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !141
  %i.gj = getelementptr i8, ptr %next.gep1242, i64 16
  store <4 x i32> %wide.load1244, ptr %next.gep1242, align 4, !tbaa !141
  store <4 x i32> %wide.load1245, ptr %i.gj, align 4, !tbaa !141
  %index.next1246 = add nuw i64 %index1241, 8     ; 2 uses
  %i.gk = icmp eq i64 %index.next1246, %n.vec1239
  br i1 %i.gk, label %middle.block1247, label %vector.body1240, !llvm.loop !7194

middle.block1247:                                 ; preds = %vector.body1240
  %cmp.n1248 = icmp eq i64 %i.gb, %n.vec1239
  br i1 %cmp.n1248, label %.loopexit1323, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1247
  %.08.i.i176.ph = phi ptr [ %i.fx, %.lr.ph.i.preheader.i174 ], [ %i.gf, %middle.block1247 ]
  %.057.i.i177.ph = phi ptr [ %i.fu, %.lr.ph.i.preheader.i174 ], [ %i.gg, %middle.block1247 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.gn, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.gl, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.gm = load i32, ptr %.057.i.i177, align 4, !tbaa !141
  %i.gn = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.gm, ptr %.08.i.i176, align 4, !tbaa !141
  %.not.i.i178 = icmp eq ptr %i.gl, %i.ft
  br i1 %.not.i.i178, label %.loopexit1323, label %.lr.ph.i.i175, !llvm.loop !7195

.loopexit1323:                                    ; preds = %.lr.ph.i.i175, %middle.block1247
  %i.go = load i32, ptr %i.e, align 8, !tbaa !584
  store i32 %i.go, ptr %i.t, align 8, !tbaa !584
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
  %vector.recur1257 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1253 ], [ %i.gs, %vector.body1255 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index1256 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %wide.load1258 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !141 ; 2 uses
  %wide.load1259 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !141 ; 3 uses
  %i.gr = lshr <4 x i32> %wide.load1258, splat (i32 31) ; 2 uses
  %i.gs = lshr <4 x i32> %wide.load1259, splat (i32 31) ; 3 uses
  %i.gt = shufflevector <4 x i32> %vector.recur1257, <4 x i32> %i.gr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gu = shufflevector <4 x i32> %i.gr, <4 x i32> %i.gs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gv = shl <4 x i32> %wide.load1258, splat (i32 1)
  %i.gw = shl <4 x i32> %wide.load1259, splat (i32 1)
  %i.gx = or disjoint <4 x i32> %i.gv, %i.gt
  %i.gy = or disjoint <4 x i32> %i.gw, %i.gu
  store <4 x i32> %i.gx, ptr %i.gp, align 4, !tbaa !141
  store <4 x i32> %i.gy, ptr %i.gq, align 4, !tbaa !141
  %index.next1260 = add nuw i64 %index1256, 8     ; 2 uses
  %i.gz = icmp eq i64 %index.next1260, %n.vec1254
  br i1 %i.gz, label %middle.block1261, label %vector.body1255, !llvm.loop !7196

middle.block1261:                                 ; preds = %vector.body1255
  %vector.recur.extract1262 = extractelement <4 x i32> %i.gs, i64 3 ; 2 uses
  %i.ha = extractelement <4 x i32> %wide.load1259, i64 3
  %cmp.n1263 = icmp eq i64 %.pr, %n.vec1254
  br i1 %cmp.n1263, label %._crit_edge.i189, label %.lr.ph.i185.preheader1371

.lr.ph.i185.preheader1371:                        ; preds = %.lr.ph.i185.preheader, %middle.block1261
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1254, %middle.block1261 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1262, %middle.block1261 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1261
  %.lcssa1188 = phi i32 [ %i.ha, %middle.block1261 ], [ %i.hc, %.lr.ph.i185 ]
  %.lcssa1187 = phi i32 [ %vector.recur.extract1262, %middle.block1261 ], [ %i.hd, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1188, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.y

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1371, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.hg, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1371 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.hd, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1371 ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.01418.i186 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !141 ; 3 uses
  %i.hd = lshr i32 %i.hc, 31                      ; 2 uses
  %i.he = shl i32 %i.hc, 1
  %i.hf = or disjoint i32 %i.he, %.017.i187
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !141
  %i.hg = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.hg, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !7197

bb.y:                                             ; preds = %._crit_edge.i189
  %i.hh = add i64 %.pr, 1                         ; 3 uses
  %i.hi = icmp ugt i64 %i.hh, %i.fs
  br i1 %i.hi, label %bb.z, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.z:                                             ; preds = %bb.y
  %i.hj = load ptr, ptr %i.q, align 8, !tbaa !578
  invoke void %i.hj(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.hh)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc195:                                        ; preds = %bb.z
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !585 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre675 = load ptr, ptr %8, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.y
  %i.hk = phi ptr [ %i.fx, %bb.y ], [ %.pre675, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.hh, %bb.y ], [ %.pre2.i.i194, %.noexc195 ]
  %i.hl = phi i64 [ %.pr, %bb.y ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !585
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hl
  store i32 %.lcssa1187, ptr %i.hm, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1323, %.thread, %.loopexit567
  %.1 = phi ptr [ null, %.loopexit567 ], [ %8, %.thread ], [ %8, %.loopexit1323 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.hn = load i128, ptr %0, align 16, !tbaa !7216 ; 3 uses
  %i.ho = and i128 %i.hn, 18446744073709551615
  %i.hp = load i64, ptr %i.c, align 8, !tbaa !585 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.hq = load ptr, ptr %5, align 8, !tbaa !579   ; 3 uses
  %i.hr = lshr i128 %i.hn, 32
  %i.hs = and i128 %i.hr, 79228162514264337589248983040
  br label %bb.aa

.preheader.i.i:                                   ; preds = %bb.aa
  %.not20.i.i = icmp eq i128 %i.id, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i197
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.if, %bb.aa ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.id, %bb.aa ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.019.i.i ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !141
  %i.hv = zext i32 %i.hu to i128                  ; 2 uses
  %i.hw = mul nuw nsw i128 %i.ho, %i.hv
  %i.hx = and i128 %.01718.i.i, 4294967295
  %i.hy = add nuw nsw i128 %i.hw, %i.hx           ; 2 uses
  %i.hz = mul nuw i128 %i.hs, %i.hv
  %i.ia = lshr i128 %i.hy, 32
  %i.ib = lshr i128 %.01718.i.i, 32
  %i.ic = add nuw i128 %i.hz, %i.ib
  %i.id = add nuw i128 %i.ic, %i.ia               ; 3 uses
  %i.ie = trunc i128 %i.hy to i32
  store i32 %i.ie, ptr %i.ht, align 4, !tbaa !141
  %i.if = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, %i.hp
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.aa, !llvm.loop !7198

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.ig = phi ptr [ %i.in, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hq, %.preheader.i.i ]
  %i.ih = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hp, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.iq, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.id, %.preheader.i.i ] ; 2 uses
  %i.ii = trunc i128 %.121.i.i to i32
  %i.ij = add i64 %i.ih, 1                        ; 3 uses
  %i.ik = load i64, ptr %i.a, align 8, !tbaa !580
  %i.il = icmp ugt i64 %i.ij, %i.ik
  br i1 %i.il, label %bb.ab, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.ab:                                            ; preds = %.lr.ph22.i.i
  %i.im = load ptr, ptr %i.b, align 8, !tbaa !578
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ij)
          to label %.noexc200 unwind label %.loopexit566, !inline_history !7199

.noexc200:                                        ; preds = %bb.ab
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !585 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.in = phi ptr [ %i.ig, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ij, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.io = phi i64 [ %i.ih, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !585
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
end_hunk_2
