Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  %i.afc = load i64, ptr %i.aes, align 8, !tbaa !46
  %i.afd = add i64 %i.afc, 1
  call void @_ZdlPvm(ptr noundef %i.afa, i64 noundef %i.afd) #38
  br label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_S8_S8_EEEvPKcDpOT_.exit

bb.gb:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_S8_S8_EEES6_PKcDpOT_.exit.i
  %i.afe = landingpad { ptr, i32 }
          cleanup
  %i.aff = load ptr, ptr %18, align 8, !tbaa !48  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.aes
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.gb
  %i.afh = load i64, ptr %i.aes, align 8, !tbaa !46
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %.body1101

_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_S8_S8_EEEvPKcDpOT_.exit: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1099
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %.thread3129

bb.gc:                                            ; preds = %_ZN4pstd8optionalIN4pbrt7Bounds2IiEEEdeEv.exit, %_ZN4pstd8optionalIN4pbrt6Point2IiEEEdeEv.exit
  %.sroa.0.0.extract.trunc.i.i1106 = trunc i64 %spec.select to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i1107 = lshr i64 %spec.select, 32
  %.sroa.3.0.extract.trunc.i.i1108 = trunc nuw i64 %.sroa.3.0.extract.shift.i.i1107 to i32 ; 2 uses
  %.sroa.speculated4.i.i1109 = call i32 @llvm.smin.i32(i32 %.sroa.0.0.extract.trunc.i.i1106, i32 0)
  %.sroa.speculated.i.i1110 = call i32 @llvm.smin.i32(i32 %.sroa.3.0.extract.trunc.i.i1108, i32 0)
  %.sroa.speculated4.i14.i1115 = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i1106, i32 0)
  %.sroa.speculated.i15.i1116 = call i32 @llvm.smax.i32(i32 %.sroa.3.0.extract.trunc.i.i1108, i32 0)
  %.not.i1121 = icmp sge i32 %.sroa.speculated4.i.i, %.sroa.speculated4.i.i1109
  %.not8.i1122 = icmp samesign ule i32 %.sroa.speculated4.i14.i, %.sroa.speculated4.i14.i1115
  %or.cond3163.not3182 = and i1 %.not.i1121, %.not8.i1122
  %.not9.i1123 = icmp sge i32 %.sroa.speculated.i.i, %.sroa.speculated.i.i1110
  %i.afj = icmp samesign ule i32 %.sroa.speculated.i15.i, %.sroa.speculated.i15.i1116
  %i.afk = and i1 %.not9.i1123, %i.afj
  %or.cond3168 = select i1 %or.cond3163.not3182, i1 %i.afk, i1 false
  br i1 %or.cond3168, label %_ZN4pstd8optionalIN4pbrt6Point2IiEEE5valueEv.exit.i.i1134, label %_ZN4pbrt6InsideIiEEbRKNS_7Bounds2IT_EES5_.exit1124.thread

_ZN4pbrt6InsideIiEEbRKNS_7Bounds2IT_EES5_.exit1124.thread: ; preds = %bb.gc
  %i.afl = getelementptr inbounds nuw i8, ptr %76, i64 12
  %i.afm = getelementptr inbounds nuw i8, ptr %76, i64 4
  %i.afn = getelementptr inbounds nuw i8, ptr %77, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.afo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  store ptr %i.afo, ptr %17, align 8, !tbaa !42, !alias.scope !1074
  %i.afp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.afp, align 8, !tbaa !45, !alias.scope !1074
  store i8 0, ptr %i.afo, align 8, !tbaa !46, !alias.scope !1074
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRiS9_S9_S9_S9_S9_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %17, ptr noundef nonnull @.str.193, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(4) %76, ptr noundef nonnull align 4 dereferenceable(4) %i.afm, ptr noundef nonnull align 4 dereferenceable(4) %i.adx, ptr noundef nonnull align 4 dereferenceable(4) %i.afl, ptr noundef nonnull align 4 dereferenceable(4) %77, ptr noundef nonnull align 4 dereferenceable(4) %i.afn)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEES6_PKcDpOT_.exit.i unwind label %bb.gd

bb.gd:                                            ; preds = %_ZN4pbrt6InsideIiEEbRKNS_7Bounds2IT_EES5_.exit1124.thread
  %i.afq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afr = load ptr, ptr %17, align 8, !tbaa !48, !alias.scope !1074 ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.afo
  br i1 %i.afs, label %.body1101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1125: ; preds = %bb.gd
  %i.aft = load i64, ptr %i.afo, align 8, !tbaa !46, !alias.scope !1074
  %i.afu = add i64 %i.aft, 1
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afu) #38
  br label %.body1101

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEES6_PKcDpOT_.exit.i: ; preds = %_ZN4pbrt6InsideIiEEbRKNS_7Bounds2IT_EES5_.exit1124.thread
  %i.afv = load ptr, ptr %17, align 8, !tbaa !48
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.afv)
          to label %bb.ge unwind label %bb.gf

bb.ge:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEES6_PKcDpOT_.exit.i
  %i.afw = load ptr, ptr %17, align 8, !tbaa !48  ; 2 uses
  %i.afx = icmp eq ptr %i.afw, %i.afo
  br i1 %i.afx, label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1129: ; preds = %bb.ge
  %i.afy = load i64, ptr %i.afo, align 8, !tbaa !46
  %i.afz = add i64 %i.afy, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.afz) #38
  br label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEEvPKcDpOT_.exit

bb.gf:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEES6_PKcDpOT_.exit.i
  %i.aga = landingpad { ptr, i32 }
          cleanup
  %i.agb = load ptr, ptr %17, align 8, !tbaa !48  ; 2 uses
  %i.agc = icmp eq ptr %i.agb, %i.afo
  br i1 %i.agc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.gf
  %i.agd = load i64, ptr %i.afo, align 8, !tbaa !46
  %i.age = add i64 %i.agd, 1
  call void @_ZdlPvm(ptr noundef %i.agb, i64 noundef %i.age) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %.body1101

_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEEvPKcDpOT_.exit: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1129
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %.thread3129

_ZN4pstd8optionalIN4pbrt6Point2IiEEE5valueEv.exit.i.i1134: ; preds = %bb.gc
  store i64 %spec.select, ptr %i.xi, align 4
  store i8 1, ptr %i.wk, align 4, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.xg, ptr noundef nonnull align 8 dereferenceable(16) %76, i64 16, i1 false)
  store i8 1, ptr %i.wj, align 8, !tbaa !107
  br i1 %i.aec, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_ZN4pstd8optionalIN4pbrt6Point2IiEEE5valueEv.exit.i.i1134
  %.sroa.0181.0.copyload = load i64, ptr %i.xf, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0181.0.copyload to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0181.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.agf = sub nsw i32 %.sroa.speculated4.i.i, %.sroa.0.0.extract.trunc.i
  %i.agg = sub nsw i32 %.sroa.speculated.i.i, %.sroa.2.0.extract.trunc.i
  %.sroa.2.0.insert.ext.i = zext i32 %i.agg to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.agf to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %76, align 8
  %i.agh = sub nsw i32 %.sroa.speculated4.i14.i, %.sroa.0.0.extract.trunc.i
  %i.agi = sub nsw i32 %.sroa.speculated.i15.i, %.sroa.2.0.extract.trunc.i
  %.sroa.2.0.insert.ext.i1144 = zext i32 %i.agi to i64
  %.sroa.2.0.insert.shift.i1145 = shl nuw i64 %.sroa.2.0.insert.ext.i1144, 32
  %.sroa.0.0.insert.ext.i1146 = zext i32 %i.agh to i64
  %.sroa.0.0.insert.insert.i1147 = or disjoint i64 %.sroa.2.0.insert.shift.i1145, %.sroa.0.0.insert.ext.i1146
  store i64 %.sroa.0.0.insert.insert.i1147, ptr %i.adx, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %_ZN4pstd8optionalIN4pbrt6Point2IiEEE5valueEv.exit.i.i1134
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #37
  %i.agj = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  invoke void @_ZNK4pbrt5Image4CropERKNS_7Bounds2IiEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Image") align 8 %78, ptr noundef nonnull align 8 dereferenceable(152) %67, ptr noundef nonnull align 4 dereferenceable(16) %76, ptr %i.agj)
          to label %bb.gi unwind label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %67, ptr noundef nonnull align 8 dereferenceable(152) %78, i64 12, i1 false)
  %i.agk = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.agl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.rk, ptr noundef nonnull align 8 dereferenceable(32) %i.agk)
          to label %.noexc1148 unwind label %bb.gl ; 0 uses

.noexc1148:                                       ; preds = %bb.gi
  %i.agm = getelementptr inbounds nuw i8, ptr %78, i64 48
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !75
  store i64 %i.agn, ptr %i.rw, align 8, !tbaa !75
  %i.ago = getelementptr inbounds nuw i8, ptr %78, i64 56
  %i.agp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ry, ptr noundef nonnull align 8 dereferenceable(32) %i.ago)
          to label %.noexc1149 unwind label %bb.gl ; 0 uses

.noexc1149:                                       ; preds = %.noexc1148
  %i.agq = getelementptr inbounds nuw i8, ptr %78, i64 88
  %i.agr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.agq)
          to label %.noexc1150 unwind label %bb.gl ; 0 uses

.noexc1150:                                       ; preds = %.noexc1149
  %i.ags = getelementptr inbounds nuw i8, ptr %78, i64 120
  %i.agt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.sp, ptr noundef nonnull align 8 dereferenceable(32) %i.ags)
          to label %bb.gj unwind label %bb.gl     ; 0 uses

.thread3129:                                      ; preds = %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_S8_S8_EEEvPKcDpOT_.exit, %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_S8_S8_S8_S8_EEEvPKcDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #37
  br label %bb.va

bb.gj:                                            ; preds = %.noexc1150
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %78) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #37
  %.sroa.0.0.copyload.i1153 = load i64, ptr %i.adc, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #37
  br label %bb.gn

bb.gk:                                            ; preds = %bb.gh
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %.noexc1150, %.noexc1149, %.noexc1148, %bb.gi
  %i.agv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %78) #37
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.pn648 = phi { ptr, i32 } [ %i.agv, %bb.gl ], [ %i.agu, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #37
  br label %.body1101

.body1101:                                        ; preds = %bb.gd, %bb.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1095, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %bb.gm
  %.pn650 = phi { ptr, i32 } [ %i.aga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i ], [ %.pn648, %bb.gm ], [ %i.afq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1125 ], [ %i.aeu, %bb.fz ], [ %i.aeu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1095 ], [ %i.afe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ], [ %i.afq, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058

bb.gn:                                            ; preds = %bb.gj, %bb.fy, %bb.fx
  %.sroa.18.1.in.in = phi i64 [ %.sroa.0.0.copyload.i1153, %bb.gj ], [ %.sroa.0.0.copyload.i, %bb.fy ], [ %.sroa.0.0.copyload.i, %bb.fx ] ; 11 uses
  %.sroa.0196.1 = trunc i64 %.sroa.18.1.in.in to i32 ; 12 uses
  %.sroa.18.1.in = lshr i64 %.sroa.18.1.in.in, 32 ; 11 uses
  %.sroa.18.1 = trunc nuw i64 %.sroa.18.1.in to i32 ; 5 uses
  %i.agw = load i64, ptr %i.ar, align 8, !tbaa !45
  %i.agx = icmp ne i64 %i.agw, 0
  %i.agy = zext i1 %i.agx to i32
  %i.agz = load float, ptr %i.y, align 4, !tbaa !66
  %i.aha = fcmp une float %i.agz, 1.000000e+00
  %i.ahb = zext i1 %i.aha to i32
  %i.ahc = add nuw nsw i32 %i.ahb, %i.agy
  %i.ahd = load float, ptr %i.z, align 4, !tbaa !66
  %i.ahe = fcmp une float %i.ahd, 1.000000e+00
  %i.ahf = zext i1 %i.ahe to i32
  %i.ahg = add nuw nsw i32 %i.ahc, %i.ahf
  %i.ahh = load i8, ptr %i.ac, align 1, !tbaa !283, !range !161, !noundef !162
  %i.ahi = zext nneg i8 %i.ahh to i32
  %i.ahj = add nuw nsw i32 %i.ahg, %i.ahi
  %i.ahk = load i8, ptr %i.af, align 1, !tbaa !283, !range !161, !noundef !162
  %i.ahl = zext nneg i8 %i.ahk to i32
  %i.ahm = add nuw nsw i32 %i.ahj, %i.ahl
  %i.ahn = load i8, ptr %i.x, align 1, !tbaa !283, !range !161, !noundef !162
  %i.aho = zext nneg i8 %i.ahn to i32
  %i.ahp = add nuw nsw i32 %i.ahm, %i.aho
  %i.ahq = icmp samesign ult i32 %i.ahp, 2
  %i.ahr = load i32, ptr %67, align 8
  %i.ahs = icmp eq i32 %i.ahr, 2
  %or.cond3170 = select i1 %i.ahq, i1 true, i1 %i.ahs
  br i1 %or.cond3170, label %bb.gt, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #37
  store i64 0, ptr %80, align 8, !tbaa !75
  invoke void @_ZNK4pbrt5Image15ConvertToFormatENS_11PixelFormatENS_13ColorEncodingE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Image") align 8 %79, ptr noundef nonnull align 8 dereferenceable(152) %67, i32 noundef 2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %80)
          to label %bb.gp unwind label %bb.gq

bb.gp:                                            ; preds = %bb.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %67, ptr noundef nonnull align 8 dereferenceable(152) %79, i64 12, i1 false)
  %i.aht = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.ahu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.rk, ptr noundef nonnull align 8 dereferenceable(32) %i.aht)
          to label %.noexc1154 unwind label %bb.gr ; 0 uses

