Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zIn?download=true
inline.NumInlined: 459
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE:bb.a
bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0.i = phi ptr [ %i.dt, %bb.t ], [ %i.dt, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.dz) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %.0.i, ptr %i.dy, align 8, !tbaa !52
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !53
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit79._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge, %bb.w
  %i.eb = phi ptr [ %.pre, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit79._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge ], [ %.0.i, %bb.w ] ; 3 uses
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !47  ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !50
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 7 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !51
  %i.eh = sub i64 %i.ee, %i.eg
  %i.ei = icmp ugt i64 %i.do, %i.eh
  br i1 %i.ei, label %bb.x, label %.preheader.i.i80

.preheader.i.i80:                                 ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %.not.i.i81 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i81, label %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85, label %.lr.ph.i.i82.preheader

.lr.ph.i.i82.preheader:                           ; preds = %.preheader.i.i80
  %xtraiter192 = and i64 %i.do, 1
  %i.ej = icmp eq i64 %i.do, 1
  br i1 %i.ej, label %.lr.ph.i.i82.epil.preheader, label %.lr.ph.i.i82.preheader.new

.lr.ph.i.i82.preheader.new:                       ; preds = %.lr.ph.i.i82.preheader
  %unroll_iter196 = and i64 %i.do, 2147483646
  br label %.lr.ph.i.i82

bb.x:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

.lr.ph.i.i82:                                     ; preds = %.lr.ph.i.i82, %.lr.ph.i.i82.preheader.new
  %.06.i.i83 = phi i64 [ 0, %.lr.ph.i.i82.preheader.new ], [ %i.ex, %.lr.ph.i.i82 ] ; 3 uses
  %niter197 = phi i64 [ 0, %.lr.ph.i.i82.preheader.new ], [ %niter197.next.1, %.lr.ph.i.i82 ]
  %i.ek = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !51 ; 2 uses
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.ef, align 8, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !54
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.06.i.i83
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !54
  %i.eq = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.er = load i64, ptr %i.ef, align 8, !tbaa !51 ; 2 uses
  %i.es = add i64 %i.er, 1
  store i64 %i.es, ptr %i.ef, align 8, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !54
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.06.i.i83
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !54
  %i.ex = add nuw nsw i64 %.06.i.i83, 2           ; 2 uses
  %niter197.next.1 = add nuw i64 %niter197, 2     ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85.loopexit.unr-lcssa, label %.lr.ph.i.i82, !llvm.loop !1

_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i82
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85, label %.lr.ph.i.i82.epil.preheader

.lr.ph.i.i82.epil.preheader:                      ; preds = %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85.loopexit.unr-lcssa, %.lr.ph.i.i82.preheader
  %.06.i.i83.epil.init = phi i64 [ 0, %.lr.ph.i.i82.preheader ], [ %i.ex, %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85.loopexit.unr-lcssa ]
  %lcmp.mod195 = trunc i64 %i.do to i1
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.ey = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.ez = load i64, ptr %i.ef, align 8, !tbaa !51 ; 2 uses
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.ef, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !54
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.06.i.i83.epil.init
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !54
  br label %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85

_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85: ; preds = %.lr.ph.i.i82.epil.preheader, %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85.loopexit.unr-lcssa, %.preheader.i.i80, %bb.o
  %.not74 = icmp sgt i8 %i.ad, -1
  br i1 %.not74, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.z:                                             ; preds = %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ff = load <2 x i32>, ptr %i.fe, align 8, !tbaa !13
  %i.fg = add <2 x i32> %i.ff, %i.l               ; 2 uses
  %i.fh = add nuw i32 %.066127, 1                 ; 2 uses
  %exitcond151.not = icmp eq i32 %i.fh, %i.f
  br i1 %exitcond151.not, label %._crit_edge131.loopexit, label %bb.c, !llvm.loop !122

._crit_edge131.loopexit:                          ; preds = %bb.z
  %i.fi = add <2 x i32> %i.fg, <i32 0, i32 -1>
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge131.loopexit, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
  %i.fj = phi <2 x i32> [ <i32 0, i32 -1>, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit ], [ %i.fi, %._crit_edge131.loopexit ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
  %i.fl = extractelement <2 x i32> %i.fj, i64 1   ; 6 uses
  call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, i32 noundef %i.fl)
  %.not144 = icmp eq i32 %i.fl, 0
  br i1 %.not144, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %._crit_edge131
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph136, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit88
  %.1134 = phi i32 [ 0, %.lr.ph136 ], [ %i.ga, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit88 ]
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.fp = call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fo) ; 2 uses
  %i.fq = icmp ugt i64 %i.fp, 2147483647
  br i1 %i.fq, label %bb.ab, label %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit87

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit87:    ; preds = %bb.aa
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.fs = call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fr) ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 2147483647
  br i1 %i.ft, label %bb.ac, label %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit88

