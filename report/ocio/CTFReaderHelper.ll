Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CTFReaderHelper?download=true
inline.NumInlined: 5814
inline.NumDeleted: 1972
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16OpenColorIO_v2_517CTFReaderArrayElt5startEPPKc:bb.a

bb.bm:                                            ; preds = %bb.ax
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body131

.body131:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i97, %bb.bm
  %eh.lpad-body132 = phi { ptr, i32 } [ %i.kp, %bb.bm ], [ %.pn.pn.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i97 ] ; 2 uses
  %i.kq = load ptr, ptr %15, align 8, !tbaa !50   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.r
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %.body131
  %i.ks = load i64, ptr %i.r, align 8, !tbaa !37
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  %.sink320 = phi i64 [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %.sink318 = phi ptr [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.ku = add i64 %.sink320, 1
  call void @_ZdlPvm(ptr noundef %.sink318, i64 noundef %i.ku) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %bb.as
  %i.kv = load ptr, ptr %10, align 16, !tbaa !93  ; 3 uses
  %.not.i.i.i139 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIjSaIjEED2Ev.exit140, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.kw = load ptr, ptr %i.l, align 16, !tbaa !96
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.kv to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.kz) #33
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit140

_ZNSt6vectorIjSaIjEED2Ev.exit140:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.g, %.body131, %bb.ar, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.p, %bb.aq, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.merged55 = phi { ptr, i32 } [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %eh.lpad-body132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.cr, %bb.o ], [ %i.cs, %bb.p ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.hb, %bb.aq ], [ %eh.lpad-body132, %.body131 ], [ %eh.lpad-body, %.body ], [ %i.hc, %bb.ar ], [ %i.bv, %bb.g ]
  %i.la = load ptr, ptr %10, align 16, !tbaa !93  ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIjSaIjEED2Ev.exit142, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.lb = load ptr, ptr %i.l, align 16, !tbaa !96
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.la to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.le) #33
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit142

_ZNSt6vectorIjSaIjEED2Ev.exit142:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bv

bb.bp:                                            ; preds = %bb.c
  %i.lf = load ptr, ptr %i.bb, align 8, !tbaa !45
  call void @_ZNK16OpenColorIO_v2_516XmlReaderElement19logParameterWarningEPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.lf)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZNSt6vectorIjSaIjEED2Ev.exit140
  %.139 = phi i1 [ true, %_ZNSt6vectorIjSaIjEED2Ev.exit140 ], [ %.038242, %bb.bp ] ; 2 uses
  %i.lg = add i32 %.037243, 2                     ; 2 uses
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.lh ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %i.lj, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !134

.critedge:                                        ; preds = %bb.b, %bb.bq
  %.038.lcssa = phi i1 [ %.038242, %bb.b ], [ %.139, %bb.bq ]
  br i1 %.038.lcssa, label %bb.bu, label %.noexc.i143

.noexc.i143:                                      ; preds = %bb.a, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.lk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.lk, ptr %16, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 24, ptr %i.a, align 8, !tbaa !49
  %i.ll = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc144 unwind label %bb.bs ; 2 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.ll, ptr %16, align 8, !tbaa !50
  %i.lm = load i64, ptr %i.a, align 8, !tbaa !49  ; 3 uses
  store i64 %i.lm, ptr %i.lk, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ll, ptr noundef nonnull align 1 dereferenceable(24) @.str.34, i64 24, i1 false)
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.lm, ptr %i.ln, align 8, !tbaa !51
  %i.lo = load ptr, ptr %16, align 8, !tbaa !50
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lm
  store i8 0, ptr %i.lp, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %.noexc144
  %i.lq = load ptr, ptr %16, align 8, !tbaa !50   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.lk
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.br
  %i.ls = load i64, ptr %i.lk, align 8, !tbaa !37
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.bu

