Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo28update_block_border_lightingEP3MapP8MapBlockRSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE:_ZN7voxalgo10LightQueueC2Em.exit
  %i.db = load ptr, ptr %i.ag, align 8, !tbaa !25
  %.not.i.i.12.i180 = icmp eq ptr %i.db, %i.da
  br i1 %.not.i.i.12.i180, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.12.i182, label %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.12.i181

_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.12.i181: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.11.i178
  store ptr %i.da, ptr %i.ag, align 8, !tbaa !25
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.12.i182

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.12.i182: ; preds = %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.12.i181, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.11.i178
  %i.dc = load ptr, ptr %.0.ptr.13.i183, align 8, !tbaa !84 ; 2 uses
  %i.dd = load ptr, ptr %i.ah, align 8, !tbaa !25
  %.not.i.i.13.i184 = icmp eq ptr %i.dd, %i.dc
  br i1 %.not.i.i.13.i184, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.13.i186, label %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.13.i185

_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.13.i185: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.12.i182
  store ptr %i.dc, ptr %i.ah, align 8, !tbaa !25
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.13.i186

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.13.i186: ; preds = %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.13.i185, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.12.i182
  %i.de = load ptr, ptr %.0.ptr.14.i187, align 8, !tbaa !84 ; 2 uses
  %i.df = load ptr, ptr %i.ai, align 8, !tbaa !25
  %.not.i.i.14.i188 = icmp eq ptr %i.df, %i.de
  br i1 %.not.i.i.14.i188, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.14.i190, label %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.14.i189

_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.14.i189: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.13.i186
  store ptr %i.de, ptr %i.ai, align 8, !tbaa !25
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.14.i190

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.14.i190: ; preds = %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.14.i189, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.13.i186
  %i.dg = load ptr, ptr %.0.ptr.15.i191, align 8, !tbaa !84 ; 2 uses
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !25
  %.not.i.i.15.i192 = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i.i.15.i192, label %_ZN7voxalgo10LightQueue5clearEv.exit194, label %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.15.i193

_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.15.i193: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.14.i190
  store ptr %i.dg, ptr %i.aj, align 8, !tbaa !25
  br label %_ZN7voxalgo10LightQueue5clearEv.exit194

_ZN7voxalgo10LightQueue5clearEv.exit194:          ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.14.i190, %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.15.i193
  %i.di = icmp eq i32 %i.av, 1                    ; 3 uses
  %i.dj = icmp eq i32 %i.av, 0                    ; 3 uses
  %i.dk = select i1 %i.di, i64 11, i64 5
  br label %bb.e

bb.c:                                             ; preds = %bb.ba
  invoke void @_ZN7voxalgo14unspread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueES7_RSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(385) %3, ptr noundef nonnull align 8 dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.preheader unwind label %bb.d

bb.d:                                             ; preds = %bb.bb, %bb.c
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.e:                                             ; preds = %_ZN7voxalgo10LightQueue5clearEv.exit194, %bb.ba
  %indvars.iv298 = phi i64 [ 0, %_ZN7voxalgo10LightQueue5clearEv.exit194 ], [ %indvars.iv.next299, %bb.ba ] ; 7 uses
  %i.dm = phi i32 [ 0, %_ZN7voxalgo10LightQueue5clearEv.exit194 ], [ %i.ll, %bb.ba ] ; 2 uses
  %.sroa.0.0.copyload.i = load i48, ptr %i.ak, align 2 ; 3 uses
  %.sroa.0252.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.5253.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.5253.0.extract.trunc = trunc i48 %.sroa.5253.0.extract.shift to i16
  %.sroa.6254.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.6254.0.extract.trunc = trunc nuw i48 %.sroa.6254.0.extract.shift to i16
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr @_ZN7voxalgoL13neighbor_dirsE, i64 %indvars.iv298 ; 3 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !9
  %i.dp = add i16 %i.do, %.sroa.0252.0.extract.trunc
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !12
  %i.ds = add i16 %i.dr, %.sroa.5253.0.extract.trunc
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !13
  %i.dv = add i16 %i.du, %.sroa.6254.0.extract.trunc
  %.sroa.3.0.insert.ext.i = zext i16 %i.dv to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.ds to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.dp to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.dw = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i)
          to label %bb.f unwind label %bb.g       ; 9 uses

