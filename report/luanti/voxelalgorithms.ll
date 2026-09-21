Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo28update_block_border_lightingEP3MapP8MapBlockRSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE:_ZN7voxalgo10LightQueueC2Em.exit
bb.i:                                             ; preds = %bb.h
  %i.eg = sub nuw nsw i64 %i.dk, %indvars.iv298
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.ei = load i16, ptr %i.eh, align 8, !tbaa !80
  %i.ej = zext i16 %i.ei to i32
  %i.ek = trunc nuw nsw i64 %i.eg to i32
  %i.el = shl nuw nsw i32 1, %i.ek
  %i.em = and i32 %i.el, %i.ej
  %.not258 = icmp eq i32 %i.em, 0
  br i1 %.not258, label %bb.j, label %bb.ba

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.en = trunc nuw nsw i32 %i.ee to i16
  %i.eo = or i16 %i.eb, %i.en                     ; 2 uses
  %.not.i.i = icmp eq i16 %i.eo, %i.eb
  br i1 %.not.i.i, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 %i.eo, ptr %i.al, align 8, !tbaa !80
  %i.ep = load i16, ptr %i.am, align 2, !tbaa !81 ; 2 uses
  %i.eq = icmp ult i16 %i.ep, 2
  br i1 %i.eq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %i.am, align 2, !tbaa !81
  store i32 4, ptr %i.an, align 4, !tbaa !82
  %i.er = load i32, ptr %i.ao, align 8, !tbaa !83
  store i32 %i.er, ptr %i.ap, align 4, !tbaa !84
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.m:                                             ; preds = %bb.k
  %i.es = icmp eq i16 %i.ep, 2
  br i1 %i.es, label %bb.n, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.n:                                             ; preds = %bb.m
  %i.et = load i32, ptr %i.an, align 4, !tbaa !82
  %i.eu = or i32 %i.et, 4
  store i32 %i.eu, ptr %i.an, align 4, !tbaa !82
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.ev = sub nuw nsw i64 5, %indvars.iv298
  %i.ew = sub nuw nsw i32 5, %i.dm
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 80 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !80 ; 2 uses
  %i.ez = trunc i64 %indvars.iv298 to i32
  %i.fa = sub i32 11, %i.ez
  %i.fb = select i1 %i.di, i32 %i.fa, i32 %i.ew
  %i.fc = shl nuw nsw i32 1, %i.fb
  %i.fd = trunc nuw nsw i32 %i.fc to i16
  %i.fe = or i16 %i.ey, %i.fd                     ; 2 uses
  %.not.i.i198 = icmp eq i16 %i.fe, %i.ey
  br i1 %.not.i.i198, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199, label %bb.o

bb.o:                                             ; preds = %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit
  store i16 %i.fe, ptr %i.ex, align 8, !tbaa !80
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 66 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !81 ; 2 uses
  %i.fh = icmp ult i16 %i.fg, 2
  br i1 %i.fh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i16 2, ptr %i.ff, align 2, !tbaa !81
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dw, i64 68
  store i32 4, ptr %i.fi, align 4, !tbaa !82
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !83
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dw, i64 76
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !84
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199

bb.q:                                             ; preds = %bb.o
  %i.fm = icmp eq i16 %i.fg, 2
  br i1 %i.fm, label %bb.r, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199

bb.r:                                             ; preds = %bb.q
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dw, i64 68 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !82
  %i.fp = or i32 %i.fo, 4
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !82
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199

_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199: ; preds = %bb.r, %bb.q, %bb.p, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr @_ZN7voxalgoL13block_bordersE, i64 %indvars.iv298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !tbaa.struct !227
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr @_ZN7voxalgoL13block_bordersE, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 24, i1 false), !tbaa.struct !227
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge274.split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.ba

bb.t:                                             ; preds = %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199, %._crit_edge274.split
  %i.fs = phi i1 [ true, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199 ], [ false, %._crit_edge274.split ]
  %indvars.iv295.sroa.phi = phi ptr [ %5, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199 ], [ %indvars.iv295.sroa.gep373, %._crit_edge274.split ] ; 6 uses
  %indvars.iv295.sroa.phi374.sroa.speculated = phi ptr [ %1, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199 ], [ %i.dw, %._crit_edge274.split ] ; 14 uses
  %.sroa.040.0.copyload = load i16, ptr %indvars.iv295.sroa.phi, align 8, !tbaa !92 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 6
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !92 ; 2 uses
  %.not117270 = icmp sgt i16 %.sroa.040.0.copyload, %.sroa.7.0.copyload
  br i1 %.not117270, label %._crit_edge274.split, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.t
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 10
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !92 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 8
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !92 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 4
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !92 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 2
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !92 ; 2 uses
  %.not118265 = icmp sgt i16 %.sroa.6.0.copyload, %.sroa.9.0.copyload
  %.not119263 = icmp sgt i16 %.sroa.5.0.copyload, %.sroa.8.0.copyload
  %i.ft = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 36
  %i.fv = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 66 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 68 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 72
  %i.fz = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 76
  %i.ga = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 40
  %i.gb = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 48 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi374.sroa.speculated, i64 2 ; 2 uses
  %brmerge = select i1 %.not118265, i1 true, i1 %.not119263
  br i1 %brmerge, label %._crit_edge274.split, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %.lr.ph273
  %i.gd = sext i16 %.sroa.8.0.copyload to i64
  %i.ge = sext i16 %.sroa.9.0.copyload to i64
  %i.gf = sext i16 %.sroa.040.0.copyload to i32
  %i.gg = sext i16 %.sroa.5.0.copyload to i64
  %i.gh = sext i16 %.sroa.6.0.copyload to i64
  %i.gi = tail call i16 @llvm.smax.i16(i16 %.sroa.040.0.copyload, i16 %.sroa.7.0.copyload)
  %smax293 = sext i16 %i.gi to i32
  br label %.lr.ph268

._crit_edge274.split:                             ; preds = %._crit_edge269, %.lr.ph273, %bb.t
  br i1 %i.fs, label %bb.t, label %bb.s, !llvm.loop !217

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %._crit_edge269
  %.0114271 = phi i32 [ %i.gl, %._crit_edge269 ], [ %i.gf, %.lr.ph268.preheader ] ; 5 uses
  %i.gj = trunc nsw i32 %.0114271 to i16
  %i.gk = zext i32 %.0114271 to i64
  %.mask261 = and i32 %.0114271, 65535
  %.sroa.0243.0.insert.ext = zext nneg i32 %.mask261 to i48
  br label %.lr.ph

._crit_edge269:                                   ; preds = %._crit_edge
  %i.gl = add nsw i32 %.0114271, 1
  %exitcond294.not = icmp eq i32 %.0114271, %smax293
  br i1 %exitcond294.not, label %._crit_edge274.split, label %.lr.ph268, !llvm.loop !218

.lr.ph:                                           ; preds = %.lr.ph268, %._crit_edge
  %indvars.iv287 = phi i64 [ %i.gh, %.lr.ph268 ], [ %indvars.iv.next288, %._crit_edge ] ; 5 uses
  %i.gm = trunc nsw i64 %indvars.iv287 to i32
  %i.gn = trunc i64 %indvars.iv287 to i16
  %i.go = shl nsw i64 %indvars.iv287, 8
  %i.gp = add nsw i64 %i.go, %i.gk
  %.mask = and i32 %i.gm, 65535
  %.sroa.3.0.insert.ext = zext nneg i32 %.mask to i48
  %.sroa.3.0.insert.shift = shl nuw i48 %.sroa.3.0.insert.ext, 32
  %invariant.op = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.0243.0.insert.ext
  br label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

._crit_edge:                                      ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %indvars.iv.next288 = add nsw i64 %indvars.iv287, 1
  %exitcond292.not = icmp eq i64 %indvars.iv287, %i.ge
  br i1 %exitcond292.not, label %._crit_edge269, label %.lr.ph, !llvm.loop !219

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %.lr.ph, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %indvars.iv = phi i64 [ %i.gg, %.lr.ph ], [ %indvars.iv.next, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit ] ; 5 uses
  %i.gq = load ptr, ptr %i.ft, align 8, !tbaa !76
  %i.gr = load i8, ptr %i.fu, align 4, !tbaa !77, !range !78, !noundef !79
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = shl nsw i64 %indvars.iv, 4
  %i.gu = add nsw i64 %i.gp, %i.gt
  %i.gv = and i64 %i.gu, 4294967295               ; 2 uses
  %i.gw = select i1 %i.gs, i64 0, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gw
  %.sroa.0.0.copyload.i200 = load i32, ptr %i.gx, align 4 ; 3 uses
  %.sroa.7250.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i200, 16 ; 4 uses
  %.sroa.7250.0.extract.trunc = trunc i32 %.sroa.7250.0.extract.shift to i8 ; 2 uses
  %.sroa.0248.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i200, 65535
  %i.gy = zext nneg i32 %.sroa.0248.0.extract.trunc.mask to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gy ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.gz, align 1, !tbaa !31 ; 2 uses
  %i.ha = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i201 = icmp eq i8 %i.ha, 0
  %i.hb = and i8 %.sroa.7250.0.extract.trunc, 15
  %i.hc = lshr i8 %.sroa.7250.0.extract.trunc, 4
  %.in.i.i = select i1 %i.dj, i8 %i.hb, i8 %i.hc
  %i.hd = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.he = tail call i8 @llvm.umax.i8(i8 %i.hd, i8 %.in.i.i)
  %i.hf = select i1 %.not.i.i201, i8 %i.hd, i8 %i.he ; 2 uses
  %.not259 = icmp eq i8 %i.hf, 15
  br i1 %.not259, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %i.hg = trunc i64 %indvars.iv to i16
  %.sroa.0.0.copyload.i202 = load i48, ptr %i.fv, align 8 ; 3 uses
  %.sroa.0244.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i202 to i16
  %.sroa.5.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i202, 16
  %.sroa.5.0.extract.trunc = trunc i48 %.sroa.5.0.extract.shift to i16
  %.sroa.6245.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i202, 32
  %.sroa.6245.0.extract.trunc = trunc nuw i48 %.sroa.6245.0.extract.shift to i16
  %i.hh = add i16 %.sroa.0244.0.extract.trunc, %i.gj
  %i.hi = add i16 %.sroa.5.0.extract.trunc, %i.hg
  %i.hj = add i16 %.sroa.6245.0.extract.trunc, %i.gn
  %.sroa.3.0.insert.ext.i203 = zext i16 %i.hj to i48
  %.sroa.3.0.insert.shift.i204 = shl nuw i48 %.sroa.3.0.insert.ext.i203, 32
  %.sroa.2.0.insert.ext.i205 = zext i16 %i.hi to i48
  %.sroa.2.0.insert.shift.i206 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i205, 16
  %.sroa.2.0.insert.insert.i207 = or disjoint i48 %.sroa.3.0.insert.shift.i204, %.sroa.2.0.insert.shift.i206
  %.sroa.0.0.insert.ext.i208 = zext i16 %i.hh to i48
  %.sroa.0.0.insert.insert.i209 = or disjoint i48 %.sroa.2.0.insert.insert.i207, %.sroa.0.0.insert.ext.i208
  %i.hk = invoke noundef zeroext i1 @_ZN7voxalgo24is_light_locally_correctEP3MapPK14NodeDefManager9LightBankN4core8vector3dIsEE(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.av, i48 %.sroa.0.0.insert.insert.i209)
          to label %bb.v unwind label %bb.ay