bb.ac:                                            ; preds = %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit87
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit88:    ; preds = %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit87
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %i.fs, 32
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %i.fp
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
  %i.fu = load ptr, ptr %i.fm, align 8, !tbaa !21
  %i.fv = load i32, ptr %i.fn, align 4, !tbaa !17
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fw
  store i64 %.sroa.03.0.insert.insert, ptr %i.fx, align 4
  %i.fy = load i32, ptr %i.fn, align 4, !tbaa !17
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fn, align 4, !tbaa !17
  %i.ga = add nuw i32 %.1134, 1                   ; 2 uses
  %exitcond152.not = icmp eq i32 %i.ga, %i.fl
  br i1 %exitcond152.not, label %._crit_edge137, label %bb.aa, !llvm.loop !123

._crit_edge137:                                   ; preds = %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit88, %._crit_edge131
  %i.gb = extractelement <2 x i32> %i.fj, i64 0   ; 5 uses
  %i.gc = icmp ult i32 %i.gb, %i.fl
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge137
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.ae:                                            ; preds = %._crit_edge137
  %i.gd = sub nuw i32 %i.gb, %i.fl                ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i32 noundef %i.gd)
  %i.gf = icmp eq i32 %i.gd, 1
  br i1 %i.gf, label %.preheader, label %.preheader93

.preheader93:                                     ; preds = %bb.ae
  %.not145 = icmp eq i32 %i.gb, %i.fl
  br i1 %.not145, label %.loopexit94, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader93
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  br label %bb.ai

.preheader:                                       ; preds = %bb.ae
  %.not146 = icmp eq i32 %i.gb, 0
  br i1 %.not146, label %.loopexit, label %.lr.ph141

.lr.ph141:                                        ; preds = %.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !17 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  %wide.trip.count.i = zext nneg i32 %i.gj to i64
  br i1 %i.gk, label %.lr.ph141.split.us, label %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.thread

.lr.ph141.split.us:                               ; preds = %.lr.ph141
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !21
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.us, %.lr.ph141.split.us
  %.2140.us = phi i32 [ 0, %.lr.ph141.split.us ], [ %3, %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.us ] ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.ag ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.i.us
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !26
  %i.gp = icmp eq i32 %i.go, %.2140.us
  br i1 %i.gp, label %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.thread, label %bb.af, !llvm.loop !124

_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.us: ; preds = %bb.af
  %3 = add nuw i32 %.2140.us, 1                   ; 2 uses
  %exitcond154.not = icmp eq i32 %3, %i.gb
  br i1 %exitcond154.not, label %.loopexit, label %.lr.ph.i.us, !llvm.loop !125

_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.thread: ; preds = %bb.ag, %.lr.ph141
  %.298 = phi i32 [ 0, %.lr.ph141 ], [ %.2140.us, %bb.ag ]
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ge)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !17
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gu
  store i32 %.298, ptr %i.gv, align 4, !tbaa !13
  %i.gw = load i32, ptr %i.gs, align 4, !tbaa !17
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.us, %.preheader, %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !17
  %.not = icmp eq i32 %i.gz, 1
  br i1 %.not, label %.loopexit94, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.ai:                                            ; preds = %.lr.ph139, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit91
  %.3138 = phi i32 [ 0, %.lr.ph139 ], [ %i.hk, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit91 ]
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.hb = call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ha) ; 2 uses
  %i.hc = icmp ugt i64 %i.hb, 2147483647
  br i1 %i.hc, label %bb.aj, label %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit91

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit91:    ; preds = %bb.ai
  %i.hd = trunc nuw nsw i64 %i.hb to i32
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ge)
  %i.he = load ptr, ptr %i.gg, align 8, !tbaa !21
  %i.hf = load i32, ptr %i.gh, align 4, !tbaa !17
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hg
  store i32 %i.hd, ptr %i.hh, align 4, !tbaa !13
  %i.hi = load i32, ptr %i.gh, align 4, !tbaa !17
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.gh, align 4, !tbaa !17
  %i.hk = add nuw i32 %.3138, 1                   ; 2 uses
  %exitcond153.not = icmp eq i32 %i.hk, %i.gd
  br i1 %exitcond153.not, label %.loopexit94, label %bb.ai, !llvm.loop !126

.loopexit94:                                      ; preds = %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit91, %.preheader93, %.loopexit
  ret void
}

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 7 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !70
  store i64 %i.b, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #18
          to label %.noexc unwind label %bb.f     ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not10.i.i.i.i = icmp eq i64 %i.i, 0
  %.pr.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  br i1 %.not10.i.i.i.i, label %thread-pre-split.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.g)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %.pr.i.i.i, i64 %i.j, i1 false)
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.c, %.noexc
  %i.k = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.k, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pr.i.i.i) #19
  br label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i:         ; preds = %bb.d, %thread-pre-split.i.i.i
  store ptr %i.h, ptr %i.e, align 8, !tbaa !52
  store i64 %i.g, ptr %i.d, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = load i64, ptr %i.f, align 8, !tbaa !53
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17   ; 3 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  store ptr %i.a, ptr %i.w, align 8, !tbaa !30
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.t, align 4, !tbaa !17
  ret i32 %i.u