bb.f:                                             ; preds = %bb.e
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ba, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.h:                                             ; preds = %bb.f
  %i.dz = add i32 %i.dm, 6
  %i.ea = trunc nuw nsw i64 %indvars.iv298 to i32
  %spec.select.i = select i1 %i.di, i32 %i.dz, i32 %i.ea
  %i.eb = load i16, ptr %i.al, align 8, !tbaa !73 ; 3 uses
  %i.ec = zext i16 %i.eb to i32
  %i.ed = and i32 %spec.select.i, 255
  %i.ee = shl nuw nsw i32 1, %i.ed                ; 2 uses
  %i.ef = and i32 %i.ee, %i.ec
  %.not257 = icmp eq i32 %i.ef, 0
  br i1 %.not257, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = sub nuw nsw i64 %i.dk, %indvars.iv298
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.ei = load i16, ptr %i.eh, align 8, !tbaa !73
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
  store i16 %i.eo, ptr %i.al, align 8, !tbaa !73
  %i.ep = load i16, ptr %i.am, align 2, !tbaa !74 ; 2 uses
  %i.eq = icmp ult i16 %i.ep, 2
  br i1 %i.eq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %i.am, align 2, !tbaa !74
  store i32 4, ptr %i.an, align 4, !tbaa !75
  %i.er = load i32, ptr %i.ao, align 8, !tbaa !76
  store i32 %i.er, ptr %i.ap, align 4, !tbaa !77
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.m:                                             ; preds = %bb.k
  %i.es = icmp eq i16 %i.ep, 2
  br i1 %i.es, label %bb.n, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.n:                                             ; preds = %bb.m
  %i.et = load i32, ptr %i.an, align 4, !tbaa !75
  %i.eu = or i32 %i.et, 4
  store i32 %i.eu, ptr %i.an, align 4, !tbaa !75
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.ev = sub nuw nsw i64 5, %indvars.iv298
  %i.ew = sub nuw nsw i32 5, %i.dm
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 80 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !73 ; 2 uses
  %i.ez = trunc i64 %indvars.iv298 to i32
  %i.fa = sub i32 11, %i.ez
  %i.fb = select i1 %i.di, i32 %i.fa, i32 %i.ew
  %i.fc = shl nuw nsw i32 1, %i.fb
  %i.fd = trunc nuw nsw i32 %i.fc to i16
  %i.fe = or i16 %i.ey, %i.fd                     ; 2 uses
  %.not.i.i198 = icmp eq i16 %i.fe, %i.ey
  br i1 %.not.i.i198, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199, label %bb.o

bb.o:                                             ; preds = %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit
  store i16 %i.fe, ptr %i.ex, align 8, !tbaa !73
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 66 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !74 ; 2 uses
  %i.fh = icmp ult i16 %i.fg, 2
  br i1 %i.fh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i16 2, ptr %i.ff, align 2, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dw, i64 68
  store i32 4, ptr %i.fi, align 4, !tbaa !75
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !76
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dw, i64 76
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !77
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199

bb.q:                                             ; preds = %bb.o
  %i.fm = icmp eq i16 %i.fg, 2
  br i1 %i.fm, label %bb.r, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199

bb.r:                                             ; preds = %bb.q
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dw, i64 68 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !75
  %i.fp = or i32 %i.fo, 4
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !75
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199

_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199: ; preds = %bb.r, %bb.q, %bb.p, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr @_ZN7voxalgoL13block_bordersE, i64 %indvars.iv298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !tbaa.struct !164
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr @_ZN7voxalgoL13block_bordersE, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 24, i1 false), !tbaa.struct !164
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge274.split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.ba