bb.v:                                             ; preds = %bb.u
  br i1 %i.hk, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i.i210 = load i8, ptr %i.gz, align 1, !tbaa !31
  %i.hl = and i8 %.sroa.0.0.copyload.i.i210, 16
  %.not.i211 = icmp eq i8 %i.hl, 0
  br i1 %.not.i211, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = and i32 %.sroa.7250.0.extract.shift, 240
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

bb.z:                                             ; preds = %bb.x
  %i.hn = and i32 %.sroa.7250.0.extract.shift, 15
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit: ; preds = %bb.y, %bb.z, %bb.w
  %.sroa.7250.0 = phi i32 [ %.sroa.7250.0.extract.shift, %bb.w ], [ %i.hn, %bb.z ], [ %i.hm, %bb.y ]
  invoke void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %indvars.iv295.sroa.phi374.sroa.speculated)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit
  %.sroa.7250.0.insert.ext = shl nuw i32 %.sroa.7250.0, 16
  %.sroa.7250.0.insert.shift = and i32 %.sroa.7250.0.insert.ext, 16711680
  %i.ho = and i32 %.sroa.0.0.copyload.i200, -16711681
  %.sroa.0248.0.insert.insert = or disjoint i32 %.sroa.7250.0.insert.shift, %i.ho
  %i.hp = load ptr, ptr %i.ft, align 8, !tbaa !76
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.gv
  store i32 %.sroa.0248.0.insert.insert, ptr %i.hq, align 4
  %i.hr = load i16, ptr %i.fw, align 2, !tbaa !81 ; 2 uses
  %i.hs = icmp ult i16 %i.hr, 4
  br i1 %i.hs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc
  store i16 4, ptr %i.fw, align 2, !tbaa !81
  store i32 16, ptr %i.fx, align 4, !tbaa !82
  %i.ht = load i32, ptr %i.fy, align 8, !tbaa !83
  store i32 %i.ht, ptr %i.fz, align 4, !tbaa !84
  br label %bb.ad

bb.ab:                                            ; preds = %.noexc
  %i.hu = icmp eq i16 %i.hr, 4
  br i1 %i.hu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hv = load i32, ptr %i.fx, align 4, !tbaa !82
  %i.hw = or i32 %i.hv, 16
  store i32 %i.hw, ptr %i.fx, align 4, !tbaa !82
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hx = load ptr, ptr %i.ga, align 8, !tbaa !85 ; 2 uses
  %i.hy = load ptr, ptr %i.gb, align 8, !tbaa !86
  %.not.i.i.i.i = icmp eq ptr %i.hy, %i.hx
  br i1 %.not.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.ad
  store ptr %i.hx, ptr %i.gb, align 8, !tbaa !86
  br label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit:    ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.ad
  %.sroa.0.0.copyload.i212 = load i48, ptr %i.gc, align 2 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i212 to i16 ; 5 uses
  %.sroa.6.0.extract.shift307 = lshr i48 %.sroa.0.0.copyload.i212, 16
  %.sroa.6.0.extract.trunc308 = trunc i48 %.sroa.6.0.extract.shift307 to i16 ; 5 uses
  %.sroa.7.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i212, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 3 uses
  %i.hz = load ptr, ptr %i.as, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.hz, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.at, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !19 ; 2 uses
  %i.ic = icmp slt i16 %i.ib, %.sroa.0.0.extract.trunc
  br i1 %i.ic, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.id = icmp eq i16 %i.ib, %.sroa.0.0.extract.trunc
  br i1 %i.id, label %bb.af, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ie = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !20 ; 2 uses
  %i.ig = icmp slt i16 %i.if, %.sroa.6.0.extract.trunc308
  br i1 %i.ig, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ih = icmp eq i16 %i.if, %.sroa.6.0.extract.trunc308
  br i1 %i.ih, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.ag
  %i.ii = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !21
  %i.ik = icmp slt i16 %i.ij, %.sroa.7.0.extract.trunc
  br i1 %i.ik, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.af, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ag, %bb.ae
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ag ], [ 16, %bb.ae ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.ag ], [ %.014.i.i.i.i, %bb.ae ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.il, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i213 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i213, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.im = icmp eq ptr %.19.i.i.i.i, %i.at
  br i1 %i.im, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.io = load i16, ptr %i.in, align 2, !tbaa !19 ; 2 uses
  %i.ip = icmp sgt i16 %i.io, %.sroa.0.0.extract.trunc
  br i1 %i.ip, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iq = icmp eq i16 %i.io, %.sroa.0.0.extract.trunc
  br i1 %i.iq, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.ir = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !20 ; 2 uses
  %i.it = icmp sgt i16 %i.is, %.sroa.6.0.extract.trunc308
  br i1 %i.it, label %.critedge.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iu = icmp eq i16 %i.is, %.sroa.6.0.extract.trunc308
  br i1 %i.iu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %bb.at

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.ak
  %i.iv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !21
  %i.ix = icmp sgt i16 %i.iw, %.sroa.7.0.extract.trunc
  br i1 %i.ix, label %.critedge.i, label %bb.at

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.aj, %bb.ah, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.at, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.aj ], [ %.19.i.i.i.i, %bb.ah ]
  %i.iy = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc235 unwind label %bb.az ; 10 uses

.noexc235:                                        ; preds = %.critedge.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32 ; 3 uses
  store i16 %.sroa.0.0.extract.trunc, ptr %i.iz, align 8, !tbaa !92
  %.sroa.6.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.iy, i64 34
  store i16 %.sroa.6.0.extract.trunc308, ptr %.sroa.6.0..sroa_idx309, align 2, !tbaa !92
  %.sroa.7.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.iy, i64 36
  store i16 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx311, align 4, !tbaa !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  store ptr null, ptr %i.ja, align 8, !tbaa !97
  %i.jb = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 2 dereferenceable(6) %i.iz)
          to label %bb.al unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.al:                                            ; preds = %.noexc235
  %i.jc = extractvalue { ptr, ptr } %i.jb, 0      ; 2 uses
  %i.jd = extractvalue { ptr, ptr } %i.jb, 1      ; 6 uses
  %.not.i233 = icmp eq ptr %i.jd, null
  br i1 %.not.i233, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i234 = icmp ne ptr %i.jc, null
  %i.je = icmp eq ptr %i.jd, %i.at
  %or.cond.i.i.i = select i1 %.not.i.i.i234, i1 true, i1 %i.je
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jg = load i16, ptr %i.iz, align 8, !tbaa !19 ; 2 uses
  %i.jh = load i16, ptr %i.jf, align 2, !tbaa !19 ; 2 uses
  %i.ji = icmp slt i16 %i.jg, %i.jh
  br i1 %i.ji, label %.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jj = icmp eq i16 %i.jg, %i.jh
  br i1 %i.jj, label %bb.ap, label %.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 34
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !20 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 34
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !20 ; 2 uses
  %i.jo = icmp slt i16 %i.jl, %i.jn
  br i1 %i.jo, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jp = icmp eq i16 %i.jl, %i.jn
  br i1 %i.jp, label %bb.ar, label %.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iy, i64 36
  %i.jr = load i16, ptr %i.jq, align 4, !tbaa !21
  %i.js = getelementptr inbounds nuw i8, ptr %i.jd, i64 36
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !21
  %i.ju = icmp slt i16 %i.jr, %i.jt
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.jv = phi i1 [ false, %bb.ao ], [ true, %bb.am ], [ true, %bb.ap ], [ true, %bb.an ], [ false, %bb.aq ], [ %i.ju, %bb.ar ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jv, ptr noundef nonnull %i.iy, ptr noundef nonnull %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #5
  %i.jw = load i64, ptr %i.au, align 8, !tbaa !98
  %i.jx = add i64 %i.jw, 1
  store i64 %i.jx, ptr %i.au, align 8, !tbaa !98
  br label %bb.at

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc235
  %i.jy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef 48) #22
  br label %.body

bb.as:                                            ; preds = %bb.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef 48) #22
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.ak, %bb.ai, %bb.as, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.ak ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.ai ], [ %i.iy, %.thread.i ], [ %i.jc, %bb.as ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.jz, align 8, !tbaa !30
  %.sroa.0.0.copyload.i215 = load i48, ptr %i.gc, align 2 ; 2 uses
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ka = shl nsw i32 %indvars.iv.tr, 16
  %.sroa.2.0.insert.shift = zext i32 %i.ka to i48
  %.sroa.0243.0.insert.insert.reass = or disjoint i48 %invariant.op, %.sroa.2.0.insert.shift ; 2 uses
  %i.kb = zext nneg i8 %i.hf to i64
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.kb ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 4 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !33 ; 8 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 3 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !87
  %.not.i.i216 = icmp eq ptr %i.ke, %i.kg
  br i1 %.not.i.i216, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.ke, align 8, !tbaa !89
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i48 %.sroa.0243.0.insert.insert.reass, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 14
  store i48 %.sroa.0.0.copyload.i215, ptr %i.ki, align 2
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 20
  store i8 6, ptr %i.kj, align 4, !tbaa !90
  %i.kk = load ptr, ptr %i.kd, align 8, !tbaa !33
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store ptr %i.kl, ptr %i.kd, align 8, !tbaa !33
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.av:                                            ; preds = %bb.at
  %i.km = load ptr, ptr %i.kc, align 8, !tbaa !91 ; 5 uses
  %i.kn = ptrtoint ptr %i.ke to i64
  %i.ko = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.kp = sub i64 %i.kn, %i.ko                    ; 3 uses
  %i.kq = icmp eq i64 %i.kp, 9223372036854775800
  br i1 %i.kq, label %bb.aw, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.kr = sdiv exact i64 %i.kp, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.kr, i64 1)
  %i.ks = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kr ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.kr
  %i.ku = tail call i64 @llvm.umin.i64(i64 %i.ks, i64 384307168202282325)
  %i.kv = select i1 %i.kt, i64 384307168202282325, i64 %i.ku ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.kv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.kw = mul nuw nsw i64 %i.kv, 24
  %i.kx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #21
          to label %.noexc219 unwind label %.loopexit ; 5 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kp ; 4 uses
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.ky, align 8, !tbaa !89
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i48 %.sroa.0243.0.insert.insert.reass, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 14
  store i48 %.sroa.0.0.copyload.i215, ptr %i.la, align 2
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 20
  store i8 6, ptr %i.lb, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.km, %i.ke
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc219, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i ], [ %i.kx, %.noexc219 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i ], [ %i.km, %.noexc219 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !228
  %i.lc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lc, %i.ke
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc219
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kx, %.noexc219 ], [ %i.ld, %.lr.ph.i.i.i.i.i.i ]
  %i.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.lf = load ptr, ptr %i.kf, align 8, !tbaa !87
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = sub i64 %i.lg, %i.ko
  tail call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.lh) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.kx, ptr %i.kc, align 8, !tbaa !91
  store ptr %i.le, ptr %i.kd, align 8, !tbaa !33
  %i.li = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.kv
  store ptr %i.li, ptr %i.kf, align 8, !tbaa !87
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.ay:                                            ; preds = %bb.u
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %.critedge.i
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.au, %bb.v, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.gd
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit, !llvm.loop !223

.body:                                            ; preds = %bb.az, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %.loopexit, %.loopexit.split-lp, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.lj, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.lk, %bb.az ], [ %i.jy, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.bn

bb.ba:                                            ; preds = %bb.i, %bb.f, %bb.s
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 3 uses
  %i.ll = trunc nuw nsw i64 %indvars.iv.next299 to i32
  %exitcond301.not = icmp eq i64 %indvars.iv.next299, 6
  br i1 %exitcond301.not, label %bb.c, label %bb.e, !llvm.loop !224

bb.bb:                                            ; preds = %._crit_edge282
  invoke void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN7voxalgo10LightQueueC2Em.exit131 unwind label %bb.d

.preheader:                                       ; preds = %bb.c, %._crit_edge282
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %._crit_edge282 ], [ 0, %bb.c ] ; 4 uses
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv302 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !27 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !27
  %i.lq = icmp ult ptr %i.ln, %i.lp
  br i1 %i.lq, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %.preheader
  %indvars.iv302.tr = trunc nuw i64 %indvars.iv302 to i32
  %i.lr = shl i32 %indvars.iv302.tr, 4
  %i.ls = trunc nuw nsw i64 %indvars.iv302 to i32
  br label %bb.bc