.noexc1154:                                       ; preds = %bb.gp
  %i.ahv = getelementptr inbounds nuw i8, ptr %79, i64 48
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !75
  store i64 %i.ahw, ptr %i.rw, align 8, !tbaa !75
  %i.ahx = getelementptr inbounds nuw i8, ptr %79, i64 56
  %i.ahy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ry, ptr noundef nonnull align 8 dereferenceable(32) %i.ahx)
          to label %.noexc1155 unwind label %bb.gr ; 0 uses

.noexc1155:                                       ; preds = %.noexc1154
  %i.ahz = getelementptr inbounds nuw i8, ptr %79, i64 88
  %i.aia = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.ahz)
          to label %.noexc1156 unwind label %bb.gr ; 0 uses

.noexc1156:                                       ; preds = %.noexc1155
  %i.aib = getelementptr inbounds nuw i8, ptr %79, i64 120
  %i.aic = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.sp, ptr noundef nonnull align 8 dereferenceable(32) %i.aib)
          to label %_ZN4pbrt5ImageaSEOS0_.exit1158 unwind label %bb.gr ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit1158:                   ; preds = %.noexc1156
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %79) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #37
  br label %bb.gt

bb.gq:                                            ; preds = %bb.go
  %i.aid = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gr:                                            ; preds = %.noexc1156, %.noexc1155, %.noexc1154, %bb.gp
  %i.aie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %79) #37
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.pn653 = phi { ptr, i32 } [ %i.aie, %bb.gr ], [ %i.aid, %bb.gq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058

bb.gt:                                            ; preds = %_ZN4pbrt5ImageaSEOS0_.exit1158, %bb.gn
  %i.aif = load float, ptr %i.ai, align 4, !tbaa !66
  %i.aig = fcmp one float %i.aif, +inf
  %i.aih = icmp sgt i32 %.sroa.18.1, 0            ; 9 uses
  %or.cond = select i1 %i.aig, i1 %i.aih, i1 false
  br i1 %or.cond, label %.preheader3270.lr.ph, label %.loopexit3272

.preheader3270.lr.ph:                             ; preds = %bb.gt
  %i.aii = icmp sgt i32 %.sroa.0196.1, 0
  %i.aij = icmp sgt i32 %i.ade, 0
  br i1 %i.aii, label %.preheader3270.preheader, label %.loopexit3272

.preheader3270.preheader:                         ; preds = %.preheader3270.lr.ph
  %wide.trip.count4632 = and i64 %.sroa.18.1.in.in, 2147483647
  %wide.trip.count = and i64 %.fr, 2147483647
  %wide.trip.count4627 = and i64 %.fr, 2147483647
  br label %.preheader3270

.preheader3270:                                   ; preds = %.preheader3270.preheader, %._crit_edge4344
  %indvars.iv4634 = phi i64 [ 0, %.preheader3270.preheader ], [ %indvars.iv.next4635, %._crit_edge4344 ] ; 6 uses
  %.sroa.22499.0.insert.shift = shl nuw nsw i64 %indvars.iv4634, 32
  %i.aik = trunc nuw nsw i64 %indvars.iv4634 to i32 ; 2 uses
  %i.ail = trunc nuw nsw i64 %indvars.iv4634 to i32 ; 2 uses
  br label %.preheader3266

.preheader3266:                                   ; preds = %.preheader3270, %.loopexit3262
  %indvars.iv4629 = phi i64 [ 0, %.preheader3270 ], [ %indvars.iv.next4630, %.loopexit3262 ] ; 6 uses
  br i1 %i.aij, label %.preheader.preheader.i.preheader, label %.loopexit3262

.preheader.preheader.i.preheader:                 ; preds = %.preheader3266
  %i.aim = trunc nuw nsw i64 %indvars.iv4629 to i32 ; 2 uses
  br label %.preheader.preheader.i

._crit_edge4344:                                  ; preds = %.loopexit3262
  %indvars.iv.next4635 = add nuw nsw i64 %indvars.iv4634, 1 ; 2 uses
  %exitcond4638.not = icmp eq i64 %indvars.iv.next4635, %.sroa.18.1.in
  br i1 %exitcond4638.not, label %.loopexit3272, label %.preheader3270, !llvm.loop !846

._crit_edge4339:                                  ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %i.ain = load float, ptr %i.ai, align 4, !tbaa !66 ; 2 uses
  %i.aio = fcmp ogt float %.sroa.speculated2507, %i.ain
  br i1 %i.aio, label %.preheader.preheader.i1624.lr.ph, label %.loopexit3262

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.i.preheader ], [ %indvars.iv.next, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ] ; 4 uses
  %.04337 = phi float [ 0.000000e+00, %.preheader.preheader.i.preheader ], [ %.sroa.speculated2507, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ] ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.adc, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i1611 = trunc i64 %.sroa.04.0.copyload.i to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32
  %sext = shl i64 %.sroa.04.0.copyload.i, 32
  %i.aip = ashr exact i64 %sext, 32
  %i.aiq = icmp slt i64 %indvars.iv4629, %i.aip
  %i.air = add nsw i32 %.sroa.0.0.extract.trunc.i1611, -1
  %..i.i1613 = call i32 @llvm.smin.i32(i32 %i.aim, i32 %i.air)
  %.sroa.02544.0 = select i1 %i.aiq, i32 %i.aim, i32 %..i.i1613 ; 3 uses
  %i.ais = ashr i64 %.sroa.04.0.copyload.i, 32
  %i.ait = icmp slt i64 %indvars.iv4634, %i.ais
  %i.aiu = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %i.aik, i32 %i.aiu)
  %.sroa.14.2 = select i1 %i.ait, i32 %i.aik, i32 %..i.1.i ; 3 uses
  %i.aiv = load i32, ptr %67, align 8, !tbaa !150
  switch i32 %i.aiv, label %.invoke5318 [
    i32 0, label %bb.gu
    i32 1, label %bb.gx
    i32 2, label %bb.hb
  ]

bb.gu:                                            ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #37
  %i.aiw = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.aix = trunc i64 %i.aiw to i32
  %i.aiy = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i1611
  %i.aiz = add nsw i32 %i.aiy, %.sroa.02544.0
  %i.aja = mul nsw i32 %i.aiz, %i.aix
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = load ptr, ptr %i.sa, align 8, !tbaa !133
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 %i.ajb
  %i.aje = getelementptr i8, ptr %i.ajd, i64 %indvars.iv ; 3 uses
  %i.ajf = load i64, ptr %i.rw, align 8, !tbaa !75 ; 2 uses
  %i.ajg = and i64 %i.ajf, 144115188075855871
  %i.ajh = inttoptr i64 %i.ajg to ptr             ; 2 uses
  %i.aji = lshr i64 %i.ajf, 57
  %i.ajj = trunc nuw nsw i64 %i.aji to i32
  switch i32 %i.ajj, label %bb.gw [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.gv
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.gu
  %i.ajk = load i8, ptr %i.aje, align 1, !tbaa !46
  %i.ajl = uitofp i8 %i.ajk to float
  %i.ajm = fdiv float %i.ajl, 2.550000e+02
  store float %i.ajm, ptr %i.u, align 4, !tbaa !66
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ajh, ptr %i.aje, i64 1, ptr nonnull %i.u, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gw:                                            ; preds = %bb.gu
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ajh, ptr %i.aje, i64 1, ptr nonnull %i.u, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.gw, %bb.gv, %.lr.ph.i.i.i.i.i.i
  %i.ajn = load float, ptr %i.u, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.gx:                                            ; preds = %.preheader.preheader.i
  %i.ajo = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.ajp = trunc i64 %i.ajo to i32
  %i.ajq = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i1611
  %i.ajr = add nsw i32 %i.ajq, %.sroa.02544.0
  %i.ajs = mul nsw i32 %i.ajr, %i.ajp
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = load ptr, ptr %i.sj, align 8, !tbaa !127
  %i.ajv = getelementptr [2 x i8], ptr %i.aju, i64 %i.ajt
  %i.ajw = getelementptr [2 x i8], ptr %i.ajv, i64 %indvars.iv
  %i.ajx = load i16, ptr %i.ajw, align 2, !tbaa !173 ; 2 uses
  %i.ajy = zext i16 %i.ajx to i32
  %i.ajz = shl nuw nsw i32 %i.ajy, 13             ; 4 uses
end_hunk_0
begin_hunk_1_@_Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1361

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1361: ; preds = %bb.rl, %_ZNK4pbrt4HalfcvfEv.exit.i1348, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1355
  %.0.i1339 = phi float [ %i.etz, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1355 ], [ %i.euy, %_ZNK4pbrt4HalfcvfEv.exit.i1348 ], [ %i.evi, %bb.rl ]
  %i.evj = fmul float %i.eta, %.0.i1339
  %i.evk = trunc nuw nsw i64 %indvars.iv4678 to i32
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02457.0.insert.insert, i32 noundef %i.evk, float noundef %i.evj)
          to label %bb.rm unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rm:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1361
  %indvars.iv.next4679 = add nuw nsw i64 %indvars.iv4678, 1 ; 2 uses
  %exitcond4682.not = icmp eq i64 %indvars.iv.next4679, %wide.trip.count4681
  br i1 %exitcond4682.not, label %._crit_edge4469, label %.preheader.preheader.i2219, !llvm.loop !1051

.loopexit3231:                                    ; preds = %._crit_edge4471, %.preheader3229.lr.ph, %bb.rd
  %i.evl = load float, ptr %i.z, align 4, !tbaa !66
  %i.evm = fcmp une float %i.evl, 1.000000e+00
  %or.cond4525 = select i1 %i.evm, i1 %i.aih, i1 false
  br i1 %or.cond4525, label %.preheader3222.lr.ph, label %.loopexit3224

.preheader3222.lr.ph:                             ; preds = %.loopexit3231
  %i.evn = icmp slt i32 %.sroa.0196.1, 1
  %i.evo = icmp slt i32 %i.ade, 1
  %brmerge4528 = or i1 %i.evn, %i.evo
  br i1 %brmerge4528, label %.loopexit3224, label %.preheader3222.preheader

.preheader3222.preheader:                         ; preds = %.preheader3222.lr.ph
  %wide.trip.count4701 = and i64 %.sroa.18.1.in.in, 2147483647
  %wide.trip.count4696 = and i64 %.fr, 2147483647
  br label %.preheader3222

.preheader3222:                                   ; preds = %.preheader3222.preheader, %._crit_edge4478
  %indvars.iv4703 = phi i64 [ 0, %.preheader3222.preheader ], [ %indvars.iv.next4704, %._crit_edge4478 ] ; 4 uses
  %.sroa.22447.0.insert.shift = shl nuw nsw i64 %indvars.iv4703, 32
  %i.evp = trunc nuw nsw i64 %indvars.iv4703 to i32 ; 2 uses
  br label %.preheader3218