bb.bs:                                            ; preds = %.noexc.i143
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.bt:                                            ; preds = %.noexc144
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = load ptr, ptr %16, align 8, !tbaa !50   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.lk
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.bt
  %i.ly = load i64, ptr %i.lk, align 8, !tbaa !37
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.lu, %bb.bs ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %i.lv, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %.critedge
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.ma, align 8, !tbaa !87
  ret void

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNSt6vectorIjSaIjEED2Ev.exit142
  %.merged = phi { ptr, i32 } [ %.merged55, %_ZNSt6vectorIjSaIjEED2Ev.exit142 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ]
  resume { ptr, i32 } %.merged

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #35
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510GetNumbersIjEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  %.012.i = phi i64 [ %i.d, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.c, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.0.i, align 1, !tbaa !37
  switch i8 %i.b, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.d = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %2
  br i1 %exitcond.not.i, label %._crit_edge, label %.preheader, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit: ; preds = %.preheader, %bb.a
  %.1.i = phi i64 [ 0, %bb.a ], [ %.012.i, %.preheader ] ; 2 uses
  %.not22 = icmp eq i64 %.1.i, %2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.023 = phi i64 [ %.1.i, %.lr.ph ], [ %.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %.not.i.i = icmp ult i64 %.023, %2
  br i1 %.not.i.i, label %bb.c, label %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  br label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %bb.c
  %.012.i.i = phi i64 [ %.023, %bb.c ], [ %i.m, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 7 uses
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.l, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !37
  switch i8 %i.k, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.m = add i64 %.012.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %2
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit, label %bb.d, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i: ; preds = %bb.d
  %.not.i10 = icmp eq i64 %.012.i.i, %2
  br i1 %.not.i10, label %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit, label %3

3:                                                ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i
  %.not.i23.i = icmp ult i64 %.012.i.i, %2
  br i1 %.not.i23.i, label %bb.e, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i

bb.e:                                             ; preds = %3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.012.i26.i = phi i64 [ %.012.i.i, %bb.e ], [ %i.q, %bb.g ] ; 5 uses
  %.0.i27.i = phi ptr [ %i.n, %bb.e ], [ %i.p, %bb.g ] ; 2 uses
  %i.o = load i8, ptr %.0.i27.i, align 1, !tbaa !37
  switch i8 %i.o, label %bb.g [
    i8 32, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 13, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 11, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 10, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 9, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 44, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.q = add i64 %.012.i26.i, 1                   ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i28.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, label %bb.f, !llvm.loop !136

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i: ; preds = %bb.g, %3
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIjEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit unwind label %.loopexit

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i:     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIjEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %.012.i26.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  %.not.i29.i = icmp ult i64 %.012.i26.i, %2
  br i1 %.not.i29.i, label %bb.h, label %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit

bb.h:                                             ; preds = %.noexc11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i26.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.h
  %.012.i31.i = phi i64 [ %.012.i26.i, %bb.h ], [ %i.u, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %.0.i32.i = phi ptr [ %i.r, %bb.h ], [ %i.t, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %i.s = load i8, ptr %.0.i32.i, align 1, !tbaa !37
  switch i8 %i.s, label %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 1
  %i.u = add i64 %.012.i31.i, 1                   ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i34.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit, label %bb.i, !llvm.loop !135

_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit: ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.i, %.noexc11, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %bb.b
  %.1 = phi i64 [ %2, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i ], [ %2, %.noexc11 ], [ %2, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %2, %bb.b ], [ %.012.i31.i, %bb.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit
  %i.v = load i32, ptr %i.a, align 4, !tbaa !38
  store i32 %i.v, ptr %i.h, align 4, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !137
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIjEEvPKcmRmRT_.exit
  %i.x = ptrtoint ptr %i.g to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.193) #34
          to label %.noexc13.a unwind label %.loopexit.split-lp

.noexc13.a:                                       ; preds = %bb.l
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !38
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !38
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.i, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #33
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !137
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !96
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.j
  %i.an = phi ptr [ %i.am, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.g, %bb.j ]
  %i.ao = phi ptr [ %i.al, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.w, %bb.j ]
  %i.ap = phi ptr [ %i.ah, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.i, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not = icmp eq i64 %.1, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !138

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i15 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.p

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %.lcssa = phi ptr [ null, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit ], [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ null, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %i.g to i64
  %i.ar = ptrtoint ptr %i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.as) #33
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJPKcS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !48
  %i.d = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.f, ptr %i.b, align 8, !tbaa !49
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %6, align 8, !tbaa !50
  %i.i = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.i, ptr %i.c, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !37
  store i8 %i.k, ptr %i.j, align 1, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !51
  %i.n = load ptr, ptr %6, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull @.str.26, i64 noundef 9)
          to label %.noexc10 unwind label %bb.n   ; 0 uses

.noexc10:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !48
  %i.r = load ptr, ptr %6, align 8, !tbaa !50     ; 2 uses
  %i.s = load i64, ptr %i.m, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.s, ptr %i.a, align 8, !tbaa !49
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc10
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.n   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i
  store ptr %i.u, ptr %4, align 8, !tbaa !50
  %i.v = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.v, ptr %i.q, align 8, !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc11, %.noexc10
  %i.w = phi ptr [ %i.u, %.noexc11 ], [ %i.q, %.noexc10 ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !37
  store i8 %i.x, ptr %i.w, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !51
  %i.aa = load ptr, ptr %4, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_EEEvRNS4_19basic_ostringstreamIcS7_S8_EERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr %1, ptr noundef %2, ptr noundef align 8 %4, ptr noundef nonnull @.str.28)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ac = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.q
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !37
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !37
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #33
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.al = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.c
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.an = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ap, ptr %7, align 8, !tbaa !48, !alias.scope !145
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !51, !alias.scope !145
  store i8 0, ptr %i.ap, align 8, !tbaa !37, !alias.scope !145
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61, !noalias !145 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !noalias !145 ; 2 uses
  %i.av = icmp ugt ptr %i.as, %i.au
  %.08.i.i.i = select i1 %i.av, ptr %i.as, ptr %i.au ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65, !noalias !145 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJPKcS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_EEEvRKNS_16XmlReaderElementERKT_DpT0_:bb.a
  br i1 %i.cg, label %.body12, label %.body12.sink.split

.body12.sink.split:                               ; preds = %bb.o, %bb.j
  %.sink = phi ptr [ %i.bd, %bb.j ], [ %i.cf, %bb.o ]
  %.pn.ph = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.ce, %bb.o ]
  %i.ch = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #33
  br label %.body12

.body12:                                          ; preds = %.body12.sink.split, %bb.o, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.ce, %bb.o ], [ %.pn.ph, %.body12.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %.body12, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body12 ], [ %i.by, %bb.m ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %eh.lpad-body, %.body ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.b = tail call i64 @llvm.umin.i64(i64 %2, i64 17) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !48, !alias.scope !146
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ne i64 %2, 0
  %or.cond.i.i = and i1 %i.d, %i.e
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.190) #34
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !146
  store i64 %i.b, ptr %i.a, align 8, !tbaa !49, !noalias !146
  %i.f = icmp ugt i64 %2, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !50, !alias.scope !146
  %i.h = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !146
  store i64 %i.h, ptr %i.c, align 8, !tbaa !37, !alias.scope !146
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.b, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !37, !noalias !146
  store i8 %i.j, ptr %i.i, align 1, !tbaa !37
  br label %_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.b, i1 false)
  br label %_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit

_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !146 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !51, !alias.scope !146
  %i.m = load ptr, ptr %0, align 8, !tbaa !50, !alias.scope !146
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !146
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderArrayElt3endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(108) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(80) %i.b)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !98, !nonnull !53, !noundef !53
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_511CTFArrayMgtE, i64 -2) #31 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(9) %i.h, i32 noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderArrayElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, i64 noundef %2, i32 %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %9 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  %.012.i = phi i64 [ %i.k, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.j, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ %1, %bb.a ] ; 2 uses
  %i.i = load i8, ptr %.0.i, align 1, !tbaa !37
  switch i8 %i.i, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.k = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %2
  br i1 %exitcond.not.i, label %._crit_edge, label %.preheader, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit: ; preds = %.preheader, %bb.a
  %.1.i = phi i64 [ 0, %bb.a ], [ %.012.i, %.preheader ] ; 2 uses
  %.not106 = icmp eq i64 %.1.i, %2
  br i1 %.not106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bm
  %.0107 = phi i64 [ %.1.i, %.lr.ph ], [ %.1, %bb.bm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !149
  %.not.i.i = icmp ult i64 %.0107, %2
  br i1 %.not.i.i, label %bb.c, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.0107
  br label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %bb.c
  %.012.i.i = phi i64 [ %.0107, %bb.c ], [ %i.as, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 8 uses
  %.0.i.i = phi ptr [ %i.ap, %bb.c ], [ %i.ar, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.aq = load i8, ptr %.0.i.i, align 1, !tbaa !37
  switch i8 %i.aq, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.as = add i64 %.012.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.d, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i: ; preds = %bb.d
  %.not.i29 = icmp eq i64 %.012.i.i, %2
  br i1 %.not.i29, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %12

12:                                               ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i
  %.not.i23.i = icmp ult i64 %.012.i.i, %2
  br i1 %.not.i23.i, label %bb.e, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i

bb.e:                                             ; preds = %12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.012.i26.i = phi i64 [ %.012.i.i, %bb.e ], [ %i.aw, %bb.g ] ; 5 uses
  %.0.i27.i = phi ptr [ %i.at, %bb.e ], [ %i.av, %bb.g ] ; 2 uses
  %i.au = load i8, ptr %.0.i27.i, align 1, !tbaa !37
  switch i8 %i.au, label %bb.g [
    i8 32, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 13, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 11, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 10, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 9, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 44, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.aw = add i64 %.012.i26.i, 1                  ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %i.aw, %2
  br i1 %exitcond.not.i28.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, label %bb.f, !llvm.loop !136

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i: ; preds = %bb.g, %12
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit unwind label %bb.j

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i:     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %.012.i26.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc30 unwind label %bb.j

.noexc30:                                         ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  %.not.i29.i = icmp ult i64 %.012.i26.i, %2
  br i1 %.not.i29.i, label %bb.h, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

bb.h:                                             ; preds = %.noexc30
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i26.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.h
  %.012.i31.i = phi i64 [ %.012.i26.i, %bb.h ], [ %i.ba, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %.0.i32.i = phi ptr [ %i.ax, %bb.h ], [ %i.az, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %i.ay = load i8, ptr %.0.i32.i, align 1, !tbaa !37
  switch i8 %i.ay, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 1
  %i.ba = add i64 %.012.i31.i, 1                  ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.ba, %2
  br i1 %exitcond.not.i34.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.i, !llvm.loop !135

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.bc = extractvalue { ptr, i32 } %i.bb, 1
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #31
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bf = extractvalue { ptr, i32 } %i.bb, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #31 ; 0 uses
  invoke void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %1, i64 noundef %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %0, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(108) %0)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA17_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_SA_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 %7, ptr noundef nonnull @.str.36, ptr noundef %i.bk, ptr noundef nonnull @.str.28)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.l
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !37
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @__cxa_end_catch()
  br label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit: ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.i, %.noexc30, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i64 [ %.012.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i ], [ %2, %.noexc30 ], [ %2, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %2, %bb.b ], [ %.012.i31.i, %bb.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.bp = load i32, ptr %i.m, align 8, !tbaa !87  ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.h, %i.bq
  br i1 %i.br, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  %i.bt = add i32 %i.bp, 1
  store i32 %i.bt, ptr %i.m, align 8, !tbaa !87
  %i.bu = load double, ptr %i.b, align 8, !tbaa !149
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef %i.bq, double noundef %i.bu)
  br label %bb.bm

bb.p:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.l
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.q
  %i.cc = load i64, ptr %i.l, align 8, !tbaa !37
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.p
  %.pn = phi { ptr, i32 } [ %i.by, %bb.p ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.bz, %bb.q ]
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.bn

bb.r:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !98  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %9, ptr noundef nonnull align 8 dereferenceable(104) %i.ce)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %9, align 8, !tbaa !151   ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(168) %i.ci)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cn = icmp eq i32 %i.cm, 10
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !35  ; 8 uses
  %.not.i.i34 = icmp eq ptr %i.co, null
  br i1 %.not.i.i34, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cp, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !33
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #31, !inline_history !154
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #31, !inline_history !154
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.cs, %bb.x ], [ %i.dc, %bb.y ]
  %i.dd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dd, label %bb.z, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !39

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br i1 %i.cn, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.invoke, label %bb.ae

bb.aa:                                            ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn23 = phi { ptr, i32 } [ %i.df, %bb.ab ], [ %i.de, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.invoke, %.invoke156, %_ZNSolsEm.exit53.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61.invoke, %.invoke, %_ZNSolsEm.exit59, %bb.au, %_ZNSolsEm.exit49, %bb.ap, %_ZNSolsEm.exit45, %bb.ao, %bb.at, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %bb.an
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.dh = load ptr, ptr %i.ce, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %10, ptr noundef nonnull align 8 dereferenceable(104) %i.ce)
          to label %bb.af unwind label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.dk = load ptr, ptr %10, align 8, !tbaa !151  ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(168) %i.dk)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.dp = icmp eq i32 %i.do, 11
  %i.dq = load ptr, ptr %i.p, align 8, !tbaa !35  ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dr, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !33
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #31, !inline_history !154
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #31, !inline_history !154
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

bb.aj:                                            ; preds = %bb.ah
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i40 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i40, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.al:                                            ; preds = %bb.aj
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i42 = phi i32 [ %i.du, %bb.ak ], [ %i.ee, %bb.al ]
  %i.ef = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.ef, label %bb.am, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, !prof !39

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43: ; preds = %bb.ag, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.am
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_520CTFReaderIndexMapElt3endEv:bb.a
  %i.cv = load ptr, ptr %3, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 0, ptr %i.cw, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cl
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.cz = load i64, ptr %i.cl, align 8, !tbaa !37
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.db = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bt
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dd = load i64, ptr %i.bt, align 8, !tbaa !37
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.df = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.df, ptr %2, align 8, !tbaa !12
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %2, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dk, align 8, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !50 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !37
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dk, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dr) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ds) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.thread

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.u, %bb.t, %bb.r
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %.noexc.i, %bb.y
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.ag:                                            ; preds = %bb.ac
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.cl
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.ag
  %i.dy = load i64, ptr %i.cl, align 8, !tbaa !37
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.af
  %.pn = phi { ptr, i32 } [ %i.du, %bb.af ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.dv, %bb.ag ] ; 2 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bt
  br i1 %i.eb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.w
  %.sink = phi ptr [ %i.ch, %bb.w ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  %i.ec = load i64, ptr %i.bt, align 8, !tbaa !37
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ed) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.ae
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.dt, %bb.ae ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.ai