._crit_edge282:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %.preheader
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, 16
  br i1 %exitcond306.not, label %bb.bb, label %.preheader, !llvm.loop !225

bb.bc:                                            ; preds = %.lr.ph281, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.0237.0279 = phi ptr [ %i.ln, %.lr.ph281 ], [ %i.nn, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.lt = load ptr, ptr %.sroa.0237.0279, align 8, !tbaa !89 ; 10 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0237.0279, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.lu, align 8 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !76
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 36
  %i.ly = load i8, ptr %i.lx, align 4, !tbaa !77, !range !78, !noundef !79
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %i.ma = ashr exact i64 %sext.i, 40
  %sext2.i = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.mb = ashr exact i64 %sext2.i, 44
  %sext3.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.mc = ashr exact i64 %sext3.i, 48
  %i.md = add nsw i64 %i.mb, %i.mc
  %i.me = add nsw i64 %i.md, %i.ma
  %i.mf = and i64 %i.me, 4294967295
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.mg = phi i64 [ %i.mf, %bb.bd ], [ 0, %bb.bc ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.mg
  %.sroa.0.0.copyload.i.i220 = load i32, ptr %i.mh, align 4 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i220, 16 ; 3 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i220, 65535
  %i.mi = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mi
  %.sroa.0.0.copyload.i.i221 = load i8, ptr %i.mj, align 1, !tbaa !31
  %i.mk = and i8 %.sroa.0.0.copyload.i.i221, 16
  %.not.i222 = icmp eq i8 %i.mk, 0
  br i1 %.not.i222, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.dj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ml = and i32 %.sroa.6.0.extract.shift, 240
end_hunk_0
begin_hunk_1_@_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE:.preheader120

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1, %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.089.0137.1, i64 24 ; 2 uses
  %i.fe = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.ff = icmp ult ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.p, label %._crit_edge139.1, !llvm.loop !250

._crit_edge139.1:                                 ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, %bb.o
  %indvars.iv.next154.1 = add nuw nsw i64 %indvars.iv153.1, 1 ; 2 uses
  %exitcond156.1 = icmp eq i64 %indvars.iv.next154.1, 16
  br i1 %exitcond156.1, label %bb.v, label %bb.o, !llvm.loop !251

bb.v:                                             ; preds = %._crit_edge139.1
  tail call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(385) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %5)
  ret void

bb.w:                                             ; preds = %.preheader, %._crit_edge139
  %indvars.iv153 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next154, %._crit_edge139 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv153 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !27 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !27
  %i.fk = icmp ult ptr %i.fh, %i.fj
  br i1 %i.fk, label %.lr.ph, label %._crit_edge139

.lr.ph:                                           ; preds = %bb.w
  %i.fl = trunc nuw nsw i64 %indvars.iv153 to i32
  br label %bb.x

._crit_edge139:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %bb.w
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond156 = icmp eq i64 %indvars.iv.next154, 15
  br i1 %exitcond156, label %bb.n, label %bb.w, !llvm.loop !251

bb.x:                                             ; preds = %.lr.ph, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.089.0137 = phi ptr [ %i.fh, %.lr.ph ], [ %i.he, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.fm = load ptr, ptr %.sroa.089.0137, align 8, !tbaa !89 ; 10 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.fn, align 8 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !76
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !77, !range !78, !noundef !79
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %i.ft = ashr exact i64 %sext.i, 40
  %sext2.i = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.fu = ashr exact i64 %sext2.i, 44
  %sext3.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.fv = ashr exact i64 %sext3.i, 48
  %i.fw = add nsw i64 %i.fu, %i.fv
  %i.fx = add nsw i64 %i.fw, %i.ft
  %i.fy = and i64 %i.fx, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.x, %bb.y
  %i.fz = phi i64 [ %i.fy, %bb.y ], [ 0, %bb.x ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fz
  %.sroa.0.0.copyload.i.i80 = load i32, ptr %i.ga, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i80, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i80, 65535
  %i.gb = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.gb
  %.sroa.0.0.copyload.i.i81 = load i8, ptr %i.gc, align 1, !tbaa !31
  %i.gd = and i8 %.sroa.0.0.copyload.i.i81, 16
  %.not.i = icmp eq i8 %i.gd, 0
  %i.ge = and i32 %.sroa.5.0.extract.shift, 240
  %i.gf = or i32 %i.ge, %i.fl
  %.sroa.5.0 = select i1 %.not.i, i32 %.sroa.5.0.extract.shift, i32 %i.gf
  %.sroa.5.0.insert.ext = shl i32 %.sroa.5.0, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %i.gg = and i32 %.sroa.0.0.copyload.i.i80, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.gg
  %.sroa.02.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %.sroa.2.0.extract.shift.i82 = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i83 = zext nneg i48 %.sroa.2.0.extract.shift.i82 to i64
  %.sroa.3.0.extract.shift.i84 = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i85 = zext nneg i48 %.sroa.3.0.extract.shift.i84 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.fm)
  %i.gh = load ptr, ptr %i.fo, align 8, !tbaa !76
  %sext.i86 = shl nuw i64 %.sroa.3.0.extract.trunc.i85, 48
  %i.gi = ashr exact i64 %sext.i86, 40
  %sext3.i87 = shl i64 %.sroa.2.0.extract.trunc.i83, 48
  %i.gj = ashr exact i64 %sext3.i87, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.gk = ashr exact i64 %sext4.i, 48
  %i.gl = add nsw i64 %i.gj, %i.gk
  %i.gm = add nsw i64 %i.gl, %i.gi
  %i.gn = and i64 %i.gm, 4294967295
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gn
  store i32 %.sroa.0.0.insert.insert, ptr %i.go, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fm, i64 66 ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !81 ; 2 uses
  %i.gr = icmp ult i16 %i.gq, 4
  br i1 %i.gr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  store i16 4, ptr %i.gp, align 2, !tbaa !81
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fm, i64 68
  store i32 16, ptr %i.gs, align 4, !tbaa !82
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !83
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fm, i64 76
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !84
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.gw = icmp eq i16 %i.gq, 4
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fm, i64 68 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !82
  %i.gz = or i32 %i.gy, 16
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !82
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !85 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fm, i64 48 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !86
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %i.hb
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.ac
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !86
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %bb.ac, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 24 ; 2 uses
  %i.hf = load ptr, ptr %i.fi, align 8, !tbaa !27
  %i.hg = icmp ult ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.x, label %._crit_edge139, !llvm.loop !250
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.MapNode, align 4            ; 4 uses
  %4 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 15 uses
  %5 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 14 uses
  %i.a = alloca [16 x [16 x i8]], align 16        ; 7 uses
  %6 = alloca %"struct.voxalgo::SunlightPropagationData", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !282
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not1.i = icmp eq i32 %i.h, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit

_ZNK9VoxelArea14hasEmptyExtentEv.exit:            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !283
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit
  %.sroa.077.0.copyload = load i48, ptr %i.d, align 8 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.077.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.077.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16 ; 2 uses
  %i.k = sext i16 %.sroa.0.0.extract.trunc.i.i to i32 ; 2 uses
  %i.l = add nsw i32 %i.k, -15
  %i.m = icmp slt i16 %.sroa.0.0.extract.trunc.i.i, 0
  %i.n = select i1 %i.m, i32 %i.l, i32 %i.k
  %i.o = sdiv i32 %i.n, 16                        ; 3 uses
  %i.p = sext i16 %.sroa.2.0.extract.trunc.i.i to i32 ; 2 uses
  %i.q = add nsw i32 %i.p, -15
  %i.r = icmp slt i16 %.sroa.2.0.extract.trunc.i.i, 0
  %i.s = select i1 %i.r, i32 %i.q, i32 %i.p
  %i.t = sdiv i32 %i.s, 16                        ; 3 uses
  %i.u = ashr i48 %.sroa.077.0.copyload, 32
  %i.v = trunc nsw i48 %i.u to i32                ; 2 uses
  %i.w = add nsw i32 %i.v, -15
  %i.x = icmp slt i48 %.sroa.077.0.copyload, 0
  %i.y = select i1 %i.x, i32 %i.w, i32 %i.v
  %i.z = sdiv i32 %i.y, 16                        ; 4 uses
  %.mask.i.i = and i32 %i.z, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.aa = shl nsw i32 %i.t, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.aa to i48
  %.mask5.i.i = and i32 %i.o, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.ab = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.ab, %.sroa.2.0.insert.shift.i.i
  %.sroa.078.0.extract.trunc = trunc nsw i32 %i.o to i16 ; 3 uses
  %.sroa.780.0.extract.trunc = trunc nsw i32 %i.t to i16 ; 2 uses
  %.sroa.982.0.extract.trunc = trunc nsw i32 %i.z to i16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %.sroa.070.0.copyload = load i48, ptr %i.ac, align 2 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i155 = trunc i48 %.sroa.070.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i156 = lshr i48 %.sroa.070.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i157 = trunc i48 %.sroa.2.0.extract.shift.i.i156 to i16 ; 2 uses
  %i.ad = sext i16 %.sroa.0.0.extract.trunc.i.i155 to i32 ; 2 uses
  %i.ae = add nsw i32 %i.ad, -15
  %i.af = icmp slt i16 %.sroa.0.0.extract.trunc.i.i155, 0
  %i.ag = select i1 %i.af, i32 %i.ae, i32 %i.ad
  %i.ah = sdiv i32 %i.ag, 16                      ; 3 uses
  %i.ai = sext i16 %.sroa.2.0.extract.trunc.i.i157 to i32 ; 2 uses
  %i.aj = add nsw i32 %i.ai, -15
  %i.ak = icmp slt i16 %.sroa.2.0.extract.trunc.i.i157, 0
  %i.al = select i1 %i.ak, i32 %i.aj, i32 %i.ai
  %i.am = sdiv i32 %i.al, 16                      ; 3 uses
  %i.an = ashr i48 %.sroa.070.0.copyload, 32
  %i.ao = trunc nsw i48 %i.an to i32              ; 2 uses
  %i.ap = add nsw i32 %i.ao, -15
  %i.aq = icmp slt i48 %.sroa.070.0.copyload, 0
  %i.ar = select i1 %i.aq, i32 %i.ap, i32 %i.ao
  %i.as = sdiv i32 %i.ar, 16                      ; 4 uses
  %.mask.i.i158 = and i32 %i.as, 65535
  %.sroa.3.0.insert.ext.i.i159 = zext nneg i32 %.mask.i.i158 to i48
  %.sroa.3.0.insert.shift.i.i160 = shl nuw i48 %.sroa.3.0.insert.ext.i.i159, 32
  %i.at = shl nsw i32 %i.am, 16
  %.sroa.2.0.insert.shift.i.i161 = zext i32 %i.at to i48 ; 2 uses
  %.mask5.i.i163 = and i32 %i.ah, 65535
  %.sroa.0.0.insert.ext.i.i164 = zext nneg i32 %.mask5.i.i163 to i48
  %i.au = or disjoint i48 %.sroa.3.0.insert.shift.i.i160, %.sroa.0.0.insert.ext.i.i164
  %.sroa.0.0.insert.insert.i.i165 = or disjoint i48 %i.au, %.sroa.2.0.insert.shift.i.i161
  %.sroa.071.0.extract.trunc = trunc nsw i32 %i.ah to i16 ; 2 uses
  %.sroa.7.0.extract.trunc = trunc nsw i32 %i.am to i16 ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nsw i32 %i.as to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %4, i8 0, i64 384, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i8 15, ptr %i.av, align 16, !tbaa !24
  br label %.split.i

.split.i:                                         ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i, %bb.b
  %.0.idx11.i = phi i64 [ %.0.add.i, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %4, i64 %.0.idx11.i ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !87
  %i.ay = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !91
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24
  %i.bd = icmp ult i64 %i.bc, 256
  br i1 %i.bd, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %.split.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !33
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ba
  %i.bi = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i unwind label %.body.thread ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %i.bj = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !91 ; 5 uses
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %i.bi, %.noexc10.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %i.bj, %.noexc10.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !284
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10.i
  %.not.i8.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !87
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bj to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bq) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.bi, ptr %.0.ptr12.i, align 8, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store ptr %i.br, ptr %i.be, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 6144
  store ptr %i.bs, ptr %i.aw, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, %.split.i
  %.0.add.i = add nuw nsw i64 %.0.idx11.i, 24     ; 2 uses
  %.not.i166 = icmp eq i64 %.0.add.i, 384
  br i1 %.not.i166, label %_ZN7voxalgo10LightQueueC2Em.exit, label %.split.i

.body.thread:                                     ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZN7voxalgo10LightQueueC2Em.exit:                 ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(385) %i.bt, i8 0, i64 384, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 776
  store i8 15, ptr %i.bu, align 8, !tbaa !24
  br label %.split.i167

.split.i167:                                      ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170, %_ZN7voxalgo10LightQueueC2Em.exit
  %.0.idx11.i168 = phi i64 [ %.0.add.i171, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit ] ; 2 uses
  %.0.ptr12.i169 = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.0.idx11.i168 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.ptr12.i169, i64 16 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.bx = load ptr, ptr %.0.ptr12.i169, align 8, !tbaa !91
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24
  %i.cc = icmp ult i64 %i.cb, 256
  br i1 %i.cc, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173: ; preds = %.split.i167
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.ptr12.i169, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bz
  %i.ch = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i176 unwind label %.loopexit.i174 ; 4 uses

.noexc10.i176:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173
  %i.ci = load ptr, ptr %.0.ptr12.i169, align 8, !tbaa !91 ; 5 uses
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i177 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not10.i.i.i.i.i177, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182, label %.lr.ph.i.i.i.i.i178

.lr.ph.i.i.i.i.i178:                              ; preds = %.noexc10.i176, %.lr.ph.i.i.i.i.i178
  %.012.i.i.i.i.i179 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i178 ], [ %i.ch, %.noexc10.i176 ] ; 2 uses
  %.0911.i.i.i.i.i180 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i178 ], [ %i.ci, %.noexc10.i176 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i179, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i180, i64 24, i1 false), !tbaa.struct !93, !alias.scope !285
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i180, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i179, i64 24
  %.not.i.i.i.i.i181 = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i.i.i.i181, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182, label %.lr.ph.i.i.i.i.i178, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182: ; preds = %.lr.ph.i.i.i.i.i178, %.noexc10.i176
  %.not.i8.i.i183 = icmp eq ptr %i.ci, null
  br i1 %.not.i8.i.i183, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ci to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cp) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184: ; preds = %bb.d, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182
  store ptr %i.ch, ptr %.0.ptr12.i169, align 8, !tbaa !91
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store ptr %i.cq, ptr %i.cd, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 6144
  store ptr %i.cr, ptr %i.bv, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184, %.split.i167
  %.0.add.i171 = add nuw nsw i64 %.0.idx11.i168, 24 ; 2 uses
  %.not.i172 = icmp eq i64 %.0.add.i171, 384
  br i1 %.not.i172, label %_ZN7voxalgo10LightQueueC2Em.exit187, label %.split.i167

