Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/interface_toolbar?download=true
inline.NumInlined: 2791
inline.NumDeleted: 1179
begin_hunk_0_@_ZN16InterfaceToolbar14createSelectorEP22_iface_toolbar_control:bb.a
._crit_edge.loopexit:                             ; preds = %_ZN7QStringD2Ev.exit195
  %.pre309 = load ptr, ptr %14, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5QListI7QStringED2Ev.exit
  %i.ei = phi ptr [ %.pre309, %._crit_edge.loopexit ], [ %i.eg, %_ZN5QListI7QStringED2Ev.exit ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.ej = atomicrmw sub ptr %i.ei, i32 1 acq_rel, align 4
  %.not.i.i.i186 = icmp eq i32 %i.ej, 1
  br i1 %.not.i.i.i186, label %bb.bi, label %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit

bb.bi:                                            ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i
  %i.ek = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.el = load i64, ptr %i.ab, align 8
  %.idx.i.i.i.i = mul i64 %i.el, 24               ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bi, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ek, %bb.bi ] ; 3 uses
  %i.en = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.eo = atomicrmw sub ptr %i.en, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i187 = icmp eq i32 %i.eo, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i187, label %bb.bj, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ep = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ep, i64 noundef 2, i64 noundef 8) #24
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i:   ; preds = %bb.bj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.eq = getelementptr i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eq, %i.em
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i, %bb.bi
  %i.er = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.er, i64 noundef 24, i64 noundef 8) #24
  br label %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.es = invoke noundef align 8 dereferenceable(24) ptr @_ZN4QMapIi5QListI10QByteArrayEEixERKi(ptr noundef align 8 dereferenceable_or_null(8) %i.aj, ptr noundef align 4 dereferenceable(4) %1)
          to label %bb.cg unwind label %bb.ad     ; 4 uses

.lr.ph:                                           ; preds = %_ZN5QListI7QStringED2Ev.exit, %_ZN7QStringD2Ev.exit195
  %i.et = phi ptr [ %i.jh, %_ZN7QStringD2Ev.exit195 ], [ %i.ef, %_ZN5QListI7QStringED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.eu = load <2 x ptr>, ptr %i.et, align 8
  %i.ev = load ptr, ptr %i.et, align 8            ; 2 uses
  store <2 x ptr> %i.eu, ptr %16, align 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = load i64, ptr %i.ew, align 8
  store i64 %i.ex, ptr %i.ag, align 16
  %.not.i.i.i188 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i188, label %_ZN7QStringC2ERKS_.exit, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph
  %i.ey = atomicrmw add ptr %i.ev, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit

_ZN7QStringC2ERKS_.exit:                          ; preds = %.lr.ph, %bb.bk
  %i.ez = invoke noundef align 8 dereferenceable(64) ptr @_ZN4QMapI7QString16interface_valuesEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bl unwind label %bb.cd

bb.bl:                                            ; preds = %_ZN7QStringC2ERKS_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = invoke noundef align 8 dereferenceable(24) ptr @_ZN4QMapIi5QListI10QByteArrayEEixERKi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.fa, ptr noundef align 4 dereferenceable(4) %1)
          to label %bb.bm unwind label %bb.cd     ; 11 uses

bb.bm:                                            ; preds = %bb.bl
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 5 uses
  %i.fd = load i64, ptr %i.fc, align 8            ; 7 uses
  %i.fe = load ptr, ptr %i.fb, align 8            ; 5 uses
  %.not.i.i234 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i234, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i: ; preds = %bb.bm
  %i.ff = load atomic i32, ptr %i.fe monotonic, align 4
  %i.fg = icmp sgt i32 %i.ff, 1
  br i1 %i.fg, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i
  %i.fh = getelementptr i8, ptr %i.fe, i64 8
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 5 uses
  %i.fl = ptrtoint ptr %i.fe to i64
  %i.fm = add i64 %i.fl, 23
  %i.fn = and i64 %i.fm, -8                       ; 2 uses
  %i.fo = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fp = sub i64 %i.fo, %i.fn
  %.neg4.i.neg.i = sdiv exact i64 %i.fp, 24
  %.neg3.i.i = sub i64 %i.fi, %i.fd
  %.not.i235 = icmp eq i64 %.neg3.i.i, %.neg4.i.neg.i
  br i1 %.not.i235, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i
  %i.fq = getelementptr [24 x i8], ptr %i.fk, i64 %i.fd ; 3 uses
  %i.fr = load ptr, ptr %8, align 8               ; 3 uses
  store ptr %i.fr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load ptr, ptr %i.ah, align 8
  store ptr %i.ft, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fv = load i64, ptr %i.ai, align 8
  store i64 %i.fv, ptr %i.fu, align 8
  %.not.i.i.i.i236 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i236, label %.noexc190, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fw = atomicrmw add ptr %i.fr, i32 1 acq_rel, align 4 ; 0 uses
  br label %.noexc190

