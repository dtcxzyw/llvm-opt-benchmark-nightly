inline.NumInlined: 3627
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator36InitializeBranchTargetRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockE:_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load i16, ptr %i.e, align 8
  %i.m = and i16 %.sroa.0.0.copyload.i.i.i.i.i.1, 2
  %.not.i.i.i.i.1 = icmp eq i16 %i.m, 0
  br i1 %.not.i.i.i.i.1, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.val.i.i.i.i.1 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.1 = load i32, ptr %.val.i.i.i.i.1, align 8
  %i.p = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.o, i32 %.val.val.i.i.i.i.1, ptr noundef nonnull %2)
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = or i64 %i.q, 2
  %i.s = select i1 %i.p, i64 %i.r, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i
  %.0.i.i.i.i.1 = phi i64 [ %i.s, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i ]
  store i64 %.0.i.i.i.i.1, ptr %i.l, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.0.0.copyload.i.i.i.i.i.2 = load i16, ptr %i.e, align 8
  %i.u = and i16 %.sroa.0.0.copyload.i.i.i.i.i.2, 4
  %.not.i.i.i.i.2 = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i.i.2, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.val.i.i.i.i.2 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.2 = load i32, ptr %.val.i.i.i.i.2, align 8
  %i.x = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.w, i32 %.val.val.i.i.i.i.2, ptr noundef nonnull %2)
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = or i64 %i.y, 2
  %i.aa = select i1 %i.x, i64 %i.z, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1
  %.0.i.i.i.i.2 = phi i64 [ %i.aa, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1 ]
  store i64 %.0.i.i.i.i.2, ptr %i.t, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.0.0.copyload.i.i.i.i.i.3 = load i16, ptr %i.e, align 8
  %i.ac = and i16 %.sroa.0.0.copyload.i.i.i.i.i.3, 8
  %.not.i.i.i.i.3 = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.val.i.i.i.i.3 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.3 = load i32, ptr %.val.i.i.i.i.3, align 8
  %i.af = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.ae, i32 %.val.val.i.i.i.i.3, ptr noundef nonnull %2)
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = or i64 %i.ag, 2
  %i.ai = select i1 %i.af, i64 %i.ah, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2
  %.0.i.i.i.i.3 = phi i64 [ %i.ai, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2 ]
  store i64 %.0.i.i.i.i.3, ptr %i.ab, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.4 = load i16, ptr %i.e, align 8
  %i.ak = and i16 %.sroa.0.0.copyload.i.i.i.i.i.4, 64
  %.not.i.i.i.i.4 = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i.4, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.val.i.i.i.i.4 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.4 = load i32, ptr %.val.i.i.i.i.4, align 8
  %i.an = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.am, i32 %.val.val.i.i.i.i.4, ptr noundef nonnull %2)
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = or i64 %i.ao, 2
  %i.aq = select i1 %i.an, i64 %i.ap, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3
  %.0.i.i.i.i.4 = phi i64 [ %i.aq, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3 ]
  store i64 %.0.i.i.i.i.4, ptr %i.aj, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i.5 = load i16, ptr %i.e, align 8
  %i.as = and i16 %.sroa.0.0.copyload.i.i.i.i.i.5, 128
  %.not.i.i.i.i.5 = icmp eq i16 %i.as, 0
  br i1 %.not.i.i.i.i.5, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.val.i.i.i.i.5 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.5 = load i32, ptr %.val.i.i.i.i.5, align 8
  %i.av = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.au, i32 %.val.val.i.i.i.i.5, ptr noundef nonnull %2)
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = or i64 %i.aw, 2
  %i.ay = select i1 %i.av, i64 %i.ax, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4
  %.0.i.i.i.i.5 = phi i64 [ %i.ay, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4 ]
  store i64 %.0.i.i.i.i.5, ptr %i.ar, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.0.0.copyload.i.i.i.i.i.6 = load i16, ptr %i.e, align 8
  %i.ba = and i16 %.sroa.0.0.copyload.i.i.i.i.i.6, 256
  %.not.i.i.i.i.6 = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i.i.6, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.val.i.i.i.i.6 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.6 = load i32, ptr %.val.i.i.i.i.6, align 8
  %i.bd = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.bc, i32 %.val.val.i.i.i.i.6, ptr noundef nonnull %2)
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = or i64 %i.be, 2
  %i.bg = select i1 %i.bd, i64 %i.bf, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5
  %.0.i.i.i.i.6 = phi i64 [ %i.bg, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5 ]
  store i64 %.0.i.i.i.i.6, ptr %i.az, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.0.0.copyload.i.i.i.i.i.7 = load i16, ptr %i.e, align 8
  %i.bi = and i16 %.sroa.0.0.copyload.i.i.i.i.i.7, 512
  %.not.i.i.i.i.7 = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i.i.i.7, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.val.i.i.i.i.7 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.7 = load i32, ptr %.val.i.i.i.i.7, align 8
  %i.bl = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.bk, i32 %.val.val.i.i.i.i.7, ptr noundef nonnull %2)
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = or i64 %i.bm, 2
  %i.bo = select i1 %i.bl, i64 %i.bn, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6
  %.0.i.i.i.i.7 = phi i64 [ %i.bo, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6 ]
  store i64 %.0.i.i.i.i.7, ptr %i.bh, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.0.0.copyload.i.i.i.i.i.8 = load i16, ptr %i.e, align 8
  %i.bq = and i16 %.sroa.0.0.copyload.i.i.i.i.i.8, 2048
  %.not.i.i.i.i.8 = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i.i.i.8, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.val.i.i.i.i.8 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.8 = load i32, ptr %.val.i.i.i.i.8, align 8
  %i.bt = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.bs, i32 %.val.val.i.i.i.i.8, ptr noundef nonnull %2)
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = or i64 %i.bu, 2
  %i.bw = select i1 %i.bt, i64 %i.bv, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7
  %.0.i.i.i.i.8 = phi i64 [ %i.bw, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7 ]
  store i64 %.0.i.i.i.i.8, ptr %i.bp, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.0.0.copyload.i.i.i.i.i.9 = load i16, ptr %i.e, align 8
  %i.by = and i16 %.sroa.0.0.copyload.i.i.i.i.i.9, 4096
  %.not.i.i.i.i.9 = icmp eq i16 %i.by, 0
  br i1 %.not.i.i.i.i.9, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.val.i.i.i.i.9 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.9 = load i32, ptr %.val.i.i.i.i.9, align 8
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.ca, i32 %.val.val.i.i.i.i.9, ptr noundef nonnull %2)
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = or i64 %i.cc, 2
  %i.ce = select i1 %i.cb, i64 %i.cd, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8
  %.0.i.i.i.i.9 = phi i64 [ %i.ce, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8 ]
  store i64 %.0.i.i.i.i.9, ptr %i.bx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %.sroa.0.0.copyload.i.i.i.i.i.10 = load i16, ptr %i.e, align 8
  %i.cg = and i16 %.sroa.0.0.copyload.i.i.i.i.i.10, 16384
  %.not.i.i.i.i.10 = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i.i.i.10, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.val.i.i.i.i.10 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.10 = load i32, ptr %.val.i.i.i.i.10, align 8
  %i.cj = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.ci, i32 %.val.val.i.i.i.i.10, ptr noundef nonnull %2)
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = or i64 %i.ck, 2
  %i.cm = select i1 %i.cj, i64 %i.cl, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9
  %.0.i.i.i.i.10 = phi i64 [ %i.cm, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9 ]
  store i64 %.0.i.i.i.i.10, ptr %i.cf, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.11 = load i16, ptr %i.e, align 8
  %.not.i.i.i.i.11 = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i.11, -1
  br i1 %.not.i.i.i.i.11, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.val.i.i.i.i.11 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.11 = load i32, ptr %.val.i.i.i.i.11, align 8
  %i.cp = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.co, i32 %.val.val.i.i.i.i.11, ptr noundef nonnull %2)
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = or i64 %i.cq, 2
  %i.cs = select i1 %i.cp, i64 %i.cr, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10
  %.0.i.i.i.i.11 = phi i64 [ %i.cs, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10 ]
  store i64 %.0.i.i.i.i.11, ptr %3, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11
  %.05.i8.i = phi ptr [ %i.ct, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11 ], [ %i.dh, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.0.04.i9.i = phi i16 [ 32767, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11 ], [ %i.dj, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i ] ; 3 uses
  %i.cv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.04.i9.i, i1 true) ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i10.i = load i16, ptr %i.cu, align 8
  %i.cw = zext i16 %.sroa.0.0.copyload.i.i.i.i10.i to i32
  %i.cx = zext nneg i16 %i.cv to i32
  %i.cy = shl nuw nsw i32 1, %i.cx
  %i.cz = and i32 %i.cy, %i.cw
  %.not.i.i.i11.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i11.i, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i

