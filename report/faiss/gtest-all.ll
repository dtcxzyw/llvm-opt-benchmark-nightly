Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/gtest-all?download=true
inline.NumInlined: 8800
inline.NumDeleted: 2313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7testing12_GLOBAL__N_115IsSubstringImplINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEbPKcSA_RKT_SD_:bb.a
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(128) %i.fz) #58, !inline_history !33
  br label %_ZN7testing7MessageD2Ev.exit5.i117

_ZN7testing7MessageD2Ev.exit5.i117:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i116, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %.body

bb.au:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i120, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i126 unwind label %bb.bh

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i126: ; preds = %bb.au
  %i.gd = load ptr, ptr %8, align 8, !tbaa !85
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.553, i64 noundef 2)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i130 unwind label %bb.aw ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i130:    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i126
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i130
  %i.gg = load ptr, ptr %8, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i131 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i131, label %bb.ax, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i132

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i132: ; preds = %bb.av
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !87
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #58, !inline_history !27
  br label %bb.ax

bb.aw:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i126
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %8, align 8, !tbaa !85    ; 3 uses
  %.not.i.i4.i127 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i4.i127, label %_ZN7testing7MessageD2Ev.exit6.i129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i128: ; preds = %bb.aw
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !87
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(128) %i.gl) #58, !inline_history !27
  br label %_ZN7testing7MessageD2Ev.exit6.i129

_ZN7testing7MessageD2Ev.exit6.i129:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i128, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %.body

bb.ax:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i132, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc142 unwind label %bb.bh

.noexc142:                                        ; preds = %bb.ax
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ay unwind label %bb.ba     ; 0 uses

bb.ay:                                            ; preds = %.noexc142
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %7, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i140, label %bb.bb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i141: ; preds = %bb.az
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !87
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #58, !inline_history !1492
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay, %.noexc142
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %7, align 8, !tbaa !85    ; 3 uses
  %.not.i.i3.i137 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i3.i137, label %_ZN7testing7MessageD2Ev.exit5.i139, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i138

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i138: ; preds = %bb.ba
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !87
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(128) %i.gv) #58, !inline_history !1492
  br label %_ZN7testing7MessageD2Ev.exit5.i139

_ZN7testing7MessageD2Ev.exit5.i139:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i138, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %.body

bb.bb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i141, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc152 unwind label %bb.bh

.noexc152:                                        ; preds = %bb.bb
  %i.gz = load ptr, ptr %6, align 8, !tbaa !85
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull align 1 dereferenceable(2) @.str.185, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i149 unwind label %bb.bd ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i149:   ; preds = %.noexc152
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i149
  %i.hc = load ptr, ptr %6, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i150 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i150, label %bb.be, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i151: ; preds = %bb.bc
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !87
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(128) %i.hc) #58, !inline_history !31
  br label %bb.be

bb.bd:                                            ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i149, %.noexc152
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %6, align 8, !tbaa !85    ; 3 uses
  %.not.i.i3.i146 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i3.i146, label %_ZN7testing7MessageD2Ev.exit5.i148, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i147

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i147: ; preds = %bb.bd
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !87
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(128) %i.hh) #58, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit5.i148

_ZN7testing7MessageD2Ev.exit5.i148:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i147, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %.body

bb.be:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i151, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.hl = load ptr, ptr %i.u, align 8, !tbaa !72  ; 4 uses
  %.not.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !78 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bg
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !81
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #57
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 32) #57
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #58
  br label %bb.bi

