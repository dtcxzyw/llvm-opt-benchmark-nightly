Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ExpandImm?download=true
inline.NumInlined: 283
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL20tryToreplicateChunksmRN4llvm15SmallVectorImplINS_11AArch64_IMM12ImmInsnModelEEE:bb.a
bb.u:                                             ; preds = %._crit_edge91
  %i.et = zext i32 %i.er to i64
  %i.eu = load ptr, ptr %1, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ew = load i32, ptr %i.di, align 8, !tbaa !18
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.di, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit57

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit57: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.critedge53

.critedge:                                        ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i, %bb.d, %bb.c
  %i.ey = add i64 %.pn, 16
  %i.ez = ashr exact i64 %i.ey, 4                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.ez, %i.af
  br i1 %.not.i.i, label %bb.v, label %.critedge53

bb.v:                                             ; preds = %.critedge
  %i.fa = lshr i64 %i.ez, 5                       ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !29
  %i.fd = trunc nuw i64 %i.ez to i32
  %i.fe = and i32 %i.fd, 31
  %i.ff = shl nsw i32 -1, %i.fe
  %i.fg = and i32 %i.fc, %i.ff                    ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.v
  %i.fi = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %i.fj = icmp eq i64 %i.fi, %i.aw
  br i1 %i.fj, label %.critedge53, label %.lr.ph193

.lr.ph.i.i:                                       ; preds = %.lr.ph193
  %i.fk = add i64 %i.fm, 1                        ; 2 uses
  %i.fl = icmp eq i64 %i.fk, %i.aw
  br i1 %i.fl, label %.critedge53, label %.lr.ph193, !llvm.loop !54

.lr.ph193:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.fm = phi i64 [ %i.fk, %.lr.ph.i.i ], [ %i.fi, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !29 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEELb0EEppEv.exit, !llvm.loop !54

_ZN4llvm16DenseMapIteratorImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEELb0EEppEv.exit: ; preds = %.lr.ph193, %bb.v
  %.012.lcssa.i.i = phi i64 [ %i.fa, %bb.v ], [ %i.fm, %.lr.ph193 ]
  %.0.lcssa.i.i = phi i32 [ %i.fg, %bb.v ], [ %i.fo, %.lr.ph193 ]
  %i.fq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 9
  %i.fr = shl nuw nsw i32 %i.fq, 4
  %.idx168 = zext nneg i32 %i.fr to i64
  %i.fs = or disjoint i64 %.idx.i.i, %.idx168     ; 2 uses
  %.not95 = icmp eq i64 %i.fs, %.idx167
  br i1 %.not95, label %.critedge53, label %bb.c

.critedge53:                                      ; preds = %.lr.ph.i.i.i, %.critedge, %_ZN4llvm16DenseMapIteratorImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E5beginEv.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit55, %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit57
  %i.ft = phi i1 [ true, %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit57 ], [ true, %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit55 ], [ false, %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E5beginEv.exit ], [ false, %.critedge ], [ false, %.lr.ph.i.i ], [ false, %bb.a ], [ false, %.lr.ph.i.i.i.preheader ], [ false, %.lr.ph.i.i.preheader ], [ false, %_ZN4llvm16DenseMapIteratorImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEELb0EEppEv.exit ], [ false, %.lr.ph.i.i.i ]
  %i.fu = load i32, ptr %i.aa, align 4, !tbaa !35 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.critedge53
  %i.fw = load ptr, ptr %2, align 8, !tbaa !33
  %i.fx = zext i32 %i.fu to i64                   ; 2 uses
  %i.fy = shl nuw nsw i64 %i.fx, 4
  %i.fz = add nuw nsw i64 %i.fx, 31
  %i.ga = lshr i64 %i.fz, 3
  %i.gb = and i64 %i.ga, 1073741820
  %i.gc = add nuw nsw i64 %i.gb, %i.fy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fw, i64 noundef %i.gc, i64 noundef 8) #10
  br label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit

