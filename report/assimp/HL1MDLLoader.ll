inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
.lr.ph2296:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit406, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410._crit_edge
  %.12382295 = phi ptr [ %i.rp, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410._crit_edge ], [ %i.qw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit406 ] ; 3 uses
  %.02942294 = phi i32 [ %.1295.lcssa, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410._crit_edge ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit406 ] ; 2 uses
  %.02982293 = phi i32 [ %i.ro, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410._crit_edge ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit406 ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.12382295, i64 72
  %i.ri = load i32, ptr %i.rh, align 1
  %i.rj = getelementptr inbounds nuw i8, ptr %.12382295, i64 64 ; 3 uses
  %i.rk = load i32, ptr %i.rj, align 1
  %i.rl = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_9Model_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.ri, i32 noundef %i.rk)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader unwind label %bb.bi

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader: ; preds = %.lr.ph2296
  %i.rm = load i32, ptr %i.rj, align 1
  %i.rn = icmp sgt i32 %i.rm, 0
  br i1 %i.rn, label %.lr.ph2291, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410._crit_edge

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader
  %.1295.lcssa = phi i32 [ %.02942294, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader ], [ %i.se, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412 ]
  %i.ro = add nuw nsw i32 %.02982293, 1           ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.12382295, i64 76
  %i.rq = load ptr, ptr %i.a, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 204
  %i.rs = load i32, ptr %i.rr, align 4
  %i.rt = icmp slt i32 %i.ro, %i.rs
  br i1 %i.rt, label %.lr.ph2296, label %._crit_edge2297, !llvm.loop !191

bb.bi:                                            ; preds = %.lr.ph2296
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

.lr.ph2291:                                       ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412
  %.12422290 = phi ptr [ %i.sd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412 ], [ %i.rl, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader ] ; 3 uses
  %.12952289 = phi i32 [ %i.se, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412 ], [ %.02942294, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader ] ; 2 uses
  %.02992288 = phi i32 [ %i.sc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412 ], [ 0, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410.preheader ]
  %i.rv = zext i32 %.12952289 to i64
  %i.rw = load ptr, ptr %18, align 8
  %i.rx = getelementptr inbounds nuw [32 x i8], ptr %i.rw, i64 %i.rv ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = load i64, ptr %i.ry, align 8
  %i.sa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.12422290) #23
  %i.sb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.rx, i64 noundef 0, i64 noundef %i.rz, ptr noundef nonnull %.12422290, i64 noundef %i.sa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412 unwind label %bb.bj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit412: ; preds = %.lr.ph2291
  %i.sc = add nuw nsw i32 %.02992288, 1           ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.12422290, i64 112
  %i.se = add i32 %.12952289, 1                   ; 2 uses
  %i.sf = load i32, ptr %i.rj, align 1
  %i.sg = icmp slt i32 %i.sc, %i.sf
  br i1 %i.sg, label %.lr.ph2291, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit410._crit_edge, !llvm.loop !192

bb.bj:                                            ; preds = %.lr.ph2291
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator17set_template_nameEPKc.exit408: ; preds = %._crit_edge2297
  invoke void @_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.qn, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.bk unwind label %bb.bt

bb.bk:                                            ; preds = %_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator17set_template_nameEPKc.exit408
  %i.si = load ptr, ptr %0, align 8               ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load i32, ptr %i.sj, align 8
  %i.sl = zext i32 %i.sk to i64
  %i.sm = shl nuw nsw i64 %i.sl, 3
  %i.sn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sm) #26
          to label %bb.bl unwind label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  store ptr %i.sn, ptr %i.so, align 8
  %i.sp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 208
  %i.sr = load i32, ptr %i.sq, align 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 204
  %i.st = load i32, ptr %i.ss, align 4
  %i.su = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_12Bodypart_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.sr, i32 noundef %i.st)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_12Bodypart_HL1EEEPKT_ii.exit414 unwind label %bb.bu

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_12Bodypart_HL1EEEPKT_ii.exit414: ; preds = %bb.bl
  %i.sv = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %._crit_edge.i.i415 unwind label %bb.bv ; 7 uses

._crit_edge.i.i415:                               ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_12Bodypart_HL1EEEPKT_ii.exit414
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.sw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.sw, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.sw, ptr noundef nonnull align 1 dereferenceable(15) @.str.24, i64 15, i1 false)
  %i.sx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 15, ptr %i.sx, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %19, i64 31
  store i8 0, ptr %i.sy, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.sv, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bm unwind label %bb.bw

bb.bm:                                            ; preds = %._crit_edge.i.i415
  %i.sz = load ptr, ptr %19, align 8              ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.sw
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.bm
  %i.tb = load i64, ptr %i.sw, align 8
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.tf = load ptr, ptr %i.te, align 8            ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8
  %.not.i = icmp eq ptr %i.tf, %i.th
  br i1 %.not.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  store ptr %i.sv, ptr %i.tf, align 8
  %i.ti = load ptr, ptr %i.te, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  store ptr %i.tj, ptr %i.te, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  %i.tk = load ptr, ptr %i.td, align 8            ; 4 uses
  %i.tl = ptrtoint ptr %i.tf to i64
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tl, %i.tm                    ; 6 uses
  %i.to = icmp eq i64 %i.tn, 9223372036854775800
  br i1 %i.to, label %bb.bp, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc423 unwind label %bb.bv

.noexc423:                                        ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bo
  %i.tp = ashr exact i64 %i.tn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.tp, i64 1)
  %i.tq = add nsw i64 %.sroa.speculated.i.i.i, %i.tp ; 2 uses
  %i.tr = icmp ult i64 %i.tq, %i.tp
  %i.ts = call i64 @llvm.umin.i64(i64 %i.tq, i64 1152921504606846975)
  %i.tt = select i1 %i.tr, i64 1152921504606846975, i64 %i.ts ; 3 uses
  %.not.i.i.i422 = icmp ne i64 %i.tt, 0
  call void @llvm.assume(i1 %.not.i.i.i422)
  %i.tu = shl nuw nsw i64 %i.tt, 3
  %i.tv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tu) #26
          to label %.noexc424 unwind label %bb.bv ; 4 uses

.noexc424:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.tw = getelementptr inbounds i8, ptr %i.tv, i64 %i.tn ; 2 uses
  store ptr %i.sv, ptr %i.tw, align 8
  %i.tx = icmp sgt i64 %i.tn, 0
  br i1 %i.tx, label %bb.bq, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bq:                                            ; preds = %.noexc424
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tv, ptr align 8 %i.tk, i64 %i.tn, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bq, %.noexc424
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.tk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.tn) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.br, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.tv, ptr %i.td, align 8
  store ptr %i.ty, ptr %i.te, align 8
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.tt
  store ptr %i.tz, ptr %i.tg, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bn
  %i.ua = load ptr, ptr %i.a, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 204 ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4            ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sv, i64 1104
  store i32 %i.uc, ptr %i.ud, align 8
  %i.ue = zext i32 %i.uc to i64
  %i.uf = shl nuw nsw i64 %i.ue, 3
  %i.ug = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.uf) #26
          to label %bb.bs unwind label %bb.bv     ; 2 uses