bb.f:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #19
  resume { ptr, i32 } %i.y
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive13WaitAttributeEy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, %1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.e = phi i64 [ %i.q, %bb.e ], [ %i.c, %bb.a ]
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.h = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add i64 %i.l, %i.h
  store i64 %i.o, ptr %i.k, align 8, !tbaa !51
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.q = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 2 uses
  %i.r = icmp eq i64 %i.q, %1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %1)
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !23, !range !27, !noundef !28
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %i.m = add i64 %i.l, 4                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_ZN8NArchive3N7z10CInArchive10ReadUInt32Ev.exit
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_:bb.a

.lr.ph173:                                        ; preds = %bb.aa
  br i1 %i.dc, label %.lr.ph173.split.us, label %._crit_edge

.lr.ph173.split.us:                               ; preds = %.lr.ph173, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us
  %.094172.us = phi i32 [ %i.he, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us ], [ 1, %.lr.ph173 ]
  %.095171.us = phi i64 [ %i.hd, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us ], [ 0, %.lr.ph173 ]
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !47  ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 10 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !51 ; 12 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !50 ; 2 uses
  %.not.i113.us = icmp ult i64 %i.eb, %i.ed
  br i1 %.not.i113.us, label %bb.ab, label %.split.us

bb.ab:                                            ; preds = %.lr.ph173.split.us
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !49 ; 9 uses
  %i.ef = add nuw i64 %i.eb, 1                    ; 2 uses
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !51
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !54  ; 2 uses
  %i.ei = zext i8 %i.eh to i32                    ; 8 uses
  %i.ej = xor i64 %i.eb, -1
  %i.ek = add i64 %i.ed, %i.ej                    ; 8 uses
  %i.el = icmp sgt i8 %i.eh, -1
  br i1 %i.el, label %bb.ar, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %exitcond.not.i114.us = icmp eq i64 %i.ek, 0
  br i1 %exitcond.not.i114.us, label %.split175.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = add nuw i64 %i.eb, 2                    ; 2 uses
  store i64 %i.em, ptr %i.ea, align 8, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !54
  %i.ep = zext i8 %i.eo to i64                    ; 2 uses
  %i.eq = and i32 %i.ei, 64
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %exitcond.1.not.i115.us = icmp eq i64 %i.ek, 1
  br i1 %exitcond.1.not.i115.us, label %.split175.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = add nuw i64 %i.eb, 3                    ; 2 uses
  store i64 %i.es, ptr %i.ea, align 8, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.em
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !54
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 8
  %i.ex = or disjoint i64 %i.ew, %i.ep            ; 2 uses
  %i.ey = and i32 %i.ei, 32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %exitcond.2.not.i116.us = icmp eq i64 %i.ek, 2
  br i1 %exitcond.2.not.i116.us, label %.split175.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = add nuw i64 %i.eb, 4                    ; 2 uses
  store i64 %i.fa, ptr %i.ea, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.es
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !54
  %i.fd = zext i8 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 16
  %i.ff = or disjoint i64 %i.fe, %i.ex            ; 2 uses
  %i.fg = and i32 %i.ei, 16
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %exitcond.3.not.i117.us = icmp eq i64 %i.ek, 3
  br i1 %exitcond.3.not.i117.us, label %.split175.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fi = add nuw i64 %i.eb, 5                    ; 2 uses
  store i64 %i.fi, ptr %i.ea, align 8, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fa
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !54
  %i.fl = zext i8 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 24
  %i.fn = or disjoint i64 %i.fm, %i.ff            ; 2 uses
  %i.fo = and i32 %i.ei, 8
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %exitcond.4.not.i118.us = icmp eq i64 %i.ek, 4
  br i1 %exitcond.4.not.i118.us, label %.split175.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fq = add nuw i64 %i.eb, 6                    ; 2 uses
  store i64 %i.fq, ptr %i.ea, align 8, !tbaa !51
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fi
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !54
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 32
  %i.fv = or disjoint i64 %i.fu, %i.fn            ; 2 uses
  %i.fw = and i32 %i.ei, 4
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %exitcond.5.not.i119.us = icmp eq i64 %i.ek, 5
  br i1 %exitcond.5.not.i119.us, label %.split175.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = add nuw i64 %i.eb, 7                    ; 2 uses
  store i64 %i.fy, ptr %i.ea, align 8, !tbaa !51
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fq
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !54
  %i.gb = zext i8 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 40
  %i.gd = or i64 %i.gc, %i.fv                     ; 2 uses
  %i.ge = and i32 %i.ei, 2
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %exitcond.6.not.i120.us = icmp eq i64 %i.ek, 6
  br i1 %exitcond.6.not.i120.us, label %.split175.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gg = add nuw i64 %i.eb, 8                    ; 2 uses
  store i64 %i.gg, ptr %i.ea, align 8, !tbaa !51
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fy
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !54
  %i.gj = zext i8 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 48
  %i.gl = or i64 %i.gk, %i.gd                     ; 2 uses
  %i.gm = and i32 %i.ei, 1
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %exitcond.7.not.i121.us = icmp eq i64 %i.ek, 7
  br i1 %exitcond.7.not.i121.us, label %.split175.us, label %.loopexit.loopexit.i122.us