.preheader3218:                                   ; preds = %.preheader3222, %._crit_edge4476
  %indvars.iv4698 = phi i64 [ 0, %.preheader3222 ], [ %indvars.iv.next4699, %._crit_edge4476 ] ; 4 uses
  %.sroa.02446.0.insert.insert = or disjoint i64 %.sroa.22447.0.insert.shift, %indvars.iv4698
  %i.evq = trunc nuw nsw i64 %indvars.iv4698 to i32 ; 2 uses
  br label %.preheader.preheader.i2246

._crit_edge4478:                                  ; preds = %._crit_edge4476
  %indvars.iv.next4704 = add nuw nsw i64 %indvars.iv4703, 1 ; 2 uses
  %exitcond4707.not = icmp eq i64 %indvars.iv.next4704, %.sroa.18.1.in
  br i1 %exitcond4707.not, label %.loopexit3224, label %.preheader3222, !llvm.loop !1052

._crit_edge4476:                                  ; preds = %bb.rv
  %indvars.iv.next4699 = add nuw nsw i64 %indvars.iv4698, 1 ; 2 uses
  %exitcond4702.not = icmp eq i64 %indvars.iv.next4699, %wide.trip.count4701
  br i1 %exitcond4702.not, label %._crit_edge4478, label %.preheader3218, !llvm.loop !1053

.preheader.preheader.i2246:                       ; preds = %.preheader3218, %bb.rv
  %indvars.iv4693 = phi i64 [ 0, %.preheader3218 ], [ %indvars.iv.next4694, %bb.rv ] ; 5 uses
  %.sroa.04.0.copyload.i1363 = load i64, ptr %i.adc, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i2240 = trunc i64 %.sroa.04.0.copyload.i1363 to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i2241 = lshr i64 %.sroa.04.0.copyload.i1363, 32
  %.sroa.9.0.extract.trunc.i2242 = trunc nuw i64 %.sroa.9.0.extract.shift.i2241 to i32
  %sext5243 = shl i64 %.sroa.04.0.copyload.i1363, 32
  %i.evr = ashr exact i64 %sext5243, 32
  %i.evs = icmp slt i64 %indvars.iv4698, %i.evr
  %i.evt = add nsw i32 %.sroa.0.0.extract.trunc.i2240, -1
  %..i.i2249 = call i32 @llvm.smin.i32(i32 %i.evq, i32 %i.evt)
  %.sroa.02624.0 = select i1 %i.evs, i32 %i.evq, i32 %..i.i2249 ; 3 uses
  %i.evu = ashr i64 %.sroa.04.0.copyload.i1363, 32
  %i.evv = icmp slt i64 %indvars.iv4703, %i.evu
  %i.evw = add nsw i32 %.sroa.9.0.extract.trunc.i2242, -1
  %..i.1.i2255 = call i32 @llvm.smin.i32(i32 %i.evp, i32 %i.evw)
  %.sroa.142632.2 = select i1 %i.evv, i32 %i.evp, i32 %..i.1.i2255 ; 3 uses
  %i.evx = load i32, ptr %67, align 8, !tbaa !150
  switch i32 %i.evx, label %.invoke5318 [
    i32 0, label %bb.rn
    i32 1, label %bb.rq
    i32 2, label %bb.ru
  ]

bb.rn:                                            ; preds = %.preheader.preheader.i2246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  %i.evy = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.evz = trunc i64 %i.evy to i32
  %i.ewa = mul nsw i32 %.sroa.142632.2, %.sroa.0.0.extract.trunc.i2240
  %i.ewb = add nsw i32 %i.ewa, %.sroa.02624.0
  %i.ewc = mul nsw i32 %i.ewb, %i.evz
  %i.ewd = sext i32 %i.ewc to i64
  %i.ewe = load ptr, ptr %i.sa, align 8, !tbaa !133
  %i.ewf = getelementptr i8, ptr %i.ewe, i64 %i.ewd
  %i.ewg = getelementptr i8, ptr %i.ewf, i64 %indvars.iv4693 ; 3 uses
  %i.ewh = load i64, ptr %i.rw, align 8, !tbaa !75 ; 2 uses
  %i.ewi = and i64 %i.ewh, 144115188075855871
  %i.ewj = inttoptr i64 %i.ewi to ptr             ; 2 uses
  %i.ewk = lshr i64 %i.ewh, 57
  %i.ewl = trunc nuw nsw i64 %i.ewk to i32
  switch i32 %i.ewl, label %bb.rp [
    i32 1, label %.lr.ph.i.i.i.i.i.i1381
    i32 2, label %bb.ro
  ]

.lr.ph.i.i.i.i.i.i1381:                           ; preds = %bb.rn
  %i.ewm = load i8, ptr %i.ewg, align 1, !tbaa !46
  %i.ewn = uitofp i8 %i.ewm to float
  %i.ewo = fdiv float %i.ewn, 2.550000e+02
  store float %i.ewo, ptr %i.g, align 4, !tbaa !66
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1380

bb.ro:                                            ; preds = %bb.rn
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ewj, ptr %i.ewg, i64 1, ptr nonnull %i.g, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1380 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rp:                                            ; preds = %bb.rn
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ewj, ptr %i.ewg, i64 1, ptr nonnull %i.g, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1380 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1380: ; preds = %bb.rp, %bb.ro, %.lr.ph.i.i.i.i.i.i1381
  %i.ewp = load float, ptr %i.g, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1386

bb.rq:                                            ; preds = %.preheader.preheader.i2246
  %i.ewq = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.ewr = trunc i64 %i.ewq to i32
  %i.ews = mul nsw i32 %.sroa.142632.2, %.sroa.0.0.extract.trunc.i2240
  %i.ewt = add nsw i32 %i.ews, %.sroa.02624.0
  %i.ewu = mul nsw i32 %i.ewt, %i.ewr
  %i.ewv = sext i32 %i.ewu to i64
  %i.eww = load ptr, ptr %i.sj, align 8, !tbaa !127
  %i.ewx = getelementptr [2 x i8], ptr %i.eww, i64 %i.ewv
  %i.ewy = getelementptr [2 x i8], ptr %i.ewx, i64 %indvars.iv4693
  %i.ewz = load i16, ptr %i.ewy, align 2, !tbaa !173 ; 2 uses
  %i.exa = zext i16 %i.ewz to i32
  %i.exb = shl nuw nsw i32 %i.exa, 13             ; 4 uses
  %i.exc = and i32 %i.exb, 260046848              ; 2 uses
  %i.exd = icmp eq i32 %i.exc, 260046848
  br i1 %i.exd, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %bb.rq
  %i.exe = or i32 %i.exb, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1373

bb.rs:                                            ; preds = %bb.rq
  %i.exf = and i32 %i.exb, 268427264
  %i.exg = add nuw nsw i32 %i.exf, 939524096
  %i.exh = icmp eq i32 %i.exc, 0
  br i1 %i.exh, label %bb.rt, label %_ZNK4pbrt4HalfcvfEv.exit.i1373

bb.rt:                                            ; preds = %bb.rs
  %i.exi = or i32 %i.exb, 947912704
  %i.exj = bitcast i32 %i.exi to float
  %i.exk = fadd float %i.exj, f0xB8800000
  %i.exl = bitcast float %i.exk to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1373

_ZNK4pbrt4HalfcvfEv.exit.i1373:                   ; preds = %bb.rt, %bb.rs, %bb.rr
  %.sroa.0.0.i.i1374 = phi i32 [ %i.exe, %bb.rr ], [ %i.exl, %bb.rt ], [ %i.exg, %bb.rs ]
  %.signext.i.i1375 = sext i16 %i.ewz to i32
  %i.exm = and i32 %.signext.i.i1375, -2147483648
  %i.exn = or i32 %.sroa.0.0.i.i1374, %i.exm
  %i.exo = bitcast i32 %i.exn to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1386

bb.ru:                                            ; preds = %.preheader.preheader.i2246
  %i.exp = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.exq = trunc i64 %i.exp to i32
  %i.exr = mul nsw i32 %.sroa.142632.2, %.sroa.0.0.extract.trunc.i2240
  %i.exs = add nsw i32 %i.exr, %.sroa.02624.0
  %i.ext = mul nsw i32 %i.exs, %i.exq
  %i.exu = sext i32 %i.ext to i64
  %i.exv = load ptr, ptr %i.ss, align 8, !tbaa !118
  %i.exw = getelementptr [4 x i8], ptr %i.exv, i64 %i.exu
  %i.exx = getelementptr [4 x i8], ptr %i.exw, i64 %indvars.iv4693
  %i.exy = load float, ptr %i.exx, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1386

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1386: ; preds = %bb.ru, %_ZNK4pbrt4HalfcvfEv.exit.i1373, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1380
  %.0.i1364 = phi float [ %i.ewp, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1380 ], [ %i.exo, %_ZNK4pbrt4HalfcvfEv.exit.i1373 ], [ %i.exy, %bb.ru ] ; 2 uses
  %i.exz = fcmp ogt float %.0.i1364, 0.000000e+00
  %.sroa.speculated2449 = select i1 %i.exz, float %.0.i1364, float 0.000000e+00
  %i.eya = load float, ptr %i.z, align 4, !tbaa !66
  %i.eyb = call noundef float @powf(float noundef %.sroa.speculated2449, float noundef %i.eya) #37
  %i.eyc = trunc nuw nsw i64 %indvars.iv4693 to i32
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02446.0.insert.insert, i32 noundef %i.eyc, float noundef %i.eyb)
          to label %bb.rv unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rv:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1386
  %indvars.iv.next4694 = add nuw nsw i64 %indvars.iv4693, 1 ; 2 uses
  %exitcond4697.not = icmp eq i64 %indvars.iv.next4694, %wide.trip.count4696
  br i1 %exitcond4697.not, label %._crit_edge4476, label %.preheader.preheader.i2246, !llvm.loop !1054

.loopexit3224:                                    ; preds = %._crit_edge4478, %.preheader3222.lr.ph, %.loopexit3231
  %i.eyd = load i8, ptr %i.ac, align 1, !tbaa !283, !range !161, !noundef !162
  %i.eye = trunc nuw i8 %i.eyd to i1
  %or.cond4529 = select i1 %i.eye, i1 %i.aih, i1 false
  br i1 %or.cond4529, label %.preheader3215.lr.ph, label %.loopexit3217

.preheader3215.lr.ph:                             ; preds = %.loopexit3224
  %i.eyf = icmp sgt i32 %.sroa.0196.1, 0
  %i.eyg = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 3 uses
  %i.eyh = getelementptr inbounds nuw i8, ptr %91, i64 8 ; 2 uses
  %i.eyi = getelementptr inbounds nuw i8, ptr %91, i64 16
  %i.eyj = getelementptr inbounds nuw i8, ptr %91, i64 32 ; 2 uses
  br i1 %i.eyf, label %.preheader3215.preheader, label %.loopexit3217

.preheader3215.preheader:                         ; preds = %.preheader3215.lr.ph
  %98 = icmp sgt i32 %i.ade, 0
  %wide.trip.count4721 = and i64 %.sroa.18.1.in.in, 2147483647 ; 2 uses
  br i1 %98, label %.preheader3215.a, label %.preheader3215

.preheader3215.a:                                 ; preds = %.preheader3215.preheader
  %wide.trip.count4716.us = and i64 %.fr, 2147483647
  br label %.lr.ph4485.split.us.preheader

.lr.ph4485.split.us.preheader:                    ; preds = %._crit_edge4483.us, %.preheader3215.a
  %indvars.iv4723.us = phi i64 [ 0, %.preheader3215.a ], [ %indvars.iv.next4719, %._crit_edge4483.us ] ; 4 uses
  %.sroa.22443.0.insert.shift.us = shl nuw nsw i64 %indvars.iv4723.us, 32
  %i.eyk = trunc nuw nsw i64 %indvars.iv4723.us to i32 ; 2 uses
  br label %.lr.ph4485.split.us