bb.bs:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sv, i64 1112
  store ptr %i.ug, ptr %i.uh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.ui = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 16 uses
  store i32 0, ptr %i.ui, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr null, ptr %i.uj, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  store ptr %i.ui, ptr %i.uk, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  store ptr %i.ui, ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 6 uses
  store i64 0, ptr %i.um, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.un = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 9 uses
  store i32 0, ptr %i.un, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr null, ptr %i.uo, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  store ptr %i.un, ptr %i.up, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store ptr %i.un, ptr %i.uq, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 3 uses
  store i64 0, ptr %i.ur, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %24, ptr %25, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store ptr %22, ptr %26, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %20, ptr %i.us, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %23, ptr %i.ut, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %21, ptr %i.uu, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %25, ptr %i.uv, align 8
  %i.uw = load i32, ptr %i.ub, align 4
  %i.ux = icmp sgt i32 %i.uw, 0
  br i1 %i.ux, label %.lr.ph2416, label %._crit_edge2417.thread

.lr.ph2416:                                       ; preds = %bb.bs
  %i.uy = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 8 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 15 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 7 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %27, i64 20
  br label %bb.bx

._crit_edge2417:                                  ; preds = %._crit_edge2387
  %i.vn = icmp sgt i32 %.1235.lcssa, 20000
  br i1 %i.vn, label %bb.gt, label %._crit_edge2417.thread

bb.bt:                                            ; preds = %._crit_edge2297, %_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator17set_template_nameEPKc.exit408
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.bu:                                            ; preds = %bb.bl, %bb.bk
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.bv:                                            ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.bp, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_12Bodypart_HL1EEEPKT_ii.exit414
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.bw:                                            ; preds = %._crit_edge.i.i415
  %i.vr = landingpad { ptr, i32 }
          cleanup
  %i.vs = load ptr, ptr %19, align 8              ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.sw
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %bb.bw
  %i.vu = load i64, ptr %i.sw, align 8
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef 1144) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.bx:                                            ; preds = %.lr.ph2416, %._crit_edge2387
  %indvars.iv3407 = phi i64 [ 0, %.lr.ph2416 ], [ %indvars.iv.next3408, %._crit_edge2387 ] ; 2 uses
  %.02342414 = phi i32 [ 0, %.lr.ph2416 ], [ %.1235.lcssa, %._crit_edge2387 ] ; 2 uses
  %.22392413 = phi ptr [ %i.su, %.lr.ph2416 ], [ %i.wy, %._crit_edge2387 ] ; 4 uses
  %.22962412 = phi i32 [ 0, %.lr.ph2416 ], [ %.3297.lcssa, %._crit_edge2387 ] ; 2 uses
  %.03002411 = phi i32 [ 0, %.lr.ph2416 ], [ %.1301.lcssa, %._crit_edge2387 ] ; 2 uses
  %.03032410 = phi ptr [ %i.ug, %.lr.ph2416 ], [ %i.wz, %._crit_edge2387 ] ; 2 uses
  %.sroa.0765.02408 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.0765.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.12772.02407 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.12772.1.lcssa, %._crit_edge2387 ] ; 2 uses
  %.sroa.18775.02406 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.18775.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.0753.02405 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.0753.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.12760.02404 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.12760.1.lcssa, %._crit_edge2387 ] ; 2 uses
  %.sroa.18.02403 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.18.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.0729.02402 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.0729.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.19.02401 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.19.1.lcssa, %._crit_edge2387 ] ; 2 uses
  %.sroa.36.02400 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.36.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.22392413, i64 72
  %i.vx = load i32, ptr %i.vw, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %.22392413, i64 64 ; 4 uses
  %i.vz = load i32, ptr %i.vy, align 1
  %i.wa = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_9Model_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.vx, i32 noundef %i.vz)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429 unwind label %bb.cb

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429: ; preds = %bb.bx
  %i.wb = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.by unwind label %bb.cc     ; 8 uses

bb.by:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429
  %i.wc = load ptr, ptr %14, align 8
  %i.wd = getelementptr inbounds nuw [32 x i8], ptr %i.wc, i64 %indvars.iv3407
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %i.wd)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  store ptr %i.wb, ptr %.03032410, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 1096
  store ptr %i.sv, ptr %i.we, align 8
  %i.wf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc430 unwind label %bb.cc ; 4 uses

.noexc430:                                        ; preds = %bb.bz
  store i32 1, ptr %i.wf, align 8
  %i.wg = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znam(i64 noundef 1028) #26
          to label %.noexc431 unwind label %bb.cc ; 5 uses

.noexc431:                                        ; preds = %.noexc430
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %i.wg, i8 0, i64 1028, i1 false)
  store ptr %i.wg, ptr %i.wh, align 8
  %i.wi = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #26
          to label %.thread28.i unwind label %bb.cc ; 3 uses

.thread28.i:                                      ; preds = %.noexc431
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 2 uses
  store ptr null, ptr %i.wj, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  store ptr %i.wi, ptr %i.wk, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 1136
  store ptr %i.wf, ptr %i.wl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.uy, ptr %27, align 8
  store i32 1702060354, ptr %i.uy, align 8
  store i64 4, ptr %i.uz, align 8
  store i8 0, ptr %i.vm, align 4
  store i32 4, ptr %i.wg, align 4
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store i32 1702060354, ptr %i.wm, align 4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store i8 0, ptr %i.wn, align 4
  store i32 1, ptr %i.wi, align 8
  %i.wo = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %.thread28.i
  %i.wp = getelementptr inbounds nuw i8, ptr %.22392413, i64 68
  %i.wq = load i32, ptr %i.wp, align 4
  store i32 %i.wq, ptr %i.wo, align 4
  store ptr %i.wo, ptr %i.wj, align 8
  %.pre3415 = load i32, ptr %i.vy, align 4        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wb, i64 1104
  store i32 %.pre3415, ptr %i.wr, align 8
  %i.ws = zext i32 %.pre3415 to i64
  %i.wt = shl nuw nsw i64 %i.ws, 3
  %i.wu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wt) #26
          to label %bb.ca unwind label %bb.cc     ; 2 uses

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wb, i64 1112
  store ptr %i.wu, ptr %i.wv, align 8
  %i.ww = load i32, ptr %i.vy, align 4
  %i.wx = icmp sgt i32 %i.ww, 0
  br i1 %i.wx, label %.lr.ph2386, label %._crit_edge2387

._crit_edge2387:                                  ; preds = %._crit_edge2364, %bb.ca
  %.sroa.36.1.lcssa = phi ptr [ %.sroa.36.02400, %bb.ca ], [ %.sroa.36.2.lcssa, %._crit_edge2364 ] ; 4 uses
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.19.02401, %bb.ca ], [ %.sroa.19.2.lcssa, %._crit_edge2364 ]
  %.sroa.0729.1.lcssa = phi ptr [ %.sroa.0729.02402, %bb.ca ], [ %.sroa.0729.2.lcssa, %._crit_edge2364 ] ; 4 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.02403, %bb.ca ], [ %.sroa.18.3, %._crit_edge2364 ] ; 4 uses
  %.sroa.12760.1.lcssa = phi ptr [ %.sroa.12760.02404, %bb.ca ], [ %.sroa.12760.2, %._crit_edge2364 ]
  %.sroa.0753.1.lcssa = phi ptr [ %.sroa.0753.02405, %bb.ca ], [ %.sroa.0753.3, %._crit_edge2364 ] ; 4 uses
  %.sroa.18775.1.lcssa = phi ptr [ %.sroa.18775.02406, %bb.ca ], [ %.sroa.18775.4, %._crit_edge2364 ] ; 4 uses
  %.sroa.12772.1.lcssa = phi ptr [ %.sroa.12772.02407, %bb.ca ], [ %.sroa.12772.2, %._crit_edge2364 ]
  %.sroa.0765.1.lcssa = phi ptr [ %.sroa.0765.02408, %bb.ca ], [ %.sroa.0765.4, %._crit_edge2364 ] ; 4 uses
  %.1301.lcssa = phi i32 [ %.03002411, %bb.ca ], [ %.2302.lcssa, %._crit_edge2364 ]
  %.3297.lcssa = phi i32 [ %.22962412, %bb.ca ], [ %i.afj, %._crit_edge2364 ]
  %.1235.lcssa = phi i32 [ %.02342414, %bb.ca ], [ %.2.lcssa, %._crit_edge2364 ] ; 3 uses
  %indvars.iv.next3408 = add nuw nsw i64 %indvars.iv3407, 1 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.22392413, i64 76
  %i.wz = getelementptr inbounds nuw i8, ptr %.03032410, i64 8
  %i.xa = load ptr, ptr %i.a, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 204
  %i.xc = load i32, ptr %i.xb, align 4
  %i.xd = sext i32 %i.xc to i64
  %i.xe = icmp slt i64 %indvars.iv.next3408, %i.xd
  br i1 %i.xe, label %bb.bx, label %._crit_edge2417, !llvm.loop !193

