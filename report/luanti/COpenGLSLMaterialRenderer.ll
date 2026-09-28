Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLSLMaterialRenderer?download=true
inline.NumInlined: 385
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4core6stringIcEC2Em:bb.a
  %i.aa = zext i32 %.01819.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !56
  %i.ac = load i8, ptr %i.x, align 2, !tbaa !56, !noalias !154
  %i.ad = add i32 %.01819.i.i, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !56
  %i.ag = add i32 %.01819.i.i, -2
  %i.ah = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !153

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %1, %.noexc ], [ %i.w, %.lr.ph.i4.i ] ; 3 uses
  %i.ai = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !56, !noalias !154
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !56
  %i.ao = load i8, ptr %i.ak, align 2, !tbaa !56, !noalias !154
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.aq = or disjoint i8 %i.ap, 48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i.i = phi i8 [ %i.aq, %bb.i ], [ %i.ao, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.o, align 1, !tbaa !56
  %i.ar = load ptr, ptr %0, align 8, !tbaa !55    ; 6 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  %i.at = load ptr, ptr %2, align 8, !tbaa !55    ; 5 uses
  %i.au = icmp eq ptr %i.at, %i.n                 ; 2 uses
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.au, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.au, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !63 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  switch i64 %i.aw, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !56
  store i8 %i.ay, ptr %i.ar, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.az = load i64, ptr %i.av, align 8, !tbaa !63 ; 2 uses
  store i64 %i.az, ptr %i.b, align 8, !tbaa !63
  %i.ba = load ptr, ptr %0, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.at, ptr %0, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !56
  store <2 x i64> %i.bd, ptr %i.b, align 8, !tbaa !56
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !56
  store ptr %i.at, ptr %0, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !tbaa !56
  store <2 x i64> %i.bg, ptr %i.b, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ar, ptr %2, align 8, !tbaa !55
  store i64 %i.be, ptr %i.n, align 8, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %2, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bh = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.n ], [ %i.n, %bb.o ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !63
  store i8 0, ptr %i.bh, align 1, !tbaa !56
  %i.bj = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.n
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !56
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.p:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bo = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.a
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.p
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !56
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.bn
}

declare void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

declare void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define void @_ZN5video25COpenGLSLMaterialRenderer20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 872
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(3992) %i.b, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: uwtable
define void @_ZThn8_N5video25COpenGLSLMaterialRenderer20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 872
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(3992) %i.b, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3), !inline_history !155
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5video25COpenGLSLMaterialRenderer25getVertexShaderConstantIDEPKc(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1)
  ret i32 %i.d
}

; Function Attrs: uwtable
define noundef i32 @_ZThn8_N5video25COpenGLSLMaterialRenderer25getVertexShaderConstantIDEPKc(ptr noundef %0, ptr noundef %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(76) %i.a, ptr noundef %1), !inline_history !156
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5video25COpenGLSLMaterialRenderer24getPixelShaderConstantIDEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 5 uses
  %i.i = and i64 %i.h, 4294967295
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.lr.ph.split.us.preheader.split, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = and i64 %i.h, 4294967295
  br label %.lr.ph.split

.lr.ph.split.us.preheader.split:                  ; preds = %.lr.ph
  %i.j = add nsw i64 %i.h, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %.not22.not = icmp ule i64 %i.k, %i.h
  tail call void @llvm.assume(i1 %.not22.not)
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK4core6stringIcEeqEPKc.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZNK4core6stringIcEeqEPKc.exit.thread ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %exitcond.not, label %.split.us, label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit

.split.us:                                        ; preds = %.lr.ph.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj) #25
  unreachable

_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit: ; preds = %.lr.ph.split
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = tail call noundef i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #28
  %.not5.i = icmp eq i32 %i.n, 0
  br i1 %.not5.i, label %._crit_edge.loopexit.split.loop.exit23, label %_ZNK4core6stringIcEeqEPKc.exit.thread

_ZNK4core6stringIcEeqEPKc.exit.thread:            ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond16.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond16.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit23:           ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit
  %i.o = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4core6stringIcEeqEPKc.exit.thread, %._crit_edge.loopexit.split.loop.exit23, %.lr.ph.split.us.preheader.split, %bb.a
  %i.p = phi i32 [ -1, %.lr.ph.split.us.preheader.split ], [ -1, %bb.a ], [ %i.o, %._crit_edge.loopexit.split.loop.exit23 ], [ -1, %_ZNK4core6stringIcEeqEPKc.exit.thread ]
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ugt i64 %i.h, %i.a
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.a
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define noundef i32 @_ZThn8_N5video25COpenGLSLMaterialRenderer24getPixelShaderConstantIDEPKc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 4 uses
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZN5video25COpenGLSLMaterialRenderer24getPixelShaderConstantIDEPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.split.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.split.i:                ; preds = %.lr.ph.i
  %i.j = add nsw i64 %i.h, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %.not22.not.i = icmp ule i64 %i.k, %i.h
  tail call void @llvm.assume(i1 %.not22.not.i)
  br label %_ZN5video25COpenGLSLMaterialRenderer24getPixelShaderConstantIDEPKc.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK4core6stringIcEeqEPKc.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK4core6stringIcEeqEPKc.exit.thread.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.h
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit.i