.thread:                                          ; preds = %bb.b, %bb.c, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.p, %bb.a
  ret void

bb.ai:                                            ; preds = %bb.ah, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ah ], [ %i.au, %bb.q ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderIndexMapElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, i64 noundef %2, i32 %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.e = tail call noundef i64 @_ZNK16OpenColorIO_v2_512IndexMapping12getDimensionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  %.012.i = phi i64 [ %i.h, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ %1, %bb.a ] ; 2 uses
  %i.f = load i8, ptr %.0.i, align 1, !tbaa !37
  switch i8 %i.f, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.h = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %2
  br i1 %exitcond.not.i, label %._crit_edge, label %.preheader, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit: ; preds = %.preheader, %bb.a
  %.1.i = phi i64 [ 0, %bb.a ], [ %.012.i, %.preheader ] ; 2 uses
  %.not42 = icmp eq i64 %.1.i, %2
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.t = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ao
  %.043 = phi i64 [ %.1.i, %.lr.ph ], [ %.2, %bb.ao ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !226
  %.not.i.i = icmp ult i64 %.043, %2
  br i1 %.not.i.i, label %bb.c, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.043
  br label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %bb.c
  %.012.i.i = phi i64 [ %.043, %bb.c ], [ %i.ad, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 8 uses
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.ac, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.ab = load i8, ptr %.0.i.i, align 1, !tbaa !37
  switch i8 %i.ab, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.ad = add i64 %.012.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ad, %2
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit, label %bb.d, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i: ; preds = %bb.d
  %.not.i18 = icmp eq i64 %.012.i.i, %2
  br i1 %.not.i18, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.010.i.i = phi i64 [ %.012.i.i, %bb.e ], [ %i.ah, %bb.g ] ; 5 uses
  %.0.i52.i = phi ptr [ %i.ae, %bb.e ], [ %i.ag, %bb.g ] ; 2 uses
  %i.af = load i8, ptr %.0.i52.i, align 1, !tbaa !37
  switch i8 %i.af, label %bb.g [
    i8 32, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
    i8 13, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
    i8 11, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
    i8 10, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
    i8 9, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
    i8 64, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i52.i, i64 1
  %i.ah = add i64 %.010.i.i, 1                    ; 2 uses
  %.not14.i.i = icmp ult i64 %i.ah, %2
  br i1 %.not14.i.i, label %bb.f, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.thread.i, !llvm.loop !228

_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i: ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ai = icmp eq i64 %.010.i.i, %2
  br i1 %i.ai, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.thread.i, label %.preheader.preheader.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.thread.i: ; preds = %bb.g, %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.thread.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.171, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %1, i64 noundef %2)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ak = load ptr, ptr %7, align 8, !tbaa !50
  %i.al = load i64, ptr %i.i, align 8, !tbaa !51
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ak, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.h
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.40, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ao = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !37
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.at = load ptr, ptr %8, align 8, !tbaa !50
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef %i.at)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #34
          to label %bb.v unwind label %bb.n

bb.k:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.p

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 2 uses
  %i.ax = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.j
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %bb.m
  %i.az = load i64, ptr %i.j, align 8, !tbaa !37
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %.0.i19 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 4 uses
  %i.bd = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.k
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !37
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.0.i19, label %bb.o, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.0.i19, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i
  %.pn4980.i = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i ]
  call void @__cxa_free_exception(ptr %i.as) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, %bb.k
  %.pn49.pn.i = phi { ptr, i32 } [ %.pn4980.i, %bb.o ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i ], [ %i.au, %bb.k ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.body

.preheader.preheader.i.i:                         ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.i
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIfEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %.010.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc20 unwind label %bb.w

.noexc20:                                         ; preds = %.preheader.preheader.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.noexc20
  %.013.i.i = phi i64 [ %i.bk, %.critedge.i.i ], [ %.010.i.i, %.noexc20 ] ; 8 uses
  %.0.i60.i = phi ptr [ %i.bj, %.critedge.i.i ], [ %i.bh, %.noexc20 ] ; 2 uses
  %i.bi = load i8, ptr %.0.i60.i, align 1, !tbaa !37
  switch i8 %i.bi, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_127FindNextTokenStart_IndexMapEPKcmm.exit.i [
    i8 32, label %.critedge.i.i
    i8 13, label %.critedge.i.i
    i8 11, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 9, label %.critedge.i.i
    i8 12, label %.critedge.i.i
    i8 64, label %.critedge.i.i
    i8 44, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i60.i, i64 1
  %i.bk = add i64 %.013.i.i, 1                    ; 2 uses
  %.not.i61.i = icmp ult i64 %i.bk, %2
  br i1 %.not.i61.i, label %.preheader.i.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, !llvm.loop !229

_ZN16OpenColorIO_v2_512_GLOBAL__N_127FindNextTokenStart_IndexMapEPKcmm.exit.i: ; preds = %.preheader.i.i
  %.not.i62.i = icmp ult i64 %.013.i.i, %2
  br i1 %.not.i62.i, label %bb.q, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i

bb.q:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_127FindNextTokenStart_IndexMapEPKcmm.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.013.i.i
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.012.i65.i = phi i64 [ %.013.i.i, %bb.q ], [ %i.bo, %bb.s ] ; 5 uses
  %.0.i66.i = phi ptr [ %i.bl, %bb.q ], [ %i.bn, %bb.s ] ; 2 uses
  %i.bm = load i8, ptr %.0.i66.i, align 1, !tbaa !37
  switch i8 %i.bm, label %bb.s [
    i8 32, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 13, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 11, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 10, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 9, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 44, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i66.i, i64 1
  %i.bo = add i64 %.012.i65.i, 1                  ; 2 uses
  %exitcond.not.i67.i = icmp eq i64 %i.bo, %2
  br i1 %exitcond.not.i67.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, label %bb.r, !llvm.loop !136

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i: ; preds = %.critedge.i.i, %bb.s, %_ZN16OpenColorIO_v2_512_GLOBAL__N_127FindNextTokenStart_IndexMapEPKcmm.exit.i
  %.3 = phi i64 [ %.013.i.i, %bb.s ], [ %.013.i.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_127FindNextTokenStart_IndexMapEPKcmm.exit.i ], [ %2, %.critedge.i.i ] ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIfEEvPKcmmRT_(ptr noundef %1, i64 noundef %.3, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit unwind label %bb.w

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i:     ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIfEEvPKcmmRT_(ptr noundef %1, i64 noundef %.013.i.i, i64 noundef %.012.i65.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc22 unwind label %bb.w

.noexc22:                                         ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  %.not.i68.i = icmp ult i64 %.012.i65.i, %2
  br i1 %.not.i68.i, label %bb.t, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit

bb.t:                                             ; preds = %.noexc22
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i65.i
  br label %bb.u

bb.u:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i, %bb.t
  %.012.i70.i = phi i64 [ %.012.i65.i, %bb.t ], [ %i.bs, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i ] ; 2 uses
  %.0.i71.i = phi ptr [ %i.bp, %bb.t ], [ %i.br, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i ] ; 2 uses
  %i.bq = load i8, ptr %.0.i71.i, align 1, !tbaa !37
  switch i8 %i.bq, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i: ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i71.i, i64 1
  %i.bs = add i64 %.012.i70.i, 1                  ; 2 uses
  %exitcond.not.i73.i = icmp eq i64 %i.bs, %2
  br i1 %exitcond.not.i73.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit, label %bb.u, !llvm.loop !135

bb.v:                                             ; preds = %bb.j
  unreachable

bb.w:                                             ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %.preheader.preheader.i.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.thread.i
  %.1 = phi i64 [ %.012.i.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindIndexDelimEPKcmm.exit.thread.i ], [ %.3, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %.013.i.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i ], [ %.012.i.i, %.preheader.preheader.i.i ]
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %.body

.body:                                            ; preds = %bb.p, %bb.w
  %.4 = phi i64 [ %.012.i.i, %bb.p ], [ %.1, %bb.w ]
  %eh.lpad-body = phi { ptr, i32 } [ %.pn49.pn.i, %bb.p ], [ %i.bt, %bb.w ] ; 3 uses
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.bv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #31
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.body
  %i.bx = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #31 ; 0 uses
  invoke void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %1, i64 noundef %2)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr %0, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(108) %0)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA17_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_SA_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 %9, ptr noundef nonnull @.str.47, ptr noundef %i.cc, ptr noundef nonnull @.str.48)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.l
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.cf = load i64, ptr %i.l, align 8, !tbaa !37
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @__cxa_end_catch()
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit: ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i, %bb.u, %.noexc22, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i64 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i ], [ %2, %.noexc22 ], [ %2, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %2, %bb.b ], [ %.012.i70.i, %bb.u ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i72.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.ch = load i32, ptr %i.m, align 8, !tbaa !189 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = icmp ugt i64 %i.e, %i.ci
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  br i1 %i.cj, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit
  %i.cl = add i32 %i.ch, 1
  store i32 %i.cl, ptr %i.m, align 8, !tbaa !189
  %i.cm = load float, ptr %i.a, align 4, !tbaa !226
  %i.cn = load float, ptr %i.b, align 4, !tbaa !226
  call void @_ZN16OpenColorIO_v2_512IndexMapping7setPairEmff(ptr noundef nonnull align 8 dereferenceable(88) %i.ck, i64 noundef %i.ci, float noundef %i.cm, float noundef %i.cn)
  br label %bb.ao

bb.ac:                                            ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.ad:                                            ; preds = %bb.z, %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.l
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.ad
  %i.cs = load i64, ptr %i.l, align 8, !tbaa !37
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.co, %bb.ac ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.cp, %bb.ad ]
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.ap

bb.ae:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GetNextIndexPairEPKcmRmRfS4_.exit
  %i.cu = call noundef i64 @_ZNK16OpenColorIO_v2_512IndexMapping12getDimensionEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ck)
  %i.cv = load ptr, ptr %0, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(108) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull @.str.38, i64 noundef 9)
          to label %.noexc.i unwind label %bb.al  ; 0 uses

