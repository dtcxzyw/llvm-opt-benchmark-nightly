inline.NumInlined: 2106
inline.NumDeleted: 832
begin_hunk_0_@_ZN6Assimp3ASE6Parser16ParseLV4MeshFaceERNS0_4FaceE:bb.a
  %i.gm = zext nneg i8 %narrow.i96.2 to i32
  %i.gn = add i32 %i.gl, %i.gm                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0812.i95.2, i64 1 ; 3 uses
  %i.gp = load i8, ptr %i.go, align 1             ; 2 uses
  %i.gq = add i8 %i.gp, -58
  %or.cond.i97.2 = icmp ult i8 %i.gq, -10
  br i1 %or.cond.i97.2, label %_ZN6Assimp9strtoul10EPKcPS1_.exit100.2, label %.lr.ph.i93.2, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit100.2:           ; preds = %.lr.ph.i93.2, %bb.bu
  %.08.lcssa.i98.2 = phi ptr [ %.0.lcssa.i.i81.2, %bb.bu ], [ %i.go, %.lr.ph.i93.2 ]
  %.0.lcssa.i99.2 = phi i32 [ 0, %bb.bu ], [ %i.gn, %.lr.ph.i93.2 ]
  store ptr %.08.lcssa.i98.2, ptr %0, align 8
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.019.2
  store i32 %.0.lcssa.i99.2, ptr %i.gr, align 4
  %.promoted = load ptr, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit100.2, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.gs = phi ptr [ %.promoted, %_ZN6Assimp9strtoul10EPKcPS1_.exit100.2 ], [ %i.gu, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 7 uses
  %i.gt = load i8, ptr %i.gs, align 1
  switch i8 %i.gt, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 42, label %bb.bv
    i8 13, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 10, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 12, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.critedge
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 2 uses
  store ptr %i.gu, ptr %0, align 8
  br label %.critedge, !llvm.loop !124

bb.bv:                                            ; preds = %.critedge
  %i.gv = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.200, ptr noundef nonnull dereferenceable(1) %i.gs, i64 noundef 15) #30
  %.not.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i, label %bb.bw, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader: ; preds = %.critedge.i.i182, %bb.bw, %bb.bv
  %.ph = phi i8 [ 42, %bb.bv ], [ 42, %bb.bw ], [ %i.nj, %.critedge.i.i182 ]
  %.ph383 = phi ptr [ %i.gs, %bb.bv ], [ %i.gs, %bb.bw ], [ %.0.lcssa.i.i183, %.critedge.i.i182 ]
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