bb.t:                                             ; preds = %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199, %._crit_edge274.split
  %i.fs = phi i1 [ true, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199 ], [ false, %._crit_edge274.split ]
  %indvars.iv295.sroa.phi = phi ptr [ %5, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199 ], [ %indvars.iv295.sroa.gep373, %._crit_edge274.split ] ; 6 uses
  %indvars.iv295.sroa.phi374.sroa.speculated = phi ptr [ %1, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit199 ], [ %i.dw, %._crit_edge274.split ] ; 14 uses
  %.sroa.040.0.copyload = load i16, ptr %indvars.iv295.sroa.phi, align 8, !tbaa !86 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 6
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !86 ; 2 uses
  %.not117270 = icmp sgt i16 %.sroa.040.0.copyload, %.sroa.7.0.copyload
  br i1 %.not117270, label %._crit_edge274.split, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.t
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 10
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !86 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 8
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !86 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 4
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !86 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %indvars.iv295.sroa.phi, i64 2
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !86 ; 2 uses
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
  %6 = tail call i16 @llvm.smax.i16(i16 %.sroa.040.0.copyload, i16 %.sroa.7.0.copyload)
  %smax293 = sext i16 %6 to i32
  br label %.lr.ph268

._crit_edge274.split:                             ; preds = %._crit_edge269, %.lr.ph273, %bb.t
  br i1 %i.fs, label %bb.t, label %bb.s, !llvm.loop !166

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %._crit_edge269
  %.0114271 = phi i32 [ %i.gk, %._crit_edge269 ], [ %i.gf, %.lr.ph268.preheader ] ; 5 uses
  %i.gi = trunc nsw i32 %.0114271 to i16
  %i.gj = zext i32 %.0114271 to i64
  %.mask261 = and i32 %.0114271, 65535
  %.sroa.0243.0.insert.ext = zext nneg i32 %.mask261 to i48
  br label %.lr.ph

._crit_edge269:                                   ; preds = %._crit_edge
  %i.gk = add nsw i32 %.0114271, 1
  %exitcond294.not = icmp eq i32 %.0114271, %smax293
  br i1 %exitcond294.not, label %._crit_edge274.split, label %.lr.ph268, !llvm.loop !167

.lr.ph:                                           ; preds = %.lr.ph268, %._crit_edge
  %indvars.iv287 = phi i64 [ %i.gh, %.lr.ph268 ], [ %indvars.iv.next288, %._crit_edge ] ; 5 uses
  %i.gl = trunc nsw i64 %indvars.iv287 to i32
  %i.gm = trunc i64 %indvars.iv287 to i16
  %i.gn = shl nsw i64 %indvars.iv287, 8
  %i.go = add nsw i64 %i.gn, %i.gj
  %.mask = and i32 %i.gl, 65535
  %.sroa.3.0.insert.ext = zext nneg i32 %.mask to i48
  %.sroa.3.0.insert.shift = shl nuw i48 %.sroa.3.0.insert.ext, 32
  %invariant.op = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.0243.0.insert.ext
  br label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