_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit: ; preds = %.critedge53, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 %i.ft
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL17trySequenceOfOnesmRN4llvm15SmallVectorImplINS_11AArch64_IMM12ImmInsnModelEEE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.llvm::AArch64_IMM::ImmInsnModel", align 8 ; 7 uses
  %3 = alloca %"struct.llvm::AArch64_IMM::ImmInsnModel", align 8 ; 7 uses
  %4 = alloca %"struct.llvm::AArch64_IMM::ImmInsnModel", align 8 ; 7 uses
  %i.a = shl i64 %0, 48                           ; 2 uses
  %i.b = ashr exact i64 %i.a, 48                  ; 4 uses
  %.off.i = add nsw i64 %i.b, -1                  ; 2 uses
  %switch.i = icmp ult i64 %.off.i, -2
  br i1 %switch.i, label %_ZL12isStartChunkm.exit, label %.thread

_ZL12isStartChunkm.exit:                          ; preds = %bb.a
  %.not.i.i = icmp ne i64 %i.a, -281474976710656
  %i.c = or i64 %.off.i, %i.b
  %i.d = icmp eq i64 %i.c, -1
  %i.e = and i1 %.not.i.i, %i.d
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZL12isStartChunkm.exit
  %i.f = add nsw i64 %i.b, 1
  %i.g = and i64 %i.f, %i.b
  %i.h = icmp ne i64 %i.g, 0
  %spec.select = sext i1 %i.h to i32
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %_ZL12isStartChunkm.exit
  %.191 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %_ZL12isStartChunkm.exit ] ; 2 uses
  %.189 = phi i32 [ %spec.select, %bb.b ], [ -1, %bb.a ], [ -1, %_ZL12isStartChunkm.exit ] ; 3 uses
  %i.i = lshr i64 %0, 16                          ; 2 uses
  %i.j = shl i64 %i.i, 48                         ; 2 uses
  %i.k = ashr exact i64 %i.j, 48                  ; 4 uses
  %.off.i.1 = add nsw i64 %i.k, -1                ; 2 uses
  %switch.i.1 = icmp ult i64 %.off.i.1, -2
  br i1 %switch.i.1, label %_ZL12isStartChunkm.exit.1, label %.thread.1

_ZL12isStartChunkm.exit.1:                        ; preds = %.thread
  %.not.i.i.1 = icmp ne i64 %i.j, -281474976710656
  %i.l = or i64 %.off.i.1, %i.k
  %i.m = icmp eq i64 %i.l, -1
  %i.n = and i1 %.not.i.i.1, %i.m
  br i1 %i.n, label %.thread.1, label %bb.c

bb.c:                                             ; preds = %_ZL12isStartChunkm.exit.1
  %i.o = add nsw i64 %i.k, 1
  %i.p = and i64 %i.o, %i.k
  %i.q = icmp eq i64 %i.p, 0
  %spec.select.1 = select i1 %i.q, i32 1, i32 %.189
  br label %.thread.1

.thread.1:                                        ; preds = %bb.c, %_ZL12isStartChunkm.exit.1, %.thread
  %.191.1 = phi i32 [ %.191, %bb.c ], [ %.191, %.thread ], [ 1, %_ZL12isStartChunkm.exit.1 ] ; 2 uses
  %.189.1 = phi i32 [ %spec.select.1, %bb.c ], [ %.189, %.thread ], [ %.189, %_ZL12isStartChunkm.exit.1 ] ; 3 uses
  %i.r = lshr i64 %0, 32                          ; 3 uses
  %i.s = shl i64 %i.r, 48                         ; 2 uses
  %i.t = ashr exact i64 %i.s, 48                  ; 4 uses
  %.off.i.2 = add nsw i64 %i.t, -1                ; 2 uses
  %switch.i.2 = icmp ult i64 %.off.i.2, -2
  br i1 %switch.i.2, label %_ZL12isStartChunkm.exit.2, label %.thread.2

