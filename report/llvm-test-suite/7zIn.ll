begin_hunk_0
inline.NumInlined: 460
inline.NumDeleted: 124
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %i.ct = icmp ult i32 %i.cs, %i.bg
  br i1 %i.ct, label %.preheader, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread, %bb.r
  %i.cu = add i64 %.064, %i.bh
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 1 dereferenceable(32) %i.cv, i64 32, i1 false)
  br label %bb.j, !llvm.loop !83

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.k, %bb.o, %bb.z, %.thread
  %.6 = phi i32 [ %i.cr, %bb.z ], [ %i.bb, %.thread ], [ 1, %bb.o ], [ 1, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #20
  br label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88

end_hunk_1
begin_hunk_2
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.f

15:                                               ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %16 = load i32, ptr %i.q, align 4, !tbaa !8
  %17 = sext i32 %16 to i64
  %.not80 = icmp slt i64 %indvars.iv.next, %17
  br i1 %.not80, label %bb.f, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit92, !llvm.loop !128

bb.d:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3
          cleanup
  br label %bb.ad

bb.f:                                             ; preds = %.lr.ph124, %15
  %indvars.iv = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next, %15 ] ; 2 uses
  %.059121 = phi i32 [ 0, %.lr.ph124 ], [ %.261, %15 ] ; 14 uses
  %.062120 = phi i64 [ %i.t, %.lr.ph124 ], [ %.264, %15 ] ; 7 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 8 uses
end_hunk_3
begin_hunk_4
_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.p, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread
  %.1.i101 = phi i64 [ 0, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ], [ %i.bn, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit ], [ %.1.i100104, %bb.p ] ; 2 uses
  %i.cc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %bb.q unwind label %bb.s       ; 11 uses

bb.q:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 0, ptr %i.cd, align 4, !tbaa !129
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CBufPtrSeqOutStream, i64 16), ptr %i.cc, align 8, !tbaa !13
  %i.ce = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit unwind label %bb.t ; 0 uses
end_hunk_4
begin_hunk_5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !131
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i64 0, ptr %i.ci, align 8, !tbaa !135
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i64 %.1.i101, ptr %i.cj, align 8, !tbaa !136
  %i.ck = load ptr, ptr %0, align 8, !tbaa !85
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.cm = sext i32 %.059121 to i64
end_hunk_5
begin_hunk_6
          to label %bb.r unwind label %.loopexit.a ; 2 uses

bb.r:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
  %.not = icmp eq i32 %i.co, 0                    ; 2 uses
  br i1 %.not, label %bb.w, label %._crit_edge.a

bb.s:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cp = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7
  %i.dv = sext i32 %offset.idx to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x i64>, ptr %i.dw, align 8, !tbaa !60, !alias.scope !137 ; 2 uses
  %wide.load175 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !60, !alias.scope !137 ; 2 uses
  %i.dy = add <2 x i64> %wide.load, %vec.phi173   ; 2 uses
  %i.dz = add <2 x i64> %wide.load175, %vec.phi174 ; 2 uses
  %i.ea = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.eb = add <2 x i64> %vec.phi172, %wide.load175 ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ec = icmp eq i32 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eb, %i.ea
  %i.ed = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx176 = add <2 x i64> %i.dz, %i.dy
  %i.ee = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx176) ; 2 uses
  store i64 %i.ed, ptr %i.z, align 8, !tbaa !84, !alias.scope !141, !noalias !137
  %cmp.n = icmp eq i32 %i.df, %n.vec
  br i1 %cmp.n, label %._crit_edge.a, label %scalar.ph.preheader

end_hunk_7
begin_hunk_8
  store i64 %i.eq, ptr %i.z, align 8, !tbaa !84
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !143

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa183.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
end_hunk_8
begin_hunk_9
  %i.fq = add i64 %i.fk, %i.fo                    ; 2 uses
  store i64 %i.fq, ptr %i.z, align 8, !tbaa !84
  %exitcond.not.3 = icmp eq i32 %i.fl, %i.di
  br i1 %exitcond.not.3, label %._crit_edge.a, label %scalar.ph, !llvm.loop !144

._crit_edge.a:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.aa, %bb.r
  %.264 = phi i64 [ %.062120, %bb.r ], [ %.062120, %bb.aa ], [ %i.ee, %middle.block ], [ %.lcssa183.unr, %scalar.ph.prol.loopexit ], [ %i.fp, %scalar.ph ]
  %.261 = phi i32 [ %.059121, %bb.r ], [ %.059121, %bb.aa ], [ %i.di, %middle.block ], [ %i.di, %scalar.ph ], [ %i.di, %scalar.ph.prol.loopexit ]
  %i.fr = load ptr, ptr %i.cc, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
end_hunk_9
begin_hunk_10
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90: ; preds = %._crit_edge.a
  br i1 %.not, label %15, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit92

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.t, %bb.u, %bb.k, %bb.s, %bb.j, %_ZN7CBufferIhED2Ev.exit83
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZN7CBufferIhED2Ev.exit83 ], [ %lpad.phi, %bb.u ], [ %i.bh, %bb.j ], [ %i.bi, %bb.k ], [ %i.cp, %bb.s ], [ %i.cq, %bb.t ]
  call void @_ZN8NArchive3N7z8CDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %14) #18
  br label %bb.ad

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit92: ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90, %15, %bb.c
  %spec.select = phi i32 [ 0, %bb.c ], [ 0, %15 ], [ %i.co, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90 ]
  call void @_ZN8NArchive3N7z8CDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #18
end_hunk_10
begin_hunk_11
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = !{!130, !5, i64 0}
!130 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!131 = !{!132, !33, i64 16}
!132 = !{!"_ZTS19CBufPtrSeqOutStream", !133, i64 0, !130, i64 8, !33, i64 16, !11, i64 24, !11, i64 32}
!133 = !{!"_ZTS20ISequentialOutStream", !134, i64 0}
!134 = !{!"_ZTS8IUnknown"}
!135 = !{!132, !11, i64 32}
!136 = !{!132, !11, i64 24}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = distinct !{!140, !19, !70, !71}
!141 = !{!142}
!142 = distinct !{!142, !139}
!143 = distinct !{!143, !73}
!144 = distinct !{!144, !19, !70}
!145 = !{!146, !147, i64 0}
!146 = !{!"_ZTS9CMyComPtrI15ICompressCoder2E", !147, i64 0}
!147 = !{!"p1 _ZTS15ICompressCoder2", !10, i64 0}
end_hunk_11