._crit_edge:                                      ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %indvars.iv.next288 = add nsw i64 %indvars.iv287, 1
  %exitcond292.not = icmp eq i64 %indvars.iv287, %i.ge
  br i1 %exitcond292.not, label %._crit_edge269, label %.lr.ph, !llvm.loop !168

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %.lr.ph, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %indvars.iv = phi i64 [ %i.gg, %.lr.ph ], [ %indvars.iv.next, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit ] ; 5 uses
  %i.gp = load ptr, ptr %i.ft, align 8, !tbaa !27
  %i.gq = load i8, ptr %i.fu, align 4, !tbaa !70, !range !71, !noundef !72
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = shl nsw i64 %indvars.iv, 4
  %i.gt = add nsw i64 %i.go, %i.gs
  %i.gu = and i64 %i.gt, 4294967295               ; 2 uses
  %i.gv = select i1 %i.gr, i64 0, i64 %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gv
  %.sroa.0.0.copyload.i200 = load i32, ptr %i.gw, align 4 ; 3 uses
  %.sroa.7250.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i200, 16 ; 4 uses
  %.sroa.7250.0.extract.trunc = trunc i32 %.sroa.7250.0.extract.shift to i8 ; 2 uses
  %.sroa.0248.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i200, 65535
  %i.gx = zext nneg i32 %.sroa.0248.0.extract.trunc.mask to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gx ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.gy, align 1, !tbaa !24 ; 2 uses
  %i.gz = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i201 = icmp eq i8 %i.gz, 0
  %i.ha = and i8 %.sroa.7250.0.extract.trunc, 15
  %i.hb = lshr i8 %.sroa.7250.0.extract.trunc, 4
  %.in.i.i = select i1 %i.dj, i8 %i.ha, i8 %i.hb
  %i.hc = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.hd = tail call i8 @llvm.umax.i8(i8 %i.hc, i8 %.in.i.i)
  %i.he = select i1 %.not.i.i201, i8 %i.hc, i8 %i.hd ; 2 uses
  %.not259 = icmp eq i8 %i.he, 15
  br i1 %.not259, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %i.hf = trunc nsw i64 %indvars.iv to i32
  %i.hg = trunc i64 %indvars.iv to i16
  %.sroa.0.0.copyload.i202 = load i48, ptr %i.fv, align 8 ; 3 uses
  %.sroa.0244.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i202 to i16
  %.sroa.5.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i202, 16
  %.sroa.5.0.extract.trunc = trunc i48 %.sroa.5.0.extract.shift to i16
  %.sroa.6245.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i202, 32
  %.sroa.6245.0.extract.trunc = trunc nuw i48 %.sroa.6245.0.extract.shift to i16
  %i.hh = add i16 %.sroa.0244.0.extract.trunc, %i.gi
  %i.hi = add i16 %.sroa.5.0.extract.trunc, %i.hg
  %i.hj = add i16 %.sroa.6245.0.extract.trunc, %i.gm
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
  %.sroa.0.0.copyload.i.i210 = load i8, ptr %i.gy, align 1, !tbaa !24
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
  %i.hp = load ptr, ptr %i.ft, align 8, !tbaa !27
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.gu
  store i32 %.sroa.0248.0.insert.insert, ptr %i.hq, align 4
  %i.hr = load i16, ptr %i.fw, align 2, !tbaa !74 ; 2 uses
  %i.hs = icmp ult i16 %i.hr, 4
  br i1 %i.hs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc
  store i16 4, ptr %i.fw, align 2, !tbaa !74
  store i32 16, ptr %i.fx, align 4, !tbaa !75
  %i.ht = load i32, ptr %i.fy, align 8, !tbaa !76
  store i32 %i.ht, ptr %i.fz, align 4, !tbaa !77
  br label %bb.ad