.loopexit.i174:                                   ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173
  %lpad.loopexit.i175 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.bt) #5
  br label %.loopexit

_ZN7voxalgo10LightQueueC2Em.exit187:              ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %5, i8 0, i64 384, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 384
  store i8 15, ptr %i.cs, align 16, !tbaa !24
  br label %.split.i188

.split.i188:                                      ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191, %_ZN7voxalgo10LightQueueC2Em.exit187
  %.0.idx11.i189 = phi i64 [ %.0.add.i192, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit187 ] ; 2 uses
  %.0.ptr12.i190 = getelementptr inbounds nuw i8, ptr %5, i64 %.0.idx11.i189 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.ptr12.i190, i64 16 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !87
  %i.cv = load ptr, ptr %.0.ptr12.i190, align 8, !tbaa !91
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 24
  %i.da = icmp ult i64 %i.cz, 256
  br i1 %i.da, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194: ; preds = %.split.i188
  %i.db = getelementptr inbounds nuw i8, ptr %.0.ptr12.i190, i64 8 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cx
  %i.df = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i197 unwind label %.body206.thread ; 4 uses

.noexc10.i197:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194
  %i.dg = load ptr, ptr %.0.ptr12.i190, align 8, !tbaa !91 ; 5 uses
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i198 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not10.i.i.i.i.i198, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203, label %.lr.ph.i.i.i.i.i199

.lr.ph.i.i.i.i.i199:                              ; preds = %.noexc10.i197, %.lr.ph.i.i.i.i.i199
  %.012.i.i.i.i.i200 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i199 ], [ %i.df, %.noexc10.i197 ] ; 2 uses
  %.0911.i.i.i.i.i201 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i199 ], [ %i.dg, %.noexc10.i197 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i200, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i201, i64 24, i1 false), !tbaa.struct !93, !alias.scope !286
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i201, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i200, i64 24
  %.not.i.i.i.i.i202 = icmp eq ptr %i.di, %i.dh
  br i1 %.not.i.i.i.i.i202, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203, label %.lr.ph.i.i.i.i.i199, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203: ; preds = %.lr.ph.i.i.i.i.i199, %.noexc10.i197
  %.not.i8.i.i204 = icmp eq ptr %i.dg, null
  br i1 %.not.i8.i.i204, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203
  %i.dk = load ptr, ptr %i.ct, align 8, !tbaa !87
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dg to i64
  %i.dn = sub i64 %i.dl, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dn) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205: ; preds = %bb.e, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203
  store ptr %i.df, ptr %.0.ptr12.i190, align 8, !tbaa !91
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store ptr %i.do, ptr %i.db, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 6144
  store ptr %i.dp, ptr %i.ct, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205, %.split.i188
  %.0.add.i192 = add nuw nsw i64 %.0.idx11.i189, 24 ; 2 uses
  %.not.i193 = icmp eq i64 %.0.add.i192, 384
  br i1 %.not.i193, label %_ZN7voxalgo10LightQueueC2Em.exit208, label %.split.i188

.body206.thread:                                  ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194
  %lpad.loopexit.i196 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit336

_ZN7voxalgo10LightQueueC2Em.exit208:              ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 392 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(385) %i.dq, i8 0, i64 384, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 776
  store i8 15, ptr %i.dr, align 8, !tbaa !24
  br label %.split.i209

.split.i209:                                      ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212, %_ZN7voxalgo10LightQueueC2Em.exit208
  %.0.idx11.i210 = phi i64 [ %.0.add.i213, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit208 ] ; 2 uses
  %.0.ptr12.i211 = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.0.idx11.i210 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.ptr12.i211, i64 16 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !87
  %i.du = load ptr, ptr %.0.ptr12.i211, align 8, !tbaa !91
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 24
  %i.dz = icmp ult i64 %i.dy, 256
  br i1 %i.dz, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215: ; preds = %.split.i209
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.ptr12.i211, i64 8 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !33
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.ec, %i.dw
  %i.ee = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i218 unwind label %.loopexit.i216 ; 4 uses

.noexc10.i218:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215
  %i.ef = load ptr, ptr %.0.ptr12.i211, align 8, !tbaa !91 ; 5 uses
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i219 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not10.i.i.i.i.i219, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224, label %.lr.ph.i.i.i.i.i220

.lr.ph.i.i.i.i.i220:                              ; preds = %.noexc10.i218, %.lr.ph.i.i.i.i.i220
  %.012.i.i.i.i.i221 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i220 ], [ %i.ee, %.noexc10.i218 ] ; 2 uses
  %.0911.i.i.i.i.i222 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i220 ], [ %i.ef, %.noexc10.i218 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i221, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i222, i64 24, i1 false), !tbaa.struct !93, !alias.scope !287
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i222, i64 24 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i221, i64 24
  %.not.i.i.i.i.i223 = icmp eq ptr %i.eh, %i.eg
  br i1 %.not.i.i.i.i.i223, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224, label %.lr.ph.i.i.i.i.i220, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224: ; preds = %.lr.ph.i.i.i.i.i220, %.noexc10.i218
  %.not.i8.i.i225 = icmp eq ptr %i.ef, null
  br i1 %.not.i8.i.i225, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224
  %i.ej = load ptr, ptr %i.ds, align 8, !tbaa !87
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ef to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.em) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226: ; preds = %bb.f, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224
  store ptr %i.ee, ptr %.0.ptr12.i211, align 8, !tbaa !91
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ed
  store ptr %i.en, ptr %i.ea, align 8, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 6144
  store ptr %i.eo, ptr %i.ds, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226, %.split.i209
  %.0.add.i213 = add nuw nsw i64 %.0.idx11.i210, 24 ; 2 uses
  %.not.i214 = icmp eq i64 %.0.add.i213, 384
  br i1 %.not.i214, label %_ZN7voxalgo10LightQueueC2Em.exit229, label %.split.i209

.loopexit.i216:                                   ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215
  %lpad.loopexit.i217 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.dq) #5
  br label %.loopexit336

_ZN7voxalgo10LightQueueC2Em.exit229:              ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %6, i8 0, i64 30, i1 false)
  %.not376 = icmp sgt i32 %i.o, %i.ah
  br i1 %.not376, label %._crit_edge406.split, label %.preheader348.lr.ph

.preheader348.lr.ph:                              ; preds = %_ZN7voxalgo10LightQueueC2Em.exit229
  %.not147372 = icmp sgt i32 %i.z, %i.as
  %i.ep = add nsw i16 %.sroa.7.0.extract.trunc, 1
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.ep to i48
  %.sroa.2.0.insert.shift.i.i230 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 18 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ew = add nsw i16 %.sroa.780.0.extract.trunc, -1
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 3 uses
  %.sroa.5324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br i1 %.not147372, label %.preheader339.lr.ph, label %.preheader348

.preheader348:                                    ; preds = %.preheader348.lr.ph, %._crit_edge375
  %.0120377 = phi i16 [ %i.fm, %._crit_edge375 ], [ %.sroa.078.0.extract.trunc, %.preheader348.lr.ph ] ; 5 uses
  %.sroa.0326.0.insert.ext = zext i16 %.0120377 to i48
  %i.fd = shl i16 %.0120377, 4
  %.sroa.0325.0.insert.ext = zext i16 %i.fd to i32
  br label %bb.g

.preheader339.lr.ph:                              ; preds = %._crit_edge375, %.preheader348.lr.ph
  %i.fe = phi ptr [ null, %.preheader348.lr.ph ], [ %i.pr, %._crit_edge375 ] ; 2 uses
  %.not128401 = icmp sgt i32 %i.t, %i.am
  %.not130396 = icmp sgt i32 %i.z, %i.as
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %brmerge = select i1 %.not128401, i1 true, i1 %.not130396
  br i1 %brmerge, label %._crit_edge406.split, label %.preheader339.preheader