_ZL12isStartChunkm.exit.2:                        ; preds = %.thread.1
  %.not.i.i.2 = icmp ne i64 %i.s, -281474976710656
  %i.u = or i64 %.off.i.2, %i.t
  %i.v = icmp eq i64 %i.u, -1
  %i.w = and i1 %.not.i.i.2, %i.v
  br i1 %i.w, label %.thread.2, label %bb.d

bb.d:                                             ; preds = %_ZL12isStartChunkm.exit.2
  %i.x = add nsw i64 %i.t, 1
  %i.y = and i64 %i.x, %i.t
  %i.z = icmp eq i64 %i.y, 0
  %spec.select.2 = select i1 %i.z, i32 2, i32 %.189.1
  br label %.thread.2

.thread.2:                                        ; preds = %bb.d, %_ZL12isStartChunkm.exit.2, %.thread.1
  %.191.2 = phi i32 [ %.191.1, %bb.d ], [ %.191.1, %.thread.1 ], [ 2, %_ZL12isStartChunkm.exit.2 ] ; 2 uses
  %.189.2 = phi i32 [ %spec.select.2, %bb.d ], [ %.189.1, %.thread.1 ], [ %.189.1, %_ZL12isStartChunkm.exit.2 ] ; 3 uses
  %i.aa = lshr i64 %0, 48                         ; 2 uses
  %i.ab = ashr i64 %0, 48                         ; 4 uses
  %.off.i.3 = add nsw i64 %i.ab, -1               ; 2 uses
  %switch.i.3 = icmp ult i64 %.off.i.3, -2
  br i1 %switch.i.3, label %_ZL12isStartChunkm.exit.3, label %.thread.3

_ZL12isStartChunkm.exit.3:                        ; preds = %.thread.2
  %.not.i.i.3 = icmp ult i64 %0, -281474976710656
  %i.ac = or i64 %.off.i.3, %i.ab
  %i.ad = icmp eq i64 %i.ac, -1
  %i.ae = and i1 %.not.i.i.3, %i.ad
  br i1 %i.ae, label %.thread.3, label %bb.e

bb.e:                                             ; preds = %_ZL12isStartChunkm.exit.3
  %i.af = add nsw i64 %i.ab, 1
  %i.ag = and i64 %i.af, %i.ab
  %i.ah = icmp eq i64 %i.ag, 0
  %spec.select.3 = select i1 %i.ah, i32 3, i32 %.189.2
  br label %.thread.3

.thread.3:                                        ; preds = %bb.e, %_ZL12isStartChunkm.exit.3, %.thread.2
  %.191.3 = phi i32 [ %.191.2, %bb.e ], [ %.191.2, %.thread.2 ], [ 3, %_ZL12isStartChunkm.exit.3 ] ; 11 uses
  %.189.3 = phi i32 [ %spec.select.3, %bb.e ], [ %.189.2, %.thread.2 ], [ %.189.2, %_ZL12isStartChunkm.exit.3 ] ; 11 uses
  %i.ai = icmp ne i32 %.191.3, -1
  %i.aj = icmp ne i32 %.189.3, -1
  %or.cond.not = select i1 %i.ai, i1 %i.aj, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %.thread.3
  %.not101.not = icmp samesign ugt i32 %.191.3, %.189.3
  %i.ak = and i64 %0, 65535                       ; 2 uses
  %i.al = and i64 %i.i, 65535                     ; 4 uses
  br i1 %.not101.not, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.f
  %i.am = icmp eq i32 %.191.3, 0                  ; 2 uses
  %.not = icmp eq i64 %i.ak, 0
  %or.cond96 = or i1 %i.am, %.not                 ; 3 uses
  %i.an = and i64 %0, -65536
  %.147 = select i1 %i.am, i64 %0, i64 %i.an      ; 3 uses
  %i.ao = icmp samesign ult i32 %.191.3, 2
  %i.ap = icmp ne i32 %.189.3, 0
  %or.cond.not100.1 = select i1 %i.ao, i1 %i.ap, i1 false
  %.not.1 = icmp eq i64 %i.al, 0
  %or.cond96.1 = or i1 %or.cond.not100.1, %.not.1
  br i1 %or.cond96.1, label %bb.u, label %bb.t