.loopexit.loopexit.i122.us:                       ; preds = %bb.aq
  %i.go = add nuw i64 %i.eb, 9
  store i64 %i.go, ptr %i.ea, align 8, !tbaa !51
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.gg
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !54
  %i.gr = zext i8 %i.gq to i64
  %i.gs = shl nuw i64 %i.gr, 56
  %i.gt = or i64 %i.gs, %i.gl
  br label %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us

bb.ar:                                            ; preds = %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab
  %.01732.lcssa.wide.i124.us = phi i64 [ 0, %bb.ab ], [ 8, %bb.ad ], [ 16, %bb.af ], [ 24, %bb.ah ], [ 32, %bb.aj ], [ 40, %bb.al ], [ 48, %bb.an ], [ 56, %bb.ap ]
  %.01831.lcssa.i125.us = phi i64 [ 0, %bb.ab ], [ %i.ep, %bb.ad ], [ %i.ex, %bb.af ], [ %i.ff, %bb.ah ], [ %i.fn, %bb.aj ], [ %i.fv, %bb.al ], [ %i.gd, %bb.an ], [ %i.gl, %bb.ap ]
  %.02030.lcssa.i126.us = phi i32 [ 383, %bb.ab ], [ 319, %bb.ad ], [ 287, %bb.af ], [ 271, %bb.ah ], [ 263, %bb.aj ], [ 259, %bb.al ], [ 257, %bb.an ], [ 256, %bb.ap ]
  %i.gu = and i32 %.02030.lcssa.i126.us, %i.ei
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, %.01732.lcssa.wide.i124.us
  %i.gx = add nuw nsw i64 %i.gw, %.01831.lcssa.i125.us
  br label %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us

_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us: ; preds = %bb.ar, %.loopexit.loopexit.i122.us
  %spec.select.i123.us = phi i64 [ %i.gx, %bb.ar ], [ %i.gt, %.loopexit.loopexit.i122.us ] ; 2 uses
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.gy = load ptr, ptr %i.ds, align 8, !tbaa !21
  %i.gz = load i32, ptr %i.dt, align 4, !tbaa !17 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.ha
  store i64 %spec.select.i123.us, ptr %i.hb, align 8, !tbaa !55
  %i.hc = add nsw i32 %i.gz, 1
  store i32 %i.hc, ptr %i.dt, align 4, !tbaa !17
  %i.hd = add i64 %spec.select.i123.us, %.095171.us ; 2 uses
  %i.he = add nuw i32 %.094172.us, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.he, %i.dy
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph173.split.us, !llvm.loop !142

._crit_edge:                                      ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us, %bb.aa, %.lr.ph173
  %.095.lcssa = phi i64 [ 0, %bb.aa ], [ 0, %.lr.ph173 ], [ %i.hd, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit127.us ]
  %i.hf = load ptr, ptr %i.du, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !30 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 108
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !17 ; 3 uses
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %._crit_edge
  %i.hl = icmp sgt i32 %i.hj, 0
  br i1 %i.hl, label %.lr.ph.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.hj, -1                ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 44
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !17 ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.hn to i64
  br i1 %i.ho, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i ] ; 4 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.at ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i.us.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !29
  %i.hu = icmp eq i32 %i.ht, %.0615.us.i
  br i1 %i.hu, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, label %bb.as, !llvm.loop !4

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.as
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %8 = icmp sgt i32 %.0615.us.i, 0
  br i1 %8, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !5

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i: ; preds = %bb.at, %.lr.ph.i
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i ], [ %.0615.us.i, %bb.at ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !21
  %i.hx = sext i32 %.0613.i to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !55
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.ia = tail call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.ia, align 16, !tbaa !13
  tail call void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTIi, ptr null) #21
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %._crit_edge, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i
  %.1.i = phi i64 [ %i.hz, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i ], [ 0, %._crit_edge ]
  %i.ib = sub i64 %.1.i, %.095.lcssa
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ic = load ptr, ptr %i.ds, align 8, !tbaa !21
  %i.id = load i32, ptr %i.dt, align 4, !tbaa !17 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.ie
  store i64 %i.ib, ptr %i.if, align 8, !tbaa !55
  %i.ig = add nsw i32 %i.id, 1
  store i32 %i.ig, ptr %i.dt, align 4, !tbaa !17
  %.pre = load i32, ptr %i.e, align 4, !tbaa !17
  br label %bb.au

.split.us:                                        ; preds = %.lr.ph173.split.us
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

.split175.us:                                     ; preds = %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.au:                                            ; preds = %bb.aa, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  %i.ih = phi i32 [ %i.dv, %bb.aa ], [ %.pre, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next, %i.ii
  br i1 %i.ij, label %bb.aa, label %._crit_edge179, !llvm.loop !143

._crit_edge179:                                   ; preds = %bb.au, %.preheader148, %.loopexit149
  br i1 %i.dc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge179
  %i.ik = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.il = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ik)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge179
  %.092 = phi i64 [ %i.il, %bb.av ], [ %i.g, %._crit_edge179 ]
  %i.im = load i32, ptr %i.a, align 4, !tbaa !17  ; 4 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph184, label %.preheader145.a