.preheader339.preheader:                          ; preds = %.preheader339.lr.ph
  %smax = tail call i16 @llvm.smax.i16(i16 %.sroa.078.0.extract.trunc, i16 %.sroa.071.0.extract.trunc)
  br label %.preheader339

._crit_edge375:                                   ; preds = %._crit_edge
  %i.fm = add nsw i16 %.0120377, 1
  %exitcond434 = icmp eq i16 %.0120377, %.sroa.071.0.extract.trunc
  br i1 %exitcond434, label %.preheader339.lr.ph, label %.preheader348, !llvm.loop !265

bb.g:                                             ; preds = %.preheader348, %._crit_edge
  %.0121373 = phi i16 [ %.sroa.982.0.extract.trunc, %.preheader348 ], [ %i.ps, %._crit_edge ] ; 5 uses
  %.sroa.3.0.insert.ext = zext i16 %.0121373 to i48
  %.sroa.3.0.insert.shift = shl nuw i48 %.sroa.3.0.insert.ext, 32
  %i.fn = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.0326.0.insert.ext ; 2 uses
  %.sroa.0326.0.insert.insert = or disjoint i48 %i.fn, %.sroa.2.0.insert.shift.i.i161
  %.sroa.0.0.insert.insert.i.i231 = or disjoint i48 %i.fn, %.sroa.2.0.insert.shift.i.i230
  %i.fo = load ptr, ptr %0, align 8, !tbaa !139
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef ptr %i.fq(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i231, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.q, !inline_history !147 ; 4 uses

.noexc:                                           ; preds = %bb.g
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 82
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !140, !range !78, !noundef !79
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %.preheader41.i, label %bb.i

.preheader41.i:                                   ; preds = %bb.h
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !76 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 36
  %i.fz = load i8, ptr %i.fy, align 4, !tbaa !77, !range !78, !noundef !79
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %.preheader41.i.split.us, label %.preheader40.i

.preheader41.i.split.us:                          ; preds = %.preheader41.i
  %.sroa.0.0.copyload.i.i.us.us = load i32, ptr %i.fx, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.us.us = lshr i32 %.sroa.0.0.copyload.i.i.us.us, 16
  %.sroa.4.0.extract.trunc.i.us.us = trunc i32 %.sroa.4.0.extract.shift.i.us.us to i8
  %i.gb = and i32 %.sroa.0.0.copyload.i.i.us.us, 65535
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.gc
  %.sroa.0.0.copyload.i.i.i.us.us = load i8, ptr %i.gd, align 1, !tbaa !31 ; 2 uses
  %i.ge = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 16
  %.not.i.i.i.us.us = icmp eq i8 %i.ge, 0
  %i.gf = and i8 %.sroa.4.0.extract.trunc.i.us.us, 15
  %i.gg = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 15 ; 2 uses
  %i.gh = tail call i8 @llvm.umax.i8(i8 %i.gg, i8 %i.gf)
  %i.gi = select i1 %.not.i.i.i.us.us, i8 %i.gg, i8 %i.gh
  %i.gj = icmp eq i8 %i.gi, 15
  %i.gk = zext i1 %i.gj to i8
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

bb.i:                                             ; preds = %bb.h, %.noexc
  %i.gl = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0326.0.insert.insert)
          to label %.noexc233 unwind label %bb.q  ; 2 uses

.noexc233:                                        ; preds = %bb.i
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %.noexc233
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 83
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !101, !range !78, !noundef !79
  %i.gp = xor i8 %i.go, 1
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

.preheader40.i:                                   ; preds = %.preheader41.i, %.preheader40.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %.preheader40.i ], [ 0, %.preheader41.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv49.i
  %.idx = shl nuw nsw i64 %indvars.iv49.i, 10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx
  %i.gs = load <16 x i32>, ptr %i.gr, align 4     ; 17 uses
  %i.gt = extractelement <16 x i32> %i.gs, i64 0
  %i.gu = and i32 %i.gt, 65535
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.gv
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.gw, align 1, !tbaa !31
  %i.gx = extractelement <16 x i32> %i.gs, i64 1
  %i.gy = and i32 %i.gx, 65535
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.gz
  %.sroa.0.0.copyload.i.i.i.1 = load i8, ptr %i.ha, align 1, !tbaa !31
  %i.hb = extractelement <16 x i32> %i.gs, i64 2
  %i.hc = and i32 %i.hb, 65535
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.hd
  %.sroa.0.0.copyload.i.i.i.2 = load i8, ptr %i.he, align 1, !tbaa !31
  %i.hf = extractelement <16 x i32> %i.gs, i64 3
  %i.hg = and i32 %i.hf, 65535
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.hh
  %.sroa.0.0.copyload.i.i.i.3 = load i8, ptr %i.hi, align 1, !tbaa !31
  %i.hj = extractelement <16 x i32> %i.gs, i64 4
  %i.hk = and i32 %i.hj, 65535
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.hl
  %.sroa.0.0.copyload.i.i.i.4 = load i8, ptr %i.hm, align 1, !tbaa !31
  %i.hn = extractelement <16 x i32> %i.gs, i64 5
  %i.ho = and i32 %i.hn, 65535
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.hp
  %.sroa.0.0.copyload.i.i.i.5 = load i8, ptr %i.hq, align 1, !tbaa !31
  %i.hr = extractelement <16 x i32> %i.gs, i64 6
  %i.hs = and i32 %i.hr, 65535
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ht
  %.sroa.0.0.copyload.i.i.i.6 = load i8, ptr %i.hu, align 1, !tbaa !31
  %i.hv = extractelement <16 x i32> %i.gs, i64 7
  %i.hw = and i32 %i.hv, 65535
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.hx
  %.sroa.0.0.copyload.i.i.i.7 = load i8, ptr %i.hy, align 1, !tbaa !31
  %i.hz = extractelement <16 x i32> %i.gs, i64 8
  %i.ia = and i32 %i.hz, 65535
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ib
  %.sroa.0.0.copyload.i.i.i.8 = load i8, ptr %i.ic, align 1, !tbaa !31
  %i.id = extractelement <16 x i32> %i.gs, i64 9
  %i.ie = and i32 %i.id, 65535
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.if
  %.sroa.0.0.copyload.i.i.i.9 = load i8, ptr %i.ig, align 1, !tbaa !31
  %i.ih = extractelement <16 x i32> %i.gs, i64 10
  %i.ii = and i32 %i.ih, 65535
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ij
  %.sroa.0.0.copyload.i.i.i.10 = load i8, ptr %i.ik, align 1, !tbaa !31
  %i.il = extractelement <16 x i32> %i.gs, i64 11
  %i.im = and i32 %i.il, 65535
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.in
  %.sroa.0.0.copyload.i.i.i.11 = load i8, ptr %i.io, align 1, !tbaa !31
  %i.ip = extractelement <16 x i32> %i.gs, i64 12
  %i.iq = and i32 %i.ip, 65535
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ir
  %.sroa.0.0.copyload.i.i.i.12 = load i8, ptr %i.is, align 1, !tbaa !31
  %i.it = extractelement <16 x i32> %i.gs, i64 13
  %i.iu = and i32 %i.it, 65535
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.iv
  %.sroa.0.0.copyload.i.i.i.13 = load i8, ptr %i.iw, align 1, !tbaa !31
  %i.ix = extractelement <16 x i32> %i.gs, i64 14
  %i.iy = and i32 %i.ix, 65535
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.iz
  %.sroa.0.0.copyload.i.i.i.14 = load i8, ptr %i.ja, align 1, !tbaa !31
  %i.jb = lshr <16 x i32> %i.gs, splat (i32 16)
  %i.jc = trunc <16 x i32> %i.jb to <16 x i8>
  %i.jd = extractelement <16 x i32> %i.gs, i64 15
  %i.je = and i32 %i.jd, 65535
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.jf
  %.sroa.0.0.copyload.i.i.i.15 = load i8, ptr %i.jg, align 1, !tbaa !31
  %i.jh = insertelement <16 x i8> poison, i8 %.sroa.0.0.copyload.i.i.i, i64 0
  %i.ji = insertelement <16 x i8> %i.jh, i8 %.sroa.0.0.copyload.i.i.i.1, i64 1
  %i.jj = insertelement <16 x i8> %i.ji, i8 %.sroa.0.0.copyload.i.i.i.2, i64 2
  %i.jk = insertelement <16 x i8> %i.jj, i8 %.sroa.0.0.copyload.i.i.i.3, i64 3
  %i.jl = insertelement <16 x i8> %i.jk, i8 %.sroa.0.0.copyload.i.i.i.4, i64 4
  %i.jm = insertelement <16 x i8> %i.jl, i8 %.sroa.0.0.copyload.i.i.i.5, i64 5
  %i.jn = insertelement <16 x i8> %i.jm, i8 %.sroa.0.0.copyload.i.i.i.6, i64 6
  %i.jo = insertelement <16 x i8> %i.jn, i8 %.sroa.0.0.copyload.i.i.i.7, i64 7
  %i.jp = insertelement <16 x i8> %i.jo, i8 %.sroa.0.0.copyload.i.i.i.8, i64 8
  %i.jq = insertelement <16 x i8> %i.jp, i8 %.sroa.0.0.copyload.i.i.i.9, i64 9
  %i.jr = insertelement <16 x i8> %i.jq, i8 %.sroa.0.0.copyload.i.i.i.10, i64 10
  %i.js = insertelement <16 x i8> %i.jr, i8 %.sroa.0.0.copyload.i.i.i.11, i64 11
  %i.jt = insertelement <16 x i8> %i.js, i8 %.sroa.0.0.copyload.i.i.i.12, i64 12
  %i.ju = insertelement <16 x i8> %i.jt, i8 %.sroa.0.0.copyload.i.i.i.13, i64 13
  %i.jv = insertelement <16 x i8> %i.ju, i8 %.sroa.0.0.copyload.i.i.i.14, i64 14
  %i.jw = insertelement <16 x i8> %i.jv, i8 %.sroa.0.0.copyload.i.i.i.15, i64 15 ; 2 uses
  %i.jx = and <16 x i8> %i.jw, splat (i8 16)
  %i.jy = icmp eq <16 x i8> %i.jx, zeroinitializer
  %i.jz = and <16 x i8> %i.jc, splat (i8 15)
  %i.ka = and <16 x i8> %i.jw, splat (i8 15)      ; 2 uses
  %i.kb = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ka, <16 x i8> %i.jz)
  %i.kc = select <16 x i1> %i.jy, <16 x i8> %i.ka, <16 x i8> %i.kb
  %i.kd = icmp eq <16 x i8> %i.kc, splat (i8 15)
  %i.ke = zext <16 x i1> %i.kd to <16 x i8>
  store <16 x i8> %i.ke, ptr %i.gq, align 16, !tbaa !123
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 16
  br i1 %exitcond52.not.i, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit, label %.preheader40.i, !llvm.loop !6

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split: ; preds = %.noexc233, %bb.j, %.preheader41.i.split.us
  %.sink = phi i8 [ %i.gk, %.preheader41.i.split.us ], [ %i.gp, %bb.j ], [ 0, %.noexc233 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %.sink, i64 256, i1 false), !tbaa !123
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit: ; preds = %.preheader40.i, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split
  %i.kf = shl i16 %.0121373, 4
  %.sroa.7.0.insert.ext = zext i16 %i.kf to i32
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !126 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i32 127, ptr %3, align 4
  %i.kh = load i16, ptr %i.er, align 8, !tbaa !130
  %i.ki = load i16, ptr %i.es, align 4, !tbaa !131
  %i.kj = sext i16 %i.ki to i32