.noexc.i:                                         ; preds = %bb.ae
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %4, i64 noundef %i.cu)
          to label %.noexc11.i unwind label %bb.al ; 0 uses

.noexc11.i:                                       ; preds = %.noexc.i
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull @.str.49, i64 noundef 36)
          to label %.noexc12.i unwind label %bb.al ; 0 uses

.noexc12.i:                                       ; preds = %.noexc11.i
  %.not.i.i.i6.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i6.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc12.i
  %i.dc = load ptr, ptr %4, align 8, !tbaa !12
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds i8, ptr %4, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !162
  %i.di = or i32 %i.dh, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.df, i32 noundef %i.di)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamImJPKcS3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i.i unwind label %bb.al

bb.ag:                                            ; preds = %.noexc12.i
  %i.dj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cy) #31
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.cy, i64 noundef %i.dj)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamImJPKcS3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i.i unwind label %bb.al ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamImJPKcS3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i.i: ; preds = %bb.ag, %bb.af
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull @.str.48, i64 noundef 11)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA10_cJmPKcS4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.al ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA10_cJmPKcS4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamImJPKcS3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  store ptr %i.n, ptr %5, align 8, !tbaa !48, !alias.scope !236
  store i64 0, ptr %i.o, align 8, !tbaa !51, !alias.scope !236
  store i8 0, ptr %i.n, align 8, !tbaa !37, !alias.scope !236
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !61, !noalias !236 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.dm, null
  %i.dn = load ptr, ptr %i.q, align 8, !noalias !236 ; 2 uses
  %i.do = icmp ugt ptr %i.dm, %i.dn
  %.08.i.i.i.i = select i1 %i.do, ptr %i.dm, ptr %i.dn ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA10_cJmPKcS4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i
  %i.dp = load ptr, ptr %i.r, align 8, !tbaa !65, !noalias !236 ; 2 uses
  %i.dq = ptrtoint ptr %.08.i.i.i.i to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.dp, i64 noundef %i.ds)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %5, align 8, !tbaa !50, !alias.scope !236 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.n
  br i1 %i.dw, label %.body.i, label %.body.i.sink.split