_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i
  %i.da = zext nneg i16 %i.cv to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.val.i.i.i16.i = load ptr, ptr %1, align 8
  %.val.val.i.i.i17.i = load i32, ptr %.val.i.i.i16.i, align 8
  %i.dd = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.dc, i32 %.val.val.i.i.i17.i, ptr noundef %2)
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = or i64 %i.de, 2
  %i.dg = select i1 %i.dd, i64 %i.df, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i: ; preds = %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i
  %.0.i.i.i12.i = phi i64 [ %i.dg, %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i ], [ 2, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i ]
  store i64 %.0.i.i.i12.i, ptr %.05.i8.i, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i8.i, i64 8
  %i.di = add i16 %.sroa.0.04.i9.i, -1
  %i.dj = and i16 %i.di, %.sroa.0.04.i9.i         ; 2 uses
  %.not.i13.i = icmp eq i16 %i.dj, 0
  br i1 %.not.i13.i, label %"_ZN2v88internal6maglev32StraightForwardRegisterAllocator30ForEachMergePointRegisterStateIRZNS2_36InitializeBranchTargetRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockEE3$_0EEvRNS1_23MergePointRegisterStateEOT_.exit", label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i

"_ZN2v88internal6maglev32StraightForwardRegisterAllocator30ForEachMergePointRegisterStateIRZNS2_36InitializeBranchTargetRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockEE3$_0EEvRNS1_23MergePointRegisterStateEOT_.exit": ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator34InitializeEmptyBlockRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 216
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_6maglev23MergePointRegisterStateEJEEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 216) #25
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_6maglev23MergePointRegisterStateEJEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_6maglev23MergePointRegisterStateEJEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 15 uses
  %i.k = add i64 %i.i, 216
  store i64 %i.k, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.j, i8 0, i64 216, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 12 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.l, align 8
  %i.m = and i16 %.sroa.0.0.copyload.i.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Zone3NewINS0_6maglev23MergePointRegisterStateEJEEEPT_DpOT0_.exit
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i = load i32, ptr %.val.i.i.i.i, align 8
  %i.o = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.n, i32 %.val.val.i.i.i.i, ptr noundef %2)
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = or i64 %i.p, 2
  %i.r = select i1 %i.o, i64 %i.q, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i, %_ZN2v88internal4Zone3NewINS0_6maglev23MergePointRegisterStateEJEEEPT_DpOT0_.exit
  %.0.i.i.i.i = phi i64 [ %i.r, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i ], [ 2, %_ZN2v88internal4Zone3NewINS0_6maglev23MergePointRegisterStateEJEEEPT_DpOT0_.exit ]
  store i64 %.0.i.i.i.i, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load i16, ptr %i.l, align 8
  %i.t = and i16 %.sroa.0.0.copyload.i.i.i.i.i.1, 2
  %.not.i.i.i.i.1 = icmp eq i16 %i.t, 0
  br i1 %.not.i.i.i.i.1, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.val.i.i.i.i.1 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.1 = load i32, ptr %.val.i.i.i.i.1, align 8
  %i.w = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.v, i32 %.val.val.i.i.i.i.1, ptr noundef %2)
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = or i64 %i.x, 2
  %i.z = select i1 %i.w, i64 %i.y, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i
  %.0.i.i.i.i.1 = phi i64 [ %i.z, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.1 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i ]
  store i64 %.0.i.i.i.i.1, ptr %i.s, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.2 = load i16, ptr %i.l, align 8
  %i.ab = and i16 %.sroa.0.0.copyload.i.i.i.i.i.2, 4
  %.not.i.i.i.i.2 = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i.i.i.2, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.val.i.i.i.i.2 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.2 = load i32, ptr %.val.i.i.i.i.2, align 8
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.ad, i32 %.val.val.i.i.i.i.2, ptr noundef %2)
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = or i64 %i.af, 2
  %i.ah = select i1 %i.ae, i64 %i.ag, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1
  %.0.i.i.i.i.2 = phi i64 [ %i.ah, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.2 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.1 ]
  store i64 %.0.i.i.i.i.2, ptr %i.aa, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.3 = load i16, ptr %i.l, align 8
  %i.aj = and i16 %.sroa.0.0.copyload.i.i.i.i.i.3, 8
  %.not.i.i.i.i.3 = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.val.i.i.i.i.3 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.3 = load i32, ptr %.val.i.i.i.i.3, align 8
  %i.am = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.al, i32 %.val.val.i.i.i.i.3, ptr noundef %2)
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = or i64 %i.an, 2
  %i.ap = select i1 %i.am, i64 %i.ao, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2
  %.0.i.i.i.i.3 = phi i64 [ %i.ap, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.3 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.2 ]
  store i64 %.0.i.i.i.i.3, ptr %i.ai, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.4 = load i16, ptr %i.l, align 8
  %i.ar = and i16 %.sroa.0.0.copyload.i.i.i.i.i.4, 64
  %.not.i.i.i.i.4 = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i.i.4, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.val.i.i.i.i.4 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.4 = load i32, ptr %.val.i.i.i.i.4, align 8
  %i.au = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.at, i32 %.val.val.i.i.i.i.4, ptr noundef %2)
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = or i64 %i.av, 2
  %i.ax = select i1 %i.au, i64 %i.aw, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3
  %.0.i.i.i.i.4 = phi i64 [ %i.ax, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.4 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.3 ]
  store i64 %.0.i.i.i.i.4, ptr %i.aq, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.5 = load i16, ptr %i.l, align 8
  %i.az = and i16 %.sroa.0.0.copyload.i.i.i.i.i.5, 128
  %.not.i.i.i.i.5 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i.i.i.5, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.val.i.i.i.i.5 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.5 = load i32, ptr %.val.i.i.i.i.5, align 8
  %i.bc = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.bb, i32 %.val.val.i.i.i.i.5, ptr noundef %2)
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = or i64 %i.bd, 2
  %i.bf = select i1 %i.bc, i64 %i.be, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4
  %.0.i.i.i.i.5 = phi i64 [ %i.bf, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.5 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.4 ]
  store i64 %.0.i.i.i.i.5, ptr %i.ay, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.6 = load i16, ptr %i.l, align 8
  %i.bh = and i16 %.sroa.0.0.copyload.i.i.i.i.i.6, 256
  %.not.i.i.i.i.6 = icmp eq i16 %i.bh, 0
  br i1 %.not.i.i.i.i.6, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.val.i.i.i.i.6 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.6 = load i32, ptr %.val.i.i.i.i.6, align 8
  %i.bk = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.bj, i32 %.val.val.i.i.i.i.6, ptr noundef %2)
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = or i64 %i.bl, 2
  %i.bn = select i1 %i.bk, i64 %i.bm, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5
  %.0.i.i.i.i.6 = phi i64 [ %i.bn, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.6 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.5 ]
  store i64 %.0.i.i.i.i.6, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.7 = load i16, ptr %i.l, align 8
  %i.bp = and i16 %.sroa.0.0.copyload.i.i.i.i.i.7, 512
  %.not.i.i.i.i.7 = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i.i.i.7, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.val.i.i.i.i.7 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.7 = load i32, ptr %.val.i.i.i.i.7, align 8
  %i.bs = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.br, i32 %.val.val.i.i.i.i.7, ptr noundef %2)
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = or i64 %i.bt, 2
  %i.bv = select i1 %i.bs, i64 %i.bu, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6
  %.0.i.i.i.i.7 = phi i64 [ %i.bv, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.7 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.6 ]
  store i64 %.0.i.i.i.i.7, ptr %i.bo, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.8 = load i16, ptr %i.l, align 8
  %i.bx = and i16 %.sroa.0.0.copyload.i.i.i.i.i.8, 2048
  %.not.i.i.i.i.8 = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i.i.i.8, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.val.i.i.i.i.8 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.8 = load i32, ptr %.val.i.i.i.i.8, align 8
  %i.ca = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.bz, i32 %.val.val.i.i.i.i.8, ptr noundef %2)
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = or i64 %i.cb, 2
  %i.cd = select i1 %i.ca, i64 %i.cc, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7
  %.0.i.i.i.i.8 = phi i64 [ %i.cd, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.8 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.7 ]
  store i64 %.0.i.i.i.i.8, ptr %i.bw, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.0.0.copyload.i.i.i.i.i.9 = load i16, ptr %i.l, align 8
  %i.cf = and i16 %.sroa.0.0.copyload.i.i.i.i.i.9, 4096
  %.not.i.i.i.i.9 = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i.i.i.9, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.val.i.i.i.i.9 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.9 = load i32, ptr %.val.i.i.i.i.9, align 8
  %i.ci = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.ch, i32 %.val.val.i.i.i.i.9, ptr noundef %2)
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = or i64 %i.cj, 2
  %i.cl = select i1 %i.ci, i64 %i.ck, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8
  %.0.i.i.i.i.9 = phi i64 [ %i.cl, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.9 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.8 ]
  store i64 %.0.i.i.i.i.9, ptr %i.ce, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.0.0.copyload.i.i.i.i.i.10 = load i16, ptr %i.l, align 8
  %i.cn = and i16 %.sroa.0.0.copyload.i.i.i.i.i.10, 16384
  %.not.i.i.i.i.10 = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i.i.i.10, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.val.i.i.i.i.10 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.10 = load i32, ptr %.val.i.i.i.i.10, align 8
  %i.cq = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.cp, i32 %.val.val.i.i.i.i.10, ptr noundef %2)
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = or i64 %i.cr, 2
  %i.ct = select i1 %i.cq, i64 %i.cs, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9
  %.0.i.i.i.i.10 = phi i64 [ %i.ct, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.10 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.9 ]
  store i64 %.0.i.i.i.i.10, ptr %i.cm, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.11 = load i16, ptr %i.l, align 8
  %.not.i.i.i.i.11 = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i.11, -1
  br i1 %.not.i.i.i.i.11, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.val.i.i.i.i.11 = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i.11 = load i32, ptr %.val.i.i.i.i.11, align 8
  %i.cw = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.cv, i32 %.val.val.i.i.i.i.11, ptr noundef %2)
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = or i64 %i.cx, 2
  %i.cz = select i1 %i.cw, i64 %i.cy, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10
  %.0.i.i.i.i.11 = phi i64 [ %i.cz, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.thread.i.i.i.i.11 ], [ 2, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.10 ]
  store i64 %.0.i.i.i.i.11, ptr %3, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11
  %.05.i8.i = phi ptr [ %i.da, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11 ], [ %i.dp, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.0.04.i9.i = phi i16 [ 32767, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.11 ], [ %i.dr, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i ] ; 3 uses
  %i.dd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.04.i9.i, i1 true) ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i10.i = load i16, ptr %i.db, align 8
  %i.de = zext i16 %.sroa.0.0.copyload.i.i.i.i10.i to i32
  %i.df = zext nneg i16 %i.dd to i32
  %i.dg = shl nuw nsw i32 1, %i.df
  %i.dh = and i32 %i.dg, %i.de
  %.not.i.i.i11.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i11.i, label %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i