.lr.ph4485.split.us:                              ; preds = %.lr.ph4485.split.us.preheader, %bb.si
  %indvars.iv4718 = phi i64 [ 0, %.lr.ph4485.split.us.preheader ], [ %indvars.iv.next4714, %bb.si ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #37
  %.sroa.02442.0.insert.insert.us = or disjoint i64 %.sroa.22443.0.insert.shift.us, %indvars.iv4718 ; 2 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %91, ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02442.0.insert.insert.us, i64 4294967297)
          to label %bb.rw unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rw:                                            ; preds = %.lr.ph4485.split.us
  %i.eyl = load i64, ptr %i.eyg, align 8, !tbaa !193 ; 5 uses
  %.not.i1389.us = icmp eq i64 %i.eyl, 0
  %.pre4780 = load ptr, ptr %i.eyh, align 8, !tbaa !192 ; 4 uses
  br i1 %.not.i1389.us, label %.loopexit3214.us, label %.lr.ph.i1390.us

.lr.ph.i1390.us:                                  ; preds = %bb.rw
  %.not.i.i.i1391.us = icmp eq ptr %.pre4780, null
  %i.eym = select i1 %.not.i.i.i1391.us, ptr %i.eyi, ptr %.pre4780 ; 9 uses
  %xtraiter7553 = and i64 %i.eyl, 7               ; 3 uses
  %i.eyn = icmp ult i64 %i.eyl, 8
  br i1 %i.eyn, label %.epil.preheader, label %.lr.ph.i1390.us.new

.lr.ph.i1390.us.new:                              ; preds = %.lr.ph.i1390.us
  %unroll_iter = and i64 %i.eyl, -8
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rx, %.lr.ph.i1390.us.new
  %indvars.iv.i1392.us = phi i64 [ 0, %.lr.ph.i1390.us.new ], [ %indvars.iv.next.i1394.us.7, %bb.rx ] ; 9 uses
  %.057.i1393.us = phi float [ 0.000000e+00, %.lr.ph.i1390.us.new ], [ %i.ezs, %bb.rx ]
  %niter = phi i64 [ 0, %.lr.ph.i1390.us.new ], [ %niter.next.7, %bb.rx ]
  %i.eyo = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.eyp = load float, ptr %i.eyo, align 4, !tbaa !66
  %i.eyq = fadd float %.057.i1393.us, %i.eyp
  %i.eyr = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.eys = getelementptr inbounds nuw i8, ptr %i.eyr, i64 4
  %i.eyt = load float, ptr %i.eys, align 4, !tbaa !66
  %i.eyu = fadd float %i.eyq, %i.eyt
  %i.eyv = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.eyw = getelementptr inbounds nuw i8, ptr %i.eyv, i64 8
  %i.eyx = load float, ptr %i.eyw, align 4, !tbaa !66
  %i.eyy = fadd float %i.eyu, %i.eyx
  %i.eyz = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.eza = getelementptr inbounds nuw i8, ptr %i.eyz, i64 12
  %i.ezb = load float, ptr %i.eza, align 4, !tbaa !66
  %i.ezc = fadd float %i.eyy, %i.ezb
  %i.ezd = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.eze = getelementptr inbounds nuw i8, ptr %i.ezd, i64 16
  %i.ezf = load float, ptr %i.eze, align 4, !tbaa !66
  %i.ezg = fadd float %i.ezc, %i.ezf
  %i.ezh = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.ezh, i64 20
  %i.ezj = load float, ptr %i.ezi, align 4, !tbaa !66
  %i.ezk = fadd float %i.ezg, %i.ezj
  %i.ezl = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.ezl, i64 24
  %i.ezn = load float, ptr %i.ezm, align 4, !tbaa !66
  %i.ezo = fadd float %i.ezk, %i.ezn
  %i.ezp = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.ezp, i64 28
  %i.ezr = load float, ptr %i.ezq, align 4, !tbaa !66
  %i.ezs = fadd float %i.ezo, %i.ezr              ; 3 uses
  %indvars.iv.next.i1394.us.7 = add nuw nsw i64 %indvars.iv.i1392.us, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit3214.us.loopexit.unr-lcssa, label %bb.rx, !llvm.loop !17

.loopexit3214.us.loopexit.unr-lcssa:              ; preds = %bb.rx
  %lcmp.mod7554.not = icmp eq i64 %xtraiter7553, 0
  br i1 %lcmp.mod7554.not, label %.loopexit3214.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit3214.us.loopexit.unr-lcssa, %.lr.ph.i1390.us
  %indvars.iv.i1392.us.epil.init = phi i64 [ 0, %.lr.ph.i1390.us ], [ %indvars.iv.next.i1394.us.7, %.loopexit3214.us.loopexit.unr-lcssa ]
  %.057.i1393.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i1390.us ], [ %i.ezs, %.loopexit3214.us.loopexit.unr-lcssa ]
  %lcmp.mod7556 = icmp ne i64 %xtraiter7553, 0
  call void @llvm.assume(i1 %lcmp.mod7556)
  br label %bb.ry

bb.ry:                                            ; preds = %bb.ry, %.epil.preheader
  %indvars.iv.i1392.us.epil = phi i64 [ %indvars.iv.i1392.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i1394.us.epil, %bb.ry ] ; 2 uses
  %.057.i1393.us.epil = phi float [ %.057.i1393.us.epil.init, %.epil.preheader ], [ %i.ezv, %bb.ry ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ry ]
  %i.ezt = getelementptr inbounds nuw [4 x i8], ptr %i.eym, i64 %indvars.iv.i1392.us.epil
  %i.ezu = load float, ptr %i.ezt, align 4, !tbaa !66
  %i.ezv = fadd float %.057.i1393.us.epil, %i.ezu ; 2 uses
  %indvars.iv.next.i1394.us.epil = add nuw nsw i64 %indvars.iv.i1392.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter7553
  br i1 %epil.iter.cmp.not, label %.loopexit3214.us, label %bb.ry, !llvm.loop !1055

.loopexit3214.us:                                 ; preds = %.loopexit3214.us.loopexit.unr-lcssa, %bb.ry, %bb.rw
  %.05.lcssa.i1397.us = phi float [ 0.000000e+00, %bb.rw ], [ %i.ezs, %.loopexit3214.us.loopexit.unr-lcssa ], [ %i.ezv, %bb.ry ]
  %i.ezw = uitofp nneg i64 %i.eyl to float
  %i.ezx = fdiv float %.05.lcssa.i1397.us, %i.ezw ; 2 uses
  store i64 0, ptr %i.eyg, align 8, !tbaa !193
  %.not.i.i.i.i1399.us = icmp eq ptr %.pre4780, null
  br i1 %.not.i.i.i.i1399.us, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400.us, label %bb.rz

bb.rz:                                            ; preds = %.loopexit3214.us
  %i.ezy = load i64, ptr %i.eyj, align 8, !tbaa !194
  %i.ezz = shl i64 %i.ezy, 2
  %i.faa = load ptr, ptr %91, align 8, !tbaa !120 ; 2 uses
  %i.fab = load ptr, ptr %i.faa, align 8, !tbaa !122
  %i.fac = getelementptr inbounds nuw i8, ptr %i.fab, i64 24
  %i.fad = load ptr, ptr %i.fac, align 8
  invoke void %i.fad(ptr noundef nonnull align 8 dereferenceable(8) %i.faa, ptr noundef nonnull %.pre4780, i64 noundef %i.ezz, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400.us unwind label %.split4489.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400.us: ; preds = %bb.rz, %.loopexit3214.us
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #37
  %i.fae = load float, ptr %i.ad, align 4, !tbaa !66 ; 2 uses
  %i.faf = fmul float %i.fae, %i.fae
  %i.fag = fdiv float %i.ezx, %i.faf
  %i.fah = fadd float %i.fag, 1.000000e+00
  %i.fai = fadd float %i.ezx, 1.000000e+00
  %i.faj = fdiv float %i.fah, %i.fai
  %i.fak = trunc nuw nsw i64 %indvars.iv4718 to i32 ; 2 uses
  br label %.preheader.preheader.i2273.us

.preheader.preheader.i2273.us:                    ; preds = %99, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400.us
  %indvars.iv4713 = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400.us ], [ %indvars.iv.next4714.us, %99 ] ; 5 uses
  %.sroa.04.0.copyload.i1402.us = load i64, ptr %i.adc, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i2267.us = trunc i64 %.sroa.04.0.copyload.i1402.us to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i2268.us = lshr i64 %.sroa.04.0.copyload.i1402.us, 32
  %.sroa.9.0.extract.trunc.i2269.us = trunc nuw i64 %.sroa.9.0.extract.shift.i2268.us to i32
  %sext5245 = shl i64 %.sroa.04.0.copyload.i1402.us, 32
  %i.fal = ashr exact i64 %sext5245, 32
  %i.fam = icmp slt i64 %indvars.iv4718, %i.fal
  %i.fan = add nsw i32 %.sroa.0.0.extract.trunc.i2267.us, -1
  %..i.i2276.us = call i32 @llvm.smin.i32(i32 %i.fak, i32 %i.fan)
  %.sroa.02643.0.us = select i1 %i.fam, i32 %i.fak, i32 %..i.i2276.us ; 3 uses
  %i.fao = ashr i64 %.sroa.04.0.copyload.i1402.us, 32
  %i.fap = icmp slt i64 %indvars.iv4723.us, %i.fao
  %i.faq = add nsw i32 %.sroa.9.0.extract.trunc.i2269.us, -1
  %..i.1.i2282.us = call i32 @llvm.smin.i32(i32 %i.eyk, i32 %i.faq)
  %.sroa.142651.2.us = select i1 %i.fap, i32 %i.eyk, i32 %..i.1.i2282.us ; 3 uses
  %i.far = load i32, ptr %67, align 8, !tbaa !150
  switch i32 %i.far, label %.invoke5318 [
    i32 0, label %bb.sf
    i32 1, label %bb.sb
    i32 2, label %bb.sa
  ]

bb.sa:                                            ; preds = %.preheader.preheader.i2273.us
  %i.fas = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.fat = trunc i64 %i.fas to i32
  %i.fau = mul nsw i32 %.sroa.142651.2.us, %.sroa.0.0.extract.trunc.i2267.us
  %i.fav = add nsw i32 %i.fau, %.sroa.02643.0.us
  %i.faw = mul nsw i32 %i.fav, %i.fat
  %i.fax = sext i32 %i.faw to i64
  %i.fay = load ptr, ptr %i.ss, align 8, !tbaa !118
  %i.faz = getelementptr [4 x i8], ptr %i.fay, i64 %i.fax
  %i.fba = getelementptr [4 x i8], ptr %i.faz, i64 %indvars.iv4713
  %i.fbb = load float, ptr %i.fba, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1425.us

bb.sb:                                            ; preds = %.preheader.preheader.i2273.us
  %i.fbc = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.fbd = trunc i64 %i.fbc to i32
  %i.fbe = mul nsw i32 %.sroa.142651.2.us, %.sroa.0.0.extract.trunc.i2267.us
  %i.fbf = add nsw i32 %i.fbe, %.sroa.02643.0.us
  %i.fbg = mul nsw i32 %i.fbf, %i.fbd
  %i.fbh = sext i32 %i.fbg to i64
  %i.fbi = load ptr, ptr %i.sj, align 8, !tbaa !127
  %i.fbj = getelementptr [2 x i8], ptr %i.fbi, i64 %i.fbh
  %i.fbk = getelementptr [2 x i8], ptr %i.fbj, i64 %indvars.iv4713
  %i.fbl = load i16, ptr %i.fbk, align 2, !tbaa !173 ; 2 uses
  %i.fbm = zext i16 %i.fbl to i32
  %i.fbn = shl nuw nsw i32 %i.fbm, 13             ; 4 uses
  %i.fbo = and i32 %i.fbn, 260046848              ; 2 uses
  %i.fbp = icmp eq i32 %i.fbo, 260046848
  br i1 %i.fbp, label %bb.se, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.fbq = and i32 %i.fbn, 268427264
  %i.fbr = add nuw nsw i32 %i.fbq, 939524096
  %i.fbs = icmp eq i32 %i.fbo, 0
  br i1 %i.fbs, label %bb.sd, label %_ZNK4pbrt4HalfcvfEv.exit.i1412.us