bb.bp:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i
  %i.fx = icmp ne i64 %i.fd, 0
  %.not14.i = icmp eq i64 %i.fn, %i.fo
  %or.cond362 = or i1 %i.fx, %.not14.i
  br i1 %or.cond362, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fy = getelementptr i8, ptr %i.fk, i64 -24
  %i.fz = load ptr, ptr %8, align 8               ; 3 uses
  store ptr %i.fz, ptr %i.fy, align 8
  %i.ga = getelementptr i8, ptr %i.fk, i64 -16
  %i.gb = load ptr, ptr %i.ah, align 8
  store ptr %i.gb, ptr %i.ga, align 8
  %i.gc = getelementptr i8, ptr %i.fk, i64 -8
  %i.gd = load i64, ptr %i.ai, align 8
  store i64 %i.gd, ptr %i.gc, align 8
  %.not.i.i.i17.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i17.i, label %_ZN10QByteArrayC2ERKS_.exit18.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ge = atomicrmw add ptr %i.fz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN10QByteArrayC2ERKS_.exit18.i

_ZN10QByteArrayC2ERKS_.exit18.i:                  ; preds = %bb.br, %bb.bq
  %i.gf = load ptr, ptr %i.fj, align 8
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  store ptr %i.gg, ptr %i.fj, align 8
  br label %.noexc190

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i: ; preds = %bb.bp, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i, %bb.bm
  %i.gh = load ptr, ptr %8, align 8               ; 6 uses
  %i.gi = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.gj = load i64, ptr %i.ai, align 8            ; 2 uses
  %.not.i.i.i19.i = icmp eq ptr %i.gh, null       ; 2 uses
  br i1 %.not.i.i.i19.i, label %_ZN10QByteArrayC2ERKS_.exit20.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i
  %i.gk = atomicrmw add ptr %i.gh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre306 = load i64, ptr %i.fc, align 8
  %.pre307 = load ptr, ptr %i.fb, align 8
  br label %_ZN10QByteArrayC2ERKS_.exit20.i

_ZN10QByteArrayC2ERKS_.exit20.i:                  ; preds = %bb.bs, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i
  %i.gl = phi ptr [ %.pre307, %bb.bs ], [ %i.fe, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i ] ; 6 uses
  %i.gm = phi i64 [ %.pre306, %bb.bs ], [ %i.fd, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i ] ; 9 uses
  %i.gn = icmp ne i64 %i.gm, 0
  %i.go = icmp eq i64 %i.fd, 0
  %i.gp = and i1 %i.go, %i.gn                     ; 3 uses
  %i.gq = zext i1 %i.gp to i32
  %.not.i.i239 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i239, label %.critedge.i, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i240

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i240: ; preds = %_ZN10QByteArrayC2ERKS_.exit20.i
  %i.gr = load atomic i32, ptr %i.gl monotonic, align 4
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %.critedge.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i240
  br i1 %i.gp, label %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i244, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i241

_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i244: ; preds = %bb.bt
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8            ; 5 uses
  %i.gv = ptrtoint ptr %i.gl to i64
  %i.gw = add i64 %i.gv, 23
  %i.gx = and i64 %i.gw, -8
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gy, %i.gx                    ; 2 uses
  %.not16.i = icmp slt i64 %i.gz, 24
  br i1 %.not16.i, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i250, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i241: ; preds = %bb.bt
  %i.ha = getelementptr i8, ptr %i.gl, i64 8
  %i.hb = load i64, ptr %i.ha, align 8            ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8            ; 5 uses
  %i.he = ptrtoint ptr %i.gl to i64
  %i.hf = add i64 %i.he, 23
  %i.hg = and i64 %i.hf, -8                       ; 2 uses
  %i.hh = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hi = sub i64 %i.hh, %i.hg                    ; 3 uses
  %.neg4.i.i = sdiv exact i64 %i.hi, -24
  %.neg3.i.i242 = sub i64 %i.hb, %i.gm
  %i.hj = add i64 %.neg3.i.i242, %.neg4.i.i
  %.not17.i = icmp slt i64 %i.hj, 1
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread361

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i241
  %.not.i19.i = icmp slt i64 %i.hi, 24
  br i1 %.not.i19.i, label %.critedge.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i
  %i.hk = mul i64 %i.gm, 3
  %i.hl = shl i64 %i.hb, 1
  %i.hm = icmp slt i64 %i.hk, %i.hl
  br i1 %i.hm, label %bb.bv, label %.critedge.i

