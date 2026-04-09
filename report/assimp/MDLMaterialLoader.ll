inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp11MDLImporter13SearchPaletteEPPKh:._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.g, ptr noundef nonnull %i.c)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c, !inline_history !3 ; 7 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDLImporter23ReplaceTextureWithColorEPK9aiTexture:bb.a
bb.d:                                             ; preds = %_ZNK7aiTexelneERKS_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %.not19.not = icmp eq ptr %.0, %i.h
  br i1 %.not19.not, label %.critedge, label %bb.e, !llvm.loop !4

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.031 = phi ptr [ %.028, %.lr.ph ], [ %.0, %bb.d ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MDLImporter23ReplaceTextureWithColorEPK9aiTexture:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.pn30, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %.not25 = icmp eq i8 %i.t, %i.v
  br i1 %.not25, label %bb.d, label %_ZNK7aiTexelneERKS_.exit.thread, !llvm.loop !4

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MDLImporter28CreateTextureARGB8_3DGS_MDL3EPKh:bb.a
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

._crit_edge49.loopexit:                           ; preds = %.lr.ph48
  %i.cb = zext i32 %i.cs to i64
end_hunk_3
begin_hunk_4_@_ZN6Assimp11MDLImporter28CreateTextureARGB8_3DGS_MDL3EPKh:bb.a
  %i.cs = load i32, ptr %i.cr, align 8            ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ult i64 %indvars.iv.next57, %i.ct
  br i1 %i.cu, label %.lr.ph48, label %._crit_edge49.loopexit, !llvm.loop !7

bb.h:                                             ; preds = %._crit_edge49
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #22
end_hunk_4
begin_hunk_5_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL4EPKhjPj:bb.a
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #22
end_hunk_5
begin_hunk_6_@_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture:bb.a
  %i.au = mul i32 %i.at, %i.as
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %.loopexit200.loopexit, !llvm.loop !9

.loopexit200.loopexit:                            ; preds = %.lr.ph
  %i.ax = trunc nuw i64 %indvars.iv.next to i32
end_hunk_6
begin_hunk_7_@_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture:bb.a
  %i.cp = mul i32 %i.co, %i.cn
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ult i64 %indvars.iv.next225, %i.cq
  br i1 %i.cr, label %.lr.ph203, label %.loopexit198.loopexit, !llvm.loop !10

.loopexit198.loopexit:                            ; preds = %.lr.ph203
  %i.cs = trunc nuw i64 %indvars.iv.next225 to i32
end_hunk_7
begin_hunk_8_@_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture:bb.a
  %i.ej = mul i32 %i.ei, %i.eh
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next228, %i.ek
  br i1 %i.el, label %.lr.ph206, label %.loopexit196.loopexit, !llvm.loop !11

.loopexit196.loopexit:                            ; preds = %.lr.ph206
  %i.em = trunc nuw i64 %indvars.iv.next228 to i32
end_hunk_8
begin_hunk_9_@_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture:bb.a
  %i.gf = mul i32 %i.ge, %i.gd
  %i.gg = zext i32 %i.gf to i64
  %i.gh = icmp samesign ult i64 %indvars.iv.next234, %i.gg
  br i1 %i.gh, label %.lr.ph212, label %.loopexit.loopexit, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %.lr.ph212
  %i.gi = trunc nuw i64 %indvars.iv.next234 to i32
end_hunk_9
begin_hunk_10_@_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture:bb.a
  %i.hv = mul i32 %i.hu, %i.ht
  %i.hw = zext i32 %i.hv to i64
  %i.hx = icmp samesign ult i64 %indvars.iv.next231, %i.hw
  br i1 %i.hx, label %.lr.ph209, label %._crit_edge.loopexit, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.lr.ph209
  %i.hy = trunc nuw i64 %indvars.iv.next231 to i32
end_hunk_10
begin_hunk_11_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj:bb.a
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !14

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #22
end_hunk_11
begin_hunk_12_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
bb.af:                                            ; preds = %_ZNK7aiTexelneERKS_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i218, i64 4 ; 2 uses
  %.not19.not.i = icmp eq ptr %.0.i, %i.np
  br i1 %.not19.not.i, label %.critedge.i, label %bb.ag, !llvm.loop !4

bb.ag:                                            ; preds = %.lr.ph220, %bb.af
  %.0.i218 = phi ptr [ %.0.i215, %.lr.ph220 ], [ %.0.i, %bb.af ] ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  %i.oc = getelementptr inbounds nuw i8, ptr %.pn.i217, i64 3
  %i.od = load i8, ptr %i.oc, align 1
  %.not25.i = icmp eq i8 %i.ob, %i.od
  br i1 %.not25.i, label %bb.af, label %.loopexit, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.af, %bb.ae
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
end_hunk_13
begin_hunk_14_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  %i.ty = load i32, ptr %i.tx, align 8            ; 2 uses
  %i.tz = zext i32 %i.ty to i64
  %i.ua = icmp samesign ult i64 %indvars.iv.next171, %i.tz
  br i1 %i.ua, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !15

bb.by:                                            ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.sy) #22
end_hunk_14
begin_hunk_15_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !25
  store i8 0, ptr %i.a, align 8, !alias.scope !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !25 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !25 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_15
begin_hunk_16_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !25 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_16
begin_hunk_17_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !25 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_17
begin_hunk_18_@llvm.umax.i64
!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!18 = distinct !{!18, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!21 = distinct !{!21, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!24 = distinct !{!24, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!25 = !{!23, !20, !17}
end_hunk_18