bb.bw:                                            ; preds = %bb.bv
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 15 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1             ; 2 uses
  switch i8 %i.gx, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 10, label %bb.bx
    i8 0, label %bb.bx
    i8 12, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %.not11.i = icmp eq i8 %i.gx, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %storemerge.i101 = select i1 %.not11.i, ptr %i.gw, ptr %i.gy ; 4 uses
  store ptr %storemerge.i101, ptr %0, align 8
  %i.gz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ha = ptrtoint ptr %storemerge.i101 to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.hb, %i.ha
  %scevgep.i.i102 = getelementptr i8, ptr %storemerge.i101, i64 %i.hc
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %bb.bx
  %.0.i.i103 = phi ptr [ %storemerge.i101, %bb.bx ], [ %i.he, %bb.ca ] ; 4 uses
  %i.hd = load i8, ptr %.0.i.i103, align 1
  switch i8 %i.hd, label %.critedge.i.i105 [
    i8 32, label %bb.bz
    i8 9, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %.not.i.i104 = icmp eq ptr %.0.i.i103, %i.gz
  br i1 %.not.i.i104, label %.critedge.i.i105, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i.i103, i64 1
  br label %bb.by, !llvm.loop !34

.critedge.i.i105:                                 ; preds = %bb.bz, %bb.by
  %.0.lcssa.i.i106 = phi ptr [ %.0.i.i103, %bb.by ], [ %scevgep.i.i102, %bb.bz ] ; 3 uses
  store ptr %.0.lcssa.i.i106, ptr %0, align 8
  %i.hf = load i8, ptr %.0.lcssa.i.i106, align 1  ; 2 uses
  switch i8 %i.hf, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader [
    i8 13, label %bb.cb
    i8 10, label %bb.cb
    i8 0, label %bb.cb
    i8 12, label %bb.cb
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader: ; preds = %.critedge.i.i105
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 29
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107

bb.cb:                                            ; preds = %.critedge.i.i105, %.critedge.i.i105, %.critedge.i.i105, %.critedge.i.i105
  tail call void @_ZN6Assimp3ASE6Parser10LogWarningEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.201)
  %i.ht = tail call noundef zeroext i1 @_ZN6Assimp3ASE6Parser15SkipToNextTokenEv(ptr noundef nonnull align 8 dereferenceable(188) %0) ; 0 uses
  br label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107:      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader, %.critedge.i.i188
  %i.hu = phi i8 [ %i.hf, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader ], [ %.pre, %.critedge.i.i188 ] ; 2 uses
  %i.hv = phi ptr [ %.0.lcssa.i.i106, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader ], [ %.0.lcssa.i.i189, %.critedge.i.i188 ]
  %i.hw = add i8 %i.hu, -48
  %or.cond = icmp ult i8 %i.hw, 9
  br i1 %or.cond, label %.lr.ph.i109, label %bb.cv

.lr.ph.i109:                                      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107, %.lr.ph.i109
  %i.hx = phi i8 [ %i.ic, %.lr.ph.i109 ], [ %i.hu, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107 ]
  %.013.i110 = phi i32 [ %i.ia, %.lr.ph.i109 ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107 ]
  %.0812.i111 = phi ptr [ %i.ib, %.lr.ph.i109 ], [ %i.hv, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107 ]
  %i.hy = mul i32 %.013.i110, 10
  %narrow.i112 = add nsw i8 %i.hx, -48
  %i.hz = zext nneg i8 %narrow.i112 to i32
  %i.ia = add i32 %i.hy, %i.hz                    ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0812.i111, i64 1 ; 6 uses
  %i.ic = load i8, ptr %i.ib, align 1             ; 2 uses
  %i.id = add i8 %i.ic, -58
  %or.cond.i113 = icmp ult i8 %i.id, -10
  br i1 %or.cond.i113, label %_ZN6Assimp9strtoul10EPKcPS1_.exit117, label %.lr.ph.i109, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit117:             ; preds = %.lr.ph.i109
  store ptr %i.ib, ptr %0, align 8
  %i.ie = icmp ult i32 %i.ia, 32
  br i1 %i.ie, label %bb.cc, label %.noexc.i

bb.cc:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit117
  %i.if = load i8, ptr %i.ib, align 1             ; 2 uses
  %i.ig = add i8 %i.if, -58
  %or.cond11.i118 = icmp ult i8 %i.ig, -10
  br i1 %or.cond11.i118, label %_ZN6Assimp9strtoul10EPKcPS1_.exit127, label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %bb.cc, %.lr.ph.i119
  %i.ih = phi i8 [ %i.im, %.lr.ph.i119 ], [ %i.if, %bb.cc ]
  %.013.i120 = phi i32 [ %i.ik, %.lr.ph.i119 ], [ 0, %bb.cc ]
  %.0812.i121 = phi ptr [ %i.il, %.lr.ph.i119 ], [ %i.ib, %bb.cc ]
  %i.ii = mul i32 %.013.i120, 10
  %narrow.i122 = add nsw i8 %i.ih, -48
  %i.ij = zext nneg i8 %narrow.i122 to i32
  %i.ik = add i32 %i.ii, %i.ij                    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0812.i121, i64 1 ; 3 uses
  %i.im = load i8, ptr %i.il, align 1             ; 2 uses
  %i.in = add i8 %i.im, -58
  %or.cond.i123 = icmp ult i8 %i.in, -10
  br i1 %or.cond.i123, label %_ZN6Assimp9strtoul10EPKcPS1_.exit127, label %.lr.ph.i119, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit127:             ; preds = %.lr.ph.i119, %bb.cc
  %.08.lcssa.i124 = phi ptr [ %i.ib, %bb.cc ], [ %i.il, %.lr.ph.i119 ]
  %.0.lcssa.i125 = phi i32 [ 0, %bb.cc ], [ %i.ik, %.lr.ph.i119 ]
  store ptr %.08.lcssa.i124, ptr %0, align 8
  %i.io = shl nuw i32 1, %.0.lcssa.i125
  %i.ip = load i32, ptr %i.hr, align 4
  %i.iq = or i32 %i.ip, %i.io
  store i32 %i.iq, ptr %i.hr, align 4
  br label %bb.cv

.noexc.i:                                         ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.hg, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 39, ptr %i.b, align 8
  %i.ir = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.cr    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ir, ptr %4, align 8
  %i.is = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.is, ptr %i.hg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.ir, ptr noundef nonnull align 1 dereferenceable(39) @.str.202, i64 39, i1 false)
  store i64 %i.is, ptr %i.hh, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.is
  store i8 0, ptr %i.it, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.ia)
          to label %bb.cd unwind label %bb.cs