bb.bv:                                            ; preds = %bb.bu
  %.idx.i.i.i243 = sub nsw i64 0, %i.hi
  %i.hn = getelementptr i8, ptr %i.hd, i64 %.idx.i.i.i243 ; 4 uses
  %i.ho = icmp eq i64 %i.gm, 0
  br i1 %i.ho, label %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %18 = icmp eq i64 %i.hg, %i.hh
  %i.hp = icmp eq ptr %i.hd, null
  %or.cond.i.i.i.i = or i1 %i.hp, %18
  %i.hq = icmp eq ptr %i.hn, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.hq
  br i1 %or.cond3.i.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hr = mul i64 %i.gm, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.hn, ptr noundef nonnull align 1 %i.hd, i64 noundef %i.hr, i1 noundef false) #24
  br label %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i

_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i: ; preds = %bb.bx, %bb.bw, %bb.bv
  store ptr %i.hn, ptr %i.hc, align 8
  br label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread361

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i250: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i244
  %i.hs = getelementptr i8, ptr %i.gl, i64 8
  %i.ht = load i64, ptr %i.hs, align 8            ; 3 uses
  %.neg3.i.i249 = sub i64 %i.ht, %i.gm
  %.neg4.i.i248 = sdiv exact i64 %i.gz, -24       ; 2 uses
  %i.hu = add i64 %.neg3.i.i249, %.neg4.i.i248
  %.not18.i = icmp sgt i64 %i.hu, 0
  %i.hv = mul i64 %i.gm, 3
  %i.hw = icmp slt i64 %i.hv, %i.ht
  %or.cond = select i1 %.not18.i, i1 %i.hw, i1 false
  br i1 %or.cond, label %bb.by, label %.critedge.i

bb.by:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i250
  %.neg = xor i64 %i.gm, -1
  %i.hx = add i64 %i.ht, %.neg
  %i.hy = sdiv i64 %i.hx, 2
  %i.hz = call noundef i64 @llvm.smax.i64(i64 %i.hy, i64 0)
  %i.ia = add nuw nsw i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %.neg4.i.i248
  %.idx.i.i = mul i64 %i.ib, 24                   ; 2 uses
  %i.ic = getelementptr i8, ptr %i.gu, i64 %.idx.i.i ; 4 uses
  %i.id = icmp eq i64 %.idx.i.i, 0
  %i.ie = icmp eq ptr %i.gu, null
  %or.cond.i.i.i = or i1 %i.id, %i.ie
  %i.if = icmp eq ptr %i.ic, null
  %or.cond3.i.i.i = or i1 %i.if, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %.noexc245, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ig = mul i64 %i.gm, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ic, ptr noundef nonnull align 1 %i.gu, i64 noundef %i.ig, i1 noundef false) #24
  br label %.noexc245

.noexc245:                                        ; preds = %bb.by, %bb.bz
  store ptr %i.ic, ptr %i.gt, align 8
  br label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread

.critedge.i:                                      ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i250, %bb.bu, %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i240, %_ZN10QByteArrayC2ERKS_.exit20.i
  invoke void @_ZN17QArrayDataPointerI10QByteArrayE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.fb, i32 noundef %i.gq, i64 noundef 1, ptr noundef null)
          to label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit unwind label %bb.ca

_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit: ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.pre308 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.gp, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread361

_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread: ; preds = %.noexc245, %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i244, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit
  %i.ih = phi ptr [ %.pre308, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit ], [ %i.ic, %.noexc245 ], [ %i.gu, %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i244 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ih, i64 -24
  store ptr %i.gh, ptr %i.ij, align 8
  %i.ik = getelementptr i8, ptr %i.ih, i64 -16
  store ptr %i.gi, ptr %i.ik, align 8
  %i.il = getelementptr i8, ptr %i.ih, i64 -8
  store i64 %i.gj, ptr %i.il, align 8
  %i.im = load ptr, ptr %i.ii, align 8
  %i.in = getelementptr i8, ptr %i.im, i64 -24
  store ptr %i.in, ptr %i.ii, align 8
  br label %.noexc190

bb.ca:                                            ; preds = %.critedge.i
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i19.i, label %.body237, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i

_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread361: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i241, %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit
  %i.ip = phi ptr [ %.pre308, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit ], [ %i.hd, %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i241 ], [ %i.hn, %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i ]
  %i.iq = getelementptr [24 x i8], ptr %i.ip, i64 %i.fd ; 5 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 24
  %i.is = load i64, ptr %i.fc, align 8
  %i.it = sub i64 %i.is, %i.fd
  %i.iu = mul i64 %i.it, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.ir, ptr noundef align 1 %i.iq, i64 noundef %i.iu, i1 noundef false) #24
  store ptr %i.gh, ptr %i.iq, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %i.gi, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 %i.gj, ptr %i.iw, align 8
  br label %.noexc190

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i:   ; preds = %bb.ca
  %i.ix = atomicrmw sub ptr %i.gh, i32 1 acq_rel, align 4
  %.not.i.i24.i = icmp eq i32 %i.ix, 1
  br i1 %.not.i.i24.i, label %bb.cb, label %.body237

bb.cb:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.gh, i64 noundef 1, i64 noundef 8) #24
  br label %.body237