.split.us.preheader:                              ; preds = %bb.f
  %i.aq = icmp eq i32 %.189.3, 0
  %.not.us = icmp eq i64 %i.ak, 65535             ; 2 uses
  %or.cond96.us = or i1 %i.aq, %.not.us           ; 3 uses
  %i.ar = or i64 %0, 65535
  %.147.us = select i1 %or.cond96.us, i64 %0, i64 %i.ar ; 3 uses
  %i.as = icmp samesign ult i32 %.189.3, 2
  %.not.us.1 = icmp eq i64 %i.al, 65535
  %or.cond96.us.1 = or i1 %i.as, %.not.us.1
  br i1 %or.cond96.us.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.us.preheader
  %.0..044.us.1 = zext i1 %or.cond96.us to i32
  %i.at = or i64 %.147.us, 4294901760
  %.043..0.us.1 = select i1 %.not.us, i32 -1, i32 1
  br label %.split.us.2

bb.h:                                             ; preds = %.split.us.preheader
  %.145.us = sext i1 %or.cond96.us to i32
  %i.au = icmp ne i32 %.189.3, 0
  %i.av = icmp samesign ult i32 %.191.3, 2
  %or.cond58.not104.us.1 = select i1 %i.au, i1 true, i1 %i.av
  %.not53.us.1 = icmp eq i64 %i.al, 0
  %or.cond97.us.1 = or i1 %or.cond58.not104.us.1, %.not53.us.1 ; 2 uses
  %i.aw = and i64 %.147.us, -4294901761
  %spec.select150 = select i1 %or.cond97.us.1, i64 %.147.us, i64 %i.aw
  %spec.select151 = select i1 %or.cond97.us.1, i32 %.145.us, i32 1
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.h, %bb.g
  %.147.us.1 = phi i64 [ %i.at, %bb.g ], [ %spec.select150, %bb.h ] ; 3 uses
  %.145.us.1 = phi i32 [ %.0..044.us.1, %bb.g ], [ %spec.select151, %bb.h ] ; 5 uses
  %.1.us.1 = phi i32 [ %.043..0.us.1, %bb.g ], [ -1, %bb.h ] ; 3 uses
  %i.ax = and i64 %i.r, 65535                     ; 2 uses
  %i.ay = icmp samesign ugt i32 %.191.3, 1
  %.not.us.2 = icmp eq i64 %i.ax, 65535
  %or.cond96.us.2 = or i1 %i.ay, %.not.us.2
  br i1 %or.cond96.us.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.us.2
  %i.az = or i64 %.147.us.1, 281470681743360
  %i.ba = icmp eq i32 %.145.us.1, -1              ; 2 uses
  %.0..044.us.2 = select i1 %i.ba, i32 2, i32 %.145.us.1
  %.043..0.us.2 = select i1 %i.ba, i32 %.1.us.1, i32 2
  br label %.split.us.3

bb.j:                                             ; preds = %.split.us.2
  %i.bb = icmp samesign ugt i32 %.189.3, 1
  %i.bc = icmp samesign ult i32 %.191.3, 3
  %or.cond58.not104.us.2 = select i1 %i.bb, i1 true, i1 %i.bc
  %.not53.us.2 = icmp eq i64 %i.ax, 0
  %or.cond97.us.2 = or i1 %or.cond58.not104.us.2, %.not53.us.2
  br i1 %or.cond97.us.2, label %.split.us.3, label %.split.us.3.thread

.split.us.3.thread:                               ; preds = %bb.j
  %i.bd = and i64 %.147.us.1, -281470681743361
  %i.be = icmp eq i32 %.145.us.1, -1              ; 2 uses
  %.0..04459.us.2 = select i1 %i.be, i32 2, i32 %.145.us.1
  %.043..060.us.2 = select i1 %i.be, i32 %.1.us.1, i32 2
  br label %.split114.us