bb.cb:                                            ; preds = %bb.bx
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cc:                                            ; preds = %.noexc431, %.noexc430, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cd:                                            ; preds = %bb.by
  %i.xh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wb, i64 noundef 1144) #24
  br label %.body661

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %.thread28.i
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %.body661

.lr.ph2386:                                       ; preds = %bb.ca, %._crit_edge2364
  %.12352384 = phi i32 [ %.2.lcssa, %._crit_edge2364 ], [ %.02342414, %bb.ca ] ; 2 uses
  %.22432383 = phi ptr [ %i.afh, %._crit_edge2364 ], [ %i.wa, %bb.ca ] ; 9 uses
  %.32972382 = phi i32 [ %i.afj, %._crit_edge2364 ], [ %.22962412, %bb.ca ] ; 2 uses
  %.13012381 = phi i32 [ %.2302.lcssa, %._crit_edge2364 ], [ %.03002411, %bb.ca ] ; 2 uses
  %.03062380 = phi ptr [ %i.afi, %._crit_edge2364 ], [ %i.wu, %bb.ca ] ; 2 uses
  %.03072379 = phi i32 [ %i.afg, %._crit_edge2364 ], [ 0, %bb.ca ]
  %.sroa.0765.12378 = phi ptr [ %.sroa.0765.4, %._crit_edge2364 ], [ %.sroa.0765.02408, %bb.ca ] ; 16 uses
  %.sroa.12772.12377 = phi ptr [ %.sroa.12772.2, %._crit_edge2364 ], [ %.sroa.12772.02407, %bb.ca ] ; 8 uses
  %.sroa.18775.12376 = phi ptr [ %.sroa.18775.4, %._crit_edge2364 ], [ %.sroa.18775.02406, %bb.ca ] ; 11 uses
  %.sroa.0753.12375 = phi ptr [ %.sroa.0753.3, %._crit_edge2364 ], [ %.sroa.0753.02405, %bb.ca ] ; 15 uses
  %.sroa.12760.12374 = phi ptr [ %.sroa.12760.2, %._crit_edge2364 ], [ %.sroa.12760.02404, %bb.ca ] ; 8 uses
  %.sroa.18.12373 = phi ptr [ %.sroa.18.3, %._crit_edge2364 ], [ %.sroa.18.02403, %bb.ca ] ; 10 uses
  %.sroa.0729.12372 = phi ptr [ %.sroa.0729.2.lcssa, %._crit_edge2364 ], [ %.sroa.0729.02402, %bb.ca ] ; 11 uses
  %.sroa.19.12371 = phi ptr [ %.sroa.19.2.lcssa, %._crit_edge2364 ], [ %.sroa.19.02401, %bb.ca ] ; 2 uses
  %.sroa.36.12370 = phi ptr [ %.sroa.36.2.lcssa, %._crit_edge2364 ], [ %.sroa.36.02400, %bb.ca ] ; 11 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.22432383, i64 76
  %i.xk = load i32, ptr %i.xj, align 1
  %i.xl = getelementptr inbounds nuw i8, ptr %.22432383, i64 72 ; 4 uses
  %i.xm = load i32, ptr %i.xl, align 1
  %i.xn = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_8Mesh_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.xk, i32 noundef %i.xm)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit unwind label %bb.cq
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acu, i64 4 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acu, i64 32 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acu, i64 8 ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4        ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acu, i64 36
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acu, i64 24 ; 2 uses
  %i.add = load float, ptr %i.adc, align 4        ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acu, i64 48 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acu, i64 12 ; 2 uses
  %i.adg = load float, ptr %i.adf, align 4
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acu, i64 52
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acu, i64 28 ; 2 uses
  %i.adj = load float, ptr %i.adi, align 4
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acu, i64 56 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acu, i64 44 ; 2 uses
  %i.adm = load float, ptr %i.adk, align 4        ; 2 uses
  %i.adn = load float, ptr %i.adl, align 4
  store float %i.adn, ptr %i.adk, align 4
  store float %i.adm, ptr %i.adl, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acu, i64 40
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.adq = load float, ptr %i.acx, align 4
  %i.adr = load <2 x float>, ptr %i.acu, align 4
  %i.ads = load <2 x float>, ptr %i.acw, align 4  ; 2 uses
  store float %i.adq, ptr %i.acw, align 4
  %i.adt = extractelement <2 x float> %i.ads, i64 0
  store float %i.adt, ptr %i.acx, align 4
  %i.adu = load <2 x float>, ptr %i.acy, align 4  ; 3 uses
  store float %i.ada, ptr %i.acy, align 4
  %i.adv = extractelement <2 x float> %i.adu, i64 0
  store float %i.adv, ptr %i.acz, align 4
  store float %i.add, ptr %i.adb, align 4
  %i.adw = extractelement <2 x float> %i.adu, i64 1
  store float %i.adw, ptr %i.adc, align 4
  %i.adx = load <2 x float>, ptr %i.ade, align 4  ; 3 uses
  store float %i.adg, ptr %i.ade, align 4
  %i.ady = extractelement <2 x float> %i.adx, i64 0
  store float %i.ady, ptr %i.adf, align 4
  store float %i.adj, ptr %i.adh, align 4
  %i.adz = extractelement <2 x float> %i.adx, i64 1
  store float %i.adz, ptr %i.adi, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.aea = load float, ptr %i.acv, align 4        ; 2 uses
  %i.aeb = load float, ptr %i.ado, align 4        ; 2 uses
  %i.aec = load float, ptr %i.adp, align 4        ; 2 uses
  %i.aed = insertelement <2 x float> poison, float %i.aeb, i64 0
  %i.aee = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aef = fmul <2 x float> %i.ads, %i.aee
  %i.aeg = insertelement <2 x float> poison, float %i.aea, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adr, <2 x float> %i.aeh, <2 x float> %i.aef)
  %i.aej = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aek = shufflevector <2 x float> %i.aej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ael = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adu, <2 x float> %i.aek, <2 x float> %i.aei)
  %i.aem = fadd <2 x float> %i.adx, %i.ael
  %i.aen = fmul float %i.add, %i.aeb
  %i.aeo = call float @llvm.fmuladd.f32(float %i.ada, float %i.aea, float %i.aen)
  %i.aep = call float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %i.aec, float %i.aeo)
  %i.aeq = fadd float %i.adm, %i.aep
  %i.aer = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0753.3, i64 %.03042300 ; 2 uses
  store <2 x float> %i.aem, ptr %i.aer, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  store float %i.aeq, ptr %.sroa.4.0..sroa_idx, align 4
  %i.aes = add nuw i64 %.03042300, 1              ; 2 uses
  %exitcond3390.not = icmp eq i64 %i.aes, %i.aat
  br i1 %exitcond3390.not, label %._crit_edge2302, label %.lr.ph2301, !llvm.loop !204