bb.sd:                                            ; preds = %bb.sc
  %i.fbt = or i32 %i.fbn, 947912704
  %i.fbu = bitcast i32 %i.fbt to float
  %i.fbv = fadd float %i.fbu, f0xB8800000
  %i.fbw = bitcast float %i.fbv to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1412.us

bb.se:                                            ; preds = %bb.sb
  %i.fbx = or i32 %i.fbn, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1412.us

_ZNK4pbrt4HalfcvfEv.exit.i1412.us:                ; preds = %bb.se, %bb.sd, %bb.sc
  %.sroa.0.0.i.i1413.us = phi i32 [ %i.fbx, %bb.se ], [ %i.fbw, %bb.sd ], [ %i.fbr, %bb.sc ]
  %.signext.i.i1414.us = sext i16 %i.fbl to i32
  %i.fby = and i32 %.signext.i.i1414.us, -2147483648
  %i.fbz = or i32 %.sroa.0.0.i.i1413.us, %i.fby
  %i.fca = bitcast i32 %i.fbz to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1425.us

bb.sf:                                            ; preds = %.preheader.preheader.i2273.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.fcb = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.fcc = trunc i64 %i.fcb to i32
  %i.fcd = mul nsw i32 %.sroa.142651.2.us, %.sroa.0.0.extract.trunc.i2267.us
  %i.fce = add nsw i32 %i.fcd, %.sroa.02643.0.us
  %i.fcf = mul nsw i32 %i.fce, %i.fcc
  %i.fcg = sext i32 %i.fcf to i64
  %i.fch = load ptr, ptr %i.sa, align 8, !tbaa !133
  %i.fci = getelementptr i8, ptr %i.fch, i64 %i.fcg
  %i.fcj = getelementptr i8, ptr %i.fci, i64 %indvars.iv4713 ; 3 uses
  %i.fck = load i64, ptr %i.rw, align 8, !tbaa !75 ; 2 uses
  %i.fcl = and i64 %i.fck, 144115188075855871
  %i.fcm = inttoptr i64 %i.fcl to ptr             ; 2 uses
  %i.fcn = lshr i64 %i.fck, 57
  %i.fco = trunc nuw nsw i64 %i.fcn to i32
  switch i32 %i.fco, label %bb.sh [
    i32 1, label %.lr.ph.i.i.i.i.i.i1420.us
    i32 2, label %bb.sg
  ]

bb.sg:                                            ; preds = %bb.sf
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fcm, ptr %i.fcj, i64 1, ptr nonnull %i.f, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1419.us unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i.i.i.i.i1420.us:                        ; preds = %bb.sf
  %i.fcp = load i8, ptr %i.fcj, align 1, !tbaa !46
  %i.fcq = uitofp i8 %i.fcp to float
  %i.fcr = fdiv float %i.fcq, 2.550000e+02
  store float %i.fcr, ptr %i.f, align 4, !tbaa !66
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1419.us

bb.sh:                                            ; preds = %bb.sf
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.fcm, ptr %i.fcj, i64 1, ptr nonnull %i.f, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1419.us unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1419.us: ; preds = %bb.sh, %.lr.ph.i.i.i.i.i.i1420.us, %bb.sg
  %i.fcs = load float, ptr %i.f, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1425.us

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1425.us: ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1419.us, %_ZNK4pbrt4HalfcvfEv.exit.i1412.us, %bb.sa
  %.0.i1403.us = phi float [ %i.fcs, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1419.us ], [ %i.fca, %_ZNK4pbrt4HalfcvfEv.exit.i1412.us ], [ %i.fbb, %bb.sa ]
  %i.fct = fmul float %i.faj, %.0.i1403.us
  %i.fcu = trunc nuw nsw i64 %indvars.iv4713 to i32
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02442.0.insert.insert.us, i32 noundef %i.fcu, float noundef %i.fct)
          to label %99 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

99:                                               ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1425.us
  %indvars.iv.next4714.us = add nuw nsw i64 %indvars.iv4713, 1 ; 2 uses
  %exitcond4717.us.not = icmp eq i64 %indvars.iv.next4714.us, %wide.trip.count4716.us
  br i1 %exitcond4717.us.not, label %bb.si, label %.preheader.preheader.i2273.us, !llvm.loop !1056

bb.si:                                            ; preds = %99
  %indvars.iv.next4714 = add nuw nsw i64 %indvars.iv4718, 1 ; 2 uses
  %exitcond4717.not = icmp eq i64 %indvars.iv.next4714, %wide.trip.count4721
  br i1 %exitcond4717.not, label %._crit_edge4483.us, label %.lr.ph4485.split.us, !llvm.loop !1057

._crit_edge4483.us:                               ; preds = %bb.si
  %indvars.iv.next4719 = add nuw nsw i64 %indvars.iv4723.us, 1 ; 2 uses
  %exitcond4722.not = icmp eq i64 %indvars.iv.next4719, %.sroa.18.1.in
  br i1 %exitcond4722.not, label %.loopexit3217, label %.lr.ph4485.split.us.preheader, !llvm.loop !1058

.preheader3215:                                   ; preds = %.preheader3215.preheader, %._crit_edge4486
  %indvars.iv4723 = phi i64 [ %indvars.iv.next4724, %._crit_edge4486 ], [ 0, %.preheader3215.preheader ] ; 2 uses
  %.sroa.22443.0.insert.shift = shl nuw nsw i64 %indvars.iv4723, 32
  br label %.lr.ph4485.split

._crit_edge4486:                                  ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400
  %indvars.iv.next4724 = add nuw nsw i64 %indvars.iv4723, 1 ; 2 uses
  %exitcond4727.not = icmp eq i64 %indvars.iv.next4724, %.sroa.18.1.in
  br i1 %exitcond4727.not, label %.loopexit3217, label %.preheader3215, !llvm.loop !1058

.lr.ph4485.split:                                 ; preds = %.preheader3215, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400
  %indvars.iv4708 = phi i64 [ 0, %.preheader3215 ], [ %indvars.iv.next4709, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #37
  %.sroa.02442.0.insert.insert = or disjoint i64 %.sroa.22443.0.insert.shift, %indvars.iv4708
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %91, ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02442.0.insert.insert, i64 4294967297)
          to label %.loopexit3214 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit3214:                                    ; preds = %.lr.ph4485.split
  store i64 0, ptr %i.eyg, align 8, !tbaa !193
  %i.fcv = load ptr, ptr %i.eyh, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i1399 = icmp eq ptr %i.fcv, null
  br i1 %.not.i.i.i.i1399, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400, label %bb.sj

bb.sj:                                            ; preds = %.loopexit3214
  %i.fcw = load i64, ptr %i.eyj, align 8, !tbaa !194
  %i.fcx = shl i64 %i.fcw, 2
  %i.fcy = load ptr, ptr %91, align 8, !tbaa !120 ; 2 uses
  %i.fcz = load ptr, ptr %i.fcy, align 8, !tbaa !122
  %i.fda = getelementptr inbounds nuw i8, ptr %i.fcz, i64 24
  %i.fdb = load ptr, ptr %i.fda, align 8
  invoke void %i.fdb(ptr noundef nonnull align 8 dereferenceable(8) %i.fcy, ptr noundef nonnull %i.fcv, i64 noundef %i.fcx, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400 unwind label %.split4489.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

.split4489.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.rz, %bb.sj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.fdc = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.fdc) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1400: ; preds = %.loopexit3214, %bb.sj
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #37
  %indvars.iv.next4709 = add nuw nsw i64 %indvars.iv4708, 1 ; 2 uses
  %exitcond4712.not = icmp eq i64 %indvars.iv.next4709, %wide.trip.count4721
  br i1 %exitcond4712.not, label %._crit_edge4486, label %.lr.ph4485.split, !llvm.loop !1057

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph4485.split.us, %.lr.ph4485.split
  %lpad.loopexit.split-lp7474 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058

.loopexit3217:                                    ; preds = %._crit_edge4486, %._crit_edge4483.us, %.preheader3215.lr.ph, %.loopexit3224
  %i.fdd = load i8, ptr %i.af, align 1, !tbaa !283, !range !161, !noundef !162
  %i.fde = trunc nuw i8 %i.fdd to i1
  %or.cond4530 = select i1 %i.fde, i1 %i.aih, i1 false
  br i1 %or.cond4530, label %.preheader3205.lr.ph, label %.loopexit3210

.preheader3205.lr.ph:                             ; preds = %.loopexit3217
  %i.fdf = icmp sgt i32 %.sroa.0196.1, 0
  %i.fdg = icmp sgt i32 %i.ade, 1
  %i.fdh = icmp slt i32 %i.ade, 1
  br i1 %i.fdf, label %.preheader3205.preheader, label %.loopexit3210

.preheader3205.preheader:                         ; preds = %.preheader3205.lr.ph
  %wide.trip.count4741 = and i64 %.sroa.18.1.in.in, 2147483647
  %wide.trip.count4731 = and i64 %.fr, 2147483647
  %wide.trip.count4736 = and i64 %.fr, 2147483647
  br label %.preheader3205

.preheader3205:                                   ; preds = %.preheader3205.preheader, %._crit_edge4504
  %indvars.iv4743 = phi i64 [ 0, %.preheader3205.preheader ], [ %indvars.iv.next4744, %._crit_edge4504 ] ; 6 uses
  %.sroa.22431.0.insert.shift = shl nuw nsw i64 %indvars.iv4743, 32
  %i.fdi = trunc nuw nsw i64 %indvars.iv4743 to i32 ; 2 uses
  %i.fdj = trunc nuw nsw i64 %indvars.iv4743 to i32 ; 2 uses
  br label %bb.sk

._crit_edge4504:                                  ; preds = %.loopexit3197
  %indvars.iv.next4744 = add nuw nsw i64 %indvars.iv4743, 1 ; 2 uses
  %exitcond4747.not = icmp eq i64 %indvars.iv.next4744, %.sroa.18.1.in
  br i1 %exitcond4747.not, label %.loopexit3210, label %.preheader3205, !llvm.loop !1059

bb.sk:                                            ; preds = %.preheader3205, %.loopexit3197
  %indvars.iv4738 = phi i64 [ 0, %.preheader3205 ], [ %indvars.iv.next4739, %.loopexit3197 ] ; 6 uses
  %.sroa.02430.0.insert.insert = or disjoint i64 %.sroa.22431.0.insert.shift, %indvars.iv4738 ; 2 uses
  %i.fdk = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02430.0.insert.insert, i32 noundef 0, i64 4294967297)
          to label %.preheader3201 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader3201:                                   ; preds = %bb.sk
  br i1 %i.fdg, label %.preheader.preheader.i2300.preheader, label %._crit_edge4498

.preheader.preheader.i2300.preheader:             ; preds = %.preheader3201
  %i.fdl = trunc nuw nsw i64 %indvars.iv4738 to i32 ; 2 uses
  br label %.preheader.preheader.i2300

._crit_edge4498:                                  ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451, %.preheader3201
  %.02738.lcssa = phi float [ %i.fdk, %.preheader3201 ], [ %.sroa.speculated, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451 ] ; 2 uses
  %i.fdm = fcmp ule float %.02738.lcssa, 1.000000e+00
  %brmerge4533 = or i1 %i.fdm, %i.fdh
  br i1 %brmerge4533, label %.loopexit3197, label %.preheader.preheader.i2327.preheader

.preheader.preheader.i2327.preheader:             ; preds = %._crit_edge4498
  %i.fdn = trunc nuw nsw i64 %indvars.iv4738 to i32 ; 2 uses
  br label %.preheader.preheader.i2327