_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i
  %i.di = zext nneg i16 %i.dd to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.val.i.i.i16.i = load ptr, ptr %1, align 8
  %.val.val.i.i.i17.i = load i32, ptr %.val.i.i.i16.i, align 8
  %i.dl = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.dk, i32 %.val.val.i.i.i17.i, ptr noundef %2)
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = or i64 %i.dm, 2
  %i.do = select i1 %i.dl, i64 %i.dn, i64 2
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i: ; preds = %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i
  %.0.i.i.i12.i = phi i64 [ %i.do, %_ZNK2v88internal11RegListBaseINS0_11XMMRegisterEE3hasES2_.exit.thread.i.i.i.i ], [ 2, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i ]
  store i64 %.0.i.i.i12.i, ptr %.05.i8.i, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i8.i, i64 8
  %i.dq = add i16 %.sroa.0.04.i9.i, -1
  %i.dr = and i16 %i.dq, %.sroa.0.04.i9.i         ; 2 uses
  %.not.i13.i = icmp eq i16 %i.dr, 0
  br i1 %.not.i13.i, label %"_ZN2v88internal6maglev32StraightForwardRegisterAllocator30ForEachMergePointRegisterStateIRZNS2_34InitializeEmptyBlockRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockEE3$_0EEvRNS1_23MergePointRegisterStateEOT_.exit", label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.i.i