.noexc190:                                        ; preds = %bb.bn, %bb.bo, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread361, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread, %_ZN10QByteArrayC2ERKS_.exit18.i
  %i.iy = load i64, ptr %i.fc, align 8
  %i.iz = add i64 %i.iy, 1
  store i64 %i.iz, ptr %i.fc, align 8
  %i.ja = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i189 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i.i.i189, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc190
  %i.jb = load atomic i32, ptr %i.ja monotonic, align 4
  %i.jc = icmp sgt i32 %i.jb, 1
  br i1 %i.jc, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI10QByteArrayE6appendERKS0_.exit

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i, %.noexc190
  invoke void @_ZN17QArrayDataPointerI10QByteArrayE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.fb, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI10QByteArrayE6appendERKS0_.exit unwind label %bb.cd

_ZN5QListI10QByteArrayE6appendERKS0_.exit:        ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i
  %i.jd = load ptr, ptr %16, align 16             ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i192, label %_ZN7QStringD2Ev.exit195, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193:   ; preds = %_ZN5QListI10QByteArrayE6appendERKS0_.exit
  %i.je = atomicrmw sub ptr %i.jd, i32 1 acq_rel, align 4
  %.not.i.i194 = icmp eq i32 %i.je, 1
  br i1 %.not.i.i194, label %bb.cc, label %_ZN7QStringD2Ev.exit195

bb.cc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193
  %i.jf = load ptr, ptr %16, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jf, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit195

_ZN7QStringD2Ev.exit195:                          ; preds = %_ZN5QListI10QByteArrayE6appendERKS0_.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.jg = load ptr, ptr %i.ad, align 8
  %i.jh = getelementptr i8, ptr %i.jg, i64 24     ; 3 uses
  store ptr %i.jh, ptr %i.ad, align 8
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8
  %.not294 = icmp eq ptr %i.jh, %.sroa.03.0.copyload
  br i1 %.not294, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !90

bb.cd:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.bl, %_ZN7QStringC2ERKS_.exit
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body237

.body237:                                         ; preds = %bb.ca, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i, %bb.cb, %bb.cd
  %eh.lpad-body238 = phi { ptr, i32 } [ %i.ji, %bb.cd ], [ %i.io, %bb.cb ], [ %i.io, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i ], [ %i.io, %bb.ca ]
  %i.jj = load ptr, ptr %16, align 16             ; 2 uses
  %.not.i.i.i196 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i196, label %_ZN7QStringD2Ev.exit199, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197:   ; preds = %.body237
  %i.jk = atomicrmw sub ptr %i.jj, i32 1 acq_rel, align 4
  %.not.i.i198 = icmp eq i32 %i.jk, 1
  br i1 %.not.i.i198, label %bb.ce, label %_ZN7QStringD2Ev.exit199

bb.ce:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197
  %i.jl = load ptr, ptr %16, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jl, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit199

_ZN7QStringD2Ev.exit199:                          ; preds = %.body237, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %14) #24
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN7QStringD2Ev.exit199, %.body182
  %.pn62 = phi { ptr, i32 } [ %eh.lpad-body238, %_ZN7QStringD2Ev.exit199 ], [ %.pn.i.i, %.body182 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.cl

bb.cg:                                            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.jn = load i64, ptr %i.jm, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI10QByteArrayE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.es, i64 noundef %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc203 unwind label %bb.ad

.noexc203:                                        ; preds = %bb.cg
  %i.jo = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not.i.i.i.i.i.i200 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i.i.i200, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i202, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i201

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i201: ; preds = %.noexc203
  %i.jp = load atomic i32, ptr %i.jo monotonic, align 4
  %i.jq = icmp sgt i32 %i.jp, 1
  br i1 %i.jq, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i202, label %_ZN5QListI10QByteArrayE6appendERKS0_.exit205

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i202: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i201, %.noexc203
  invoke void @_ZN17QArrayDataPointerI10QByteArrayE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.es, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI10QByteArrayE6appendERKS0_.exit205 unwind label %bb.ad

_ZN5QListI10QByteArrayE6appendERKS0_.exit205:     ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i201, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i202
  %i.jr = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i206, label %_ZN10QByteArrayD2Ev.exit209, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i207

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i207:    ; preds = %_ZN5QListI10QByteArrayE6appendERKS0_.exit205
  %i.js = atomicrmw sub ptr %i.jr, i32 1 acq_rel, align 4
  %.not.i.i208 = icmp eq i32 %i.js, 1
end_hunk_0
begin_hunk_1_@_ZN16InterfaceToolbar22onRestoreButtonClickedEv:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI10QByteArrayE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !7

_ZN9QtPrivate16QGenericArrayOpsI10QByteArrayE10destroyAllEv.exit.i.i.i: ; preds = %_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i.i, %bb.q
  %i.bd = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bd, i64 noundef 24, i64 noundef 8) #24
  br label %_ZN9QtPrivate17QForeachContainerI5QListI10QByteArrayEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListI10QByteArrayEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerI10QByteArrayE5derefEv.exit.i.i.i, %_ZN9QtPrivate16QGenericArrayOpsI10QByteArrayE10destroyAllEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aw