.preheader.preheader.i2300:                       ; preds = %.preheader.preheader.i2300.preheader, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451
  %indvars.iv4728 = phi i64 [ 1, %.preheader.preheader.i2300.preheader ], [ %indvars.iv.next4729, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451 ] ; 4 uses
  %.027384496 = phi float [ %i.fdk, %.preheader.preheader.i2300.preheader ], [ %.sroa.speculated, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451 ] ; 2 uses
  %.sroa.04.0.copyload.i1428 = load i64, ptr %i.adc, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i2294 = trunc i64 %.sroa.04.0.copyload.i1428 to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i2295 = lshr i64 %.sroa.04.0.copyload.i1428, 32
  %.sroa.9.0.extract.trunc.i2296 = trunc nuw i64 %.sroa.9.0.extract.shift.i2295 to i32
  %sext5247 = shl i64 %.sroa.04.0.copyload.i1428, 32
  %i.fdo = ashr exact i64 %sext5247, 32
  %i.fdp = icmp slt i64 %indvars.iv4738, %i.fdo
  %i.fdq = add nsw i32 %.sroa.0.0.extract.trunc.i2294, -1
  %..i.i2303 = call i32 @llvm.smin.i32(i32 %i.fdl, i32 %i.fdq)
  %.sroa.02662.0 = select i1 %i.fdp, i32 %i.fdl, i32 %..i.i2303 ; 3 uses
  %i.fdr = ashr i64 %.sroa.04.0.copyload.i1428, 32
  %i.fds = icmp slt i64 %indvars.iv4743, %i.fdr
  %i.fdt = add nsw i32 %.sroa.9.0.extract.trunc.i2296, -1
  %..i.1.i2309 = call i32 @llvm.smin.i32(i32 %i.fdi, i32 %i.fdt)
  %.sroa.142670.2 = select i1 %i.fds, i32 %i.fdi, i32 %..i.1.i2309 ; 3 uses
  %i.fdu = load i32, ptr %67, align 8, !tbaa !150
  switch i32 %i.fdu, label %.invoke5318 [
    i32 0, label %bb.sl
    i32 1, label %bb.so
    i32 2, label %bb.ss
  ]

bb.sl:                                            ; preds = %.preheader.preheader.i2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.fdv = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.fdw = trunc i64 %i.fdv to i32
  %i.fdx = mul nsw i32 %.sroa.142670.2, %.sroa.0.0.extract.trunc.i2294
  %i.fdy = add nsw i32 %i.fdx, %.sroa.02662.0
  %i.fdz = mul nsw i32 %i.fdy, %i.fdw
  %i.fea = sext i32 %i.fdz to i64
  %i.feb = load ptr, ptr %i.sa, align 8, !tbaa !133
  %i.fec = getelementptr i8, ptr %i.feb, i64 %i.fea
  %i.fed = getelementptr i8, ptr %i.fec, i64 %indvars.iv4728 ; 3 uses
  %i.fee = load i64, ptr %i.rw, align 8, !tbaa !75 ; 2 uses
  %i.fef = and i64 %i.fee, 144115188075855871
  %i.feg = inttoptr i64 %i.fef to ptr             ; 2 uses
  %i.feh = lshr i64 %i.fee, 57
  %i.fei = trunc nuw nsw i64 %i.feh to i32
  switch i32 %i.fei, label %bb.sn [
    i32 1, label %.lr.ph.i.i.i.i.i.i1446
    i32 2, label %bb.sm
  ]

.lr.ph.i.i.i.i.i.i1446:                           ; preds = %bb.sl
  %i.fej = load i8, ptr %i.fed, align 1, !tbaa !46
  %i.fek = uitofp i8 %i.fej to float
  %i.fel = fdiv float %i.fek, 2.550000e+02
  store float %i.fel, ptr %i.e, align 4, !tbaa !66
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1445

bb.sm:                                            ; preds = %bb.sl
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.feg, ptr %i.fed, i64 1, ptr nonnull %i.e, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1445 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.sn:                                            ; preds = %bb.sl
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.feg, ptr %i.fed, i64 1, ptr nonnull %i.e, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1445 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1445: ; preds = %bb.sn, %bb.sm, %.lr.ph.i.i.i.i.i.i1446
  %i.fem = load float, ptr %i.e, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451

bb.so:                                            ; preds = %.preheader.preheader.i2300
  %i.fen = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.feo = trunc i64 %i.fen to i32
  %i.fep = mul nsw i32 %.sroa.142670.2, %.sroa.0.0.extract.trunc.i2294
  %i.feq = add nsw i32 %i.fep, %.sroa.02662.0
  %i.fer = mul nsw i32 %i.feq, %i.feo
  %i.fes = sext i32 %i.fer to i64
  %i.fet = load ptr, ptr %i.sj, align 8, !tbaa !127
  %i.feu = getelementptr [2 x i8], ptr %i.fet, i64 %i.fes
  %i.fev = getelementptr [2 x i8], ptr %i.feu, i64 %indvars.iv4728
  %i.few = load i16, ptr %i.fev, align 2, !tbaa !173 ; 2 uses
  %i.fex = zext i16 %i.few to i32
  %i.fey = shl nuw nsw i32 %i.fex, 13             ; 4 uses
  %i.fez = and i32 %i.fey, 260046848              ; 2 uses
  %i.ffa = icmp eq i32 %i.fez, 260046848
  br i1 %i.ffa, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  %i.ffb = or i32 %i.fey, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1438

bb.sq:                                            ; preds = %bb.so
  %i.ffc = and i32 %i.fey, 268427264
  %i.ffd = add nuw nsw i32 %i.ffc, 939524096
  %i.ffe = icmp eq i32 %i.fez, 0
  br i1 %i.ffe, label %bb.sr, label %_ZNK4pbrt4HalfcvfEv.exit.i1438

bb.sr:                                            ; preds = %bb.sq
  %i.fff = or i32 %i.fey, 947912704
  %i.ffg = bitcast i32 %i.fff to float
  %i.ffh = fadd float %i.ffg, f0xB8800000
  %i.ffi = bitcast float %i.ffh to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1438

_ZNK4pbrt4HalfcvfEv.exit.i1438:                   ; preds = %bb.sr, %bb.sq, %bb.sp
  %.sroa.0.0.i.i1439 = phi i32 [ %i.ffb, %bb.sp ], [ %i.ffi, %bb.sr ], [ %i.ffd, %bb.sq ]
  %.signext.i.i1440 = sext i16 %i.few to i32
  %i.ffj = and i32 %.signext.i.i1440, -2147483648
  %i.ffk = or i32 %.sroa.0.0.i.i1439, %i.ffj
  %i.ffl = bitcast i32 %i.ffk to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451

bb.ss:                                            ; preds = %.preheader.preheader.i2300
  %i.ffm = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.ffn = trunc i64 %i.ffm to i32
  %i.ffo = mul nsw i32 %.sroa.142670.2, %.sroa.0.0.extract.trunc.i2294
  %i.ffp = add nsw i32 %i.ffo, %.sroa.02662.0
  %i.ffq = mul nsw i32 %i.ffp, %i.ffn
  %i.ffr = sext i32 %i.ffq to i64
  %i.ffs = load ptr, ptr %i.ss, align 8, !tbaa !118
  %i.fft = getelementptr [4 x i8], ptr %i.ffs, i64 %i.ffr
  %i.ffu = getelementptr [4 x i8], ptr %i.fft, i64 %indvars.iv4728
  %i.ffv = load float, ptr %i.ffu, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1451: ; preds = %bb.ss, %_ZNK4pbrt4HalfcvfEv.exit.i1438, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1445
  %.0.i1429 = phi float [ %i.fem, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1445 ], [ %i.ffl, %_ZNK4pbrt4HalfcvfEv.exit.i1438 ], [ %i.ffv, %bb.ss ] ; 2 uses
  %i.ffw = fcmp olt float %.027384496, %.0.i1429
  %.sroa.speculated = select i1 %i.ffw, float %.0.i1429, float %.027384496 ; 2 uses
  %indvars.iv.next4729 = add nuw nsw i64 %indvars.iv4728, 1 ; 2 uses
  %exitcond4732.not = icmp eq i64 %indvars.iv.next4729, %wide.trip.count4731
  br i1 %exitcond4732.not, label %._crit_edge4498, label %.preheader.preheader.i2300, !llvm.loop !1060

.preheader.preheader.i2327:                       ; preds = %.preheader.preheader.i2327.preheader, %bb.tb
  %indvars.iv4733 = phi i64 [ 0, %.preheader.preheader.i2327.preheader ], [ %indvars.iv.next4734, %bb.tb ] ; 5 uses
  %.sroa.04.0.copyload.i1454 = load i64, ptr %i.adc, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i2321 = trunc i64 %.sroa.04.0.copyload.i1454 to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i2322 = lshr i64 %.sroa.04.0.copyload.i1454, 32
  %.sroa.9.0.extract.trunc.i2323 = trunc nuw i64 %.sroa.9.0.extract.shift.i2322 to i32
  %sext5249 = shl i64 %.sroa.04.0.copyload.i1454, 32
  %i.ffx = ashr exact i64 %sext5249, 32
  %i.ffy = icmp slt i64 %indvars.iv4738, %i.ffx
  %i.ffz = add nsw i32 %.sroa.0.0.extract.trunc.i2321, -1
  %..i.i2330 = call i32 @llvm.smin.i32(i32 %i.fdn, i32 %i.ffz)
  %.sroa.02681.0 = select i1 %i.ffy, i32 %i.fdn, i32 %..i.i2330 ; 3 uses
  %i.fga = ashr i64 %.sroa.04.0.copyload.i1454, 32
  %i.fgb = icmp slt i64 %indvars.iv4743, %i.fga
  %i.fgc = add nsw i32 %.sroa.9.0.extract.trunc.i2323, -1
  %..i.1.i2336 = call i32 @llvm.smin.i32(i32 %i.fdj, i32 %i.fgc)
  %.sroa.142689.2 = select i1 %i.fgb, i32 %i.fdj, i32 %..i.1.i2336 ; 3 uses
  %i.fgd = load i32, ptr %67, align 8, !tbaa !150
  switch i32 %i.fgd, label %.invoke5318 [
end_hunk_1
begin_hunk_2_@_Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
          to label %bb.tb unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.tb:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1477
  %indvars.iv.next4734 = add nuw nsw i64 %indvars.iv4733, 1 ; 2 uses
  %exitcond4737.not = icmp eq i64 %indvars.iv.next4734, %wide.trip.count4736
  br i1 %exitcond4737.not, label %.loopexit3197, label %.preheader.preheader.i2327, !llvm.loop !1061

.loopexit3197:                                    ; preds = %bb.tb, %._crit_edge4498
  %indvars.iv.next4739 = add nuw nsw i64 %indvars.iv4738, 1 ; 2 uses
  %exitcond4742.not = icmp eq i64 %indvars.iv.next4739, %wide.trip.count4741
  br i1 %exitcond4742.not, label %._crit_edge4504, label %bb.sk, !llvm.loop !1062

.loopexit3210:                                    ; preds = %._crit_edge4504, %.preheader3205.lr.ph, %.loopexit3217
  %i.fih = load i8, ptr %i.x, align 1, !tbaa !283, !range !161, !noundef !162
  %i.fii = trunc nuw i8 %i.fih to i1
  %or.cond4534 = select i1 %i.fii, i1 %i.aih, i1 false
  br i1 %or.cond4534, label %.preheader3193.lr.ph, label %.loopexit3195

.preheader3193.lr.ph:                             ; preds = %.loopexit3210
  %i.fij = icmp slt i32 %.sroa.0196.1, 1
  %i.fik = icmp slt i32 %i.ade, 1
  %brmerge4537 = or i1 %i.fij, %i.fik
  br i1 %brmerge4537, label %.loopexit3195, label %.preheader3193.preheader

.preheader3193.preheader:                         ; preds = %.preheader3193.lr.ph
  %wide.trip.count4756 = and i64 %.sroa.18.1.in.in, 2147483647
  %wide.trip.count4751 = and i64 %.fr, 2147483647
  br label %.preheader3193

.preheader3193:                                   ; preds = %.preheader3193.preheader, %._crit_edge4509
  %indvars.iv4758 = phi i64 [ 0, %.preheader3193.preheader ], [ %indvars.iv.next4759, %._crit_edge4509 ] ; 4 uses
  %.sroa.22416.0.insert.shift = shl nuw nsw i64 %indvars.iv4758, 32
  %i.fil = trunc nuw nsw i64 %indvars.iv4758 to i32 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader3193, %._crit_edge4507
  %indvars.iv4753 = phi i64 [ 0, %.preheader3193 ], [ %indvars.iv.next4754, %._crit_edge4507 ] ; 4 uses
  %.sroa.02415.0.insert.insert = or disjoint i64 %.sroa.22416.0.insert.shift, %indvars.iv4753
  %i.fim = trunc nuw nsw i64 %indvars.iv4753 to i32 ; 2 uses
  br label %.preheader.preheader.i2354

._crit_edge4509:                                  ; preds = %._crit_edge4507
  %indvars.iv.next4759 = add nuw nsw i64 %indvars.iv4758, 1 ; 2 uses
  %exitcond4762.not = icmp eq i64 %indvars.iv.next4759, %.sroa.18.1.in
  br i1 %exitcond4762.not, label %.loopexit3195, label %.preheader3193, !llvm.loop !1063

._crit_edge4507:                                  ; preds = %bb.tl
  %indvars.iv.next4754 = add nuw nsw i64 %indvars.iv4753, 1 ; 2 uses
  %exitcond4757.not = icmp eq i64 %indvars.iv.next4754, %wide.trip.count4756
  br i1 %exitcond4757.not, label %._crit_edge4509, label %.preheader, !llvm.loop !1064

.preheader.preheader.i2354:                       ; preds = %.preheader, %bb.tl
  %indvars.iv4748 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next4749, %bb.tl ] ; 5 uses
  %.sroa.04.0.copyload.i1479 = load i64, ptr %i.adc, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i2348 = trunc i64 %.sroa.04.0.copyload.i1479 to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i2349 = lshr i64 %.sroa.04.0.copyload.i1479, 32
  %.sroa.9.0.extract.trunc.i2350 = trunc nuw i64 %.sroa.9.0.extract.shift.i2349 to i32
  %sext5251 = shl i64 %.sroa.04.0.copyload.i1479, 32
  %i.fin = ashr exact i64 %sext5251, 32
  %i.fio = icmp slt i64 %indvars.iv4753, %i.fin
  %i.fip = add nsw i32 %.sroa.0.0.extract.trunc.i2348, -1
  %..i.i2357 = call i32 @llvm.smin.i32(i32 %i.fim, i32 %i.fip)
  %.sroa.02700.0 = select i1 %i.fio, i32 %i.fim, i32 %..i.i2357 ; 3 uses
  %i.fiq = ashr i64 %.sroa.04.0.copyload.i1479, 32
  %i.fir = icmp slt i64 %indvars.iv4758, %i.fiq
  %i.fis = add nsw i32 %.sroa.9.0.extract.trunc.i2350, -1
  %..i.1.i2363 = call i32 @llvm.smin.i32(i32 %i.fil, i32 %i.fis)
  %.sroa.142708.2 = select i1 %i.fir, i32 %i.fil, i32 %..i.1.i2363 ; 3 uses
  %i.fit = load i32, ptr %67, align 8, !tbaa !150
  switch i32 %i.fit, label %.invoke5318 [
    i32 0, label %bb.tc
    i32 1, label %bb.tf
    i32 2, label %bb.tj
  ]