"_ZN2v88internal6maglev32StraightForwardRegisterAllocator30ForEachMergePointRegisterStateIRZNS2_34InitializeEmptyBlockRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockEE3$_0EEvRNS1_23MergePointRegisterStateEOT_.exit": ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.j, ptr %i.ds, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator19MergeRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockEi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %2, align 8
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator34InitializeEmptyBlockRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %"_ZN2v88internal6maglev32StraightForwardRegisterAllocator30ForEachMergePointRegisterStateIRZNS2_19MergeRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockEiE3$_0EEvRNS1_23MergePointRegisterStateEOT_.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 2
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator36InitializeBranchTargetRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %"_ZN2v88internal6maglev32StraightForwardRegisterAllocator30ForEachMergePointRegisterStateIRZNS2_19MergeRegisterValuesEPNS1_11ControlNodeEPNS1_10BasicBlockEiE3$_0EEvRNS1_23MergePointRegisterStateEOT_.exit"

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = sext i32 %3 to i64                       ; 6 uses
  %i.m = sext i32 %i.i to i64                     ; 7 uses
  %i.n = shl nsw i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.p = add nsw i64 %i.n, 8                      ; 6 uses
  %i.q = icmp sgt i32 %i.i, 0                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %i.m, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.i.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.i.i: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i, %bb.e
  %.05.i.i = phi ptr [ %i.e, %bb.e ], [ %i.do, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i ] ; 4 uses
  %.sroa.0.04.i.i = phi i16 [ -9265, %bb.e ], [ %i.dq, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.04.i.i, i1 true) ; 2 uses
  %i.s = zext nneg i16 %i.r to i32
  %.sroa.029.0.copyload.i.i.i.i = load i64, ptr %.05.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = trunc i64 %.sroa.029.0.copyload.i.i.i.i to i1 ; 2 uses
  %i.t = and i64 %.sroa.029.0.copyload.i.i.i.i, -4
  %i.u = inttoptr i64 %i.t to ptr                 ; 5 uses
  %storemerge.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.u, ptr null ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.i.i
  %i.v = load ptr, ptr %i.u, align 8
  br label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.i.i.i.i

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.i.i.i.i: ; preds = %bb.f, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.i.i
  %storemerge.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.u, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratordeEv.exit.i.i ] ; 5 uses
  %i.w = zext nneg i16 %i.r to i64                ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, 149                ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.j, align 8
  %i.z = zext i16 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.aa = shl nuw nsw i32 1, %i.s
  %i.ab = and i32 %i.aa, %i.z
  %.not112.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not112.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %1, align 8
  %.val.val.i.i.i.i = load i32, ptr %.val.i.i.i.i, align 8
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN2v88internal6maglev12_GLOBAL__N_114IsLiveAtTargetEPNS1_9ValueNodeEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr noundef %i.ad, i32 %.val.val.i.i.i.i, ptr noundef nonnull %2)
  %spec.select.i.i.i.i = select i1 %i.ae, ptr %i.ad, ptr null
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.g ], [ null, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit.i.i.i.i ] ; 4 uses
  %i.af = icmp eq ptr %.0.i.i.i.i, %storemerge.i.i.i.i.i
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not40.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not40.i.i.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.l
  store i64 %i.y, ptr %i.ah, align 8
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i