bb.cv:                                            ; preds = %.lr.ph2301
  %i.aet = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body661

bb.cw:                                            ; preds = %._crit_edge2302
  %i.aeu = zext i32 %.32972382 to i64
  %i.aev = load ptr, ptr %18, align 8
  %i.aew = getelementptr inbounds nuw [32 x i8], ptr %i.aev, i64 %i.aeu
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.acn, ptr noundef nonnull align 8 dereferenceable(32) %i.aew)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.acn, ptr %.03062380, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.acn, i64 1096
  store ptr %i.wb, ptr %i.aex, align 8
  %i.aey = load i32, ptr %i.xl, align 1           ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.acn, i64 1120
  store i32 %i.aey, ptr %i.aez, align 8
  %i.afa = zext i32 %i.aey to i64
  %i.afb = shl nuw nsw i64 %i.afa, 2
  %i.afc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afb) #26
          to label %bb.cy unwind label %bb.cz     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.afd = getelementptr inbounds nuw i8, ptr %i.acn, i64 1128
  store ptr %i.afc, ptr %i.afd, align 8
  %i.afe = load i32, ptr %i.xl, align 1
  %i.aff = icmp sgt i32 %i.afe, 0
  br i1 %i.aff, label %.lr.ph2363, label %._crit_edge2364

._crit_edge2364:                                  ; preds = %.loopexit828, %bb.cy
  %.sroa.36.2.lcssa = phi ptr [ %.sroa.36.12370, %bb.cy ], [ %.sroa.36.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.12371, %bb.cy ], [ %.sroa.19.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.0729.2.lcssa = phi ptr [ %.sroa.0729.12372, %bb.cy ], [ %.sroa.0729.3.lcssa, %.loopexit828 ] ; 2 uses
  %.2302.lcssa = phi i32 [ %.13012381, %bb.cy ], [ %i.bbf, %.loopexit828 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12352384, %bb.cy ], [ %.3.lcssa, %.loopexit828 ] ; 2 uses
  %i.afg = add nuw nsw i32 %.03072379, 1          ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.22432383, i64 112
  %i.afi = getelementptr inbounds nuw i8, ptr %.03062380, i64 8
  %i.afj = add i32 %.32972382, 1                  ; 2 uses
  %i.afk = load i32, ptr %i.vy, align 4
  %i.afl = icmp slt i32 %i.afg, %i.afk
  br i1 %i.afl, label %.lr.ph2386, label %._crit_edge2387, !llvm.loop !205

bb.cz:                                            ; preds = %bb.cx, %._crit_edge2302
  %i.afm = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.da:                                            ; preds = %bb.cw
  %i.afn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef 1144) #24
  br label %.body661

.lr.ph2363:                                       ; preds = %bb.cy, %.loopexit828
  %.22361 = phi i32 [ %.3.lcssa, %.loopexit828 ], [ %.12352384, %bb.cy ] ; 2 uses
  %.02462360 = phi ptr [ %i.bbe, %.loopexit828 ], [ %i.xn, %bb.cy ] ; 3 uses
  %.02922359 = phi i32 [ %i.bbd, %.loopexit828 ], [ 0, %bb.cy ]
  %.02932358 = phi ptr [ %i.bbg, %.loopexit828 ], [ %i.afc, %bb.cy ] ; 2 uses
  %.23022357 = phi i32 [ %i.bbf, %.loopexit828 ], [ %.13012381, %bb.cy ] ; 3 uses
  %.sroa.0729.22356 = phi ptr [ %.sroa.0729.3.lcssa, %.loopexit828 ], [ %.sroa.0729.12372, %bb.cy ] ; 5 uses
  %.sroa.19.22355 = phi ptr [ %.sroa.19.3.lcssa, %.loopexit828 ], [ %.sroa.19.12371, %bb.cy ] ; 2 uses
  %.sroa.36.22354 = phi ptr [ %.sroa.36.3.lcssa, %.loopexit828 ], [ %.sroa.36.12370, %bb.cy ] ; 3 uses
  store i32 %.23022357, ptr %.02932358, align 4
  %i.afo = load ptr, ptr %i.a, align 8
  %i.afp = getelementptr inbounds nuw i8, ptr %.02462360, i64 4
  %i.afq = load i32, ptr %i.afp, align 1
  %i.afr = getelementptr inbounds nuw i8, ptr %.02462360, i64 8 ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 1
  %i.aft = sext i32 %i.afs to i64
  %i.afu = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.aft
  %i.afv = load i16, ptr %i.afu, align 2
  %i.afw = sext i16 %i.afv to i64
  %i.afx = getelementptr inbounds [80 x i8], ptr %i.r, i64 %i.afw ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 68
  %i.afz = load i32, ptr %i.afy, align 1
  %i.aga = sitofp i32 %i.afz to float
  %i.agb = fdiv nnan float 1.000000e+00, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afx, i64 72
  %i.agd = load i32, ptr %i.agc, align 1
  %i.age = sitofp i32 %i.agd to float
  %i.agf = load ptr, ptr %20, align 8             ; 2 uses
  %i.agg = load ptr, ptr %i.vb, align 8
  %.not.i.i462 = icmp eq ptr %i.agg, %i.agf
  br i1 %.not.i.i462, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph2363
  store ptr %i.agf, ptr %i.vb, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit: ; preds = %.lr.ph2363, %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.agh = load i32, ptr %i.xq, align 1           ; 2 uses
  %.not3628 = icmp eq i32 %i.agh, 0
  br i1 %.not3628, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit
  %i.agi = sext i32 %i.agh to i64
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.agi)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit unwind label %bb.de

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, %bb.db
  %i.agj = sext i32 %i.afq to i64
  %i.agk = getelementptr inbounds i8, ptr %i.afo, i64 %i.agj ; 2 uses
  %i.agl = load ptr, ptr %22, align 8             ; 2 uses
  %i.agm = load ptr, ptr %i.vc, align 8
  %.not.i.i466 = icmp eq ptr %i.agm, %i.agl
  br i1 %.not.i.i466, label %_ZNSt6vectorIsSaIsEE5clearEv.exit, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit
  store ptr %i.agl, ptr %i.vc, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit

_ZNSt6vectorIsSaIsEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i
  %.not.i.i467 = icmp eq ptr %.sroa.19.22355, %.sroa.0729.22356
  %spec.select795 = select i1 %.not.i.i467, ptr %.sroa.19.22355, ptr %.sroa.0729.22356 ; 2 uses
  %i.agn = load ptr, ptr %i.uj, align 8
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.agn)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit unwind label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  %i.ago = landingpad { ptr, i32 }
          catch ptr null
  %i.agp = extractvalue { ptr, i32 } %i.ago, 0
  call void @__clang_call_terminate(ptr %i.agp) #27
  unreachable

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  store ptr null, ptr %i.uj, align 8
  store ptr %i.ui, ptr %i.uk, align 8
  store ptr %i.ui, ptr %i.ul, align 8
  store i64 0, ptr %i.um, align 8
  %i.agq = load ptr, ptr %i.uo, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.agq)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit unwind label %bb.dd