.lr.ph184:                                        ; preds = %bb.aw
  %i.io = load ptr, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.im to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.iq = icmp eq i32 %i.im, 1
  br i1 %i.iq, label %.epil.preheader, label %.lr.ph184.new

.lr.ph184.new:                                    ; preds = %.lr.ph184
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.az

.preheader145.loopexit.unr-lcssa:                 ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader145.a, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader145.loopexit.unr-lcssa, %.lr.ph184
  %indvars.iv209.epil.init = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next210.1, %.preheader145.loopexit.unr-lcssa ] ; 2 uses
  %.089182.epil.init = phi i32 [ 0, %.lr.ph184 ], [ %i.kf, %.preheader145.loopexit.unr-lcssa ]
  %.090181.epil.init = phi i32 [ 0, %.lr.ph184 ], [ %.191.1, %.preheader145.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod270 = trunc i32 %i.im to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv209.epil.init
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !13 ; 3 uses
  %.not.epil = icmp eq i32 %i.is, 1
  br i1 %.not.epil, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.epil.preheader
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !21
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv209.epil.init
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !30
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 132
  %i.ix = load i8, ptr %i.iw, align 4, !tbaa !76, !range !27, !noundef !28
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %.preheader145.loopexit.epilog-lcssa, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.epil.preheader
  %i.iz = add i32 %i.is, %.090181.epil.init
  br label %.preheader145.loopexit.epilog-lcssa

.preheader145.loopexit.epilog-lcssa:              ; preds = %bb.ay, %bb.ax
  %.191.epil = phi i32 [ %i.iz, %bb.ay ], [ %.090181.epil.init, %bb.ax ]
  %i.ja = add i32 %i.is, %.089182.epil.init
  br label %.preheader145.a

.preheader145.a:                                  ; preds = %.preheader145.loopexit.epilog-lcssa, %.preheader145.loopexit.unr-lcssa, %bb.aw
  %.090.lcssa = phi i32 [ 0, %bb.aw ], [ %.191.1, %.preheader145.loopexit.unr-lcssa ], [ %.191.epil, %.preheader145.loopexit.epilog-lcssa ]
  %.089.lcssa = phi i32 [ 0, %bb.aw ], [ %i.kf, %.preheader145.loopexit.unr-lcssa ], [ %i.ja, %.preheader145.loopexit.epilog-lcssa ] ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 9 uses
  br label %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142

bb.az:                                            ; preds = %bb.bf, %.lr.ph184.new
  %indvars.iv209 = phi i64 [ 0, %.lr.ph184.new ], [ %indvars.iv.next210.1, %bb.bf ] ; 4 uses
  %.089182 = phi i32 [ 0, %.lr.ph184.new ], [ %i.kf, %bb.bf ]
  %.090181 = phi i32 [ 0, %.lr.ph184.new ], [ %.191.1, %bb.bf ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph184.new ], [ %niter.next.1, %bb.bf ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv209
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !13 ; 3 uses
  %.not = icmp eq i32 %i.jn, 1
  br i1 %.not, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jo = load ptr, ptr %i.ip, align 8, !tbaa !21
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv209
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 132
  %i.js = load i8, ptr %i.jr, align 4, !tbaa !76, !range !27, !noundef !28
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ju = add i32 %i.jn, %.090181
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.191 = phi i32 [ %i.ju, %bb.bb ], [ %.090181, %bb.ba ] ; 2 uses
  %i.jv = add i32 %i.jn, %.089182
  %indvars.iv.next210 = or disjoint i64 %indvars.iv209, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.next210
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !13 ; 3 uses
  %.not.1 = icmp eq i32 %i.jx, 1
  br i1 %.not.1, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jy = load ptr, ptr %i.ip, align 8, !tbaa !21
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.next210
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !30
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 132
  %i.kc = load i8, ptr %i.kb, align 4, !tbaa !76, !range !27, !noundef !28
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ke = add i32 %i.jx, %.191
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.191.1 = phi i32 [ %i.ke, %bb.be ], [ %.191, %bb.bd ] ; 3 uses
  %i.kf = add i32 %i.jx, %i.jv                    ; 3 uses
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader145.loopexit.unr-lcssa, label %bb.az, !llvm.loop !144

_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142:  ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142.backedge, %.preheader145.a
  %.193 = phi i64 [ %.092, %.preheader145.a ], [ %.193.be, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142.backedge ]
  switch i64 %.193, label %bb.bs [
    i64 10, label %bb.bg
    i64 0, label %bb.bp
  ]

bb.bg:                                            ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.jc, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %6, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.je, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %7, align 8, !tbaa !20
  invoke void @_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.090.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.preheader144 unwind label %bb.bj

.preheader144:                                    ; preds = %bb.bg
  %i.kg = load i32, ptr %i.a, align 4, !tbaa !17
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.preheader144, %.loopexit143
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.loopexit143 ], [ 0, %.preheader144 ] ; 3 uses
  %.084191 = phi i32 [ %.2, %.loopexit143 ], [ 0, %.preheader144 ] ; 3 uses
  %i.ki = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv217
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !13 ; 3 uses
  %i.kl = load ptr, ptr %i.jf, align 8, !tbaa !21
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv217
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !30 ; 2 uses
  %i.ko = icmp eq i32 %i.kk, 1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 132
  %i.kq = load i8, ptr %i.kp, align 4, !range !27
  %i.kr = trunc nuw i8 %i.kq to i1
  %or.cond = select i1 %i.ko, i1 %i.kr, i1 false
end_hunk_1
begin_hunk_2_@_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi:bb.a
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit:  ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !55
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !51
  br label %bb.j

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ %i.al, %_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.an = load i32, ptr %i.g, align 4, !tbaa !17  ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  store i64 %.0, ptr %i.ap, align 8, !tbaa !55
  %i.aq = add nsw i32 %i.an, 1
  store i32 %i.aq, ptr %i.g, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !149

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8NArchive3N7z13CStreamSwitchD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.CRecordVector.2, align 8     ; 10 uses
  %7 = alloca %class.CRecordVector.3, align 8     ; 9 uses
  %8 = alloca %class.CRecordVector.1, align 8     ; 9 uses
  %9 = alloca %class.CObjectVector.7, align 8     ; 13 uses
  %10 = alloca %class.CRecordVector.1, align 8    ; 9 uses
  %11 = alloca %class.CRecordVector.2, align 8    ; 9 uses
  %12 = alloca %class.CRecordVector.3, align 8    ; 9 uses
  %13 = alloca %class.CRecordVector.1, align 8    ; 9 uses
  %14 = alloca %"class.NArchive::N7z::CDecoder", align 8 ; 7 uses
  %15 = alloca %class.CBuffer, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.b, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %6, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.d, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %7, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.f, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %8, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.h, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE, i64 16), ptr %9, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.j, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.l, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %11, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.n, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %12, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.p, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %13, align 8, !tbaa !20
  invoke void @_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZN8NArchive3N7z8CDecoderC1Eb(ptr noundef nonnull align 8 dereferenceable(232) %14, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %.not80113 = icmp sgt i32 %i.r, 0
  br i1 %.not80113, label %.lr.ph119, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90

.lr.ph119:                                        ; preds = %bb.c
  %i.s = load i64, ptr %2, align 8, !tbaa !55
  %i.t = add i64 %i.s, %1
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV19CBufPtrSeqOutStream, i64 24), align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.e:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.f:                                             ; preds = %.lr.ph119, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit88
  %indvars.iv = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit88 ] ; 2 uses
  %.050115 = phi i64 [ %i.t, %.lr.ph119 ], [ %.151.lcssa, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit88 ] ; 6 uses
  %.053114 = phi i32 [ 0, %.lr.ph119 ], [ %.154.lcssa, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit88 ] ; 13 uses
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %15, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.ah = invoke noundef i32 @_ZN13CObjectVectorI7CBufferIhEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %15, align 8, !tbaa !20
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !52  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #19, !inline_history !67
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !17
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 108
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !17 ; 3 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %bb.i
  %i.at = icmp sgt i32 %i.ar, 0
  br i1 %i.at, label %.lr.ph.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.ar, -1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.av to i64
  br i1 %i.aw, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i ] ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.k ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.us.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bc = icmp eq i32 %i.bb, %.0615.us.i
  br i1 %i.bc, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, label %bb.j, !llvm.loop !4

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.j
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %16 = icmp sgt i32 %.0615.us.i, 0
  br i1 %16, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !5

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.bd = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.bd, align 16, !tbaa !13
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %15, align 8, !tbaa !20
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !52  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN7CBufferIhED2Ev.exit81, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #19, !inline_history !67
  br label %_ZN7CBufferIhED2Ev.exit81