end_hunk_1
begin_hunk_2_@_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.s, label %bb.t, !llvm.loop !270

.loopexit342:                                     ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.md, ptr %i.ez, align 8
  br label %.body278

.loopexit.split-lp343:                            ; preds = %bb.w
  %lpad.loopexit.split-lp345 = landingpad { ptr, i32 }
          cleanup
  br label %.body278

.lr.ph:                                           ; preds = %.preheader347, %bb.ar
  %i.ne = invoke noundef zeroext i1 @_ZN7voxalgo24propagate_block_sunlightEP3MapPK14NodeDefManagerPNS_23SunlightPropagationDataEPNS_10LightQueueES8_(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %.lr.ph
  br i1 %i.ne, label %bb.z, label %bb.ar

bb.z:                                             ; preds = %bb.y
  %.sroa.043.0.copyload = load i48, ptr %i.ex, align 8 ; 4 uses
  %i.nf = trunc i48 %.sroa.043.0.copyload to i16  ; 4 uses
  %i.ng = lshr i48 %.sroa.043.0.copyload, 16
  %i.nh = trunc i48 %i.ng to i16                  ; 4 uses
  %i.ni = lshr i48 %.sroa.043.0.copyload, 32
  %i.nj = trunc nuw i48 %i.ni to i16              ; 2 uses
  %i.nk = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.043.0.copyload)
          to label %bb.aa unwind label %bb.r

bb.aa:                                            ; preds = %bb.z
  %i.nl = load ptr, ptr %i.fa, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.nl, %bb.aa ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.fb, %bb.aa ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !19 ; 2 uses
  %i.no = icmp slt i16 %i.nn, %i.nf
  br i1 %i.no, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.np = icmp eq i16 %i.nn, %i.nf
  br i1 %i.np, label %bb.ac, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.nq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !20 ; 2 uses
  %i.ns = icmp slt i16 %i.nr, %i.nh
  br i1 %i.ns, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nt = icmp eq i16 %i.nr, %i.nh
  br i1 %i.nt, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.ad
  %i.nu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !21
  %i.nw = icmp slt i16 %i.nv, %i.nj
  br i1 %i.nw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ac, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ad, %bb.ab
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ad ], [ 16, %bb.ab ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.ad ], [ %.014.i.i.i.i, %bb.ab ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.nx, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.ny = icmp eq ptr %.19.i.i.i.i, %i.fb
  br i1 %i.ny, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !19 ; 2 uses
  %i.ob = icmp sgt i16 %i.oa, %i.nf
  br i1 %i.ob, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.oc = icmp eq i16 %i.oa, %i.nf
  br i1 %i.oc, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.od = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !20 ; 2 uses
  %i.of = icmp sgt i16 %i.oe, %i.nh
  br i1 %i.of, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.og = icmp eq i16 %i.oe, %i.nh
  br i1 %i.og, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %bb.aq

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.ah
  %i.oh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !21
  %i.oj = icmp sgt i16 %i.oi, %i.nj
  br i1 %i.oj, label %.critedge.i, label %bb.aq

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.ag, %bb.ae, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.aa
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.fb, %bb.aa ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.ag ], [ %.19.i.i.i.i, %bb.ae ]
  %i.ok = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc277 unwind label %bb.r  ; 8 uses

.noexc277:                                        ; preds = %.critedge.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, ptr noundef nonnull align 8 dereferenceable(6) %i.ex, i64 6, i1 false), !tbaa.struct !151
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  store ptr null, ptr %i.om, align 8, !tbaa !97
  %i.on = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 2 dereferenceable(6) %i.ol)
          to label %bb.ai unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.ai:                                            ; preds = %.noexc277
  %i.oo = extractvalue { ptr, ptr } %i.on, 0      ; 2 uses
  %i.op = extractvalue { ptr, ptr } %i.on, 1      ; 6 uses
  %.not.i275 = icmp eq ptr %i.op, null
  br i1 %.not.i275, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i276 = icmp ne ptr %i.oo, null
  %i.oq = icmp eq ptr %i.op, %i.fb
  %or.cond.i.i.i = select i1 %.not.i.i.i276, i1 true, i1 %i.oq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.os = load i16, ptr %i.ol, align 8, !tbaa !19 ; 2 uses
  %i.ot = load i16, ptr %i.or, align 2, !tbaa !19 ; 2 uses
  %i.ou = icmp slt i16 %i.os, %i.ot
  br i1 %i.ou, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ov = icmp eq i16 %i.os, %i.ot
  br i1 %i.ov, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ok, i64 34
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !20 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.op, i64 34
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !20 ; 2 uses
  %i.pa = icmp slt i16 %i.ox, %i.oz
  br i1 %i.pa, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pb = icmp eq i16 %i.ox, %i.oz
  br i1 %i.pb, label %bb.ao, label %.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ok, i64 36
  %i.pd = load i16, ptr %i.pc, align 4, !tbaa !21
  %i.pe = getelementptr inbounds nuw i8, ptr %i.op, i64 36
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !21
  %i.pg = icmp slt i16 %i.pd, %i.pf
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.ph = phi i1 [ false, %bb.al ], [ true, %bb.aj ], [ true, %bb.am ], [ true, %bb.ak ], [ false, %bb.an ], [ %i.pg, %bb.ao ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ph, ptr noundef nonnull %i.ok, ptr noundef nonnull %i.op, ptr noundef nonnull align 8 dereferenceable(32) %i.fb) #5
  %i.pi = load i64, ptr %i.fc, align 8, !tbaa !98
  %i.pj = add i64 %i.pi, 1
  store i64 %i.pj, ptr %i.fc, align 8, !tbaa !98
  br label %bb.aq

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc277
  %i.pk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef 48) #22
  br label %.body278thread-pre-split

bb.ap:                                            ; preds = %bb.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef 48) #22
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.ah, %bb.af, %bb.ap, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.ah ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.af ], [ %i.ok, %.thread.i ], [ %i.oo, %bb.ap ]
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %i.nk, ptr %i.pl, align 8, !tbaa !30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.y
  %i.pm = load i16, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !156
  %i.pn = add i16 %i.pm, -1
  store i16 %i.pn, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !156
  %i.po = load ptr, ptr %6, align 8, !tbaa !145   ; 2 uses
  %i.pp = load ptr, ptr %i.ey, align 8, !tbaa !145
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %._crit_edge, label %.lr.ph, !llvm.loop !271

._crit_edge:                                      ; preds = %bb.ar, %.preheader347
  %i.pr = phi ptr [ %i.nb, %.preheader347 ], [ %i.po, %bb.ar ]
  %i.ps = add nsw i16 %.0121373, 1
  %exitcond433 = icmp eq i16 %.0121373, %.sroa.9.0.extract.trunc
  br i1 %exitcond433, label %._crit_edge375, label %bb.g, !llvm.loop !272

.preheader339:                                    ; preds = %.preheader339.preheader, %._crit_edge403
  %storemerge405 = phi i16 [ %i.wk, %._crit_edge403 ], [ %.sroa.078.0.extract.trunc, %.preheader339.preheader ] ; 3 uses
  %.sroa.0302.0.insert.ext303 = zext i16 %storemerge405 to i48
  br label %.preheader

.preheader:                                       ; preds = %.preheader339, %._crit_edge399
  %storemerge127402 = phi i16 [ %.sroa.780.0.extract.trunc, %.preheader339 ], [ %i.wj, %._crit_edge399 ] ; 3 uses
  %.sroa.8.0.insert.ext306 = zext i16 %storemerge127402 to i48
  %.sroa.8.0.insert.shift307 = shl nuw nsw i48 %.sroa.8.0.insert.ext306, 16
  %invariant.op400 = or disjoint i48 %.sroa.8.0.insert.shift307, %.sroa.0302.0.insert.ext303
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %.loopexit338
  %storemerge129397 = phi i16 [ %.sroa.982.0.extract.trunc, %.preheader ], [ %i.wi, %.loopexit338 ] ; 3 uses
  %.sroa.11.0.insert.ext310 = zext i16 %storemerge129397 to i48
  %.sroa.11.0.insert.shift311 = shl nuw i48 %.sroa.11.0.insert.ext310, 32
  %.sroa.0302.0.insert.insert305.reass = or disjoint i48 %.sroa.11.0.insert.shift311, %invariant.op400 ; 5 uses
  %i.pt = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0302.0.insert.insert305.reass)
          to label %bb.at unwind label %bb.av     ; 8 uses

bb.at:                                            ; preds = %bb.as
  %.not131 = icmp eq ptr %i.pt, null
  br i1 %.not131, label %.loopexit338, label %bb.aw

bb.au:                                            ; preds = %bb.bo, %._crit_edge406.split
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

bb.av:                                            ; preds = %bb.as
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

bb.aw:                                            ; preds = %bb.at
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %.sroa.0.0.copyload.i = load i48, ptr %i.pw, align 8 ; 3 uses
  %.sroa.0284.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.5285.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.5285.0.extract.trunc = trunc i48 %.sroa.5285.0.extract.shift to i16
  %.sroa.6286.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.6286.0.extract.trunc = trunc nuw i48 %.sroa.6286.0.extract.shift to i16
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 36
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge393
  %.0119.idx394 = phi i64 [ 0, %bb.aw ], [ %.0119.add, %._crit_edge393 ] ; 2 uses
  %.0119.ptr395 = getelementptr inbounds nuw i8, ptr @_ZN7voxalgoL9block_padE, i64 %.0119.idx394 ; 7 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 4
  %i.qa = load i16, ptr %i.pz, align 4, !tbaa !131 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 6 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 10 ; 2 uses
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !157 ; 2 uses
  %.not134389 = icmp sgt i16 %i.qa, %i.qd
  br i1 %.not134389, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %bb.ax
  %i.qe = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 2 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 8 ; 2 uses
  %i.qg = load i16, ptr %.0119.ptr395, align 8, !tbaa !134
  %i.qh = load i16, ptr %i.qb, align 2, !tbaa !158 ; 3 uses
  %i.qi = icmp sgt i16 %i.qg, %i.qh
  br i1 %i.qi, label %._crit_edge393, label %.lr.ph392.split

.lr.ph392.split:                                  ; preds = %.lr.ph392, %._crit_edge388
  %i.qj = phi i16 [ %i.we, %._crit_edge388 ], [ %i.qd, %.lr.ph392 ] ; 2 uses
  %i.qk = phi i16 [ %i.wf, %._crit_edge388 ], [ %i.qh, %.lr.ph392 ] ; 3 uses
  %i.ql = phi i16 [ %i.wg, %._crit_edge388 ], [ %i.qh, %.lr.ph392 ] ; 3 uses
  %storemerge133390 = phi i16 [ %i.wh, %._crit_edge388 ], [ %i.qa, %.lr.ph392 ] ; 4 uses
  %i.qm = load i16, ptr %.0119.ptr395, align 8, !tbaa !134 ; 2 uses
  %.not136384 = icmp sgt i16 %i.qm, %i.ql
  br i1 %.not136384, label %._crit_edge388, label %.lr.ph387