bb.aj:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA10_cJmPKcS4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ai

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.aj, %bb.ah
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.dx = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.n
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.ak
  %i.dz = load i64, ptr %i.n, align 8, !tbaa !37
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  store ptr %i.t, ptr %4, align 8, !tbaa !12
  %i.eb = load i64, ptr %i.v, align 8
  %i.ec = getelementptr inbounds i8, ptr %4, i64 %i.eb
  store ptr %i.u, ptr %i.ec, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8, !tbaa !12
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !50  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.x
  br i1 %i.ee, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJmPKcS4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28
  %i.ef = load i64, ptr %i.x, align 8, !tbaa !37
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #33
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJmPKcS4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit

bb.al:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamImJPKcS3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i.i, %bb.ag, %bb.af, %.noexc11.i, %.noexc.i, %bb.ae
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.n
  br i1 %i.ek, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.am, %bb.ai
  %.sink = phi ptr [ %i.dv, %bb.ai ], [ %i.ej, %bb.am ]
  %.pn.i26.ph = phi { ptr, i32 } [ %i.du, %bb.ai ], [ %i.ei, %bb.am ]
  %i.el = load i64, ptr %i.n, align 8, !tbaa !37
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.em) #33
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.am, %bb.ai
  %.pn.i26 = phi { ptr, i32 } [ %i.du, %bb.ai ], [ %i.ei, %bb.am ], [ %.pn.i26.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.an

common.resume:                                    ; preds = %.loopexit, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.an ], [ %.merged, %.loopexit ]
  resume { ptr, i32 } %common.resume.op