bb.bh:                                            ; preds = %bb.g, %bb.j, %bb.m, %bb.p, %bb.s, %bb.v, %bb.z, %bb.ac, %bb.bb, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.be
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit6.i77, %_ZN7testing7MessageD2Ev.exit6.i97, %_ZN7testing7MessageD2Ev.exit5.i117, %_ZN7testing7MessageD2Ev.exit5.i139, %_ZN7testing7MessageD2Ev.exit5.i148, %bb.bh, %_ZN7testing7MessageD2Ev.exit6.i129, %_ZN7testing7MessageD2Ev.exit5.i107, %_ZN7testing7MessageD2Ev.exit5.i87, %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i19, %_ZN7testing7MessageD2Ev.exit6.i39, %_ZN7testing7MessageD2Ev.exit5.i57, %_ZN7testing7MessageD2Ev.exit5.i65, %_ZN7testing7MessageD2Ev.exit5.i49, %_ZN7testing7MessageD2Ev.exit5.i27, %_ZN7testing7MessageD2Ev.exit6.i
  %.pn = phi { ptr, i32 } [ %i.dk, %_ZN7testing7MessageD2Ev.exit5.i65 ], [ %i.ac, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.as, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.be, %_ZN7testing7MessageD2Ev.exit5.i19 ], [ %i.bq, %_ZN7testing7MessageD2Ev.exit5.i27 ], [ %i.cc, %_ZN7testing7MessageD2Ev.exit6.i39 ], [ %i.cm, %_ZN7testing7MessageD2Ev.exit5.i49 ], [ %i.cy, %_ZN7testing7MessageD2Ev.exit5.i57 ], [ %i.hg, %_ZN7testing7MessageD2Ev.exit5.i148 ], [ %i.dy, %_ZN7testing7MessageD2Ev.exit6.i77 ], [ %i.ek, %_ZN7testing7MessageD2Ev.exit5.i87 ], [ %i.fa, %_ZN7testing7MessageD2Ev.exit6.i97 ], [ %i.fm, %_ZN7testing7MessageD2Ev.exit5.i107 ], [ %i.fy, %_ZN7testing7MessageD2Ev.exit5.i117 ], [ %i.gk, %_ZN7testing7MessageD2Ev.exit6.i129 ], [ %i.gu, %_ZN7testing7MessageD2Ev.exit5.i139 ], [ %i.hr, %bb.bh ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #58
  resume { ptr, i32 } %.pn

bb.bi:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14IsNotSubstringEPKcS1_RKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES9_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7testing12_GLOBAL__N_115IsSubstringImplINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEbPKcSA_RKT_SD_(ptr dead_on_unwind noalias writable align 8 %0, i1 noundef zeroext false, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal15CodePointToUtf8B5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca [5 x i8], align 1                 ; 14 uses
  %i.b = icmp ugt i32 %1, 2097151
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZN7testing8internal6String15FormatHexUInt32B5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %1)
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.187, i64 noundef 19)
          to label %.noexc unwind label %bb.h     ; 8 uses