bb.s:                                             ; preds = %bb.bv, %_ZNK4QMapIiP16FunnelTextDialogE8containsERKi.exit.thread, %bb.bu, %bb.bt, %bb.bs, %bb.bo, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %_ZN10QByteArrayD2Ev.exit69, %bb.bc, %bb.m, %bb.l, %_ZN10QByteArrayD2Ev.exit, %bb.g, %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit42

bb.t:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i39, label %_ZN10QByteArrayD2Ev.exit42, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i40

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i40:     ; preds = %bb.t
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %.not.i.i41 = icmp eq i32 %i.bh, 1
  br i1 %.not.i.i41, label %bb.u, label %_ZN10QByteArrayD2Ev.exit42

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i40
  %i.bi = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bi, i64 noundef 1, i64 noundef 8) #24
  br label %_ZN10QByteArrayD2Ev.exit42

bb.v:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListI10QByteArrayEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit, %_ZN10QByteArrayD2Ev.exit55
  %i.bk = phi ptr [ %i.fs, %_ZN10QByteArrayD2Ev.exit55 ], [ %i.ap, %_ZN9QtPrivate21qMakeForeachContainerIR5QListI10QByteArrayEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit ] ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 17 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bp = load i64, ptr %i.bo, align 8            ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bl, null         ; 7 uses
  br i1 %.not.i.i.i43, label %_ZN10QByteArrayC2ERKS_.exit.thread, label %bb.w

_ZN10QByteArrayC2ERKS_.exit.thread:               ; preds = %.lr.ph
  store ptr null, ptr %5, align 8
  store ptr %i.bn, ptr %i.q, align 8
  store i64 %i.bp, ptr %i.r, align 8
  br label %_ZN10QByteArrayC2ERKS_.exit45

bb.w:                                             ; preds = %.lr.ph
  %i.bq = atomicrmw add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  store ptr %i.bl, ptr %5, align 8
  store ptr %i.bn, ptr %i.q, align 8
  store i64 %i.bp, ptr %i.r, align 8
  %i.br = atomicrmw add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN10QByteArrayC2ERKS_.exit45

_ZN10QByteArrayC2ERKS_.exit45:                    ; preds = %_ZN10QByteArrayC2ERKS_.exit.thread, %bb.w
  invoke void @_ZN16InterfaceToolbar14setWidgetValueEP7QWidgeti10QByteArray(ptr align 8 poison, ptr noundef %i.ab, i32 noundef 2, ptr noundef nonnull align 8 %5)
          to label %bb.x unwind label %bb.ar

bb.x:                                             ; preds = %_ZN10QByteArrayC2ERKS_.exit45
  %i.bs = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i46, label %_ZN10QByteArrayD2Ev.exit49, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i47

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i47:     ; preds = %bb.x
  %i.bt = atomicrmw sub ptr %i.bs, i32 1 acq_rel, align 4
  %.not.i.i48 = icmp eq i32 %i.bt, 1
  br i1 %.not.i.i48, label %bb.y, label %_ZN10QByteArrayD2Ev.exit49

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i47
  %i.bu = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bu, i64 noundef 1, i64 noundef 8) #24
  br label %_ZN10QByteArrayD2Ev.exit49

_ZN10QByteArrayD2Ev.exit49:                       ; preds = %bb.x, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i47, %bb.y
  %i.bv = invoke noundef align 8 dereferenceable(64) ptr @_ZN4QMapI7QString16interface_valuesEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.z unwind label %bb.at

bb.z:                                             ; preds = %_ZN10QByteArrayD2Ev.exit49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = invoke noundef align 8 dereferenceable(24) ptr @_ZN4QMapIi5QListI10QByteArrayEEixERKi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aa unwind label %bb.at     ; 11 uses

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 5 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 7 uses
  %i.ca = load ptr, ptr %i.bx, align 8            ; 5 uses
  %.not.i.i86 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i86, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i: ; preds = %bb.aa
  %i.cb = load atomic i32, ptr %i.ca monotonic, align 4
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i
  %i.cd = getelementptr i8, ptr %i.ca, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 5 uses
  %i.ch = ptrtoint ptr %i.ca to i64
  %i.ci = add i64 %i.ch, 23
  %i.cj = and i64 %i.ci, -8                       ; 2 uses
  %i.ck = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cl = sub i64 %i.ck, %i.cj
  %.neg4.i.neg.i = sdiv exact i64 %i.cl, 24
  %.neg3.i.i = sub i64 %i.ce, %i.bz
  %.not.i87 = icmp eq i64 %.neg3.i.i, %.neg4.i.neg.i
  br i1 %.not.i87, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i
  %i.cm = getelementptr [24 x i8], ptr %i.cg, i64 %i.bz ; 3 uses
  store ptr %i.bl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.bn, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.bp, ptr %i.co, align 8
  br i1 %.not.i.i.i43, label %.noexc50, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = atomicrmw add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %.noexc50