.split.us.i:                                      ; preds = %.lr.ph.split.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj) #25
  unreachable

_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit.i: ; preds = %.lr.ph.split.i
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = tail call noundef i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %1) #28
  %.not5.i.i = icmp eq i32 %i.n, 0
  br i1 %.not5.i.i, label %._crit_edge.loopexit.split.loop.exit23.i, label %_ZNK4core6stringIcEeqEPKc.exit.thread.i

_ZNK4core6stringIcEeqEPKc.exit.thread.i:          ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %exitcond16.not.i, label %_ZN5video25COpenGLSLMaterialRenderer24getPixelShaderConstantIDEPKc.exit, label %.lr.ph.split.i, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit23.i:         ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit.i
  %i.o = trunc nuw i64 %indvars.iv.i to i32
  br label %_ZN5video25COpenGLSLMaterialRenderer24getPixelShaderConstantIDEPKc.exit

_ZN5video25COpenGLSLMaterialRenderer24getPixelShaderConstantIDEPKc.exit: ; preds = %_ZNK4core6stringIcEeqEPKc.exit.thread.i, %bb.a, %.lr.ph.split.us.preheader.split.i, %._crit_edge.loopexit.split.loop.exit23.i
  %i.p = phi i32 [ -1, %.lr.ph.split.us.preheader.split.i ], [ -1, %bb.a ], [ %i.o, %._crit_edge.loopexit.split.loop.exit23.i ], [ -1, %_ZNK4core6stringIcEeqEPKc.exit.thread.i ]
  ret i32 %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKfi(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i1 %i.d
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZThn8_N5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKfi(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(76) %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3), !inline_history !157
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKii(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i1 %i.d
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZThn8_N5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKii(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(76) %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3), !inline_history !158
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKji(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i1 %i.d
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZThn8_N5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKji(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(76) %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3), !inline_history !159
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video25COpenGLSLMaterialRenderer22setPixelShaderConstantEiPKfi(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40
  %i.l = icmp ugt i64 %i.k, %i.d
  br i1 %i.l, label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj) #25
  unreachable

_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !66   ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit, label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit50

_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit50: ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !94
  switch i32 %i.r, label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit [
    i32 5126, label %bb.d
    i32 35664, label %bb.f
    i32 35665, label %bb.h
    i32 35666, label %bb.j
    i32 35674, label %bb.l
    i32 35685, label %bb.n
    i32 35686, label %bb.q
    i32 35687, label %bb.t
    i32 35675, label %bb.w
    i32 35688, label %bb.y
    i32 35689, label %bb.ab
    i32 35690, label %bb.ae
    i32 35676, label %bb.ah
    i32 35677, label %bb.aj
    i32 35678, label %bb.aj
    i32 35679, label %bb.aj
    i32 35680, label %bb.aj
    i32 35681, label %bb.aj
    i32 35682, label %bb.aj
  ]

bb.d:                                             ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i32 noundef %1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1824
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !66
  tail call void %i.w(i32 noundef %i.y, i32 noundef %3, ptr noundef %2), !inline_history !160
  br label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit

bb.f:                                             ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i32 noundef %1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1832
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !174 ; 2 uses
  %.not.i51 = icmp eq ptr %i.ad, null
  br i1 %.not.i51, label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %3, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !66
  tail call void %i.ad(i32 noundef %i.ag, i32 noundef %i.ae, ptr noundef %2), !inline_history !161
  br label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit

bb.h:                                             ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit50
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i32 noundef %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1840
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !175 ; 2 uses
  %.not.i52 = icmp eq ptr %i.al, null
  br i1 %.not.i52, label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = sdiv i32 %3, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !66
  tail call void %i.al(i32 noundef %i.ao, i32 noundef %i.am, ptr noundef %2), !inline_history !162
  br label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit

bb.j:                                             ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj.exit50
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEixEj(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i32 noundef %1)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1848
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !176 ; 2 uses
  %.not.i53 = icmp eq ptr %i.at, null
  br i1 %.not.i53, label %_ZN5video23COpenGLExtensionHandler15extGlUniform1fvEiiPKf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