.lr.ph387:                                        ; preds = %.lr.ph392.split
  %.sroa.13.0.insert.ext297 = zext i16 %storemerge133390 to i48
  %.sroa.13.0.insert.shift298 = shl nuw i48 %.sroa.13.0.insert.ext297, 32
  %.sroa.3.0.extract.trunc.i253 = zext i16 %storemerge133390 to i64
  %sext.i254 = shl nuw i64 %.sroa.3.0.extract.trunc.i253, 48
  %i.qn = ashr exact i64 %sext.i254, 40
  %i.qo = add i16 %storemerge133390, %.sroa.6286.0.extract.trunc ; 3 uses
  %i.qp = sext i16 %i.qo to i32
  %i.qq = load i16, ptr %i.qe, align 2, !tbaa !133
  %i.qr = load i16, ptr %i.qf, align 8, !tbaa !159 ; 2 uses
  %i.qs = icmp sgt i16 %i.qq, %i.qr
  br i1 %i.qs, label %._crit_edge388, label %.lr.ph387.split

.lr.ph387.split:                                  ; preds = %.lr.ph387, %._crit_edge383
  %i.qt = phi i16 [ %i.wb, %._crit_edge383 ], [ %i.qk, %.lr.ph387 ]
  %i.qu = phi i16 [ %i.wc, %._crit_edge383 ], [ %i.qr, %.lr.ph387 ] ; 2 uses
  %storemerge135385 = phi i16 [ %i.wd, %._crit_edge383 ], [ %i.qm, %.lr.ph387 ] ; 4 uses
  %i.qv = load i16, ptr %i.qe, align 2, !tbaa !133 ; 2 uses
  %.not138379 = icmp sgt i16 %i.qv, %i.qu
  br i1 %.not138379, label %._crit_edge383, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph387.split
  %.sroa.0287.0.insert.ext289 = zext i16 %storemerge135385 to i48
  %invariant.op = or disjoint i48 %.sroa.13.0.insert.shift298, %.sroa.0287.0.insert.ext289
  %i.qw = sext i16 %storemerge135385 to i64
  %i.qx = add nsw i64 %i.qn, %i.qw
  %i.qy = add i16 %storemerge135385, %.sroa.0284.0.extract.trunc ; 3 uses
  %i.qz = sext i16 %i.qy to i32
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph382, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %storemerge137380 = phi i16 [ %i.qv, %.lr.ph382 ], [ %i.vz, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1 ] ; 4 uses
  %.sroa.9.0.insert.ext292 = zext i16 %storemerge137380 to i48
  %.sroa.9.0.insert.shift293 = shl nuw nsw i48 %.sroa.9.0.insert.ext292, 16
  %.sroa.0287.0.insert.insert291.reass = or disjoint i48 %.sroa.9.0.insert.shift293, %invariant.op ; 4 uses
  %i.ra = load ptr, ptr %i.px, align 8, !tbaa !76
  %i.rb = load i8, ptr %i.py, align 4, !tbaa !77, !range !78, !noundef !79
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.2.0.extract.trunc.i = zext i16 %storemerge137380 to i64
  %sext2.i = shl nuw i64 %.sroa.2.0.extract.trunc.i, 48
  %i.rd = ashr exact i64 %sext2.i, 44
  %i.re = add nsw i64 %i.qx, %i.rd
  %i.rf = and i64 %i.re, 4294967295
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.rg = phi i64 [ %i.rf, %bb.az ], [ 0, %bb.ay ]
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rg
  %.sroa.0.0.copyload.i.i256 = load i32, ptr %i.rh, align 4 ; 2 uses
  %.sroa.5282.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i256, 16
  %.sroa.5282.0.extract.trunc = trunc i32 %.sroa.5282.0.extract.shift to i8 ; 2 uses
  %i.ri = and i32 %.sroa.0.0.copyload.i.i256, 65535
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.rj
  %.sroa.0.0.copyload.i.i257 = load i8, ptr %i.rk, align 1, !tbaa !31 ; 2 uses
  %i.rl = add i16 %storemerge137380, %.sroa.5285.0.extract.trunc ; 3 uses
  %i.rm = load i16, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %.not.i.i259 = icmp sgt i16 %i.rm, %i.qy
  %i.rn = load i16, ptr %i.ac, align 2
  %.not6.i.i = icmp slt i16 %i.rn, %i.qy
  %or.cond.i.i = select i1 %.not.i.i259, i1 true, i1 %.not6.i.i
  %i.ro = load i16, ptr %i.fg, align 2            ; 2 uses
  %.not7.i.i = icmp sgt i16 %i.ro, %i.rl
  %or.cond12.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not7.i.i
  %i.rp = load i16, ptr %i.fh, align 8
  %.not8.i.i = icmp slt i16 %i.rp, %i.rl
  %or.cond14.i.i = select i1 %or.cond12.i.i, i1 true, i1 %.not8.i.i
  br i1 %or.cond14.i.i, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rq = load i16, ptr %i.fi, align 4, !tbaa !131 ; 2 uses
  %.not9.i.i = icmp sge i16 %i.qo, %i.rq
  %i.rr = load i16, ptr %i.fj, align 2
  %i.rs = icmp sle i16 %i.qo, %i.rr
  %or.cond.i260 = select i1 %.not9.i.i, i1 %i.rs, i1 false
  br i1 %or.cond.i260, label %bb.bc, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.rt = sext i16 %i.rq to i32
  %i.ru = sub nsw i32 %i.qp, %i.rt
  %i.rv = load i32, ptr %i.g, align 8, !tbaa !132
  %i.rw = mul nsw i32 %i.rv, %i.ru
  %i.rx = load i32, ptr %i.e, align 4, !tbaa !282
  %i.ry = sext i16 %i.rl to i32
  %i.rz = sext i16 %i.ro to i32
  %i.sa = sub nsw i32 %i.ry, %i.rz
  %i.sb = add i32 %i.sa, %i.rw
  %i.sc = mul i32 %i.sb, %i.rx
  %i.sd = sext i16 %i.rm to i32
  %i.se = sub nsw i32 %i.qz, %i.sd
  %i.sf = add nsw i32 %i.se, %i.sc
  %i.sg = load ptr, ptr %i.fk, align 8, !tbaa !135
  %i.sh = sext i32 %i.sf to i64                   ; 2 uses
  %i.si = getelementptr inbounds i8, ptr %i.sg, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !31
  %i.sk = and i8 %i.sj, 1
  %.not.i261 = icmp eq i8 %i.sk, 0
  br i1 %.not.i261, label %bb.bd, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.sl = load ptr, ptr %i.fl, align 8, !tbaa !136
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.sh
  %i.sn = load i32, ptr %i.sm, align 4
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.6.0.i = phi i32 [ %i.sn, %bb.bd ], [ 127, %bb.ba ], [ 127, %bb.bc ], [ 127, %bb.bb ] ; 2 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.6.0.i, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %i.so = and i32 %.sroa.6.0.i, 65535
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.sp
  %.sroa.0.0.copyload.i.i262 = load i8, ptr %i.sq, align 1, !tbaa !31 ; 2 uses
  %i.sr = and i8 %.sroa.0.0.copyload.i.i257, 16
  %.not139 = icmp eq i8 %i.sr, 0                  ; 2 uses
  %i.ss = and i8 %.sroa.0.0.copyload.i.i262, 16
  %.not140 = icmp eq i8 %i.ss, 0                  ; 2 uses
  %i.st = lshr i8 %.sroa.5282.0.extract.trunc, 4
  %i.su = and i8 %.sroa.0.0.copyload.i.i257, 15   ; 2 uses
  %i.sv = and i8 %.sroa.5.0.extract.trunc, 15
  %i.sw = lshr i8 %.sroa.5.0.extract.trunc, 4
  %i.sx = and i8 %.sroa.0.0.copyload.i.i262, 15   ; 4 uses
  br i1 %.not139, label %bb.be, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit
end_hunk_2
begin_hunk_3_@_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE:bb.a
  %i.tv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tu ; 2 uses
  %i.tw = icmp ult i64 %i.tv, %i.tu
  %i.tx = tail call i64 @llvm.umin.i64(i64 %i.tv, i64 384307168202282325)
  %i.ty = select i1 %i.tw, i64 384307168202282325, i64 %i.tx ; 3 uses
  %.not.i.i.i.i269 = icmp ne i64 %i.ty, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i269)
  %i.tz = mul nuw nsw i64 %i.ty, 24
  %i.ua = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tz) #21
          to label %.noexc271 unwind label %.loopexit337 ; 5 uses

.noexc271:                                        ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.ts ; 4 uses
  store ptr %i.pt, ptr %i.ub, align 8, !tbaa !89
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store i48 %.sroa.0287.0.insert.insert291.reass, ptr %i.uc, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 14
  store i48 %.sroa.0302.0.insert.insert305.reass, ptr %i.ud, align 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 20
  store i8 6, ptr %i.ue, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.tp, %i.th
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc271, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i.i ], [ %i.ua, %.noexc271 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i.i ], [ %i.tp, %.noexc271 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !289
  %i.uf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.uf, %i.th
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc271
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ua, %.noexc271 ], [ %i.ug, %.lr.ph.i.i.i.i.i.i ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.tp, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.ui = load ptr, ptr %i.ti, align 8, !tbaa !87
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = sub i64 %i.uj, %i.tr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tp, i64 noundef %i.uk) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bj, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.ua, ptr %i.tf, align 8, !tbaa !91
  store ptr %i.uh, ptr %i.tg, align 8, !tbaa !33
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %i.ua, i64 %i.ty
  store ptr %i.ul, ptr %i.ti, align 8, !tbaa !87
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

.loopexit337:                                     ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

.loopexit.split-lp:                               ; preds = %bb.bi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.bg, %bb.be
  %i.um = tail call i8 @llvm.umax.i8(i8 %i.su, i8 %i.st)
  %i.un = select i1 %.not139, i8 15, i8 %i.um     ; 2 uses
  %i.uo = tail call i8 @llvm.umax.i8(i8 %i.sx, i8 %i.sw)
  %i.up = select i1 %.not140, i8 %i.sx, i8 %i.uo
  %i.uq = icmp samesign ugt i8 %i.un, %i.up
  br i1 %i.uq, label %bb.bk, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.bk:                                            ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.ur = zext nneg i8 %i.un to i64
  %i.us = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.ur ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8 ; 4 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !33 ; 8 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 16 ; 3 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !87
  %.not.i.i268.1 = icmp eq ptr %i.uu, %i.uw
  br i1 %.not.i.i268.1, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.pt, ptr %i.uu, align 8, !tbaa !89
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i48 %.sroa.0287.0.insert.insert291.reass, ptr %i.ux, align 8
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 14
  store i48 %.sroa.0302.0.insert.insert305.reass, ptr %i.uy, align 2
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 20
  store i8 6, ptr %i.uz, align 4, !tbaa !90
  %i.va = load ptr, ptr %i.ut, align 8, !tbaa !33
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  store ptr %i.vb, ptr %i.ut, align 8, !tbaa !33
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.bm:                                            ; preds = %bb.bk
  %i.vc = load ptr, ptr %i.us, align 8, !tbaa !91 ; 5 uses
  %i.vd = ptrtoint ptr %i.uu to i64
  %i.ve = ptrtoint ptr %i.vc to i64               ; 2 uses
  %i.vf = sub i64 %i.vd, %i.ve                    ; 3 uses
  %i.vg = icmp eq i64 %i.vf, 9223372036854775800
  br i1 %i.vg, label %bb.bi, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.bm
  %i.vh = sdiv exact i64 %i.vf, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.vh, i64 1)
  %i.vi = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.vh ; 2 uses
  %i.vj = icmp ult i64 %i.vi, %i.vh
  %i.vk = tail call i64 @llvm.umin.i64(i64 %i.vi, i64 384307168202282325)
  %i.vl = select i1 %i.vj, i64 384307168202282325, i64 %i.vk ; 3 uses
  %.not.i.i.i.i269.1 = icmp ne i64 %i.vl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i269.1)
  %i.vm = mul nuw nsw i64 %i.vl, 24
  %i.vn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vm) #21
          to label %.noexc271.1 unwind label %.loopexit337 ; 5 uses