bb.ad:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i
  %i.cq = icmp ne i64 %i.bz, 0
  %.not14.i = icmp eq i64 %i.cj, %i.ck
  %or.cond205 = or i1 %i.cq, %.not14.i
  br i1 %or.cond205, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr i8, ptr %i.cg, i64 -24
  store ptr %i.bl, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %i.cg, i64 -16
  store ptr %i.bn, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %i.cg, i64 -8
  store i64 %i.bp, ptr %i.ct, align 8
  br i1 %.not.i.i.i43, label %_ZN10QByteArrayC2ERKS_.exit18.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cu = atomicrmw add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN10QByteArrayC2ERKS_.exit18.i

_ZN10QByteArrayC2ERKS_.exit18.i:                  ; preds = %bb.af, %bb.ae
  %i.cv = load ptr, ptr %i.cf, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  store ptr %i.cw, ptr %i.cf, align 8
  br label %.noexc50

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i: ; preds = %bb.ad, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i, %bb.aa
  br i1 %.not.i.i.i43, label %_ZN10QByteArrayC2ERKS_.exit20.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i
  %i.cx = atomicrmw add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pre155 = load i64, ptr %i.by, align 8
  %.pre156 = load ptr, ptr %i.bx, align 8
  br label %_ZN10QByteArrayC2ERKS_.exit20.i

_ZN10QByteArrayC2ERKS_.exit20.i:                  ; preds = %bb.ag, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i
  %i.cy = phi ptr [ %.pre156, %bb.ag ], [ %i.ca, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i ] ; 6 uses
  %i.cz = phi i64 [ %.pre155, %bb.ag ], [ %i.bz, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i ] ; 9 uses
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = icmp eq i64 %i.bz, 0
  %i.dc = and i1 %i.db, %i.da                     ; 3 uses
  %i.dd = zext i1 %i.dc to i32
  %.not.i.i89 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i89, label %.critedge.i, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i90

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i90: ; preds = %_ZN10QByteArrayC2ERKS_.exit20.i
  %i.de = load atomic i32, ptr %i.cy monotonic, align 4
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i90
  br i1 %i.dc, label %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i93, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i91

_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i93: ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 5 uses
  %i.di = ptrtoint ptr %i.cy to i64
  %i.dj = add i64 %i.di, 23
  %i.dk = and i64 %i.dj, -8
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dl, %i.dk                    ; 2 uses
  %.not16.i = icmp slt i64 %i.dm, 24
  br i1 %.not16.i, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i99, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i91: ; preds = %bb.ah
  %i.dn = getelementptr i8, ptr %i.cy, i64 8
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8            ; 5 uses
  %i.dr = ptrtoint ptr %i.cy to i64
  %i.ds = add i64 %i.dr, 23
  %i.dt = and i64 %i.ds, -8                       ; 2 uses
  %i.du = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dv = sub i64 %i.du, %i.dt                    ; 3 uses
  %.neg4.i.i = sdiv exact i64 %i.dv, -24
  %.neg3.i.i92 = sub i64 %i.do, %i.cz
  %i.dw = add i64 %.neg3.i.i92, %.neg4.i.i
  %.not17.i = icmp slt i64 %i.dw, 1
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread197

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i91
  %.not.i19.i = icmp slt i64 %i.dv, 24
  br i1 %.not.i19.i, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i
  %i.dx = mul i64 %i.cz, 3
  %i.dy = shl i64 %i.do, 1
  %i.dz = icmp slt i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %.idx.i.i.i = sub nsw i64 0, %i.dv
  %i.ea = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i ; 4 uses
  %i.eb = icmp eq i64 %i.cz, 0
  br i1 %i.eb, label %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %8 = icmp eq i64 %i.dt, %i.du
  %i.ec = icmp eq ptr %i.dq, null
  %or.cond.i.i.i.i = or i1 %i.ec, %8
  %i.ed = icmp eq ptr %i.ea, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.ed
  br i1 %or.cond3.i.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = mul i64 %i.cz, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ea, ptr noundef nonnull align 1 %i.dq, i64 noundef %i.ee, i1 noundef false) #24
  br label %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i

_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i: ; preds = %bb.al, %bb.ak, %bb.aj
  store ptr %i.ea, ptr %i.dp, align 8
  br label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread197