bb.tc:                                            ; preds = %.preheader.preheader.i2354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.fiu = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.fiv = trunc i64 %i.fiu to i32
  %i.fiw = mul nsw i32 %.sroa.142708.2, %.sroa.0.0.extract.trunc.i2348
  %i.fix = add nsw i32 %i.fiw, %.sroa.02700.0
  %i.fiy = mul nsw i32 %i.fix, %i.fiv
  %i.fiz = sext i32 %i.fiy to i64
  %i.fja = load ptr, ptr %i.sa, align 8, !tbaa !133
  %i.fjb = getelementptr i8, ptr %i.fja, i64 %i.fiz
  %i.fjc = getelementptr i8, ptr %i.fjb, i64 %indvars.iv4748 ; 3 uses
  %i.fjd = load i64, ptr %i.rw, align 8, !tbaa !75 ; 2 uses
  %i.fje = and i64 %i.fjd, 144115188075855871
  %i.fjf = inttoptr i64 %i.fje to ptr             ; 2 uses
  %i.fjg = lshr i64 %i.fjd, 57
  %i.fjh = trunc nuw nsw i64 %i.fjg to i32
  switch i32 %i.fjh, label %bb.te [
    i32 1, label %.lr.ph.i.i.i.i.i.i1497
    i32 2, label %bb.td
  ]

.lr.ph.i.i.i.i.i.i1497:                           ; preds = %bb.tc
  %i.fji = load i8, ptr %i.fjc, align 1, !tbaa !46
  %i.fjj = uitofp i8 %i.fji to float
  %i.fjk = fdiv float %i.fjj, 2.550000e+02
  store float %i.fjk, ptr %i.c, align 4, !tbaa !66
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1496

bb.td:                                            ; preds = %bb.tc
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fjf, ptr %i.fjc, i64 1, ptr nonnull %i.c, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1496 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.te:                                            ; preds = %bb.tc
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.fjf, ptr %i.fjc, i64 1, ptr nonnull %i.c, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1496 unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1496: ; preds = %bb.te, %bb.td, %.lr.ph.i.i.i.i.i.i1497
  %i.fjl = load float, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1502

bb.tf:                                            ; preds = %.preheader.preheader.i2354
  %i.fjm = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.fjn = trunc i64 %i.fjm to i32
  %i.fjo = mul nsw i32 %.sroa.142708.2, %.sroa.0.0.extract.trunc.i2348
  %i.fjp = add nsw i32 %i.fjo, %.sroa.02700.0
  %i.fjq = mul nsw i32 %i.fjp, %i.fjn
  %i.fjr = sext i32 %i.fjq to i64
  %i.fjs = load ptr, ptr %i.sj, align 8, !tbaa !127
  %i.fjt = getelementptr [2 x i8], ptr %i.fjs, i64 %i.fjr
  %i.fju = getelementptr [2 x i8], ptr %i.fjt, i64 %indvars.iv4748
  %i.fjv = load i16, ptr %i.fju, align 2, !tbaa !173 ; 2 uses
  %i.fjw = zext i16 %i.fjv to i32
  %i.fjx = shl nuw nsw i32 %i.fjw, 13             ; 4 uses
  %i.fjy = and i32 %i.fjx, 260046848              ; 2 uses
  %i.fjz = icmp eq i32 %i.fjy, 260046848
  br i1 %i.fjz, label %bb.tg, label %bb.th

bb.tg:                                            ; preds = %bb.tf
  %i.fka = or i32 %i.fjx, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1489

bb.th:                                            ; preds = %bb.tf
  %i.fkb = and i32 %i.fjx, 268427264
  %i.fkc = add nuw nsw i32 %i.fkb, 939524096
  %i.fkd = icmp eq i32 %i.fjy, 0
  br i1 %i.fkd, label %bb.ti, label %_ZNK4pbrt4HalfcvfEv.exit.i1489

bb.ti:                                            ; preds = %bb.th
  %i.fke = or i32 %i.fjx, 947912704
  %i.fkf = bitcast i32 %i.fke to float
  %i.fkg = fadd float %i.fkf, f0xB8800000
  %i.fkh = bitcast float %i.fkg to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1489

_ZNK4pbrt4HalfcvfEv.exit.i1489:                   ; preds = %bb.ti, %bb.th, %bb.tg
  %.sroa.0.0.i.i1490 = phi i32 [ %i.fka, %bb.tg ], [ %i.fkh, %bb.ti ], [ %i.fkc, %bb.th ]
  %.signext.i.i1491 = sext i16 %i.fjv to i32
  %i.fki = and i32 %.signext.i.i1491, -2147483648
  %i.fkj = or i32 %.sroa.0.0.i.i1490, %i.fki
  %i.fkk = bitcast i32 %i.fkj to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1502

bb.tj:                                            ; preds = %.preheader.preheader.i2354
  %i.fkl = load i64, ptr %i.rp, align 8, !tbaa !138
  %i.fkm = trunc i64 %i.fkl to i32
  %i.fkn = mul nsw i32 %.sroa.142708.2, %.sroa.0.0.extract.trunc.i2348
  %i.fko = add nsw i32 %i.fkn, %.sroa.02700.0
  %i.fkp = mul nsw i32 %i.fko, %i.fkm
  %i.fkq = sext i32 %i.fkp to i64
  %i.fkr = load ptr, ptr %i.ss, align 8, !tbaa !118
  %i.fks = getelementptr [4 x i8], ptr %i.fkr, i64 %i.fkq
  %i.fkt = getelementptr [4 x i8], ptr %i.fks, i64 %indvars.iv4748
  %i.fku = load float, ptr %i.fkt, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1502

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1502: ; preds = %bb.tj, %_ZNK4pbrt4HalfcvfEv.exit.i1489, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1496
  %.0.i1480 = phi float [ %i.fjl, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i1496 ], [ %i.fkk, %_ZNK4pbrt4HalfcvfEv.exit.i1489 ], [ %i.fku, %bb.tj ] ; 5 uses
  %i.fkv = fcmp ugt float %.0.i1480, 0.000000e+00
  br i1 %i.fkv, label %bb.tk, label %"_ZZ7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clEf.exit"

bb.tk:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1502
  %i.fkw = fmul float %.0.i1480, 2.510000e+00
  %i.fkx = fadd float %i.fkw, 3.000000e-02
  %i.fky = fmul float %.0.i1480, %i.fkx
  %i.fkz = fmul float %.0.i1480, 2.430000e+00
  %i.fla = fadd float %i.fkz, 5.900000e-01
  %i.flb = fmul float %.0.i1480, %i.fla
  %i.flc = fadd float %i.flb, 1.400000e-01
  %i.fld = fdiv float %i.fky, %i.flc              ; 2 uses
  %i.fle = fcmp ogt float %i.fld, 1.000000e+00
  %..i.i = select i1 %i.fle, float 1.000000e+00, float %i.fld
  br label %"_ZZ7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clEf.exit"

"_ZZ7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clEf.exit": ; preds = %bb.tk, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1502
  %.0.i1503 = phi float [ %..i.i, %bb.tk ], [ 0.000000e+00, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1502 ]
  %i.flf = trunc nuw nsw i64 %indvars.iv4748 to i32
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02415.0.insert.insert, i32 noundef %i.flf, float noundef %.0.i1503)
          to label %bb.tl unwind label %.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.tl:                                            ; preds = %"_ZZ7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clEf.exit"
  %indvars.iv.next4749 = add nuw nsw i64 %indvars.iv4748, 1 ; 2 uses
  %exitcond4752.not = icmp eq i64 %indvars.iv.next4749, %wide.trip.count4751
  br i1 %exitcond4752.not, label %._crit_edge4507, label %.preheader.preheader.i2354, !llvm.loop !1065

.loopexit.split-lp3189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.he, %bb.hd, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1189, %bb.iz, %bb.ja, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1386, %bb.ro, %bb.rp, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1425.us, %bb.sh, %bb.sg, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1477, %bb.su, %bb.sv, %bb.te, %bb.td, %"_ZZ7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clEf.exit", %bb.sn, %bb.sm, %bb.sk, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1361, %bb.rf, %bb.rg, %bb.jb, %bb.gv, %bb.gw, %.invoke5318, %bb.ul, %bb.en, %.noexc.i1039, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %.noexc.i1570, %.noexc.i1191
  %lpad.loopexit.split-lp7546 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058

.loopexit3195:                                    ; preds = %._crit_edge4509, %.preheader3193.lr.ph, %.loopexit3210
  %i.flg = load i32, ptr %i.aa, align 4, !tbaa !67 ; 3 uses
  %i.flh = icmp sgt i32 %i.flg, 1
  br i1 %i.flh, label %bb.tm, label %bb.uk

bb.tm:                                            ; preds = %.loopexit3195
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #37
  %i.fli = load i32, ptr %67, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #37
  invoke void @_ZNK4pbrt5Image12ChannelNamesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %93, ptr noundef nonnull align 8 dereferenceable(152) %67)
          to label %bb.tn unwind label %bb.tq