.noexc271.1:                                      ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vf ; 4 uses
  store ptr %i.pt, ptr %i.vo, align 8, !tbaa !89
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store i48 %.sroa.0287.0.insert.insert291.reass, ptr %i.vp, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 14
  store i48 %.sroa.0302.0.insert.insert305.reass, ptr %i.vq, align 2
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 20
  store i8 6, ptr %i.vr, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.vc, %i.uu
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.noexc271.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.vt, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.vn, %.noexc271.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.vs, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.vc, %.noexc271.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.1, i64 24, i1 false), !tbaa.struct !93, !alias.scope !289
  %i.vs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.vs, %i.uu
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %.noexc271.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.vn, %.noexc271.1 ], [ %i.vt, %.lr.ph.i.i.i.i.i.i.1 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1, i64 24
  %.not.i36.i.i.i.1 = icmp eq ptr %i.vc, null
  br i1 %.not.i36.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  %i.vv = load ptr, ptr %i.uv, align 8, !tbaa !87
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = sub i64 %i.vw, %i.ve
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vx) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1: ; preds = %bb.bn, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  store ptr %i.vn, ptr %i.us, align 8, !tbaa !91
  store ptr %i.vu, ptr %i.ut, align 8, !tbaa !33
  %i.vy = getelementptr inbounds nuw [24 x i8], ptr %i.vn, i64 %i.vl
  store ptr %i.vy, ptr %i.uv, align 8, !tbaa !87
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, %bb.bl, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.vz = add i16 %storemerge137380, 1            ; 2 uses
  %i.wa = load i16, ptr %i.qf, align 8, !tbaa !159 ; 2 uses
  %.not138 = icmp sgt i16 %i.vz, %i.wa
  br i1 %.not138, label %._crit_edge383.loopexit, label %bb.ay, !llvm.loop !276

._crit_edge383.loopexit:                          ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %.pre = load i16, ptr %i.qb, align 2, !tbaa !158
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge383.loopexit, %.lr.ph387.split
  %i.wb = phi i16 [ %.pre, %._crit_edge383.loopexit ], [ %i.qt, %.lr.ph387.split ] ; 4 uses
  %i.wc = phi i16 [ %i.wa, %._crit_edge383.loopexit ], [ %i.qu, %.lr.ph387.split ]
  %i.wd = add i16 %storemerge135385, 1            ; 2 uses
  %.not136 = icmp sgt i16 %i.wd, %i.wb
  br i1 %.not136, label %._crit_edge388.loopexit408, label %.lr.ph387.split, !llvm.loop !277

._crit_edge388.loopexit408:                       ; preds = %._crit_edge383
  %.pre441 = load i16, ptr %i.qc, align 2, !tbaa !157
  br label %._crit_edge388

._crit_edge388:                                   ; preds = %.lr.ph387, %._crit_edge388.loopexit408, %.lr.ph392.split
  %i.we = phi i16 [ %.pre441, %._crit_edge388.loopexit408 ], [ %i.qj, %.lr.ph392.split ], [ %i.qj, %.lr.ph387 ] ; 2 uses
  %i.wf = phi i16 [ %i.wb, %._crit_edge388.loopexit408 ], [ %i.qk, %.lr.ph392.split ], [ %i.qk, %.lr.ph387 ]
  %i.wg = phi i16 [ %i.wb, %._crit_edge388.loopexit408 ], [ %i.ql, %.lr.ph392.split ], [ %i.ql, %.lr.ph387 ]
  %i.wh = add i16 %storemerge133390, 1            ; 2 uses
  %.not134 = icmp sgt i16 %i.wh, %i.we
  br i1 %.not134, label %._crit_edge393, label %.lr.ph392.split, !llvm.loop !278

._crit_edge393:                                   ; preds = %._crit_edge388, %.lr.ph392, %bb.ax
  %.0119.add = add nuw nsw i64 %.0119.idx394, 24  ; 2 uses
  %.not132 = icmp eq i64 %.0119.add, 144
  br i1 %.not132, label %.loopexit338, label %bb.ax

.loopexit338:                                     ; preds = %._crit_edge393, %bb.at
  %i.wi = add nsw i16 %storemerge129397, 1
  %exitcond435 = icmp eq i16 %storemerge129397, %.sroa.9.0.extract.trunc
  br i1 %exitcond435, label %._crit_edge399, label %bb.as, !llvm.loop !279

._crit_edge399:                                   ; preds = %.loopexit338
  %i.wj = add nsw i16 %storemerge127402, 1
  %exitcond436 = icmp eq i16 %storemerge127402, %.sroa.7.0.extract.trunc
  br i1 %exitcond436, label %._crit_edge403, label %.preheader, !llvm.loop !280

._crit_edge403:                                   ; preds = %._crit_edge399
  %i.wk = add nsw i16 %storemerge405, 1
  %exitcond437 = icmp eq i16 %storemerge405, %smax
  br i1 %exitcond437, label %._crit_edge406.split, label %.preheader339, !llvm.loop !281

._crit_edge406.split:                             ; preds = %._crit_edge403, %_ZN7voxalgo10LightQueueC2Em.exit229, %.preheader339.lr.ph
  %i.wl = phi ptr [ null, %_ZN7voxalgo10LightQueueC2Em.exit229 ], [ %i.fe, %.preheader339.lr.ph ], [ %i.fe, %._crit_edge403 ] ; 3 uses
  invoke void @_ZNK8MMVManip11blitBackAllEPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, i1 noundef zeroext true)
          to label %bb.bo unwind label %bb.au

bb.bo:                                            ; preds = %._crit_edge406.split
  invoke void @_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE(ptr noundef nonnull %0, i48 %.sroa.0.0.insert.insert.i.i, i48 %.sroa.0.0.insert.insert.i.i165, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2)
          to label %bb.bp unwind label %bb.au

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i.i.i272 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i272, label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !148
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.wl to i64
  %i.wq = sub i64 %i.wo, %i.wp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wq) #22
  br label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit

_ZN7voxalgo23SunlightPropagationDataD2Ev.exit:    ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.wr = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.wr) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.ws) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.a, %_ZNK9VoxelArea14hasEmptyExtentEv.exit, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit
  ret void

.body278thread-pre-split:                         ; preds = %bb.q, %bb.r, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %bb.av, %bb.au, %.loopexit.split-lp, %.loopexit337
  %.pn148.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit337 ], [ %i.pv, %bb.av ], [ %i.pu, %bb.au ], [ %i.mb, %bb.r ], [ %i.ma, %bb.q ], [ %i.pk, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  %.pr = load ptr, ptr %6, align 8, !tbaa !144
  br label %.body278

.body278:                                         ; preds = %.body278thread-pre-split, %.loopexit342, %.loopexit.split-lp343
  %i.wt = phi ptr [ %.pr, %.body278thread-pre-split ], [ %i.me, %.loopexit342 ], [ %i.me, %.loopexit.split-lp343 ] ; 3 uses
  %.pn148.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn.ph, %.body278thread-pre-split ], [ %lpad.loopexit344, %.loopexit342 ], [ %lpad.loopexit.split-lp345, %.loopexit.split-lp343 ]
  %.not.i.i.i.i273 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i273, label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274, label %bb.br

bb.br:                                            ; preds = %.body278
  %i.wu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !148
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wt to i64
  %i.wy = sub i64 %i.ww, %i.wx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wy) #22
  br label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274

_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274: ; preds = %bb.br, %.body278
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.wz) #5
  br label %.loopexit336

.loopexit336:                                     ; preds = %.loopexit.i216, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274, %.body206.thread
  %.pn148.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274 ], [ %lpad.loopexit.i196, %.body206.thread ], [ %lpad.loopexit.i217, %.loopexit.i216 ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.xa = getelementptr inbounds nuw i8, ptr %4, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.xa) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.i174, %.loopexit336, %.body.thread
  %.pn148.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn.pn.pn, %.loopexit336 ], [ %lpad.loopexit.i, %.body.thread ], [ %lpad.loopexit.i175, %.loopexit.i174 ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %.pn148.pn.pn.pn.pn.pn
}

declare void @_ZNK8MMVManip11blitBackAllEPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo18fill_with_sunlightEP8MapBlockPK14NodeDefManagerPA16_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv44 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next45, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv44
  %i.k = shl nuw nsw i64 %indvars.iv44, 8
  %.idx = shl nuw nsw i64 %indvars.iv44, 10
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 16
  br i1 %exitcond47.not, label %bb.b, label %.preheader, !llvm.loop !290

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv41 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next42, %bb.e ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv41 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !123, !range !78, !noundef !79
  %i.n = add nuw nsw i64 %i.k, %indvars.iv41
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit

bb.e:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit
  store i8 %.2, ptr %i.l, align 1, !tbaa !123
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42, 16
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !291

_ZN8MapBlock14getNodeNoCheckEsss.exit:            ; preds = %bb.d, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit
  %indvars.iv = phi i64 [ 15, %bb.d ], [ %indvars.iv.next, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 4 uses
  %.03036 = phi i8 [ %i.m, %bb.d ], [ %.2, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.p = load i8, ptr %i.b, align 4, !tbaa !77, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = shl nuw nsw i64 %indvars.iv, 4
  %i.s = add nuw nsw i64 %i.n, %i.r
  %i.t = select i1 %i.q, i64 0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.t
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 4 ; 3 uses
  %i.v = and i32 %.sroa.0.0.copyload.i, 65535     ; 2 uses
  %i.w = icmp eq i32 %i.v, 127
  br i1 %i.w, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32: ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.y, align 1, !tbaa !31 ; 2 uses
  %i.z = trunc nuw i8 %.03036 to i1
  %i.aa = and i8 %.sroa.0.0.copyload.i.i, 64
  %.not = icmp eq i8 %i.aa, 0
  %or.cond = select i1 %i.z, i1 %.not, i1 false
  %.1 = select i1 %or.cond, i8 0, i8 %.03036      ; 3 uses
  %i.ab = trunc nuw i8 %.1 to i1
  %i.ac = select i1 %i.ab, i32 983040, i32 0
  %i.ad = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i = icmp eq i8 %i.ad, 0
  %i.ae = and i32 %.sroa.0.0.copyload.i, 16711680
  %.sroa.6.0.insert.ext = select i1 %.not.i, i32 %i.ae, i32 %i.ac
  %i.af = and i32 %.sroa.0.0.copyload.i, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.ext, %i.af
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %0)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv41
  %.idx40 = shl nuw nsw i64 %indvars.iv, 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx40
  store i32 %.sroa.0.0.insert.insert, ptr %i.aj, align 4
  %i.ak = load i16, ptr %i.d, align 2, !tbaa !81  ; 2 uses
  %i.al = icmp ult i16 %i.ak, 4
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32
  store i16 4, ptr %i.d, align 2, !tbaa !81
  store i32 16, ptr %i.e, align 4, !tbaa !82
  %i.am = load i32, ptr %i.f, align 8, !tbaa !83
  store i32 %i.am, ptr %i.g, align 4, !tbaa !84
  br label %bb.i

bb.g:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32
  %i.an = icmp eq i16 %i.ak, 4
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !82
  %i.ap = or i32 %i.ao, 16
  store i32 %i.ap, ptr %i.e, align 4, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !85  ; 2 uses
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !86
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.i
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !86
  br label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit:    ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.i, %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %.2 = phi i8 [ %.03036, %_ZN8MapBlock14getNodeNoCheckEsss.exit ], [ %.1, %bb.i ], [ %.1, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not50 = icmp eq i64 %indvars.iv, 0
end_hunk_3