bb.ab:                                            ; preds = %.noexc
  %i.hu = icmp eq i16 %i.hr, 4
  br i1 %i.hu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hv = load i32, ptr %i.fx, align 4, !tbaa !75
  %i.hw = or i32 %i.hv, 16
  store i32 %i.hw, ptr %i.fx, align 4, !tbaa !75
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hx = load ptr, ptr %i.ga, align 8, !tbaa !78 ; 2 uses
  %i.hy = load ptr, ptr %i.gb, align 8, !tbaa !79
  %.not.i.i.i.i = icmp eq ptr %i.hy, %i.hx
  br i1 %.not.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.ad
  store ptr %i.hx, ptr %i.gb, align 8, !tbaa !79
  br label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit:    ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.ad
  %.sroa.0.0.copyload.i212 = load i48, ptr %i.gc, align 2 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i212 to i16 ; 5 uses
  %.sroa.6.0.extract.shift307 = lshr i48 %.sroa.0.0.copyload.i212, 16
  %.sroa.6.0.extract.trunc308 = trunc i48 %.sroa.6.0.extract.shift307 to i16 ; 5 uses
  %.sroa.7.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i212, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 3 uses
  %i.hz = load ptr, ptr %i.as, align 8, !tbaa !92 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.hz, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.at, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !9  ; 2 uses
  %i.ic = icmp slt i16 %i.ib, %.sroa.0.0.extract.trunc
  br i1 %i.ic, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.id = icmp eq i16 %i.ib, %.sroa.0.0.extract.trunc
  br i1 %i.id, label %bb.af, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ie = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !12 ; 2 uses
  %i.ig = icmp slt i16 %i.if, %.sroa.6.0.extract.trunc308
  br i1 %i.ig, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ih = icmp eq i16 %i.if, %.sroa.6.0.extract.trunc308
  br i1 %i.ih, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.ag
  %i.ii = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !13
  %i.ik = icmp slt i16 %i.ij, %.sroa.7.0.extract.trunc
  br i1 %i.ik, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.af, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ag, %bb.ae
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ag ], [ 16, %bb.ae ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.ag ], [ %.014.i.i.i.i, %bb.ae ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.il, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i213 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i213, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !94

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.im = icmp eq ptr %.19.i.i.i.i, %i.at
  br i1 %i.im, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.io = load i16, ptr %i.in, align 2, !tbaa !9  ; 2 uses
  %i.ip = icmp sgt i16 %i.io, %.sroa.0.0.extract.trunc
  br i1 %i.ip, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iq = icmp eq i16 %i.io, %.sroa.0.0.extract.trunc
  br i1 %i.iq, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.ir = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !12 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_:bb.a
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !9  ; 3 uses
  %i.fr = icmp slt i16 %i.bj, %i.fq
  br i1 %i.fr, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %bb.ai

bb.ai:                                            ; preds = %.backedge102
  %i.fs = icmp eq i16 %i.bj, %i.fq
  br i1 %i.fs, label %bb.aj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 34
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !12 ; 2 uses
  %i.fv = icmp slt i16 %i.fm, %i.fu
  br i1 %i.fv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = icmp eq i16 %i.fm, %i.fu
  br i1 %i.fw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56: ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 36
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !13
  %i.fz = icmp slt i16 %i.fo, %i.fy
  br i1 %i.fz, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56, %bb.aj, %.backedge102
  %i.ga = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 16
  %.021.i43 = load ptr, ptr %i.ga, align 8, !tbaa !93 ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.thread.i54, label %.backedge102.backedge

.backedge102.backedge:                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread
  %.02128.i39.be = phi ptr [ %.021.i43, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41 ], [ %.021.i4396, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ]
  br label %.backedge102, !llvm.loop !334

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread: ; preds = %bb.ai, %bb.ak, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56
  %i.gb = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 24
  %.021.i4396 = load ptr, ptr %i.gb, align 8, !tbaa !93 ; 2 uses
  %.not.i4497 = icmp eq ptr %.021.i4396, null
  br i1 %.not.i4497, label %._crit_edge.i45.thread, label %.backedge102.backedge

._crit_edge.thread.i54:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94
  %.020.lcssa40.i55 = phi ptr [ %i.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94 ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !335
  %i.ge = icmp eq ptr %.020.lcssa40.i55, %i.gd
  br i1 %i.ge, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.al

bb.al:                                            ; preds = %._crit_edge.thread.i54
  %i.gf = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i55) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !9
  br label %._crit_edge.i45.thread

._crit_edge.i45.thread:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread, %bb.al
  %i.gg = phi i16 [ %.pre, %bb.al ], [ %i.fq, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 2 uses
  %.020.lcssa39.i46 = phi ptr [ %.020.lcssa40.i55, %bb.al ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 3 uses
  %.sroa.06.0.i47 = phi ptr [ %i.gf, %bb.al ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 3 uses
  %i.gh = icmp slt i16 %i.gg, %i.bj
  br i1 %i.gh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i45.thread
  %i.gi = icmp eq i16 %i.gg, %i.bj
  br i1 %i.gi, label %bb.an, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

bb.an:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 34
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !12 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !12 ; 2 uses
  %i.gn = icmp slt i16 %i.gk, %i.gm
  br i1 %i.gn, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = icmp eq i16 %i.gk, %i.gm
  br i1 %i.go, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53: ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 36
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !13
  %i.gt = icmp slt i16 %i.gq, %i.gs
  br i1 %i.gt, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, %bb.ao, %bb.am
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, %bb.an, %._crit_edge.i45.thread, %._crit_edge.thread.i54, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29, %bb.aa, %._crit_edge.i21.thread, %._crit_edge.thread.i30, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i, %bb.l, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread, %bb.ad, %bb.c, %bb.e, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit
  %.sroa.078.2 = phi ptr [ null, %bb.e ], [ null, %._crit_edge.i45.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit ], [ %spec.select99, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread ], [ %1, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bz, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread ], [ %1, %bb.ad ], [ null, %._crit_edge.i21.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread ], [ %spec.select, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread ], [ null, %bb.c ], [ %.sroa.06.0.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i ], [ null, %bb.l ], [ %.sroa.06.0.i23, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24 ], [ null, %._crit_edge.thread.i30 ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29 ], [ null, %bb.aa ], [ %.sroa.06.0.i47, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48 ], [ null, %._crit_edge.thread.i54 ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53 ], [ null, %bb.an ]
  %.sroa.12.2 = phi ptr [ %i.f, %bb.e ], [ %.020.lcssa39.i46, %._crit_edge.i45.thread ], [ %i.f, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit ], [ %spec.select100, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34 ], [ %.020.lcssa39.i, %._crit_edge.i.thread ], [ %i.bz, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread ], [ null, %bb.ad ], [ %.020.lcssa39.i22, %._crit_edge.i21.thread ], [ %i.ep, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread ], [ %spec.select98, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread ], [ %i.f, %bb.c ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i ], [ %.020.lcssa40.i, %._crit_edge.thread.i ], [ %.020.lcssa39.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i ], [ %.020.lcssa39.i, %bb.l ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24 ], [ %.020.lcssa40.i31, %._crit_edge.thread.i30 ], [ %.020.lcssa39.i22, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29 ], [ %.020.lcssa39.i22, %bb.aa ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48 ], [ %.020.lcssa40.i55, %._crit_edge.thread.i54 ], [ %.020.lcssa39.i46, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53 ], [ %.020.lcssa39.i46, %bb.an ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_voxelalgorithms.cpp() #16 section ".text.startup" {
bb.a:
  store <4 x i16> <i16 15, i16 0, i16 0, i16 15>, ptr @_ZN7voxalgoL13block_bordersE, align 16, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 8), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 10), align 2, !tbaa !86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 12), align 4, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 16), align 16, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 20), align 4, !tbaa !165
  store <4 x i16> <i16 0, i16 15, i16 0, i16 15>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 24), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 32), align 16, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 34), align 2, !tbaa !86
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 36), align 4, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 40), align 8, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 44), align 4, !tbaa !165
  store <4 x i16> <i16 0, i16 0, i16 15, i16 15>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 48), align 16, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 56), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 58), align 2, !tbaa !86
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 60), align 4, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 64), align 16, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 68), align 4, !tbaa !165
  store <4 x i16> <i16 0, i16 0, i16 0, i16 15>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 72), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 80), align 16, !tbaa !86
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 82), align 2, !tbaa !86
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 84), align 4, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 88), align 8, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 92), align 4, !tbaa !165
  store <4 x i16> <i16 0, i16 0, i16 0, i16 15>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 96), align 16, !tbaa !86
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 104), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 106), align 2, !tbaa !86
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 108), align 4, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 112), align 16, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 116), align 4, !tbaa !165
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 120), align 8
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 128), align 16, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 130), align 2, !tbaa !86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 132), align 4, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 136), align 8, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL13block_bordersE, i64 140), align 4, !tbaa !165
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 144, ptr nonnull @_ZN7voxalgoL13block_bordersE) ; 0 uses
  store <4 x i16> <i16 15, i16 0, i16 0, i16 15>, ptr @_ZN7voxalgoL9block_padE, align 16, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 8), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 10), align 2, !tbaa !86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 12), align 4, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 16), align 16, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 20), align 4, !tbaa !165
  store <4 x i16> <i16 1, i16 15, i16 0, i16 14>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 24), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 32), align 16, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 34), align 2, !tbaa !86
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 36), align 4, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 40), align 8, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 44), align 4, !tbaa !165
  store <4 x i16> <i16 1, i16 1, i16 15, i16 14>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 48), align 16, !tbaa !86
  store i16 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 56), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 58), align 2, !tbaa !86
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 60), align 4, !tbaa !165
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 64), align 16, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 68), align 4, !tbaa !165
  store <4 x i16> <i16 1, i16 1, i16 0, i16 14>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 72), align 8, !tbaa !86
  store i16 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 80), align 16, !tbaa !86
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 82), align 2, !tbaa !86
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 84), align 4, !tbaa !165
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 88), align 8, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 92), align 4, !tbaa !165
  store <4 x i16> <i16 1, i16 0, i16 0, i16 14>, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 96), align 16, !tbaa !86
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 104), align 8, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 106), align 2, !tbaa !86
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 108), align 4, !tbaa !165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 112), align 16, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 116), align 4, !tbaa !165
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 120), align 8
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 128), align 16, !tbaa !86
  store i16 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 130), align 2, !tbaa !86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 132), align 4, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 136), align 8, !tbaa !165
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7voxalgoL9block_padE, i64 140), align 4, !tbaa !165
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 144, ptr nonnull @_ZN7voxalgoL9block_padE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4core8vector3dIsEE", !11, i64 0, !11, i64 2, !11, i64 4}
!11 = !{!"short", !7, i64 0}
!12 = !{!10, !11, i64 2}
!13 = !{!10, !11, i64 4}
!14 = !{!15, !7, i64 384}
!15 = !{!"_ZTSN7voxalgo10LightQueueE", !16, i64 0, !7, i64 384}
!16 = !{!"_ZTSSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EE", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSN7voxalgo13ChangingLightE", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8MapBlock", !19, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !18, i64 8}
!26 = !{!"_ZTSNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!27 = !{!28, !30, i64 16}
!28 = !{!"_ZTS8MapBlock", !29, i64 0, !10, i64 2, !10, i64 8, !11, i64 14, !30, i64 16, !31, i64 24, !32, i64 32, !29, i64 36, !29, i64 37, !33, i64 40, !29, i64 64, !29, i64 65, !11, i64 66, !6, i64 68, !6, i64 72, !6, i64 76, !11, i64 80, !29, i64 82, !29, i64 83, !38, i64 88, !49, i64 144, !60, i64 216}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTS7MapNode", !19, i64 0}
!31 = !{!"p1 _ZTS8IGameDef", !19, i64 0}
!32 = !{!"float", !7, i64 0}
!33 = !{!"_ZTSSt6vectorItSaItEE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseItSaItEE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 short", !19, i64 0}
!38 = !{!"_ZTS16NodeMetadataList", !29, i64 0, !39, i64 8}
!39 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !40, i64 0}
!40 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !41, i64 0}
!41 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !42, i64 0, !44, i64 8}
!42 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !43, i64 0}
!43 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!44 = !{!"_ZTSSt15_Rb_tree_header", !45, i64 0, !48, i64 32}
!45 = !{!"_ZTSSt18_Rb_tree_node_base", !46, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!46 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!47 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!48 = !{!"long", !7, i64 0}
!49 = !{!"_ZTS16StaticObjectList", !50, i64 0, !55, i64 24}
!50 = !{!"_ZTSSt6vectorI12StaticObjectSaIS0_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseI12StaticObjectSaIS0_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTS12StaticObject", !19, i64 0}
!55 = !{!"_ZTSSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE", !56, i64 0}
!56 = !{!"_ZTSSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE", !57, i64 0}
!57 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !58, i64 0, !44, i64 8}
!58 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessItEE", !59, i64 0}
!59 = !{!"_ZTSSt4lessItE"}
!60 = !{!"_ZTS13NodeTimerList", !61, i64 0, !66, i64 48, !69, i64 96, !69, i64 104}
!61 = !{!"_ZTSSt8multimapId9NodeTimerSt4lessIdESaISt4pairIKdS0_EEE", !62, i64 0}
!62 = !{!"_ZTSSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE", !63, i64 0}
!63 = !{!"_ZTSNSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !64, i64 0, !44, i64 8}
!64 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIdEE", !65, i64 0}
!65 = !{!"_ZTSSt4lessIdE"}
!66 = !{!"_ZTSSt3mapIN4core8vector3dIsEESt17_Rb_tree_iteratorISt4pairIKd9NodeTimerEESt4lessIS2_ESaIS4_IKS2_S8_EEE", !67, i64 0}
!67 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE", !68, i64 0}
!68 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !42, i64 0, !44, i64 8}
!69 = !{!"double", !7, i64 0}
!70 = !{!28, !29, i64 36}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!28, !11, i64 80}
!74 = !{!28, !11, i64 66}
!75 = !{!28, !6, i64 68}
!76 = !{!28, !6, i64 72}
!77 = !{!28, !6, i64 76}
!78 = !{!36, !37, i64 0}
!79 = !{!36, !37, i64 8}
!80 = !{!26, !18, i64 16}
!81 = !{!82, !23, i64 0}
!82 = !{!"_ZTSN7voxalgo13ChangingLightE", !23, i64 0, !10, i64 8, !10, i64 14, !7, i64 20}
!83 = !{!82, !7, i64 20}
!84 = !{!26, !18, i64 0}
!85 = !{i64 0, i64 8, !22, i64 8, i64 2, !86, i64 10, i64 2, !86, i64 12, i64 2, !86, i64 14, i64 2, !86, i64 16, i64 2, !86, i64 18, i64 2, !86, i64 20, i64 1, !24}
!86 = !{!11, !11, i64 0}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!89 = distinct !{!89, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!90 = distinct !{!90, !89, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!91 = distinct !{!91, !21}
!92 = !{!44, !47, i64 8}
!93 = !{!47, !47, i64 0}
!94 = distinct !{!94, !21}
!95 = !{!96, !23, i64 8}
!96 = !{!"_ZTSSt4pairIKN4core8vector3dIsEEP8MapBlockE", !10, i64 0, !23, i64 8}
!97 = !{!44, !48, i64 32}
!98 = distinct !{!98, !21}
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!101 = distinct !{!101, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!102 = distinct !{!102, !101, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!108 = distinct !{!108, !107, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 _ZTSN4core8vector3dIsEE", !19, i64 0}
!111 = distinct !{!111, !21}
!112 = !{!28, !29, i64 83}
!113 = !{!114, !129, i64 136}
!114 = !{!"_ZTS3Map", !31, i64 8, !115, i64 16, !120, i64 64, !127, i64 120, !128, i64 128, !129, i64 136}
!115 = !{!"_ZTSSt3setIP16MapEventReceiverSt4lessIS1_ESaIS1_EE", !116, i64 0}
!116 = !{!"_ZTSSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !117, i64 0}
!117 = !{!"_ZTSNSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !118, i64 0, !44, i64 8}
!118 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP16MapEventReceiverEE", !119, i64 0}
!119 = !{!"_ZTSSt4lessIP16MapEventReceiverE"}
!120 = !{!"_ZTSSt13unordered_mapIN4core8vector2dIsEEP9MapSectorSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !121, i64 0}
!121 = !{!"_ZTSSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !122, i64 0, !48, i64 8, !124, i64 16, !48, i64 24, !126, i64 32, !125, i64 48}
!122 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !123, i64 0}
!123 = !{!"any p2 pointer", !19, i64 0}
!124 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !125, i64 0}
!125 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!126 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !32, i64 0, !48, i64 8}
!127 = !{!"p1 _ZTS9MapSector", !19, i64 0}
!128 = !{!"_ZTSN4core8vector2dIsEE", !11, i64 0, !11, i64 2}
!129 = !{!"p1 _ZTS14NodeDefManager", !19, i64 0}
!130 = !{!"branch_weights", i32 1023, i32 1}
!131 = !{!132, !132, i64 0}
!132 = !{!"_ZTS9LightBank", !7, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 _ZTSSt4pairIN4core8vector3dIsEE7MapNodeE", !19, i64 0}
!135 = !{!136, !11, i64 0}
!136 = !{!"_ZTS7MapNode", !11, i64 0, !7, i64 2, !7, i64 3}
!137 = distinct !{!137, !21}
!138 = !{!29, !29, i64 0}
!139 = !{!140, !142}
!140 = distinct !{!140, !141, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!143 = !{!144, !146}
!144 = distinct !{!144, !145, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!145 = distinct !{!145, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!146 = distinct !{!146, !145, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!147 = !{!148, !150}
!148 = distinct !{!148, !149, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!149 = distinct !{!149, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!150 = distinct !{!150, !149, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!151 = distinct !{!151, !21}
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!154 = distinct !{!154, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!155 = distinct !{!155, !154, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = !{!161, !163}
!161 = distinct !{!161, !162, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!162 = distinct !{!162, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_"}
!163 = distinct !{!163, !162, !"_ZSt19__relocate_object_aIN7voxalgo13ChangingLightES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!164 = !{i64 0, i64 2, !86, i64 2, i64 2, !86, i64 4, i64 2, !86, i64 6, i64 2, !86, i64 8, i64 2, !86, i64 10, i64 2, !86, i64 12, i64 4, !165, i64 16, i64 4, !165, i64 20, i64 4, !165}
!165 = !{!6, !6, i64 0}
!166 = distinct !{!166, !21}
!167 = distinct !{!167, !21}
!168 = distinct !{!168, !21}
end_hunk_1