bb.k:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %storemerge.i.i.i.i.i, null ; 4 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.k, align 8
  %i.ak = and i64 %i.aj, 65535
  %i.al = icmp eq i64 %i.ak, 319
  br i1 %i.al, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i, label %.thread.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %storemerge.i.i.i.i.i, align 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 7                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 2
  %i.ar = icmp samesign ugt i64 %i.ap, 4
  %i.as = and i64 %i.ao, 8
  %i.at = icmp ne i64 %i.as, 0
  %i.au = and i1 %i.ar, %i.at
  %i.av = select i1 %i.aq, i1 true, i1 %i.au      ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ax = load i16, ptr %i.aw, align 8
  %.0.i45.not.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.0.i45.not.i.i.i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.k, align 8
  %i.az = and i64 %i.ay, 65535
  %i.ba = icmp eq i64 %i.az, 319
  br i1 %i.ba, label %bb.p, label %bb.q, !prof !5

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.113) #24
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 2, ptr %.05.i.i, align 8
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i

bb.r:                                             ; preds = %bb.n, %bb.m
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.u, label %.thread._crit_edge.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.l
  %.not110.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  tail call void @llvm.assume(i1 %.not110.i.i.i.i)
  %i.bb = load ptr, ptr %.0.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = and i64 %i.bd, 7                        ; 2 uses
  %i.bf = icmp eq i64 %i.be, 2
  %i.bg = icmp samesign ugt i64 %i.be, 4
  %i.bh = and i64 %i.bd, 8
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = and i1 %i.bg, %i.bi
  %i.bk = select i1 %i.bf, i1 true, i1 %i.bj
  br i1 %i.bk, label %bb.u, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i

.thread._crit_edge.i.i.i.i:                       ; preds = %bb.r
end_hunk_0