_ZN7CBufferIhED2Ev.exit81:                        ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

bb.n:                                             ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

bb.o:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %bb.k, %.lr.ph.i
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i ], [ %.0615.us.i, %bb.k ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bl = sext i32 %.0613.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !55 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 5 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %bb.p

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread: ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !53
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %.thread

bb.p:                                             ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bn) #18
          to label %.noexc82 unwind label %bb.o   ; 3 uses

.noexc82:                                         ; preds = %bb.q
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !53 ; 2 uses
  %.not10.i = icmp eq i64 %i.bv, 0
  br i1 %.not10.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %.noexc82
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52
  %i.by = call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bn)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %i.bx, i64 %i.by, i1 false)
  br label %.thread

.thread:                                          ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread, %bb.r, %.noexc82, %bb.p
  %.1.i9599 = phi i64 [ %i.bn, %bb.r ], [ %i.bn, %.noexc82 ], [ 0, %bb.p ], [ 0, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ] ; 2 uses
  %i.bz = phi ptr [ %i.bo, %bb.r ], [ %i.bo, %.noexc82 ], [ %i.bo, %bb.p ], [ %i.br, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ]
  %.0.i = phi ptr [ %i.bu, %bb.r ], [ %i.bu, %.noexc82 ], [ null, %bb.p ], [ null, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  store ptr %.0.i, ptr %i.ca, align 8, !tbaa !52
  store i64 %.1.i9599, ptr %i.bz, align 8, !tbaa !53
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.t, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread
  %.1.i96 = phi i64 [ 0, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ], [ %i.bn, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit ], [ %.1.i9599, %bb.t ] ; 2 uses
  %i.cd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %bb.u unwind label %bb.w       ; 13 uses

bb.u:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 0, ptr %i.ce, align 4, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CBufPtrSeqOutStream, i64 16), ptr %i.cd, align 8, !tbaa !20
  %i.cf = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit unwind label %bb.x, !inline_history !150 ; 0 uses