.split.us.3:                                      ; preds = %bb.j, %bb.i
  %.147.us.2 = phi i64 [ %i.az, %bb.i ], [ %.147.us.1, %bb.j ] ; 2 uses
  %.145.us.2 = phi i32 [ %.0..044.us.2, %bb.i ], [ %.145.us.1, %bb.j ] ; 3 uses
  %.1.us.2 = phi i32 [ %.043..0.us.2, %bb.i ], [ %.1.us.1, %bb.j ] ; 2 uses
  %i.bf = icmp samesign ugt i32 %.191.3, 2
  %.not.us.3 = icmp eq i64 %i.aa, 65535
  %or.cond96.us.3 = or i1 %i.bf, %.not.us.3
  br i1 %or.cond96.us.3, label %.split114.us, label %bb.k

bb.k:                                             ; preds = %.split.us.3
  %i.bg = or i64 %.147.us.2, -281474976710656
  %i.bh = icmp eq i32 %.145.us.2, -1              ; 2 uses
  %.0..044.us.3 = select i1 %i.bh, i32 3, i32 %.145.us.2
  %.043..0.us.3 = select i1 %i.bh, i32 %.1.us.2, i32 3
  br label %.split114.us

.split114.us:                                     ; preds = %bb.x, %.split.3.thread, %.split.3, %bb.k, %.split.us.3.thread, %.split.us.3
  %.us-phi = phi i64 [ %.147.us.2, %.split.us.3 ], [ %i.bg, %bb.k ], [ %i.bd, %.split.us.3.thread ], [ %i.ev, %bb.x ], [ %i.es, %.split.3.thread ], [ %.147.2, %.split.3 ] ; 5 uses
  %.us-phi115 = phi i32 [ %.145.us.2, %.split.us.3 ], [ %.0..044.us.3, %bb.k ], [ %.0..04459.us.2, %.split.us.3.thread ], [ %.0..044.3, %bb.x ], [ %.0..04459.2, %.split.3.thread ], [ %.145.2, %.split.3 ]
  %.us-phi116 = phi i32 [ %.1.us.2, %.split.us.3 ], [ %.043..0.us.3, %bb.k ], [ %.043..060.us.2, %.split.us.3.thread ], [ %.043..0.3, %bb.x ], [ %.043..060.2, %.split.3.thread ], [ %.1.2, %.split.3 ] ; 2 uses
  %i.bi = add i64 %.us-phi, 1
  %or.cond.i = icmp ult i64 %i.bi, 2
  br i1 %or.cond.i, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit, label %.preheader

.preheader:                                       ; preds = %.split114.us, %.preheader
  %.045.i = phi i32 [ %.146.i, %.preheader ], [ 64, %.split114.us ] ; 2 uses
  %i.bj = lshr i32 %.045.i, 1                     ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.bk
  %i.bl = xor i64 %notmask.i, -1
  %i.bm = lshr i64 %.us-phi, %i.bk
  %i.bn = xor i64 %i.bm, %.us-phi
  %i.bo = and i64 %i.bn, %i.bl
  %.not53.i = icmp eq i64 %i.bo, 0                ; 2 uses
  %i.bp = and i32 %.045.i, -2
  %.146.i = select i1 %.not53.i, i32 %i.bj, i32 %i.bp ; 7 uses
  %i.bq = icmp ugt i32 %.146.i, 2
  %or.cond54.i = and i1 %.not53.i, %i.bq
  br i1 %or.cond54.i, label %.preheader, label %bb.l, !llvm.loop !0

bb.l:                                             ; preds = %.preheader
  %.neg59.i = add i32 %.146.i, -64
  %i.br = sub i32 64, %.146.i
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr i64 -1, %i.bs                      ; 2 uses
  %i.bu = and i64 %i.bt, %.us-phi                 ; 5 uses
  %.not.i.i64 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i64, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i

_ZN4llvm16isShiftedMask_64Em.exit.i:              ; preds = %bb.l
  %i.bv = add i64 %i.bu, -1
  %i.bw = or i64 %i.bv, %i.bu                     ; 2 uses
  %i.bx = add i64 %i.bw, 1
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.m, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i