bb.cd:                                            ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.iu = load i64, ptr %i.hh, align 8, !noalias !125 ; 4 uses
  %i.iv = load i64, ptr %i.hi, align 8, !noalias !125 ; 4 uses
  %i.iw = add i64 %i.iv, %i.iu                    ; 2 uses
  %i.ix = load ptr, ptr %4, align 8, !noalias !125 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.hg
  br i1 %i.iy, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.iz = icmp ult i64 %i.iu, 16
  call void @llvm.assume(i1 %i.iz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cd
  %7 = load i64, ptr %i.hg, align 8, !noalias !125
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ce
  %8 = phi i64 [ %7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %bb.ce ]
  %i.ja = icmp ugt i64 %i.iw, %8
  br i1 %i.ja, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.jb = load ptr, ptr %5, align 8, !noalias !125
  %i.jc = icmp eq ptr %i.jb, %i.hj
  br i1 %i.jc, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

bb.cg:                                            ; preds = %bb.cf
  %i.jd = icmp ult i64 %i.iv, 16
  call void @llvm.assume(i1 %i.jd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.cf
  %9 = load i64, ptr %i.hj, align 8, !noalias !125
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %bb.cg
  %10 = phi i64 [ %9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %bb.cg ]
  %.not.i128 = icmp ugt i64 %i.iw, %10
  br i1 %.not.i128, label %bb.ci, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i
  %i.je = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ix, i64 noundef %i.iu)
          to label %.noexc129 unwind label %.loopexit ; 5 uses

.noexc129:                                        ; preds = %.critedge.i
  store ptr %i.hk, ptr %3, align 8, !alias.scope !125
  %i.jf = load ptr, ptr %i.je, align 8            ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 5 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a

bb.ch:                                            ; preds = %.noexc129
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jj = load i64, ptr %i.ji, align 8            ; 2 uses
  %i.jk = icmp ult i64 %i.jj, 16
  call void @llvm.assume(i1 %i.jk)
  %i.jl = add nuw nsw i64 %i.jj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.jg, i64 %i.jl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a: ; preds = %.noexc129
  store ptr %i.jf, ptr %3, align 8, !alias.scope !125
  %i.jm = load i64, ptr %i.jg, align 8
  store i64 %i.jm, ptr %i.hk, align 8, !alias.scope !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a, %bb.ch
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8
  store i64 %i.jo, ptr %i.hl, align 8, !alias.scope !125
  store ptr %i.jg, ptr %i.je, align 8
  store i64 0, ptr %i.jn, align 8
  store i8 0, ptr %i.jg, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.jp = sub i64 4611686018427387903, %i.iu
  %i.jq = icmp ult i64 %i.jp, %i.iv
  br i1 %i.jq, label %bb.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.213) #29
          to label %.noexc130 unwind label %.loopexit.split-lp

.noexc130:                                        ; preds = %bb.cj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ci
  %i.jr = load ptr, ptr %5, align 8, !noalias !125
  %i.js = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.jr, i64 noundef %i.iv)
          to label %.noexc131 unwind label %.loopexit ; 5 uses

.noexc131:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.hk, ptr %3, align 8, !alias.scope !125
  %i.jt = load ptr, ptr %i.js, align 8            ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 5 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %bb.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.ck:                                            ; preds = %.noexc131
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jx = load i64, ptr %i.jw, align 8            ; 2 uses
  %i.jy = icmp ult i64 %i.jx, 16
  call void @llvm.assume(i1 %i.jy)
  %i.jz = add nuw nsw i64 %i.jx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.ju, i64 %i.jz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %.noexc131
  store ptr %i.jt, ptr %3, align 8, !alias.scope !125
  %i.ka = load i64, ptr %i.ju, align 8
  store i64 %i.ka, ptr %i.hk, align 8, !alias.scope !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.ck
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8
  store i64 %i.kc, ptr %i.hl, align 8, !alias.scope !125
  store ptr %i.ju, ptr %i.js, align 8
  store i64 0, ptr %i.kb, align 8
  store i8 0, ptr %i.ju, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.hm, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.hm, ptr noundef nonnull align 1 dereferenceable(13) @.str.203, i64 13, i1 false)
  store i64 13, ptr %i.hn, align 8
  store i8 0, ptr %i.hs, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.kd = load i64, ptr %i.hl, align 8, !noalias !128 ; 4 uses
  %i.ke = add i64 %i.kd, 13                       ; 2 uses
  %i.kf = load ptr, ptr %3, align 8, !noalias !128 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.hk
  br i1 %i.kg, label %bb.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