_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit: ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !163
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store i64 0, ptr %i.cj, align 8, !tbaa !164
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %.1.i96, ptr %i.ck, align 8, !tbaa !165
  %i.cl = load ptr, ptr %0, align 8, !tbaa !69
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.cn = sext i32 %.053114 to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = invoke noundef i32 @_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj(ptr noundef nonnull align 8 dereferenceable(232) %14, ptr noundef %i.cl, i64 noundef %.050115, ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(133) %i.ag, ptr noundef nonnull %i.cd, ptr noundef null, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i1 noundef zeroext false, i32 noundef 1)
          to label %bb.v unwind label %.loopexit  ; 2 uses

bb.v:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.aa, label %.critedge

bb.w:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

bb.x:                                             ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

.loopexit:                                        ; preds = %bb.ab, %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef i32 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #20
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 132
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !76, !range !27, !noundef !28
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.dc = invoke i32 @CrcCalc(ptr noundef %i.db, i64 noundef %.1.i96)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !78
  %.not70 = icmp eq i32 %i.dc, %i.de
  br i1 %.not70, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !17 ; 9 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ae
  %i.di = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 8 uses
  %.promoted = load i64, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %i.dj = add i32 %.053114, %i.dg                 ; 4 uses
  %min.iters.check = icmp ult i32 %i.dg, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dk = add nsw i32 %i.dg, -1
  %i.dl = add i32 %.053114, %i.dk
  %i.dm = icmp slt i32 %i.dl, %.053114
  br i1 %i.dm, label %scalar.ph.preheader, label %vector.memcheck

end_hunk_2
begin_hunk_3_@_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev:bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CObjectVector.6, align 8     ; 15 uses
  %5 = alloca %class.CRecordVector.2, align 8     ; 13 uses
  %6 = alloca %class.CRecordVector.3, align 8     ; 13 uses
  %7 = alloca %class.CRecordVector.1, align 8     ; 14 uses
  %8 = alloca %"struct.NArchive::N7z::CFileItem", align 8 ; 8 uses
  %9 = alloca %class.CRecordVector.3, align 8     ; 18 uses
  %10 = alloca %class.CRecordVector.3, align 8    ; 16 uses
  %11 = alloca %class.CRecordVector.3, align 8    ; 16 uses
  %12 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 7 uses
  %13 = alloca %class.CRecordVector.3, align 8    ; 10 uses
  %14 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.f = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.i = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !51   ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i:   ; preds = %.lr.ph.i
  %i.p = add i64 %i.m, %i.i
  store i64 %i.p, ptr %i.l, align 8, !tbaa !51
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.r = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit, label %.lr.ph.i, !llvm.loop !2

_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit: ; preds = %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i, %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.u = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit, %bb.a
  %.0169 = phi i64 [ %i.u, %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.w, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI7CBufferIhEE, i64 16), ptr %4, align 8, !tbaa !20
  %i.x = icmp eq i64 %.0169, 3
  br i1 %i.x, label %bb.e, label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.ab = invoke noundef i32 @_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.h, label %.critedge

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.h:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !89
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !186
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !186
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ah = invoke noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit unwind label %bb.g