bb.m:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bu, i1 true) ; 2 uses
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = lshr exact i64 %i.bu, %i.ca
  %i.cd = xor i64 %i.cc, -1
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cd, i1 false)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  br label %bb.o

_ZN4llvm16isShiftedMask_64Em.exit.thread.i:       ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i, %bb.l
  %.not57.i = xor i64 %.us-phi, -1
  %i.cg = and i64 %i.bt, %.not57.i                ; 5 uses
  %.not.i55.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i55.i, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit, label %_ZN4llvm16isShiftedMask_64Em.exit56.i

_ZN4llvm16isShiftedMask_64Em.exit56.i:            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i
  %i.ch = add i64 %i.cg, -1
  %i.ci = or i64 %i.ch, %i.cg                     ; 2 uses
  %i.cj = add i64 %i.ci, 1
  %i.ck = and i64 %i.cj, %i.ci
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.n, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit

bb.n:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit56.i
  %i.cm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32          ; 2 uses
  %i.co = sub nuw nsw i32 64, %i.cn
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cg, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = add i32 %.neg59.i, %i.cq
  %i.cs = add i32 %i.cr, %i.cn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.048.i = phi i32 [ %i.cf, %bb.m ], [ %i.cs, %bb.n ]
  %.047.i = phi i32 [ %i.cb, %bb.m ], [ %i.co, %bb.n ]
  %i.ct = sub i32 %.146.i, %.047.i
  %i.cu = add i32 %.146.i, 67108863
  %i.cv = and i32 %i.ct, %i.cu
  %.neg.i = mul i32 %.146.i, -2
  %i.cw = add i32 %.048.i, -1
  %i.cx = or i32 %i.cw, %.neg.i                   ; 2 uses
  %i.cy = shl i32 %i.cx, 6
  %i.cz = and i32 %i.cy, 4096
  %i.da = xor i32 %i.cz, 4096
  %i.db = shl i32 %i.cv, 6
  %i.dc = and i32 %i.cx, 63
  %i.dd = or disjoint i32 %i.db, %i.dc
  %i.de = or i32 %i.dd, %i.da
  %i.df = zext i32 %i.de to i64
  br label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit

_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit: ; preds = %.split114.us, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i, %_ZN4llvm16isShiftedMask_64Em.exit56.i, %bb.o
  %.085 = phi i64 [ 0, %.split114.us ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i ], [ %i.df, %bb.o ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit56.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 5644, ptr %2, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.085, ptr %i.dh, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !19
  %.not.i = icmp ult i32 %i.dj, %i.dl
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !20

bb.p:                                             ; preds = %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pre = load i32, ptr %i.di, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit

bb.q:                                             ; preds = %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit
  %i.dm = zext i32 %i.dj to i64
  %i.dn = load ptr, ptr %1, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.dp = load i32, ptr %i.di, align 8, !tbaa !18
  %i.dq = add i32 %i.dp, 1                        ; 2 uses
  store i32 %i.dq, ptr %i.di, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit: ; preds = %bb.p, %bb.q
  %i.dr = phi i32 [ %.pre, %bb.p ], [ %i.dq, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ds = icmp eq i32 %.us-phi116, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 5535, ptr %3, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.du = shl nsw i32 %.us-phi115, 4              ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = lshr i64 %0, %i.dv
  %i.dx = and i64 %i.dw, 65535
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !14
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dz = and i32 %i.du, 48
  %i.ea = zext nneg i32 %i.dz to i64
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !15
  %i.eb = load i32, ptr %i.dk, align 4, !tbaa !19
  %.not.i65 = icmp ult i32 %i.dr, %i.eb
  br i1 %.not.i65, label %bb.s, label %bb.r, !prof !20

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit66

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit
  %i.ec = zext i32 %i.dr to i64
  %i.ed = load ptr, ptr %1, align 8, !tbaa !21
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ef = load i32, ptr %i.di, align 8, !tbaa !18
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.di, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit66

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit66: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %i.ds, label %bb.ab, label %bb.y

bb.t:                                             ; preds = %.split.preheader
  %.0..044.1 = zext i1 %or.cond96 to i32
  %i.eh = and i64 %.147, -4294901761
  %.043..0.1 = select i1 %or.cond96, i32 -1, i32 1
  br label %.split.2

bb.u:                                             ; preds = %.split.preheader
  %.145 = sext i1 %or.cond96 to i32
  %i.ei = icmp ne i32 %.191.3, 0
  %i.ej = icmp samesign ult i32 %.189.3, 2
  %or.cond58.not104.1 = select i1 %i.ei, i1 true, i1 %i.ej
  %.not53.1 = icmp eq i64 %i.al, 65535
  %or.cond97.1 = or i1 %or.cond58.not104.1, %.not53.1 ; 2 uses
  %i.ek = or i64 %.147, 4294901760
  %spec.select152 = select i1 %or.cond97.1, i64 %.147, i64 %i.ek
  %spec.select153 = select i1 %or.cond97.1, i32 %.145, i32 1
  br label %.split.2

.split.2:                                         ; preds = %bb.u, %bb.t
  %.147.1 = phi i64 [ %i.eh, %bb.t ], [ %spec.select152, %bb.u ] ; 3 uses
  %.145.1 = phi i32 [ %.0..044.1, %bb.t ], [ %spec.select153, %bb.u ] ; 5 uses
  %.1.1 = phi i32 [ %.043..0.1, %bb.t ], [ -1, %bb.u ] ; 3 uses
  %i.el = and i64 %i.r, 65535                     ; 2 uses
  %i.em = icmp samesign ult i32 %.191.3, 3
  %i.en = icmp samesign ugt i32 %.189.3, 1
  %or.cond.not100.2 = select i1 %i.em, i1 %i.en, i1 false
  %.not.2 = icmp eq i64 %i.el, 0
  %or.cond96.2 = or i1 %or.cond.not100.2, %.not.2
  br i1 %or.cond96.2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split.2
  %i.eo = and i64 %.147.1, -281470681743361
  %i.ep = icmp eq i32 %.145.1, -1                 ; 2 uses
  %.0..044.2 = select i1 %i.ep, i32 2, i32 %.145.1
  %.043..0.2 = select i1 %i.ep, i32 %.1.1, i32 2
  br label %.split.3

bb.w:                                             ; preds = %.split.2
  %i.eq = icmp samesign ugt i32 %.191.3, 1
  %i.er = icmp samesign ult i32 %.189.3, 3
  %or.cond58.not104.2 = select i1 %i.eq, i1 true, i1 %i.er
  %.not53.2 = icmp eq i64 %i.el, 65535
  %or.cond97.2 = or i1 %or.cond58.not104.2, %.not53.2
  br i1 %or.cond97.2, label %.split.3, label %.split.3.thread

.split.3.thread:                                  ; preds = %bb.w
  %i.es = or i64 %.147.1, 281470681743360
  %i.et = icmp eq i32 %.145.1, -1                 ; 2 uses
  %.0..04459.2 = select i1 %i.et, i32 2, i32 %.145.1
  %.043..060.2 = select i1 %i.et, i32 %.1.1, i32 2
  br label %.split114.us

.split.3:                                         ; preds = %bb.w, %bb.v
  %.147.2 = phi i64 [ %i.eo, %bb.v ], [ %.147.1, %bb.w ] ; 2 uses
  %.145.2 = phi i32 [ %.0..044.2, %bb.v ], [ %.145.1, %bb.w ] ; 3 uses
  %.1.2 = phi i32 [ %.043..0.2, %bb.v ], [ %.1.1, %bb.w ] ; 2 uses
  %i.eu = icmp samesign ugt i32 %.189.3, 2
  %.not.3 = icmp eq i64 %i.aa, 0
  %or.cond96.3 = or i1 %i.eu, %.not.3
  br i1 %or.cond96.3, label %.split114.us, label %bb.x

bb.x:                                             ; preds = %.split.3
  %i.ev = and i64 %.147.2, 281474976710655
  %i.ew = icmp eq i32 %.145.2, -1                 ; 2 uses
  %.0..044.3 = select i1 %i.ew, i32 3, i32 %.145.2
  %.043..0.3 = select i1 %i.ew, i32 %.1.2, i32 3
  br label %.split114.us

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 5535, ptr %4, align 8, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ey = shl nuw nsw i32 %.us-phi116, 4          ; 2 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 %0, %i.ez
  %i.fb = and i64 %i.fa, 65535
  store i64 %i.fb, ptr %i.ex, align 8, !tbaa !14
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fd = and i32 %i.ey, 48
  %i.fe = zext nneg i32 %i.fd to i64
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !15
  %i.ff = load i32, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %i.fg = load i32, ptr %i.dk, align 4, !tbaa !19
  %.not.i69 = icmp ult i32 %i.ff, %i.fg
  br i1 %.not.i69, label %bb.aa, label %bb.z, !prof !20

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit70

bb.aa:                                            ; preds = %bb.y
  %i.fh = zext i32 %i.ff to i64
  %i.fi = load ptr, ptr %1, align 8, !tbaa !21
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.fk = load i32, ptr %i.di, align 8, !tbaa !18
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.di, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit70

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit70: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit70, %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM12ImmInsnModelELb1EE9push_backERKS2_.exit66, %.thread.3
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11AArch64_IMM13expandMOVAddrEjjbRNS_15SmallVectorImplINS0_13AddrInsnModelEEE(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 1123
  %or.cond = and i1 %i.a, %2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %.not.i = icmp ult i32 %i.c, %i.e               ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 1842)
  %.pre21 = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %3, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  store i32 1842, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !18
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %.pre21, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !19
  %.not.i12 = icmp ult i32 %i.k, %i.l
  br i1 %.not.i12, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 5169)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit13

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit
  %i.m = zext i32 %i.k to i64
  %i.n = load ptr, ptr %3, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 5169, ptr %i.o, align 1
  %i.p = load i32, ptr %i.b, align 8, !tbaa !18
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit13

bb.g:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 1842)
  %.pre20.pre = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit15