bb.dd:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  %i.agr = landingpad { ptr, i32 }
          catch ptr null
  %i.ags = extractvalue { ptr, i32 } %i.agr, 0
  call void @__clang_call_terminate(ptr %i.ags) #27
  unreachable

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  store ptr null, ptr %i.uo, align 8
  store ptr %i.un, ptr %i.up, align 8
  store ptr %i.un, ptr %i.uq, align 8
  store i64 0, ptr %i.ur, align 8
  %i.agt = load i16, ptr %i.agk, align 2          ; 2 uses
  %.not3292323 = icmp eq i16 %i.agt, 0
  br i1 %.not3292323, label %._crit_edge2329, label %.lr.ph2328

.lr.ph2328:                                       ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit, %.loopexit804
  %i.agu = phi i16 [ %i.atp, %.loopexit804 ], [ %i.agt, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.1291.lcssa.pn = phi ptr [ %i.aqe, %.loopexit804 ], [ %i.agk, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.32327 = phi i32 [ %i.ato, %.loopexit804 ], [ %.22361, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.sroa.0729.32326 = phi ptr [ %.sroa.0729.7, %.loopexit804 ], [ %.sroa.0729.22356, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 15 uses
  %.sroa.19.32325 = phi ptr [ %.sroa.19.7, %.loopexit804 ], [ %spec.select795, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.sroa.36.32324 = phi ptr [ %.sroa.36.7, %.loopexit804 ], [ %.sroa.36.22354, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 12 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.1291.lcssa.pn, i64 2
  %i.agw = icmp slt i16 %i.agu, 0
  %i.agx = call i16 @llvm.abs.i16(i16 %i.agu, i1 false)
  %spec.select = zext i16 %i.agx to i32
  %i.agy = load ptr, ptr %21, align 8             ; 2 uses
  %i.agz = load ptr, ptr %i.vd, align 8
  %.not.i.i468 = icmp eq ptr %i.agz, %i.agy
  br i1 %.not.i.i468, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469:     ; preds = %.lr.ph2328
  store ptr %i.agy, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader

_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader:   ; preds = %.lr.ph2328, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470

bb.de:                                            ; preds = %bb.db
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %.body661

_ZNSt6vectorIsSaIsEE5clearEv.exit470:             ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %.12882306 = phi i32 [ %i.aqd, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %spec.select, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 2 uses
  %.12912304 = phi ptr [ %i.aqe, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %i.agv, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 19 uses
  %i.ahb = load i16, ptr %.12912304, align 1      ; 7 uses
  %i.ahc = sext i16 %i.ahb to i64                 ; 2 uses
  %i.ahd = getelementptr inbounds i8, ptr %i.xs, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1
  %i.ahf = zext i8 %i.ahe to i32                  ; 3 uses
  %i.ahg = load ptr, ptr %20, align 8
  %i.ahh = getelementptr inbounds nuw [10 x i8], ptr %i.ahg, i64 %i.ahc ; 9 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8 ; 6 uses
  %i.ahj = load i16, ptr %i.ahi, align 2          ; 2 uses
  %i.ahk = icmp eq i16 %i.ahj, -1
  br i1 %i.ahk, label %bb.df, label %bb.do

bb.df:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470
  store i16 %i.ahb, ptr %i.ahh, align 2
  %i.ahl = getelementptr inbounds nuw i8, ptr %.12912304, i64 2
  %i.ahm = load i16, ptr %i.ahl, align 1
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahh, i64 2
  store i16 %i.ahm, ptr %i.ahn, align 2
  %i.aho = getelementptr inbounds nuw i8, ptr %.12912304, i64 4
  %i.ahp = load i16, ptr %i.aho, align 1
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4
  store i16 %i.ahp, ptr %i.ahq, align 2
  %i.ahr = getelementptr inbounds nuw i8, ptr %.12912304, i64 6
  %i.ahs = load i16, ptr %i.ahr, align 1
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahh, i64 6
  store i16 %i.ahs, ptr %i.aht, align 2
  %i.ahu = load ptr, ptr %i.vc, align 8
  %i.ahv = load ptr, ptr %22, align 8
  %i.ahw = ptrtoint ptr %i.ahu to i64
  %i.ahx = ptrtoint ptr %i.ahv to i64
  %i.ahy = sub i64 %i.ahw, %i.ahx
  %i.ahz = lshr exact i64 %i.ahy, 1
  %i.aia = trunc i64 %i.ahz to i16
  store i16 %i.aia, ptr %i.ahi, align 2
  %i.aib = load ptr, ptr %i.vc, align 8           ; 3 uses
  %i.aic = load ptr, ptr %i.vg, align 8
  %.not.i471 = icmp eq ptr %i.aib, %i.aic
  br i1 %.not.i471, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aid = load i16, ptr %.12912304, align 2
  store i16 %i.aid, ptr %i.aib, align 2
  %i.aie = load ptr, ptr %i.vc, align 8
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 2
  store ptr %i.aif, ptr %i.vc, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.dh:                                            ; preds = %bb.df
  %i.aig = load ptr, ptr %22, align 8             ; 4 uses
  %i.aih = ptrtoint ptr %i.aib to i64
  %i.aii = ptrtoint ptr %i.aig to i64
  %i.aij = sub i64 %i.aih, %i.aii                 ; 6 uses
  %i.aik = icmp eq i64 %i.aij, 9223372036854775806
  br i1 %i.aik, label %.invoke, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.dl, %bb.dh, %bb.dt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.cont unwind label %.loopexit.split-lp824

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dh
  %i.ail = ashr exact i64 %i.aij, 1               ; 3 uses
  %.sroa.speculated.i.i.i472 = call i64 @llvm.umax.i64(i64 %i.ail, i64 1)
  %i.aim = add i64 %.sroa.speculated.i.i.i472, %i.ail ; 2 uses
  %i.ain = icmp ult i64 %i.aim, %i.ail
  %i.aio = call i64 @llvm.umin.i64(i64 %i.aim, i64 4611686018427387903)
  %i.aip = select i1 %i.ain, i64 4611686018427387903, i64 %i.aio ; 3 uses
  %.not.i.i.i473 = icmp ne i64 %i.aip, 0
  call void @llvm.assume(i1 %.not.i.i.i473)
  %i.aiq = shl nuw nsw i64 %i.aip, 1
  %i.air = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiq) #26
          to label %.noexc476 unwind label %.loopexit823 ; 4 uses

.noexc476:                                        ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  %i.ais = getelementptr inbounds i8, ptr %i.air, i64 %i.aij ; 2 uses
  %i.ait = load i16, ptr %.12912304, align 2
  store i16 %i.ait, ptr %i.ais, align 2
  %i.aiu = icmp sgt i64 %i.aij, 0
  br i1 %i.aiu, label %bb.di, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

bb.di:                                            ; preds = %.noexc476
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.air, ptr align 2 %i.aig, i64 %i.aij, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i: ; preds = %bb.di, %.noexc476
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ais, i64 2
  %.not.i17.i.i474 = icmp eq ptr %i.aig, null
  br i1 %.not.i17.i.i474, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aig, i64 noundef %i.aij) #24
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i: ; preds = %bb.dj, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  store ptr %i.air, ptr %22, align 8
  store ptr %i.aiv, ptr %i.vc, align 8
  %i.aiw = getelementptr inbounds nuw [2 x i8], ptr %i.air, i64 %i.aip
  store ptr %i.aiw, ptr %i.vg, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

_ZNSt6vectorIsSaIsEE9push_backERKs.exit:          ; preds = %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, %bb.dg
  %i.aix = load ptr, ptr %i.vd, align 8           ; 3 uses
  %i.aiy = load ptr, ptr %i.vf, align 8
  %.not.i477 = icmp eq ptr %i.aix, %i.aiy
  br i1 %.not.i477, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  %i.aiz = load i16, ptr %i.ahi, align 2
  store i16 %i.aiz, ptr %i.aix, align 2
  %i.aja = load ptr, ptr %i.vd, align 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 2
  store ptr %i.ajb, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit486

bb.dl:                                            ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  %i.ajc = load ptr, ptr %21, align 8             ; 4 uses
  %i.ajd = ptrtoint ptr %i.aix to i64
  %i.aje = ptrtoint ptr %i.ajc to i64
  %i.ajf = sub i64 %i.ajd, %i.aje                 ; 6 uses
  %i.ajg = icmp eq i64 %i.ajf, 9223372036854775806
  br i1 %i.ajg, label %.invoke, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i478

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i478: ; preds = %bb.dl
  %i.ajh = ashr exact i64 %i.ajf, 1               ; 3 uses
  %.sroa.speculated.i.i.i479 = call i64 @llvm.umax.i64(i64 %i.ajh, i64 1)
  %i.aji = add i64 %.sroa.speculated.i.i.i479, %i.ajh ; 2 uses
  %i.ajj = icmp ult i64 %i.aji, %i.ajh
  %i.ajk = call i64 @llvm.umin.i64(i64 %i.aji, i64 4611686018427387903)
  %i.ajl = select i1 %i.ajj, i64 4611686018427387903, i64 %i.ajk ; 3 uses
  %.not.i.i.i480 = icmp ne i64 %i.ajl, 0
  call void @llvm.assume(i1 %.not.i.i.i480)
  %i.ajm = shl nuw nsw i64 %i.ajl, 1
  %i.ajn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajm) #26
          to label %.noexc485 unwind label %.loopexit823 ; 4 uses

.noexc485:                                        ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i478
  %i.ajo = getelementptr inbounds i8, ptr %i.ajn, i64 %i.ajf ; 2 uses
  %i.ajp = load i16, ptr %i.ahi, align 2
  store i16 %i.ajp, ptr %i.ajo, align 2
  %i.ajq = icmp sgt i64 %i.ajf, 0
  br i1 %i.ajq, label %bb.dm, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i481

bb.dm:                                            ; preds = %.noexc485
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ajn, ptr align 2 %i.ajc, i64 %i.ajf, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i481

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i481: ; preds = %bb.dm, %.noexc485
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 2
  %.not.i17.i.i482 = icmp eq ptr %i.ajc, null
  br i1 %.not.i17.i.i482, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i483, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i481
  call void @_ZdlPvm(ptr noundef nonnull %i.ajc, i64 noundef %i.ajf) #24
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i483

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i483: ; preds = %bb.dn, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i481
  store ptr %i.ajn, ptr %21, align 8
  store ptr %i.ajr, ptr %i.vd, align 8
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ajn, i64 %i.ajl
  store ptr %i.ajs, ptr %i.vf, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit486

end_hunk_1
begin_hunk_2_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a

.prol.preheader:                                  ; preds = %bb.gd, %.prol.preheader
  %i.awz = phi ptr [ %i.axb, %.prol.preheader ], [ %i.awu, %bb.gd ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.gd ]
  store i32 0, ptr %i.awz, align 8
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 8
  store ptr null, ptr %i.axa, align 8
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awz, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !214

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.gd
  %.unr = phi ptr [ %i.awu, %bb.gd ], [ %i.axb, %.prol.preheader ]
  %i.axc = icmp samesign ult i64 %i.awy, 7
  br i1 %i.axc, label %.loopexit834, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.axd = phi ptr [ %i.axt, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.axd, align 8
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  store ptr null, ptr %i.axe, align 8
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axd, i64 16
  store i32 0, ptr %i.axf, align 8
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axd, i64 24
  store ptr null, ptr %i.axg, align 8
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  store i32 0, ptr %i.axh, align 8
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axd, i64 40
  store ptr null, ptr %i.axi, align 8
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axd, i64 48
  store i32 0, ptr %i.axj, align 8
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axd, i64 56
  store ptr null, ptr %i.axk, align 8
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axd, i64 64
  store i32 0, ptr %i.axl, align 8
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axd, i64 72
  store ptr null, ptr %i.axm, align 8
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axd, i64 80
  store i32 0, ptr %i.axn, align 8
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axd, i64 88
  store ptr null, ptr %i.axo, align 8
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axd, i64 96
  store i32 0, ptr %i.axp, align 8
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axd, i64 104
  store ptr null, ptr %i.axq, align 8
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axd, i64 112
  store i32 0, ptr %i.axr, align 8
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axd, i64 120
  store ptr null, ptr %i.axs, align 8
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axd, i64 128 ; 2 uses
  %i.axu = icmp eq ptr %i.axt, %i.aww
  br i1 %i.axu, label %.loopexit834, label %.new

.loopexit834:                                     ; preds = %.prol.loopexit, %.new, %bb.gc
  %i.axv = getelementptr inbounds nuw i8, ptr %i.atq, i64 208 ; 2 uses
  store ptr %i.awu, ptr %i.axv, align 8
  %.not2430 = icmp eq i32 %i.avo, 0
  br i1 %.not2430, label %._crit_edge2341, label %.lr.ph2340

._crit_edge2341:                                  ; preds = %bb.ge, %.loopexit834
  %i.axw = load i64, ptr %i.ur, align 8           ; 2 uses
  %i.axx = trunc i64 %i.axw to i32
  %i.axy = getelementptr inbounds nuw i8, ptr %i.atq, i64 216
  store i32 %i.axx, ptr %i.axy, align 8
  %i.axz = shl i64 %i.axw, 3
  %i.aya = and i64 %i.axz, 34359738360
  %i.ayb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aya) #26
          to label %bb.gg unwind label %bb.ga     ; 2 uses

.lr.ph2340:                                       ; preds = %.loopexit834, %bb.ge
  %indvars.iv3404 = phi i64 [ %indvars.iv.next3405, %bb.ge ], [ 0, %.loopexit834 ] ; 3 uses
  %i.ayc = load ptr, ptr %i.axv, align 8
  %i.ayd = getelementptr inbounds nuw [16 x i8], ptr %i.ayc, i64 %indvars.iv3404 ; 2 uses
  store i32 3, ptr %i.ayd, align 8
  %i.aye = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #26
          to label %bb.ge unwind label %bb.gf     ; 2 uses

bb.ge:                                            ; preds = %.lr.ph2340
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8 ; 3 uses
  store ptr %i.aye, ptr %i.ayf, align 8
  %i.ayg = getelementptr inbounds nuw [6 x i8], ptr %.sroa.0729.3.lcssa, i64 %indvars.iv3404 ; 3 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 4
  %i.ayi = load i16, ptr %i.ayh, align 2
  %i.ayj = sext i16 %i.ayi to i32
  store i32 %i.ayj, ptr %i.aye, align 4
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayg, i64 2
  %i.ayl = load i16, ptr %i.ayk, align 2
  %i.aym = sext i16 %i.ayl to i32
  %i.ayn = load ptr, ptr %i.ayf, align 8
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 4
  store i32 %i.aym, ptr %i.ayo, align 4
  %i.ayp = load i16, ptr %i.ayg, align 2
  %i.ayq = sext i16 %i.ayp to i32
  %i.ayr = load ptr, ptr %i.ayf, align 8
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  store i32 %i.ayq, ptr %i.ays, align 4
  %indvars.iv.next3405 = add nuw nsw i64 %indvars.iv3404, 1 ; 2 uses
  %i.ayt = load i32, ptr %i.ats, align 8
  %i.ayu = zext i32 %i.ayt to i64
  %i.ayv = icmp samesign ult i64 %indvars.iv.next3405, %i.ayu
  br i1 %i.ayv, label %.lr.ph2340, label %._crit_edge2341, !llvm.loop !215

bb.gf:                                            ; preds = %.lr.ph2340
  %i.ayw = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.gg:                                            ; preds = %._crit_edge2341
  store ptr %i.ayb, ptr %i.atu, align 8
  %i.ayx = load ptr, ptr %i.up, align 8           ; 2 uses
  %.not8022349 = icmp eq ptr %i.ayx, %i.un
  br i1 %.not8022349, label %.loopexit828, label %.lr.ph2353

.lr.ph2353:                                       ; preds = %bb.gg, %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit
  %.02332351 = phi ptr [ %i.bau, %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit ], [ %i.ayb, %bb.gg ] ; 2 uses
  %.sroa.0680.02350 = phi ptr [ %i.bat, %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit ], [ %i.ayx, %bb.gg ] ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.sroa.0680.02350, i64 32
  %i.ayz = load i32, ptr %i.ayy, align 8          ; 3 uses
  %i.aza = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #26
          to label %bb.gh unwind label %bb.gq     ; 14 uses

bb.gh:                                            ; preds = %.lr.ph2353
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.aza, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.azb, align 4
  %i.azc = getelementptr inbounds nuw i8, ptr %i.aza, i64 1060
  %i.azd = getelementptr inbounds nuw i8, ptr %i.aza, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.azc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.azd, align 4
  %i.aze = getelementptr inbounds nuw i8, ptr %i.aza, i64 1080
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aza, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aze, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.azf, align 4
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aza, i64 1100
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aza, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.azg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.azh, align 4
  store ptr %i.aza, ptr %.02332351, align 8
  %i.azi = sext i32 %i.ayz to i64
  %i.azj = load ptr, ptr %i.va, align 8
  %i.azk = getelementptr inbounds nuw [160 x i8], ptr %i.azj, i64 %i.azi ; 2 uses
  %i.azl = load ptr, ptr %i.azk, align 8          ; 3 uses
  %i.azm = icmp eq ptr %i.aza, %i.azl
  br i1 %i.azm, label %_ZN8aiStringaSERKS_.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.azn = load i32, ptr %i.azl, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.azn, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.aza, align 4
  %i.azo = getelementptr inbounds nuw i8, ptr %i.aza, i64 4 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 4
  %i.azq = zext nneg i32 %spec.select.i to i64    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.azo, ptr nonnull align 4 %i.azp, i64 %i.azq, i1 false)
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azo, i64 %i.azq
  store i8 0, ptr %i.azr, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.gh, %bb.gi
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azk, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.azb, ptr noundef nonnull align 8 dereferenceable(64) %i.azs, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.azt = load ptr, ptr %i.uo, align 8           ; 2 uses
  %.not10.i.i.i.i553 = icmp eq ptr %i.azt, null
  br i1 %.not10.i.i.i.i553, label %.critedge.i562, label %.lr.ph.i.i.i.i554

.lr.ph.i.i.i.i554:                                ; preds = %_ZN8aiStringaSERKS_.exit, %.lr.ph.i.i.i.i554
  %.012.i.i.i.i555 = phi ptr [ %.1.i.i.i.i560, %.lr.ph.i.i.i.i554 ], [ %i.azt, %_ZN8aiStringaSERKS_.exit ] ; 6 uses
  %.0811.i.i.i.i556 = phi ptr [ %.19.i.i.i.i557, %.lr.ph.i.i.i.i554 ], [ %i.un, %_ZN8aiStringaSERKS_.exit ] ; 4 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i555, i64 32
  %i.azv = load i32, ptr %i.azu, align 4
  %i.azw = icmp slt i32 %i.azv, %i.ayz            ; 5 uses
  %.19.i.i.i.i557 = select i1 %i.azw, ptr %.0811.i.i.i.i556, ptr %.012.i.i.i.i555 ; 2 uses
  %.1.in.v.i.i.i.i558 = select i1 %i.azw, i64 24, i64 16
  %.1.in.i.i.i.i559 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i555, i64 %.1.in.v.i.i.i.i558
  %.1.i.i.i.i560 = load ptr, ptr %.1.in.i.i.i.i559, align 8 ; 2 uses
  %.not.i.i.i.i561 = icmp eq ptr %.1.i.i.i.i560, null
  br i1 %.not.i.i.i.i561, label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i554, !llvm.loop !216

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i554
  %i.azx = icmp eq ptr %.19.i.i.i.i557, %i.un
  br i1 %i.azx, label %.critedge.i562, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.azw, ptr %.0811.i.i.i.i556, ptr %.012.i.i.i.i555
  %.19.i.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.azy = load i32, ptr %.19.i.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.azz = icmp slt i32 %i.ayz, %i.azy
  br i1 %i.azz, label %.critedge.i562, label %bb.gk

.critedge.i562:                                   ; preds = %bb.gj, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i, %_ZN8aiStringaSERKS_.exit
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.102) #25
          to label %.noexc563 unwind label %.loopexit.split-lp830

.noexc563:                                        ; preds = %.critedge.i562
  unreachable

bb.gk:                                            ; preds = %bb.gj
  store i32 0, ptr %i.vh, align 8
  store ptr null, ptr %i.vi, align 8
  store ptr %i.vh, ptr %i.vj, align 8
  store ptr %i.vh, ptr %i.vk, align 8
  store i64 0, ptr %i.vl, align 8
  %.19.i.i.i.i557.sroa.sel725.sroa.sel728.v.sroa.sel.v.sroa.sel.v = select i1 %i.azw, ptr %.0811.i.i.i.i556, ptr %.012.i.i.i.i555
  %.19.i.i.i.i557.sroa.sel725.sroa.sel728.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i557.sroa.sel725.sroa.sel728.v.sroa.sel.v.sroa.sel.v, i64 56
  %i.baa = load ptr, ptr %.19.i.i.i.i557.sroa.sel725.sroa.sel728.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.not.i.i564 = icmp eq ptr %i.baa, null
  br i1 %.not.i.i564, label %_ZNSt3setIsSt4lessIsESaIsEEC2ERKS3_.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %29, ptr %2, align 8
  %i.bab = invoke noundef ptr @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIsESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull %i.baa, ptr noundef nonnull %i.vh, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i unwind label %.loopexit829 ; 4 uses

.noexc.i.i:                                       ; preds = %bb.gl, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.bad, %.noexc.i.i ], [ %i.bab, %bb.gl ] ; 3 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bad = load ptr, ptr %i.bac, align 8          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !217

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.vj, align 8
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gm, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bab, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.baf, %bb.gm ] ; 2 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.baf = load ptr, ptr %i.bae, align 8          ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.baf, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.gn, label %bb.gm, !llvm.loop !218

bb.gn:                                            ; preds = %bb.gm
  store ptr %.0.i.i7.i.i.i.i, ptr %i.vk, align 8
  %.19.i.i.i.i557.sroa.sel725.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.azw, ptr %.0811.i.i.i.i556, ptr %.012.i.i.i.i555
  %.19.i.i.i.i557.sroa.sel725.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i557.sroa.sel725.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 80
  %i.bag = load i64, ptr %.19.i.i.i.i557.sroa.sel725.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  store i64 %i.bag, ptr %i.vl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr %i.bab, ptr %i.vi, align 8
  br label %_ZNSt3setIsSt4lessIsESaIsEEC2ERKS3_.exit

_ZNSt3setIsSt4lessIsESaIsEEC2ERKS3_.exit:         ; preds = %bb.gn, %bb.gk
  %i.bah = phi ptr [ %i.bab, %bb.gn ], [ null, %bb.gk ]
  %i.bai = phi ptr [ %.0.i.i.i.i.i.i, %bb.gn ], [ %i.vh, %bb.gk ] ; 2 uses
  %i.baj = phi i64 [ %i.bag, %bb.gn ], [ 0, %bb.gk ] ; 2 uses
  %i.bak = trunc i64 %i.baj to i32
  %i.bal = getelementptr inbounds nuw i8, ptr %i.aza, i64 1028
  store i32 %i.bak, ptr %i.bal, align 4
  %i.bam = and i64 %i.baj, 4294967295             ; 2 uses
  %i.ban = shl nuw nsw i64 %i.bam, 3              ; 2 uses
  %i.bao = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ban) #26
          to label %bb.go unwind label %bb.gr     ; 3 uses