_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit:       ; preds = %bb.h, %bb.d
  %.2171 = phi i64 [ %.0169, %bb.d ], [ %i.ah, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.aj, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %5, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.al, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %6, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.an, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %7, align 8, !tbaa !20
  %i.ao = icmp eq i64 %.2171, 4
  br i1 %i.ao, label %bb.i, label %.preheader332.a

.preheader332.a:                                  ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit207

.lr.ph:                                           ; preds = %.preheader332.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  br label %bb.m

bb.i:                                             ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !89
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !187
  %i.bk = add i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !187
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.bm = invoke noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit207 unwind label %bb.k

bb.k:                                             ; preds = %bb.u, %bb.j, %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit207, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.l:                                             ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.bq = load i32, ptr %i.au, align 4, !tbaa !17
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.br
  store i32 1, ptr %i.bs, align 4, !tbaa !13
  %i.bt = load i32, ptr %i.au, align 4, !tbaa !17
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.au, align 4, !tbaa !17
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 108
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17 ; 3 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %bb.n
  %i.cb = icmp sgt i32 %i.bz, 0
  br i1 %i.cb, label %.lr.ph.i208, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i208:                                      ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.bz, -1                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !17 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.cd to i64
  br i1 %i.ce, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i208, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i208 ] ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.us.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !29
  %i.ck = icmp eq i32 %i.cj, %.0615.us.i
  br i1 %i.ck, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, label %bb.o, !llvm.loop !4

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.o
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %15 = icmp sgt i32 %.0615.us.i, 0
  br i1 %15, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !5

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i: ; preds = %bb.p, %.lr.ph.i208
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i208 ], [ %.0615.us.i, %bb.p ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21
  %i.cn = sext i32 %.0613.i to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !55
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.cq = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.cq, align 16, !tbaa !13
  invoke void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc unwind label %.loopexit.split-lp335

.noexc:                                           ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, %bb.n
  %.1.i = phi i64 [ %i.cp, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i ], [ 0, %bb.n ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %.loopexit334

bb.q:                                             ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  %i.cr = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.cs = load i32, ptr %i.ax, align 4, !tbaa !17 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ct
  store i64 %.1.i, ptr %i.cu, align 8, !tbaa !55
  %i.cv = add nsw i32 %i.cs, 1
  store i32 %i.cv, ptr %i.ax, align 4, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bx, i64 132
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !76, !range !27, !noundef !28
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.r unwind label %.loopexit334

bb.r:                                             ; preds = %bb.q
  %i.cy = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.cz = load i32, ptr %i.az, align 4, !tbaa !17 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 %i.da
  store i8 %i.cx, ptr %i.db, align 1, !tbaa !23
  %i.dc = add nsw i32 %i.cz, 1
  store i32 %i.dc, ptr %i.az, align 4, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !78
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %.loopexit334

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.dg = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dh
  store i32 %i.de, ptr %i.di, align 4, !tbaa !13
  %i.dj = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.bb, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dl = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %bb.m, label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit207, !llvm.loop !171

.loopexit334:                                     ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, %bb.q, %bb.r
  %lpad.loopexit336 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp335:                            ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  %lpad.loopexit.split-lp337 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit207:    ; preds = %bb.s, %.preheader332.a, %bb.j
  %.3172 = phi i64 [ %i.bm, %bb.j ], [ %.2171, %.preheader332.a ], [ %.2171, %bb.s ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %bb.t unwind label %bb.k

bb.t:                                             ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit207
  switch i64 %.3172, label %bb.u [
    i64 0, label %bb.cq
    i64 5, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc213 unwind label %bb.k

.noexc213:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.dq = invoke noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.noexc214 unwind label %bb.ac ; 5 uses

.noexc214:                                        ; preds = %bb.v
  %i.dr = icmp ugt i64 %i.dq, 2147483647
  br i1 %i.dr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc214
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc215 unwind label %bb.ac

.noexc215:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.noexc214
  %i.ds = trunc nuw nsw i64 %i.dq to i32          ; 7 uses
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i32 noundef %i.ds)
          to label %.preheader331 unwind label %bb.ac

.preheader331:                                    ; preds = %bb.x
  %.not365 = icmp eq i64 %i.dq, 0                 ; 6 uses
  br i1 %.not365, label %._crit_edge, label %.lr.ph343

.lr.ph343:                                        ; preds = %.preheader331
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph343, %_ZN8NArchive3N7z9CFileItemD2Ev.exit
  %.0141342 = phi i32 [ 0, %.lr.ph343 ], [ %i.fg, %_ZN8NArchive3N7z9CFileItemD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  %i.dx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %.noexc216 unwind label %bb.ad ; 9 uses

.noexc216:                                        ; preds = %bb.y
  %i.dy = ptrtoaddr ptr %i.dx to i64
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !58
  %i.ea = icmp sgt i32 %i.dz, 0
  %.pre1.i.i = load i32, ptr %i.du, align 8, !tbaa !60 ; 5 uses
  br i1 %i.ea, label %.preheader.i.i.i, label %bb.z

.preheader.i.i.i:                                 ; preds = %.noexc216
  %i.eb = icmp sgt i32 %.pre1.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.dt, align 8, !tbaa !59 ; 9 uses
  br i1 %i.eb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.pre.i.i.i457 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre1.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre1.i.i, 8
  %i.ec = sub i64 %.pre.i.i.i457, %i.dy
  %diff.check = icmp ugt i64 %i.ec, -32
  %or.cond489 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond489, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <4 x i32>, ptr %i.ed, align 4, !tbaa !62
  %wide.load458 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !62
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <4 x i32> %wide.load, ptr %i.ef, align 4, !tbaa !62
  store <4 x i32> %wide.load458, ptr %i.eg, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !62
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i.i.i.prol
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !62
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !173

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.el = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %._crit_edge.thread.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.en = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.en, label %bb.z, label %._crit_edge.thread.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !62
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i.i.i
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !62
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
end_hunk_3