bb.cl:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.kh = icmp ult i64 %i.kd, 16
  call void @llvm.assume(i1 %i.kh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %11 = load i64, ptr %i.hk, align 8, !noalias !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.cl
  %12 = phi i64 [ %11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ 15, %bb.cl ]
  %i.ki = icmp ule i64 %i.ke, %12
  %.not.i141 = icmp ugt i64 %i.ke, 15
  %or.cond357 = or i1 %i.ki, %.not.i141
  br i1 %or.cond357, label %bb.cn, label %.critedge.i142

.critedge.i142:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136
  %i.kj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.kf, i64 noundef %i.kd)
          to label %.noexc145 unwind label %.loopexit220 ; 5 uses

.noexc145:                                        ; preds = %.critedge.i142
  store ptr %i.ho, ptr %2, align 8, !alias.scope !128
  %i.kk = load ptr, ptr %i.kj, align 8            ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 5 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %bb.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

bb.cm:                                            ; preds = %.noexc145
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.ko = load i64, ptr %i.kn, align 8            ; 2 uses
  %i.kp = icmp ult i64 %i.ko, 16
  call void @llvm.assume(i1 %i.kp)
  %i.kq = add nuw nsw i64 %i.ko, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ho, ptr noundef nonnull align 8 dereferenceable(1) %i.kl, i64 %i.kq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.noexc145
  store ptr %i.kk, ptr %2, align 8, !alias.scope !128
  %i.kr = load i64, ptr %i.kl, align 8
  store i64 %i.kr, ptr %i.ho, align 8, !alias.scope !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.cm
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8
  store i64 %i.kt, ptr %i.hp, align 8, !alias.scope !128
  store ptr %i.kl, ptr %i.kj, align 8
  store i64 0, ptr %i.ks, align 8
  store i8 0, ptr %i.kl, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136
  %i.ku = add i64 %i.kd, -4611686018427387891
  %i.kv = icmp ult i64 %i.ku, 13
  br i1 %i.kv, label %bb.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i137

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.213) #29
          to label %.noexc146 unwind label %.loopexit.split-lp221

.noexc146:                                        ; preds = %bb.co
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i137: ; preds = %bb.cn
  %i.kw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.hm, i64 noundef 13)
          to label %.noexc147 unwind label %.loopexit220 ; 5 uses

.noexc147:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i137
  store ptr %i.ho, ptr %2, align 8, !alias.scope !128
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 5 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %bb.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i138

bb.cp:                                            ; preds = %.noexc147
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lb = load i64, ptr %i.la, align 8            ; 2 uses
  %i.lc = icmp ult i64 %i.lb, 16
  call void @llvm.assume(i1 %i.lc)
  %i.ld = add nuw nsw i64 %i.lb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ho, ptr noundef nonnull align 8 dereferenceable(1) %i.ky, i64 %i.ld, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i138: ; preds = %.noexc147
  store ptr %i.kx, ptr %2, align 8, !alias.scope !128
  %i.le = load i64, ptr %i.ky, align 8
  store i64 %i.le, ptr %i.ho, align 8, !alias.scope !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i138, %bb.cp
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8
  store i64 %i.lg, ptr %i.hp, align 8, !alias.scope !128
  store ptr %i.ky, ptr %i.kw, align 8
  store i64 0, ptr %i.lf, align 8
  store i8 0, ptr %i.ky, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144
  %i.lh = load ptr, ptr %6, align 8               ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.hm
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148
  %i.lj = load i64, ptr %i.hm, align 8
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ll = load ptr, ptr %3, align 8               ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.hk
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ln = load i64, ptr %i.hk, align 8
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  %i.lp = load ptr, ptr %5, align 8               ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.hj
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.lr = load i64, ptr %i.hj, align 8
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.lt = load ptr, ptr %4, align 8               ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.hg
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.lv = load i64, ptr %i.hg, align 8
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.lx = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ly = load i32, ptr %i.hq, align 8
  %i.lz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.ly, ptr noundef %i.lx) #27 ; 0 uses
  %i.ma = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc159 unwind label %bb.cu

.noexc159:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ma, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %.noexc159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.mb = load ptr, ptr %2, align 8               ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ho
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.cq
  %i.md = load i64, ptr %i.ho, align 8
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.cv

bb.cr:                                            ; preds = %.noexc.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.cs:                                            ; preds = %.noexc
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

.loopexit:                                        ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

.loopexit.split-lp:                               ; preds = %bb.cj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

.loopexit220:                                     ; preds = %.critedge.i142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i137
  %lpad.loopexit222 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp221:                            ; preds = %bb.co
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit.split-lp221, %.loopexit220
  %lpad.phi224 = phi { ptr, i32 } [ %lpad.loopexit222, %.loopexit220 ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp221 ] ; 2 uses
  %i.mh = load ptr, ptr %6, align 8               ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.hm
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.ct
end_hunk_0