_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i99: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i93
  %i.ef = getelementptr i8, ptr %i.cy, i64 8
  %i.eg = load i64, ptr %i.ef, align 8            ; 3 uses
  %.neg3.i.i98 = sub i64 %i.eg, %i.cz
  %.neg4.i.i97 = sdiv exact i64 %i.dm, -24        ; 2 uses
  %i.eh = add i64 %.neg3.i.i98, %.neg4.i.i97
  %.not18.i = icmp sgt i64 %i.eh, 0
  %i.ei = mul i64 %i.cz, 3
  %i.ej = icmp slt i64 %i.ei, %i.eg
  %or.cond = select i1 %.not18.i, i1 %i.ej, i1 false
  br i1 %or.cond, label %bb.am, label %.critedge.i

bb.am:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i99
  %.neg = xor i64 %i.cz, -1
  %i.ek = add i64 %i.eg, %.neg
  %i.el = sdiv i64 %i.ek, 2
  %i.em = call noundef i64 @llvm.smax.i64(i64 %i.el, i64 0)
  %i.en = add nuw nsw i64 %i.em, 1
  %i.eo = add nuw nsw i64 %i.en, %.neg4.i.i97
  %.idx.i.i = mul i64 %i.eo, 24                   ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dh, i64 %.idx.i.i ; 4 uses
  %i.eq = icmp eq i64 %.idx.i.i, 0
  %i.er = icmp eq ptr %i.dh, null
  %or.cond.i.i.i = or i1 %i.eq, %i.er
  %i.es = icmp eq ptr %i.ep, null
  %or.cond3.i.i.i = or i1 %i.es, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %.noexc94, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = mul i64 %i.cz, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ep, ptr noundef nonnull align 1 %i.dh, i64 noundef %i.et, i1 noundef false) #24
  br label %.noexc94

.noexc94:                                         ; preds = %bb.am, %bb.an
  store ptr %i.ep, ptr %i.dg, align 8
  br label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread

.critedge.i:                                      ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i99, %bb.ai, %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i.i, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i90, %_ZN10QByteArrayC2ERKS_.exit20.i
  invoke void @_ZN17QArrayDataPointerI10QByteArrayE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bx, i32 noundef %i.dd, i64 noundef 1, ptr noundef null)
          to label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit unwind label %bb.ao

_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit: ; preds = %.critedge.i
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.pre158 = load ptr, ptr %.phi.trans.insert157, align 8 ; 2 uses
  br i1 %i.dc, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread, label %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread197

_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread: ; preds = %.noexc94, %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i93, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit
  %i.eu = phi ptr [ %.pre158, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit ], [ %i.ep, %.noexc94 ], [ %i.dh, %_ZNK17QArrayDataPointerI10QByteArrayE16freeSpaceAtBeginEv.exit.i93 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 -24
  store ptr %i.bl, ptr %i.ew, align 8
  %i.ex = getelementptr i8, ptr %i.eu, i64 -16
  store ptr %i.bn, ptr %i.ex, align 8
  %i.ey = getelementptr i8, ptr %i.eu, i64 -8
  store i64 %i.bp, ptr %i.ey, align 8
  %i.ez = load ptr, ptr %i.ev, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  store ptr %i.fa, ptr %i.ev, align 8
  br label %.noexc50

bb.ao:                                            ; preds = %.critedge.i
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i43, label %_ZN10QByteArrayD2Ev.exit63, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i

_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread197: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i91, %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit
  %i.fc = phi ptr [ %.pre158, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit ], [ %i.dq, %_ZNK17QArrayDataPointerI10QByteArrayE14freeSpaceAtEndEv.exit.i91 ], [ %i.ea, %_ZN9QtPrivate20q_relocate_overlap_nI10QByteArrayxEEvPT_T0_S3_.exit.i.i.i ]
  %i.fd = getelementptr [24 x i8], ptr %i.fc, i64 %i.bz ; 5 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 24
  %i.ff = load i64, ptr %i.by, align 8
  %i.fg = sub i64 %i.ff, %i.bz
  %i.fh = mul i64 %i.fg, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.fe, ptr noundef align 1 %i.fd, i64 noundef %i.fh, i1 noundef false) #24
  store ptr %i.bl, ptr %i.fd, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.bn, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %i.bp, ptr %i.fj, align 8
  br label %.noexc50

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i:   ; preds = %bb.ao
  %i.fk = atomicrmw sub ptr %i.bl, i32 1 acq_rel, align 4
  %.not.i.i24.i = icmp eq i32 %i.fk, 1
  br i1 %.not.i.i24.i, label %bb.ap, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i61

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bl, i64 noundef 1, i64 noundef 8) #24
  br label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i61

.noexc50:                                         ; preds = %bb.ab, %bb.ac, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread197, %_ZN17QArrayDataPointerI10QByteArrayE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit.thread, %_ZN10QByteArrayC2ERKS_.exit18.i
  %i.fl = load i64, ptr %i.by, align 8
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.by, align 8
  %i.fn = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc50
  %i.fo = load atomic i32, ptr %i.fn monotonic, align 4
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI10QByteArrayE6appendERKS0_.exit