bb.an:                                            ; preds = %.body.i, %bb.al
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i26, %.body.i ], [ %i.eh, %bb.al ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJmPKcS4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8, !tbaa !12
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.z) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJmPKcS4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not = icmp eq i64 %.2, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !237

.loopexit:                                        ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %common.resume
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_525CTFReaderFixedFunctionElt5startEPPKc:bb.a
bb.v:                                             ; preds = %_ZN16OpenColorIO_v2_519FixedFunctionOpData9setParamsERKSt6vectorIdSaIdEE.exit
  %i.bx = load ptr, ptr %i.d, align 16, !tbaa !532
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit55

_ZNSt6vectorIdSaIdEED2Ev.exit55:                  ; preds = %_ZN16OpenColorIO_v2_519FixedFunctionOpData9setParamsERKSt6vectorIdSaIdEE.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ab

bb.w:                                             ; preds = %bb.r, %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.x:                                             ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.c
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.x
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !37
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.w
  %.pn41 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.cc, %bb.x ]
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.af

bb.z:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.z
  %.merged47 = phi { ptr, i32 } [ %i.ci, %bb.z ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.ch, %bb.y ], [ %i.bf, %bb.p ]
  %i.cj = load ptr, ptr %4, align 16, !tbaa !524  ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIdSaIdEED2Ev.exit60, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.ck = load ptr, ptr %i.d, align 16, !tbaa !532
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit60

_ZNSt6vectorIdSaIdEED2Ev.exit60:                  ; preds = %.loopexit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit67

bb.ab:                                            ; preds = %bb.j, %_ZNSt6vectorIdSaIdEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = add i32 %.03284, 2                      ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !568

.thread:                                          ; preds = %bb.c
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store i32 %i.q, ptr %i.cs, align 8, !tbaa !504
  %i.ct = add i32 %.03284, 2                      ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cu ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !45 ; 2 uses
  %.not110 = icmp eq ptr %i.cw, null
  br i1 %.not110, label %._crit_edge.thread, label %.outer, !llvm.loop !568

._crit_edge:                                      ; preds = %bb.ab
  br i1 %.03383.ph, label %._crit_edge.thread, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cx, ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 45, ptr %i.a, align 8, !tbaa !49
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ad    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cy, ptr %7, align 8, !tbaa !50
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !49  ; 3 uses
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.cy, ptr noundef nonnull align 1 dereferenceable(45) @.str.74, i64 45, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  store i8 0, ptr %i.db, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %.noexc
  %i.dc = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cx
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ac
  %i.de = load i64, ptr %i.cx, align 8, !tbaa !37
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %._crit_edge.thread