.noexc:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !75, !alias.scope !1499
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !78   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79   ; 5 uses
  %i.j = icmp samesign ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.i, ptr %i.m, align 8, !tbaa !79, !alias.scope !1499
  store ptr %i.f, ptr %i.c, align 8, !tbaa !78
  store i64 0, ptr %i.l, align 8, !tbaa !79
  store i8 0, ptr %i.f, align 8, !tbaa !81
  %i.n = add nuw nsw i64 %i.i, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.c:                                             ; preds = %.noexc
  store ptr %i.e, ptr %2, align 8, !tbaa !78, !alias.scope !1499
  %i.o = load i64, ptr %i.f, align 8, !tbaa !81
  store i64 %i.o, ptr %i.d, align 8, !tbaa !81, !alias.scope !1499
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.q, align 8, !tbaa !79, !alias.scope !1499
  store ptr %i.f, ptr %i.c, align 8, !tbaa !78
  store i64 0, ptr %i.p, align 8, !tbaa !79
  store i8 0, ptr %i.f, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.r = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.c
  %i.s = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.t = icmp eq ptr %i.e, %i.d
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.u = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.v = phi ptr [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = phi i64 [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.x = phi ptr [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.y = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = load i64, ptr %i.d, align 8, !tbaa !81, !noalias !1500
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.ab = phi ptr [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.ac = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ad = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ae = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.aa, %i.ae
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 41, ptr %i.af, align 1, !tbaa !81, !noalias !1500
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.aa, ptr %i.ad, align 8, !tbaa !79, !noalias !1500
  %i.ag = load ptr, ptr %2, align 8, !tbaa !78, !noalias !1500
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa
  store i8 0, ptr %i.ah, align 1, !tbaa !81, !noalias !1500
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !75, !alias.scope !1500
  %i.aj = load ptr, ptr %2, align 8, !tbaa !78, !noalias !1500 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !79, !noalias !1500 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.aj, ptr %0, align 8, !tbaa !78, !alias.scope !1500
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !81, !noalias !1500
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !81, !alias.scope !1500
  %.pre.i7 = load i64, ptr %i.ad, align 8, !tbaa !79, !noalias !1500
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %i.ap = phi i64 [ %i.al, %bb.g ], [ %.pre.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !79, !alias.scope !1500
  store ptr %i.d, ptr %2, align 8, !tbaa !78, !noalias !1500
  store i64 0, ptr %i.ad, align 8, !tbaa !79, !noalias !1500
  store i8 0, ptr %i.d, align 8, !tbaa !81, !noalias !1500
  %i.ar = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !81
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.w

bb.h:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.d
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.i
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !81
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.ax, %bb.i ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !81
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.bh = icmp samesign ult i32 %1, 128
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.bi, align 1, !tbaa !81
  %i.bj = trunc nuw nsw i32 %1 to i8
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.bk = icmp samesign ult i32 %1, 2048
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.bl, align 1, !tbaa !81
  %i.bm = lshr i32 %1, 6
  %i.bn = trunc i32 %1 to i8
  %i.bo = and i8 %i.bn, 63
  %i.bp = or disjoint i8 %i.bo, -128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !81
  %i.br = trunc nuw nsw i32 %i.bm to i8
  %i.bs = or disjoint i8 %i.br, -64
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bt = icmp samesign ult i32 %1, 65536
  %i.bu = lshr i32 %1, 6
  %i.bv = trunc i32 %1 to i8
  %i.bw = and i8 %i.bv, 63
  %i.bx = or disjoint i8 %i.bw, -128              ; 2 uses
  %i.by = lshr i32 %1, 12                         ; 2 uses
  %i.bz = trunc i32 %i.bu to i8
  %i.ca = and i8 %i.bz, 63
  %i.cb = or disjoint i8 %i.ca, -128              ; 2 uses
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.cc, align 1, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bx, ptr %i.cd, align 1, !tbaa !81
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.ce, align 1, !tbaa !81
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.bx, ptr %i.cf, align 1, !tbaa !81
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.cb, ptr %i.cg, align 1, !tbaa !81
  %i.ch = lshr i32 %1, 18
  %i.ci = trunc i32 %i.by to i8
  %i.cj = and i8 %i.ci, 63
  %i.ck = or disjoint i8 %i.cj, -128
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink51 = phi i8 [ %i.cb, %bb.o ], [ %i.ck, %bb.p ]
  %.sink50 = phi i32 [ %i.by, %bb.o ], [ %i.ch, %bb.p ]
  %.sink49 = phi i8 [ -32, %bb.o ], [ -16, %bb.p ]
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sink51, ptr %4, align 1, !tbaa !81
  %5 = trunc nuw nsw i32 %.sink50 to i8
  %6 = or disjoint i8 %.sink49, %5
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.m, %bb.k
  %.sink = phi i8 [ %i.bs, %bb.m ], [ %i.bj, %bb.k ], [ %6, %.sink.split ] ; 2 uses
  store i8 %.sink, ptr %i.a, align 1, !tbaa !81
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !75
  %i.cm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #58 ; 8 uses
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %bb.r, label %._crit_edge.i.i

bb.r:                                             ; preds = %bb.q
  %i.co = icmp slt i64 %i.cm, 0
  br i1 %i.co, label %.noexc.i, label %bb.s

.noexc.i:                                         ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.cp = add nuw i64 %i.cm, 1                    ; 2 uses
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.s
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.s
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #55 ; 2 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !78
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.q
  %i.cs = phi ptr [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.cl, %bb.q ] ; 3 uses
  switch i64 %i.cm, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i
  store i8 %.sink, ptr %i.cs, align 1, !tbaa !81
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull align 1 %i.a, i64 %i.cm, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cm, ptr %i.ct, align 8, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cm
  store i8 0, ptr %i.cu, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal6String15FormatHexUInt32B5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !306
  %i.h = and i32 %i.g, -75
  %i.i = or disjoint i32 %i.h, 8
  store i32 %i.i, ptr %i.f, align 8, !tbaa !307
  %i.j = load i64, ptr %i.c, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !306
  %i.n = or i32 %i.m, 16384
  store i32 %i.n, ptr %i.l, align 8, !tbaa !307
  %i.o = zext i32 %1 to i64
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.o)
          to label %_ZNSolsEj.exit unwind label %bb.e ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !75, !alias.scope !1507
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !79, !alias.scope !1507
  store i8 0, ptr %i.q, align 8, !tbaa !81, !alias.scope !1507
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !217, !noalias !1507 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1507 ; 2 uses
  %i.w = icmp ugt ptr %i.t, %i.v
  %.08.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.v ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEj.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !218, !noalias !1507 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !78, !alias.scope !1507 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !81, !alias.scope !1507
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #57
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !87
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !87
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !78 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !81
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #57
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #58
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ax, ptr %2, align 8, !tbaa !87
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !448
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bd) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.e:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.e ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef %1) #62
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
end_hunk_0