bb.i:                                             ; preds = %bb.g
  %i.r = zext i32 %i.c to i64
  %i.s = load ptr, ptr %3, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store i32 1842, ptr %i.t, align 1
  %i.u = load i32, ptr %i.b, align 8, !tbaa !18
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit15

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit15: ; preds = %bb.h, %bb.i
  %.pre20 = phi i32 [ %.pre20.pre, %bb.h ], [ %i.v, %bb.i ] ; 3 uses
  %i.w = and i32 %1, 1024
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit17, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit15
  %i.x = load i32, ptr %i.d, align 4, !tbaa !19
  %.not.i16 = icmp ult i32 %.pre20, %i.x
  br i1 %.not.i16, label %bb.l, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 5535)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit17

bb.l:                                             ; preds = %bb.j
  %i.y = zext i32 %.pre20 to i64
  %i.z = load ptr, ptr %3, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  store i32 5535, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !18
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit17

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit17: ; preds = %bb.l, %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit15
  %i.ad = phi i32 [ %i.ac, %bb.l ], [ %.pre, %bb.k ], [ %.pre20, %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit15 ] ; 2 uses
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !19
  %.not.i18 = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i18, label %bb.n, label %bb.m, !prof !20

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit17
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 1795)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit13

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit17
  %i.af = zext i32 %i.ad to i64
  %i.ag = load ptr, ptr %3, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  store i32 1795, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !18
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit13

_ZN4llvm23SmallVectorTemplateBaseINS_11AArch64_IMM13AddrInsnModelELb1EE9push_backES2_.exit13: ; preds = %bb.n, %bb.m, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @_ZL35decomposeIntoOrrOfLogicalImmediatesm(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((16, 17)) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %.off = add i64 %1, -1
  %switch = icmp ult i64 %.off, -2
  br i1 %switch, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.a = xor i64 %1, -1
end_hunk_0
