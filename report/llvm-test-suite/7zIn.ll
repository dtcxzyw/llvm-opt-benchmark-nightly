begin_hunk_0
inline.NumInlined: 461
inline.NumDeleted: 124
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %i.ct = icmp ult i32 %i.cs, %i.bg
  br i1 %i.ct, label %.preheader, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.r, %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread
  %i.cu = add i64 %.064, %i.bh
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 1 dereferenceable(32) %i.cv, i64 32, i1 false)
  br label %bb.j, !llvm.loop !83

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.k, %bb.o, %bb.z, %.thread
  %.6 = phi i32 [ 1, %bb.o ], [ %i.bb, %.thread ], [ %i.cr, %bb.z ], [ 1, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #20
  br label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88

end_hunk_1
begin_hunk_2
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3
          cleanup
  br label %bb.ad

bb.f:                                             ; preds = %.lr.ph124, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90
  %indvars.iv = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90 ] ; 2 uses
  %.059121 = phi i32 [ 0, %.lr.ph124 ], [ %.160.lcssa, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90 ] ; 13 uses
  %.062120 = phi i64 [ %i.t, %.lr.ph124 ], [ %.163.lcssa, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90 ] ; 6 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 8 uses
end_hunk_3
begin_hunk_4
_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.p, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread
  %.1.i101 = phi i64 [ 0, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ], [ %i.bn, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit ], [ %.1.i100104, %bb.p ] ; 2 uses
  %i.cc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %bb.q unwind label %bb.s       ; 13 uses

bb.q:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 0, ptr %i.cd, align 4, !tbaa !128
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CBufPtrSeqOutStream, i64 16), ptr %i.cc, align 8, !tbaa !13
  %i.ce = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit unwind label %bb.t ; 0 uses
end_hunk_4
begin_hunk_5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !130
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i64 0, ptr %i.ci, align 8, !tbaa !134
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i64 %.1.i101, ptr %i.cj, align 8, !tbaa !135
  %i.ck = load ptr, ptr %0, align 8, !tbaa !85
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.cm = sext i32 %.059121 to i64
end_hunk_5
begin_hunk_6
          to label %bb.r unwind label %.loopexit.a ; 2 uses

bb.r:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.w, label %.critedge

bb.s:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cp = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7
  %i.dv = sext i32 %offset.idx to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x i64>, ptr %i.dw, align 8, !tbaa !60, !alias.scope !136 ; 2 uses
  %wide.load175 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !60, !alias.scope !136 ; 2 uses
  %i.dy = add <2 x i64> %wide.load, %vec.phi173   ; 2 uses
  %i.dz = add <2 x i64> %wide.load175, %vec.phi174 ; 2 uses
  %i.ea = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.eb = add <2 x i64> %vec.phi172, %wide.load175 ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ec = icmp eq i32 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eb, %i.ea
  %i.ed = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx176 = add <2 x i64> %i.dz, %i.dy
  %i.ee = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx176) ; 2 uses
  store i64 %i.ed, ptr %i.z, align 8, !tbaa !84, !alias.scope !140, !noalias !136
  %cmp.n = icmp eq i32 %i.df, %n.vec
  br i1 %cmp.n, label %._crit_edge.a, label %scalar.ph.preheader

end_hunk_7
begin_hunk_8
  store i64 %i.eq, ptr %i.z, align 8, !tbaa !84
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !142

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa183.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
end_hunk_8
begin_hunk_9
  %i.fq = add i64 %i.fk, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.z, align 8, !tbaa !84
  %exitcond.not.3 = icmp eq i32 %i.fl, %i.di
  br i1 %exitcond.not.3, label %._crit_edge.a, label %scalar.ph, !llvm.loop !143

._crit_edge.a:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.aa
  %.163.lcssa = phi i64 [ %.062120, %bb.aa ], [ %i.ee, %middle.block ], [ %.lcssa183.unr, %scalar.ph.prol.loopexit ], [ %i.fp, %scalar.ph ]
  %.160.lcssa = phi i32 [ %.059121, %bb.aa ], [ %i.di, %middle.block ], [ %i.di, %scalar.ph ], [ %i.di, %scalar.ph.prol.loopexit ]
  %i.fr = load ptr, ptr %i.cc, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
end_hunk_9
begin_hunk_10
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90: ; preds = %._crit_edge.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %15 = load i32, ptr %i.q, align 4, !tbaa !8
  %16 = sext i32 %15 to i64
  %.not80 = icmp slt i64 %indvars.iv.next, %16
  br i1 %.not80, label %bb.f, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit92, !llvm.loop !144

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.t, %bb.u, %bb.k, %bb.s, %bb.j, %_ZN7CBufferIhED2Ev.exit83
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZN7CBufferIhED2Ev.exit83 ], [ %lpad.phi, %bb.u ], [ %i.bh, %bb.j ], [ %i.bi, %bb.k ], [ %i.cp, %bb.s ], [ %i.cq, %bb.t ]
  call void @_ZN8NArchive3N7z8CDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %14) #18
  br label %bb.ad

.critedge:                                        ; preds = %bb.r
  %17 = load ptr, ptr %i.cc, align 8, !tbaa !13
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit92 unwind label %21 ; 0 uses

21:                                               ; preds = %.critedge
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #21
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit92: ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90, %bb.c, %.critedge
  %spec.select = phi i32 [ %i.co, %.critedge ], [ 0, %bb.c ], [ 0, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90 ]
  call void @_ZN8NArchive3N7z8CDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #18
end_hunk_10
begin_hunk_11
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = !{!129, !5, i64 0}
!129 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!130 = !{!131, !33, i64 16}
!131 = !{!"_ZTS19CBufPtrSeqOutStream", !132, i64 0, !129, i64 8, !33, i64 16, !11, i64 24, !11, i64 32}
!132 = !{!"_ZTS20ISequentialOutStream", !133, i64 0}
!133 = !{!"_ZTS8IUnknown"}
!134 = !{!131, !11, i64 32}
!135 = !{!131, !11, i64 24}
!136 = !{!137}
!137 = distinct !{!137, !138}
!138 = distinct !{!138, !"LVerDomain"}
!139 = distinct !{!139, !19, !70, !71}
!140 = !{!141}
!141 = distinct !{!141, !138}
!142 = distinct !{!142, !73}
!143 = distinct !{!143, !19, !70}
!144 = distinct !{!144, !19}
!145 = !{!146, !147, i64 0}
!146 = !{!"_ZTS9CMyComPtrI15ICompressCoder2E", !147, i64 0}
!147 = !{!"p1 _ZTS15ICompressCoder2", !10, i64 0}
end_hunk_11