_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i, %.noexc50
  invoke void @_ZN17QArrayDataPointerI10QByteArrayE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bx, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI10QByteArrayE6appendERKS0_.exit unwind label %bb.at

_ZN5QListI10QByteArrayE6appendERKS0_.exit:        ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i
  br i1 %.not.i.i.i43, label %_ZN10QByteArrayD2Ev.exit55, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i53

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i53:     ; preds = %_ZN5QListI10QByteArrayE6appendERKS0_.exit
  %i.fq = atomicrmw sub ptr %i.bl, i32 1 acq_rel, align 4
  %.not.i.i54 = icmp eq i32 %i.fq, 1
  br i1 %.not.i.i54, label %bb.aq, label %_ZN10QByteArrayD2Ev.exit55

bb.aq:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i53
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bl, i64 noundef 1, i64 noundef 8) #24
  br label %_ZN10QByteArrayD2Ev.exit55

_ZN10QByteArrayD2Ev.exit55:                       ; preds = %_ZN5QListI10QByteArrayE6appendERKS0_.exit, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i53, %bb.aq
  %i.fr = load ptr, ptr %i.n, align 8
  %i.fs = getelementptr i8, ptr %i.fr, i64 24     ; 3 uses
  store ptr %i.fs, ptr %i.n, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8
  %.not130 = icmp eq ptr %i.fs, %.sroa.0.0.copyload
  br i1 %.not130, label %._crit_edge, label %.lr.ph, !llvm.loop !133

bb.ar:                                            ; preds = %_ZN10QByteArrayC2ERKS_.exit45
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fu = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i56, label %_ZN10QByteArrayD2Ev.exit59, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57:     ; preds = %bb.ar
  %i.fv = atomicrmw sub ptr %i.fu, i32 1 acq_rel, align 4
  %.not.i.i58 = icmp eq i32 %i.fv, 1
  br i1 %.not.i.i58, label %bb.as, label %_ZN10QByteArrayD2Ev.exit59

bb.as:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57
  %i.fw = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fw, i64 noundef 1, i64 noundef 8) #24
  br label %_ZN10QByteArrayD2Ev.exit59

bb.at:                                            ; preds = %_ZNK17QArrayDataPointerI10QByteArrayE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.z, %_ZN10QByteArrayD2Ev.exit49
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit59

_ZN10QByteArrayD2Ev.exit59:                       ; preds = %bb.at, %bb.as, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57, %bb.ar
  %.pn23 = phi { ptr, i32 } [ %i.ft, %bb.as ], [ %i.ft, %bb.ar ], [ %i.ft, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57 ], [ %i.fx, %bb.at ] ; 2 uses
  br i1 %.not.i.i.i43, label %_ZN10QByteArrayD2Ev.exit63, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i61

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i61:     ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i, %bb.ap, %_ZN10QByteArrayD2Ev.exit59
  %.pn23124 = phi { ptr, i32 } [ %.pn23, %_ZN10QByteArrayD2Ev.exit59 ], [ %i.fb, %bb.ap ], [ %i.fb, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i23.i ] ; 2 uses
  %i.fy = atomicrmw sub ptr %i.bl, i32 1 acq_rel, align 4
  %.not.i.i62 = icmp eq i32 %i.fy, 1
  br i1 %.not.i.i62, label %bb.au, label %_ZN10QByteArrayD2Ev.exit63

bb.au:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i61
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bl, i64 noundef 1, i64 noundef 8) #24
  br label %_ZN10QByteArrayD2Ev.exit63

_ZN10QByteArrayD2Ev.exit63:                       ; preds = %bb.ao, %_ZN10QByteArrayD2Ev.exit59, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i61, %bb.au
  %.pn23125 = phi { ptr, i32 } [ %.pn23, %_ZN10QByteArrayD2Ev.exit59 ], [ %.pn23124, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i61 ], [ %.pn23124, %bb.au ], [ %i.fb, %bb.ao ]
  call void @_ZN9QtPrivate17QForeachContainerI5QListI10QByteArrayEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %4) #24
  br label %bb.av

bb.av:                                            ; preds = %_ZN10QByteArrayD2Ev.exit63, %bb.v
  %.pn23.pn = phi { ptr, i32 } [ %.pn23125, %_ZN10QByteArrayD2Ev.exit63 ], [ %i.bj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN10QByteArrayD2Ev.exit42

bb.aw:                                            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI10QByteArrayEED2Ev.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNK7QObject8propertyEPKc(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %6, ptr noundef align 8 dereferenceable_or_null(16) %i.ab, ptr noundef nonnull @.str.14)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fz = invoke noundef i32 @_ZNK8QVariant5toIntEPb(ptr noundef nonnull align 8 dereferenceable_or_null(32) %6, ptr noundef null)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  switch i32 %i.fz, label %_ZN7QString5clearEv.exit [
    i32 1, label %bb.bc
    i32 3, label %bb.bo
  ]

end_hunk_1