bb.ad:                                            ; preds = %.noexc.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.ae:                                            ; preds = %.noexc
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cx
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ae
  %i.dk = load i64, ptr %i.cx, align 8, !tbaa !37
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.ad ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.dh, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit67

._crit_edge.thread:                               ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %._crit_edge
  ret void

.loopexit67:                                      ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt6vectorIdSaIdEED2Ev.exit60
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.merged47, %_ZNSt6vectorIdSaIdEED2Ev.exit60 ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %.merged

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510GetNumbersIdEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.125") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  %.012.i = phi i64 [ %i.d, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.c, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.0.i, align 1, !tbaa !37
  switch i8 %i.b, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.d = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %2
  br i1 %exitcond.not.i, label %._crit_edge, label %.preheader, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit: ; preds = %.preheader, %bb.a
  %.1.i = phi i64 [ 0, %bb.a ], [ %.012.i, %.preheader ] ; 2 uses
  %.not22 = icmp eq i64 %.1.i, %2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.023 = phi i64 [ %.1.i, %.lr.ph ], [ %.1, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !149
  %.not.i.i = icmp ult i64 %.023, %2
  br i1 %.not.i.i, label %bb.c, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  br label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %bb.c
  %.012.i.i = phi i64 [ %.023, %bb.c ], [ %i.m, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 7 uses
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.l, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !37
  switch i8 %i.k, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.m = add i64 %.012.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %2
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.d, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i: ; preds = %bb.d
  %.not.i10 = icmp eq i64 %.012.i.i, %2
  br i1 %.not.i10, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %3

3:                                                ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i
  %.not.i23.i = icmp ult i64 %.012.i.i, %2
  br i1 %.not.i23.i, label %bb.e, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i

bb.e:                                             ; preds = %3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.012.i26.i = phi i64 [ %.012.i.i, %bb.e ], [ %i.q, %bb.g ] ; 5 uses
  %.0.i27.i = phi ptr [ %i.n, %bb.e ], [ %i.p, %bb.g ] ; 2 uses
  %i.o = load i8, ptr %.0.i27.i, align 1, !tbaa !37
  switch i8 %i.o, label %bb.g [
    i8 32, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 13, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 11, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 10, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 9, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 44, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.q = add i64 %.012.i26.i, 1                   ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i28.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, label %bb.f, !llvm.loop !136

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i: ; preds = %bb.g, %3
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit unwind label %.loopexit

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i:     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %.012.i26.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  %.not.i29.i = icmp ult i64 %.012.i26.i, %2
  br i1 %.not.i29.i, label %bb.h, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

bb.h:                                             ; preds = %.noexc11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i26.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.h
  %.012.i31.i = phi i64 [ %.012.i26.i, %bb.h ], [ %i.u, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %.0.i32.i = phi ptr [ %i.r, %bb.h ], [ %i.t, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %i.s = load i8, ptr %.0.i32.i, align 1, !tbaa !37
  switch i8 %i.s, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 1
  %i.u = add i64 %.012.i31.i, 1                   ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i34.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.i, !llvm.loop !135

_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit: ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.i, %.noexc11, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %bb.b
  %.1 = phi i64 [ %2, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i ], [ %2, %.noexc11 ], [ %2, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %2, %bb.b ], [ %.012.i31.i, %bb.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.v = load double, ptr %i.a, align 8, !tbaa !149
  store double %i.v, ptr %i.h, align 8, !tbaa !149
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !523
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.x = ptrtoint ptr %i.g to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.l, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.193) #34
          to label %.noexc13.a unwind label %.loopexit.split-lp

.noexc13.a:                                       ; preds = %bb.l
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load double, ptr %i.a, align 8, !tbaa !149
  store double %i.aj, ptr %i.ai, align 8, !tbaa !149
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.i, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #33
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !523
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !532
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.j
  %i.an = phi ptr [ %i.am, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.g, %bb.j ]
  %i.ao = phi ptr [ %i.al, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.w, %bb.j ]
  %i.ap = phi ptr [ %i.ah, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.i, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not = icmp eq i64 %.1, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !569

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i15 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.p

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %.lcssa = phi ptr [ null, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ null, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %i.g to i64
  %i.ar = ptrtoint ptr %i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.as) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_525CTFReaderFixedFunctionElt18isOpParameterValidEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L11ATTR_PARAMSE, ptr noundef %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %i.d, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.f = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ %i.e, %bb.e ]
  ret i1 %i.f

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_525CTFReaderFixedFunctionElt3endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !496  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_525CTFReaderFixedFunctionElt5getOpEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !78
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !38
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !38
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderFunctionEltC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_520CTFReaderFunctionEltE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  store ptr null, ptr %i.a, align 8, !tbaa !496, !alias.scope !570
  %i.b = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #32
          to label %.noexc unwind label %bb.c     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !28, !noalias !570
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !33, !noalias !570
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !12, !noalias !570
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 0)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !570

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 216) #33, !noalias !570
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.g, align 8, !tbaa !35, !alias.scope !570
  store ptr %i.e, ptr %i.a, align 8, !tbaa !499, !alias.scope !570
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderFunctionEltD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_520CTFReaderFunctionEltE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !33
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !500
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !500
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_530CTFReaderGradingCurvePointsElt3endEv:bb.a

bb.q:                                             ; preds = %.lr.ph
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.pn18 = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %i.bh, %bb.o ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_530CTFReaderGradingCurvePointsElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i64 noundef %2, i32 %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.162", align 8   ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZN16OpenColorIO_v2_510GetNumbersIfEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.162") align 8 %4, ptr noundef %1, i64 noundef %2)
          to label %_ZNSt6vectorIfSaIfEEaSEOS1_.exit unwind label %bb.b

_ZNSt6vectorIfSaIfEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !992
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !999
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !995
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.f = ptrtoint ptr %i.e to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.h = extractvalue { ptr, i32 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.i = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #31
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNSt6vectorIfSaIfEED2Ev.exit24

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i32 } %i.g, 0
  %i.l = call ptr @__cxa_begin_catch(ptr %i.k) #31 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %1, i64 noundef %2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #31
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJPKcS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.p, ptr noundef align 8 %5, ptr noundef %i.t, ptr noundef nonnull @.str.126)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !37
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIfSaIfEEaSEOS1_.exit
  %.sroa.9.0 = phi ptr [ %i.c, %_ZNSt6vectorIfSaIfEEaSEOS1_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.11.0 = phi i64 [ %i.f, %_ZNSt6vectorIfSaIfEEaSEOS1_.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.026.0 = phi ptr [ %i.a, %_ZNSt6vectorIfSaIfEEaSEOS1_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1010
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !1010 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.ag, ptr %.sroa.026.0, ptr %.sroa.9.0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i18 = icmp eq ptr %.sroa.026.0, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIfSaIfEED2Ev.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = ptrtoint ptr %.sroa.026.0 to i64
  %i.ai = sub i64 %.sroa.11.0, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.026.0, i64 noundef %i.ai) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit19

_ZNSt6vectorIfSaIfEED2Ev.exit19:                  ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.k:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !37
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ak, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit24 unwind label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.sroa.026.0, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIfSaIfEED2Ev.exit24, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = ptrtoint ptr %.sroa.026.0 to i64
  %i.as = sub i64 %.sroa.11.0, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.026.0, i64 noundef %i.as) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit24

_ZNSt6vectorIfSaIfEED2Ev.exit24:                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.l, %bb.m
  %.merged36 = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.aq, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %.merged36

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510GetNumbersIfEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.162") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  %.012.i = phi i64 [ %i.d, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.c, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.0.i, align 1, !tbaa !37
  switch i8 %i.b, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.d = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %2
  br i1 %exitcond.not.i, label %._crit_edge, label %.preheader, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit: ; preds = %.preheader, %bb.a
  %.1.i = phi i64 [ 0, %bb.a ], [ %.012.i, %.preheader ] ; 2 uses
  %.not22 = icmp eq i64 %.1.i, %2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 3 uses
  %.023 = phi i64 [ %.1.i, %.lr.ph ], [ %.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !226
  %.not.i.i = icmp ult i64 %.023, %2
  br i1 %.not.i.i, label %bb.c, label %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  br label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %bb.c
  %.012.i.i = phi i64 [ %.023, %bb.c ], [ %i.m, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 7 uses
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.l, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !37
  switch i8 %i.k, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.m = add i64 %.012.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %2
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit, label %bb.d, !llvm.loop !135

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i: ; preds = %bb.d
  %.not.i10 = icmp eq i64 %.012.i.i, %2
  br i1 %.not.i10, label %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit, label %3

3:                                                ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i
  %.not.i23.i = icmp ult i64 %.012.i.i, %2
  br i1 %.not.i23.i, label %bb.e, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i

bb.e:                                             ; preds = %3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.012.i26.i = phi i64 [ %.012.i.i, %bb.e ], [ %i.q, %bb.g ] ; 5 uses
  %.0.i27.i = phi ptr [ %i.n, %bb.e ], [ %i.p, %bb.g ] ; 2 uses
  %i.o = load i8, ptr %.0.i27.i, align 1, !tbaa !37
  switch i8 %i.o, label %bb.g [
    i8 32, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 13, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 11, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 10, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 9, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 44, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.q = add i64 %.012.i26.i, 1                   ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i28.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, label %bb.f, !llvm.loop !136

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i: ; preds = %bb.g, %3
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIfEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit unwind label %.loopexit

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i:     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIfEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %.012.i26.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  %.not.i29.i = icmp ult i64 %.012.i26.i, %2
  br i1 %.not.i29.i, label %bb.h, label %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit

bb.h:                                             ; preds = %.noexc11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i26.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.h
  %.012.i31.i = phi i64 [ %.012.i26.i, %bb.h ], [ %i.u, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %.0.i32.i = phi ptr [ %i.r, %bb.h ], [ %i.t, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %i.s = load i8, ptr %.0.i32.i, align 1, !tbaa !37
  switch i8 %i.s, label %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 1
  %i.u = add i64 %.012.i31.i, 1                   ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i34.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit, label %bb.i, !llvm.loop !135

_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit: ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.i, %.noexc11, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %bb.b
  %.1 = phi i64 [ %2, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i ], [ %2, %.noexc11 ], [ %2, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %2, %bb.b ], [ %.012.i31.i, %bb.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit
  %i.v = load float, ptr %i.a, align 4, !tbaa !226
  store float %i.v, ptr %i.h, align 4, !tbaa !226
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !999
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIfEEvPKcmRmRT_.exit
  %i.x = ptrtoint ptr %i.g to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.l, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.193) #34
          to label %.noexc13.a unwind label %.loopexit.split-lp

.noexc13.a:                                       ; preds = %bb.l
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load float, ptr %i.a, align 4, !tbaa !226
  store float %i.aj, ptr %i.ai, align 4, !tbaa !226
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.i, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #33
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !999
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !995
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.j
  %i.an = phi ptr [ %i.am, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.g, %bb.j ]
  %i.ao = phi ptr [ %i.al, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.w, %bb.j ]
  %i.ap = phi ptr [ %i.ah, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.i, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not = icmp eq i64 %.1, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1011

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i15 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.p

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %.lcssa = phi ptr [ null, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit ], [ %i.ap, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ null, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %i.g to i64
  %i.ar = ptrtoint ptr %i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.as) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_530CTFReaderGradingCurveSlopesEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly align 8 captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !78
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !38
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !38
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !78
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !78
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !38
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !38
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !33
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !79
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !79
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !39

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_530CTFReaderGradingCurveSlopesEltE, i64 16), ptr %0, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_530CTFReaderGradingCurveSlopesEltD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_530CTFReaderGradingCurveSlopesEltE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !992  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !995
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !33
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31, !inline_history !89
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31, !inline_history !89
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
end_hunk_4