bb.tn:                                            ; preds = %bb.tm
  %i.flj = mul nsw i32 %i.flg, %.sroa.18.1
  %i.flk = mul nsw i32 %i.flg, %.sroa.0196.1
  %i.fll = load ptr, ptr %93, align 8, !tbaa !163 ; 2 uses
  %i.flm = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  %i.fln = load ptr, ptr %i.flm, align 8, !tbaa !143
  %i.flo = ptrtoint ptr %i.fln to i64
  %i.flp = ptrtoint ptr %i.fll to i64
  %i.flq = sub i64 %i.flo, %i.flp
  %i.flr = ashr exact i64 %i.flq, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  %i.fls = load i64, ptr %i.rw, align 8, !tbaa !75, !noalias !1077
  store i64 %i.fls, ptr %94, align 8, !tbaa !75, !alias.scope !1077
  %i.flt = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  %.sroa.22410.0.insert.ext = zext i32 %i.flj to i64
  %.sroa.22410.0.insert.shift = shl nuw i64 %.sroa.22410.0.insert.ext, 32
  %.sroa.02409.0.insert.ext = zext i32 %i.flk to i64
  %.sroa.02409.0.insert.insert = or disjoint i64 %.sroa.22410.0.insert.shift, %.sroa.02409.0.insert.ext
  %i.flu = ptrtoint ptr %i.flt to i64
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %92, i32 noundef %i.fli, i64 %.sroa.02409.0.insert.insert, ptr %i.fll, i64 %i.flr, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %94, i64 %i.flu)
          to label %bb.to unwind label %bb.tr

bb.to:                                            ; preds = %bb.tn
  %i.flv = load ptr, ptr %93, align 8, !tbaa !163 ; 3 uses
  %i.flw = load ptr, ptr %i.flm, align 8, !tbaa !143 ; 2 uses
  %.not4.i.i.i1504 = icmp eq ptr %i.flv, %i.flw
  br i1 %.not4.i.i.i1504, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1512, label %.lr.ph.i.i.i1505

.lr.ph.i.i.i1505:                                 ; preds = %bb.to, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1508
  %.05.i.i.i1506 = phi ptr [ %i.fmc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1508 ], [ %i.flv, %bb.to ] ; 3 uses
  %i.flx = load ptr, ptr %.05.i.i.i1506, align 8, !tbaa !48 ; 2 uses
  %i.fly = getelementptr inbounds nuw i8, ptr %.05.i.i.i1506, i64 16 ; 2 uses
  %i.flz = icmp eq ptr %i.flx, %i.fly
  br i1 %i.flz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1508, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1507: ; preds = %.lr.ph.i.i.i1505
  %i.fma = load i64, ptr %i.fly, align 8, !tbaa !46
  %i.fmb = add i64 %i.fma, 1
  call void @_ZdlPvm(ptr noundef %i.flx, i64 noundef %i.fmb) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1508

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1508: ; preds = %.lr.ph.i.i.i1505, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1507
  %i.fmc = getelementptr inbounds nuw i8, ptr %.05.i.i.i1506, i64 32 ; 2 uses
  %.not.i.i.i1509 = icmp eq ptr %i.fmc, %i.flw
  br i1 %.not.i.i.i1509, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1510, label %.lr.ph.i.i.i1505, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1510: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1508
  %.pr.i1511 = load ptr, ptr %93, align 8, !tbaa !163
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1512

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1512: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1510, %bb.to
  %i.fmd = phi ptr [ %.pr.i1511, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1510 ], [ %i.flv, %bb.to ] ; 3 uses
  %.not.i.i1.i1513 = icmp eq ptr %i.fmd, null
  br i1 %.not.i.i1.i1513, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1515, label %bb.tp

bb.tp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1512
  %i.fme = getelementptr inbounds nuw i8, ptr %93, i64 16
  %i.fmf = load ptr, ptr %i.fme, align 8, !tbaa !144
  %i.fmg = ptrtoint ptr %i.fmf to i64
  %i.fmh = ptrtoint ptr %i.fmd to i64
  %i.fmi = sub i64 %i.fmg, %i.fmh
  call void @_ZdlPvm(ptr noundef nonnull %i.fmd, i64 noundef %i.fmi) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1515

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1515: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1512, %bb.tp
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #37
  %i.fmj = load i32, ptr %i.aa, align 4, !tbaa !67 ; 2 uses
  %i.fmk = mul nsw i32 %i.fmj, %.sroa.18.1
  %i.fml = icmp sgt i32 %i.fmk, 0
  br i1 %i.fml, label %.lr.ph4520, label %._crit_edge4521

.lr.ph4520:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1515
  %i.fmm = icmp sgt i32 %i.ade, 0
  %wide.trip.count4766 = and i64 %.fr, 2147483647
  br label %bb.tt

._crit_edge4521:                                  ; preds = %._crit_edge4518.split, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %67, ptr noundef nonnull align 8 dereferenceable(152) %92, i64 12, i1 false)
  %i.fmn = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.fmo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.rk, ptr noundef nonnull align 8 dereferenceable(32) %i.fmn)
          to label %.noexc1516 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc1516:                                       ; preds = %._crit_edge4521
  %i.fmp = getelementptr inbounds nuw i8, ptr %92, i64 48
  %i.fmq = load i64, ptr %i.fmp, align 8, !tbaa !75
  store i64 %i.fmq, ptr %i.rw, align 8, !tbaa !75
  %i.fmr = getelementptr inbounds nuw i8, ptr %92, i64 56
  %i.fms = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ry, ptr noundef nonnull align 8 dereferenceable(32) %i.fmr)
          to label %.noexc1517 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc1517:                                       ; preds = %.noexc1516
  %i.fmt = getelementptr inbounds nuw i8, ptr %92, i64 88
  %i.fmu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.fmt)
          to label %.noexc1518 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc1518:                                       ; preds = %.noexc1517
  %i.fmv = getelementptr inbounds nuw i8, ptr %92, i64 120
  %i.fmw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.sp, ptr noundef nonnull align 8 dereferenceable(32) %i.fmv)
          to label %_ZN4pbrt5ImageaSEOS0_.exit1520 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.tq:                                            ; preds = %bb.tm
  %i.fmx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ts

bb.tr:                                            ; preds = %bb.tn
  %i.fmy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #37
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tr, %bb.tq
  %.pn668 = phi { ptr, i32 } [ %i.fmy, %bb.tr ], [ %i.fmx, %bb.tq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #37
  br label %bb.uj

bb.tt:                                            ; preds = %.lr.ph4520, %._crit_edge4518.split
  %i.fmz = phi i32 [ %i.fmj, %.lr.ph4520 ], [ %i.fng, %._crit_edge4518.split ] ; 5 uses
  %indvars.iv4771 = phi i64 [ 0, %.lr.ph4520 ], [ %indvars.iv.next4772, %._crit_edge4518.split ] ; 3 uses
  %i.fna = trunc nuw nsw i64 %indvars.iv4771 to i32
  %i.fnb = sdiv i32 %i.fna, %i.fmz                ; 5 uses
  %i.fnc = mul nsw i32 %i.fmz, %.sroa.0196.1
  %i.fnd = icmp sgt i32 %i.fnc, 0
  br i1 %i.fnd, label %.lr.ph4517, label %._crit_edge4518.split

.lr.ph4517:                                       ; preds = %bb.tt
  %i.fne = icmp sgt i32 %i.fnb, -1
  %i.fnf = icmp slt i32 %i.fnb, 0
  %.sroa.22405.0.insert.shift = shl nuw nsw i64 %indvars.iv4771, 32
  br i1 %i.fmm, label %.preheader.preheader.i2381.lr.ph, label %._crit_edge4518.split

._crit_edge4518.split:                            ; preds = %._crit_edge4514, %.lr.ph4517, %bb.tt
  %i.fng = phi i32 [ %i.fmz, %bb.tt ], [ %i.fmz, %.lr.ph4517 ], [ %i.fnp, %._crit_edge4514 ] ; 2 uses
  %indvars.iv.next4772 = add nuw nsw i64 %indvars.iv4771, 1 ; 2 uses
  %i.fnh = mul nsw i32 %i.fng, %.sroa.18.1
  %i.fni = sext i32 %i.fnh to i64
  %i.fnj = icmp slt i64 %indvars.iv.next4772, %i.fni
  br i1 %i.fnj, label %bb.tt, label %._crit_edge4521, !llvm.loop !1068

.preheader.preheader.i2381.lr.ph:                 ; preds = %.lr.ph4517, %._crit_edge4514
  %indvars.iv4768 = phi i64 [ %indvars.iv.next4769, %._crit_edge4514 ], [ 0, %.lr.ph4517 ] ; 3 uses
  %i.fnk = phi i32 [ %i.fnp, %._crit_edge4514 ], [ %i.fmz, %.lr.ph4517 ]
  %i.fnl = trunc nuw nsw i64 %indvars.iv4768 to i32
  %i.fnm = sdiv i32 %i.fnl, %i.fnk                ; 5 uses
  %i.fnn = icmp sgt i32 %i.fnm, -1
  %i.fno = icmp slt i32 %i.fnm, 0
  %.sroa.02404.0.insert.insert = or disjoint i64 %.sroa.22405.0.insert.shift, %indvars.iv4768
  br label %.preheader.preheader.i2381

._crit_edge4514:                                  ; preds = %bb.ue
  %indvars.iv.next4769 = add nuw nsw i64 %indvars.iv4768, 1 ; 2 uses
  %i.fnp = load i32, ptr %i.aa, align 4, !tbaa !67 ; 3 uses
  %i.fnq = mul nsw i32 %i.fnp, %.sroa.0196.1
  %i.fnr = sext i32 %i.fnq to i64
  %i.fns = icmp slt i64 %indvars.iv.next4769, %i.fnr
  br i1 %i.fns, label %.preheader.preheader.i2381.lr.ph, label %._crit_edge4518.split, !llvm.loop !1069

.preheader.preheader.i2381:                       ; preds = %.preheader.preheader.i2381.lr.ph, %bb.ue
  %indvars.iv4763 = phi i64 [ 0, %.preheader.preheader.i2381.lr.ph ], [ %indvars.iv.next4764, %bb.ue ] ; 5 uses
  %.sroa.04.0.copyload.i1522 = load i64, ptr %i.adc, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i2375 = trunc i64 %.sroa.04.0.copyload.i1522 to i32 ; 5 uses
  %.sroa.9.0.extract.shift.i2376 = lshr i64 %.sroa.04.0.copyload.i1522, 32
  %.sroa.9.0.extract.trunc.i2377 = trunc nuw i64 %.sroa.9.0.extract.shift.i2376 to i32 ; 2 uses
  %i.fnt = icmp slt i32 %i.fnm, %.sroa.0.0.extract.trunc.i2375
  %or.cond.i2382 = select i1 %i.fnn, i1 %i.fnt, i1 false
  br i1 %or.cond.i2382, label %.preheader.1.i2388, label %.preheader.1.sink.split.i2386

.preheader.1.sink.split.i2386:                    ; preds = %.preheader.preheader.i2381
  %i.fnu = add nsw i32 %.sroa.0.0.extract.trunc.i2375, -1
  %..i.i2384 = call i32 @llvm.smin.i32(i32 %i.fnm, i32 %i.fnu)
  %.0.i.i2385 = select i1 %i.fno, i32 0, i32 %..i.i2384
  br label %.preheader.1.i2388

.preheader.1.i2388:                               ; preds = %.preheader.1.sink.split.i2386, %.preheader.preheader.i2381
  %.sroa.02719.0 = phi i32 [ %i.fnm, %.preheader.preheader.i2381 ], [ %.0.i.i2385, %.preheader.1.sink.split.i2386 ] ; 3 uses
  %i.fnv = icmp slt i32 %i.fnb, %.sroa.9.0.extract.trunc.i2377
  %or.cond.1.i2389 = select i1 %i.fne, i1 %i.fnv, i1 false
  br i1 %or.cond.1.i2389, label %.noexc1541, label %bb.tu

bb.tu:                                            ; preds = %.preheader.1.i2388
  %i.fnw = add nsw i32 %.sroa.9.0.extract.trunc.i2377, -1
  %..i.1.i2390 = call i32 @llvm.smin.i32(i32 %i.fnb, i32 %i.fnw)
  %.0.i.1.i2391 = select i1 %i.fnf, i32 0, i32 %..i.1.i2390
  br label %.noexc1541
end_hunk_2