bb.go:                                            ; preds = %_ZNSt3setIsSt4lessIsESaIsEEC2ERKS3_.exit
  %i.bap = icmp eq i64 %i.bam, 0
  br i1 %i.bap, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.go
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bao, i8 0, i64 %i.ban, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.go
  %i.baq = getelementptr inbounds nuw i8, ptr %i.aza, i64 1048
  store ptr %i.bao, ptr %i.baq, align 8
  %.not8032343 = icmp eq ptr %i.bai, %i.vh
  br i1 %.not8032343, label %._crit_edge2348, label %.lr.ph2347

._crit_edge2348:                                  ; preds = %.lr.ph2347, %.loopexit
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef %i.bah)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.gp

bb.gp:                                            ; preds = %._crit_edge2348
  %i.bar = landingpad { ptr, i32 }
          catch ptr null
  %i.bas = extractvalue { ptr, i32 } %i.bar, 0
  call void @__clang_call_terminate(ptr %i.bas) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %._crit_edge2348
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.bat = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0680.02350) #28 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %.02332351, i64 8
  %.not802 = icmp eq ptr %i.bat, %i.un
  br i1 %.not802, label %.loopexit828, label %.lr.ph2353, !llvm.loop !219

bb.gq:                                            ; preds = %.lr.ph2353
  %i.bav = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit829:                                     ; preds = %bb.gl
  %lpad.loopexit831 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp830:                            ; preds = %.critedge.i562
  %lpad.loopexit.split-lp832 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gr:                                            ; preds = %_ZNSt3setIsSt4lessIsESaIsEEC2ERKS3_.exit
  %i.baw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIsSt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %29) #23
  br label %bb.gs

