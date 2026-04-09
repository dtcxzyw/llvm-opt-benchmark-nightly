inline.NumInlined: 299
inline.NumDeleted: 163
begin_hunk_0_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.cj = load i32, ptr %i.ci, align 1            ; 3 uses
  store i32 %i.cj, ptr %i.bi, align 8
  %i.ck = load i32, ptr %i.ci, align 1            ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 5 uses
  %i.cm = shl nuw nsw i64 %i.cl, 4
  %i.cn = or disjoint i64 %i.cm, 8
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #21
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.u:                                             ; preds = %bb.t
  store i64 %i.cl, ptr %i.co, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = icmp eq i32 %i.ck, 0
  br i1 %i.cq, label %.loopexit243, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cl
  %11 = add nuw nsw i64 %i.cl, 1152921504606846975
  %12 = and i64 %11, 1152921504606846975
  %xtraiter = and i64 %i.cl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.v, %.prol.preheader
  %13 = phi ptr [ %15, %.prol.preheader ], [ %i.cp, %bb.v ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.v ]
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !8

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.v
  %.unr = phi ptr [ %i.cp, %bb.v ], [ %15, %.prol.preheader ]
  %16 = icmp samesign ult i64 %12, 7
  br i1 %16, label %.loopexit243, label %bb.w

bb.w:                                             ; preds = %.prol.loopexit, %bb.w
  %i.cs = phi ptr [ %i.cu, %bb.w ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cs, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  store ptr null, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  store i32 0, ptr %30, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store ptr null, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 128 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cr
  br i1 %i.cv, label %.loopexit243, label %bb.w

.loopexit243:                                     ; preds = %.prol.loopexit, %bb.w, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  store ptr %i.cp, ptr %i.cw, align 8
  %i.cx = mul i32 %i.cj, 3                        ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ho = load ptr, ptr %i.j, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #17, !inline_history !10
  ret void

bb.bo:                                            ; preds = %.lr.ph, %bb.dc
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ru = load i32, ptr %i.rt, align 1
  %i.rv = zext i32 %i.ru to i64
  %i.rw = icmp samesign ult i64 %indvars.iv.next, %i.rv
  br i1 %i.rw, label %bb.bo, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !11

.thread233:                                       ; preds = %bb.aj, %bb.ar, %bb.bb, %bb.bh
  %.pn160.pn.pn.pn.ph = phi { ptr, i32 } [ %i.gt, %bb.bh ], [ %.pn147.pn.pn, %bb.bb ], [ %.pn151.pn, %bb.ar ], [ %i.es, %bb.aj ]
end_hunk_3
begin_hunk_4_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.sa = load ptr, ptr %i.j, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #17, !inline_history !10
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211: ; preds = %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210, %_ZNSt6vectorIhSaIhEED2Ev.exit208, %_ZNSt6vectorIhSaIhEED2Ev.exit208.thread239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
end_hunk_4
begin_hunk_5_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !21
  store i8 0, ptr %i.a, align 8, !alias.scope !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !21 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !21 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_5
begin_hunk_6_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !21 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_6
begin_hunk_7_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !21 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_7
begin_hunk_8_@llvm.experimental.noalias.scope.decl
!5 = distinct !{!5, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{null, null}
!11 = distinct !{!11, !7}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!14 = distinct !{!14, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!17 = distinct !{!17, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!20 = distinct !{!20, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!21 = !{!19, !16, !13}
end_hunk_8