.lr.ph2347:                                       ; preds = %.loopexit, %.lr.ph2347
  %.02345 = phi ptr [ %i.bbc, %.lr.ph2347 ], [ %i.bao, %.loopexit ] ; 3 uses
  %.sroa.0674.02344 = phi ptr [ %i.bbb, %.lr.ph2347 ], [ %i.bai, %.loopexit ] ; 2 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %.sroa.0674.02344, i64 32
  %i.bay = load i16, ptr %i.bax, align 2
  %i.baz = sext i16 %i.bay to i32
  store i32 %i.baz, ptr %.02345, align 4
  %i.bba = getelementptr inbounds nuw i8, ptr %.02345, i64 4
  store float 1.000000e+00, ptr %i.bba, align 4
  %i.bbb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0674.02344) #28 ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %.02345, i64 8
  %.not803 = icmp eq ptr %i.bbb, %i.vh
  br i1 %.not803, label %._crit_edge2348, label %.lr.ph2347, !llvm.loop !220

bb.gs:                                            ; preds = %.loopexit829, %.loopexit.split-lp830, %bb.gr
  %.pn331 = phi { ptr, i32 } [ %i.baw, %bb.gr ], [ %lpad.loopexit831, %.loopexit829 ], [ %lpad.loopexit.split-lp832, %.loopexit.split-lp830 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %.body661

.loopexit828:                                     ; preds = %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit, %bb.gg, %bb.fw
  %i.bbd = add nuw nsw i32 %.02922359, 1          ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %.02462360, i64 20
  %i.bbf = add i32 %.23022357, 1                  ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %.02932358, i64 4
  %i.bbh = load i32, ptr %i.xl, align 1
  %i.bbi = icmp slt i32 %i.bbd, %i.bbh
  br i1 %i.bbi, label %.lr.ph2363, label %._crit_edge2364, !llvm.loop !221

bb.gt:                                            ; preds = %._crit_edge2417
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.gu unwind label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  invoke fastcc void @_ZN6Assimp3MDL8HalfLifeL26log_warning_limit_exceededILi20000EEEviRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %.1235.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.gv unwind label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  %i.bbj = load ptr, ptr %30, align 8             ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.bbl = icmp eq ptr %i.bbj, %i.bbk
  br i1 %i.bbl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %bb.gv
  %i.bbm = load i64, ptr %i.bbk, align 8
  %i.bbn = add i64 %i.bbm, 1
  call void @_ZdlPvm(ptr noundef %i.bbj, i64 noundef %i.bbn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %._crit_edge2417.thread

bb.gw:                                            ; preds = %bb.gt
  %i.bbo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571

bb.gx:                                            ; preds = %bb.gu
  %i.bbp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbq = load ptr, ptr %30, align 8             ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.bbs = icmp eq ptr %i.bbq, %i.bbr
  br i1 %i.bbs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569: ; preds = %bb.gx
  %i.bbt = load i64, ptr %i.bbr, align 8
  %i.bbu = add i64 %i.bbt, 1
  call void @_ZdlPvm(ptr noundef %i.bbq, i64 noundef %i.bbu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569, %bb.gw
  %.pn325 = phi { ptr, i32 } [ %i.bbo, %bb.gw ], [ %i.bbp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569 ], [ %i.bbp, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %.body661

._crit_edge2417.thread:                           ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %._crit_edge2417
  %.sroa.0765.0.lcssa3642 = phi ptr [ %.sroa.0765.1.lcssa, %._crit_edge2417 ], [ %.sroa.0765.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ null, %bb.bs ] ; 3 uses
  %.sroa.18775.0.lcssa3641 = phi ptr [ %.sroa.18775.1.lcssa, %._crit_edge2417 ], [ %.sroa.18775.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ null, %bb.bs ]
  %.sroa.0753.0.lcssa3640 = phi ptr [ %.sroa.0753.1.lcssa, %._crit_edge2417 ], [ %.sroa.0753.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ null, %bb.bs ] ; 3 uses
  %.sroa.18.0.lcssa3639 = phi ptr [ %.sroa.18.1.lcssa, %._crit_edge2417 ], [ %.sroa.18.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ null, %bb.bs ]
  %.sroa.0729.0.lcssa3638 = phi ptr [ %.sroa.0729.1.lcssa, %._crit_edge2417 ], [ %.sroa.0729.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ null, %bb.bs ] ; 3 uses
  %.sroa.36.0.lcssa3637 = phi ptr [ %.sroa.36.1.lcssa, %._crit_edge2417 ], [ %.sroa.36.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ null, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.bbv = load ptr, ptr %i.uo, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.bbv)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEED2Ev.exit unwind label %bb.gy

bb.gy:                                            ; preds = %._crit_edge2417.thread
end_hunk_2
