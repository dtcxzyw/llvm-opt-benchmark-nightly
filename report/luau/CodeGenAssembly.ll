Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/CodeGenAssembly?download=true
inline.NumInlined: 1079
inline.NumDeleted: 556
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Luau7CodeGenL15getAssemblyImplINS0_3X6418AssemblyBuilderX64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10LogBuilderERT_PK10lua_TValueNS0_15AssemblyOptionsEPNS0_13LoweringStatsE:bb.a
  %.not28.i = icmp eq i8 %i.fw, 0
  br i1 %.not28.i, label %._crit_edge.thread.i, label %bb.as

._crit_edge.thread.i:                             ; preds = %bb.ar, %._crit_edge.i, %.noexc
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.thread.i, %bb.ar
  %.str.13.sink.i = phi ptr [ @.str.13, %._crit_edge.thread.i ], [ @.str.12, %bb.ar ]
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull %.str.13.sink.i)
          to label %.noexc120 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.as
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eg, i64 164
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !88 ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  br i1 %i.fz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc120
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.14, i32 noundef %i.fy)
          to label %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_P5Proto.exit unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %.noexc120
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.4)
          to label %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_P5Proto.exit unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_P5Proto.exit: ; preds = %bb.at, %bb.au, %bb.ah, %bb.af
  %i.ga = load i8, ptr %i.cr, align 4, !tbaa !89, !range !60, !noundef !61
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.av, label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit

bb.av:                                            ; preds = %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_P5Proto.exit
  %i.gc = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = load ptr, ptr %i.cs, align 8, !tbaa !90 ; 4 uses
  br i1 %i.gd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_ZN4Luau7CodeGenL16logFunctionTypesERNS0_10LogBuilderERKNS0_10IrFunctionEPKPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.da, ptr noundef %i.ge)
          to label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.av
  %i.gf = load ptr, ptr %i.cu, align 8, !tbaa !92
  %i.gg = load ptr, ptr %i.ct, align 8, !tbaa !93 ; 2 uses
  %.not114.i.a = icmp eq ptr %i.gf, %i.gg
  br i1 %.not114.i.a, label %.preheader.i, label %.lr.ph.i123

.preheader.i:                                     ; preds = %.noexc138, %bb.ax
  %i.gh = load ptr, ptr %i.cx, align 8, !tbaa !92
  %i.gi = load ptr, ptr %i.cw, align 8, !tbaa !93 ; 2 uses
  %.not115.i = icmp eq ptr %i.gh, %i.gi
  br i1 %.not115.i, label %._crit_edge.i126, label %.lr.ph108.i

.lr.ph.i123:                                      ; preds = %bb.ax, %.noexc138
  %i.gj = phi ptr [ %i.hj, %.noexc138 ], [ %i.gg, %bb.ax ]
  %.065105.i = phi i64 [ %i.hh, %.noexc138 ], [ 0, %bb.ax ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.065105.i
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !46  ; 3 uses
  %i.gm = invoke noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.gl, ptr noundef %i.ge)
          to label %.noexc137 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc137:                                        ; preds = %.lr.ph.i123
  %.not73.i = icmp sgt i8 %i.gl, -1
  %i.gn = select i1 %.not73.i, ptr @.str.9, ptr @.str.15 ; 2 uses
  %.not74.i = icmp eq i8 %i.gl, 15
  br i1 %.not74.i, label %.noexc138, label %bb.ay

bb.ay:                                            ; preds = %.noexc137
  %i.go = load ptr, ptr %i.cv, align 8, !tbaa !174 ; 2 uses
  %i.gp = trunc i64 %.065105.i to i32             ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 144
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !29 ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph.i.i.i128, label %select.unfold.i124

.lr.ph.i.i.i128:                                  ; preds = %bb.ay
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !30
  %wide.trip.count.i.i.i129 = zext nneg i32 %i.gr to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %.lr.ph.i.i.i128
  %indvars.iv.i.i.i130 = phi i64 [ 0, %.lr.ph.i.i.i128 ], [ %indvars.iv.next.i.i.i131, %bb.bc ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %indvars.iv.i.i.i130 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !32
  %i.gy = zext i8 %i.gx to i32
  %i.gz = icmp eq i32 %i.gp, %i.gy
  br i1 %i.gz, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !33
  %.not.i.i.i133 = icmp sgt i32 %i.hb, 0
  br i1 %.not.i.i.i133, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !34
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next.i.i.i131 = add nuw nsw i64 %indvars.iv.i.i.i130, 1 ; 2 uses
  %exitcond.not.i.i.i132 = icmp eq i64 %indvars.iv.next.i.i.i131, %wide.trip.count.i.i.i129
  br i1 %exitcond.not.i.i.i132, label %select.unfold.i124, label %bb.az, !llvm.loop !0

_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134: ; preds = %bb.bb
  %i.hf = load ptr, ptr %i.gv, align 8, !tbaa !36 ; 2 uses
  %.not8.i.i135 = icmp eq ptr %i.hf, null
  br i1 %.not8.i.i135, label %select.unfold.i124, label %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit.i136

_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit.i136: ; preds = %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.16, i32 noundef %i.gp, ptr noundef %i.gm, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.hg)
          to label %.noexc138 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold.i124:                               ; preds = %bb.bc, %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134, %bb.ay
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.17, i32 noundef %i.gp, ptr noundef %i.gm, ptr noundef nonnull %i.gn)
          to label %.noexc138 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %select.unfold.i124, %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit.i136, %.noexc137
  %i.hh = add nuw i64 %.065105.i, 1               ; 2 uses
  %i.hi = load ptr, ptr %i.cu, align 8, !tbaa !92
  %i.hj = load ptr, ptr %i.ct, align 8, !tbaa !93 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp ult i64 %i.hh, %i.hm
  br i1 %i.hn, label %.lr.ph.i123, label %.preheader.i, !llvm.loop !377

._crit_edge.i126:                                 ; preds = %.noexc141, %.preheader.i
  %i.ho = load ptr, ptr %i.cy, align 8, !tbaa !175 ; 2 uses
  %i.hp = load ptr, ptr %i.cz, align 8, !tbaa !175 ; 2 uses
  %.not100109.i = icmp eq ptr %i.ho, %i.hp
  br i1 %.not100109.i, label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit, label %.lr.ph112.i

.lr.ph108.i:                                      ; preds = %.preheader.i, %.noexc141
  %i.hq = phi ptr [ %i.if, %.noexc141 ], [ %i.gi, %.preheader.i ]
  %.0106.i = phi i64 [ %i.id, %.noexc141 ], [ 0, %.preheader.i ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.0106.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !46  ; 3 uses
  %i.ht = invoke noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.hs, ptr noundef %i.ge)
          to label %.noexc140 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc140:                                        ; preds = %.lr.ph108.i
  %.not70.i = icmp sgt i8 %i.hs, -1
  %i.hu = select i1 %.not70.i, ptr @.str.9, ptr @.str.15 ; 2 uses
  %.not71.i = icmp eq i8 %i.hs, 15
  br i1 %.not71.i, label %.noexc141, label %bb.bd

bb.bd:                                            ; preds = %.noexc140
  %i.hv = load ptr, ptr %i.cv, align 8, !tbaa !174
  %i.hw = trunc i64 %.0106.i to i32               ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !37 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i125, label %select.unfold94.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %sext.i = shl i64 %.0106.i, 32
  %i.hz = ashr exact i64 %sext.i, 29
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !38 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ib, null
  br i1 %.not7.i.i, label %select.unfold94.i, label %_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit.i

_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit.i: ; preds = %bb.be
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.18, i32 noundef %i.hw, ptr noundef %i.ht, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.ic)
          to label %.noexc141 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold94.i:                                ; preds = %bb.be, %bb.bd
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.19, i32 noundef %i.hw, ptr noundef %i.ht, ptr noundef nonnull %i.hu)
          to label %.noexc141 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %select.unfold94.i, %_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit.i, %.noexc140
  %i.id = add nuw i64 %.0106.i, 1                 ; 2 uses
  %i.ie = load ptr, ptr %i.cx, align 8, !tbaa !92
  %i.if = load ptr, ptr %i.cw, align 8, !tbaa !93 ; 2 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = icmp ult i64 %i.id, %i.ii
  br i1 %i.ij, label %.lr.ph108.i, label %._crit_edge.i126, !llvm.loop !378

.lr.ph112.i:                                      ; preds = %._crit_edge.i126, %.noexc144
  %.sroa.089.0110.i = phi ptr [ %i.jn, %.noexc144 ], [ %i.ho, %._crit_edge.i126 ] ; 7 uses
  %i.ik = load i8, ptr %.sroa.089.0110.i, align 4, !tbaa !177
  %i.il = invoke noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.ik, ptr noundef %i.ge)
          to label %.noexc143 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc143:                                        ; preds = %.lr.ph112.i
  %i.im = load i8, ptr %.sroa.089.0110.i, align 4, !tbaa !177
  %.not.i127 = icmp sgt i8 %i.im, -1
  %i.in = select i1 %.not.i127, ptr @.str.9, ptr @.str.15 ; 2 uses
  %i.io = load ptr, ptr %i.cv, align 8, !tbaa !174 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !178 ; 2 uses
  %i.ir = zext i8 %i.iq to i32                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 8
  %i.it = load i32, ptr %i.is, align 4, !tbaa !179 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 144
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !29 ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.i.i79.i, label %select.unfold97.i

.lr.ph.i.i79.i:                                   ; preds = %.noexc143
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !30
  %wide.trip.count.i.i80.i = zext nneg i32 %i.iv to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bi, %.lr.ph.i.i79.i
  %indvars.iv.i.i81.i = phi i64 [ 0, %.lr.ph.i.i79.i ], [ %indvars.iv.next.i.i82.i, %bb.bi ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %indvars.iv.i.i81.i ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !32
  %i.jc = icmp eq i8 %i.iq, %i.jb
  br i1 %i.jc, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !33
  %.not.i.i84.not.i = icmp sgt i32 %i.it, %i.je
  br i1 %.not.i.i84.not.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !34
  %.not101.i = icmp sgt i32 %i.it, %i.jg
  br i1 %.not101.i, label %bb.bi, label %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %indvars.iv.next.i.i82.i = add nuw nsw i64 %indvars.iv.i.i81.i, 1 ; 2 uses
  %exitcond.not.i.i83.i = icmp eq i64 %indvars.iv.next.i.i82.i, %wide.trip.count.i.i80.i
  br i1 %exitcond.not.i.i83.i, label %select.unfold97.i, label %bb.bf, !llvm.loop !0

_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i: ; preds = %bb.bh
  %i.jh = load ptr, ptr %i.iz, align 8, !tbaa !36 ; 2 uses
  %.not8.i86.i = icmp eq ptr %i.jh, null
  br i1 %.not8.i86.i, label %select.unfold97.i, label %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88.i

_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88.i: ; preds = %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !180
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.20, i32 noundef %i.ir, ptr noundef %i.il, ptr noundef nonnull %i.in, i32 noundef %i.jk, i32 noundef %i.it, ptr noundef nonnull %i.ji)
          to label %.noexc144 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold97.i:                                ; preds = %bb.bi, %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i, %.noexc143
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !180
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.21, i32 noundef %i.ir, ptr noundef %i.il, ptr noundef nonnull %i.in, i32 noundef %i.jm, i32 noundef %i.it)
          to label %.noexc144 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %select.unfold97.i, %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 12 ; 2 uses
  %.not100.i = icmp eq ptr %i.jn, %i.hp
  br i1 %.not100.i, label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit, label %.lr.ph112.i

_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit: ; preds = %.noexc144, %._crit_edge.i126, %bb.aw, %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_P5Proto.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !182
  %i.jo = invoke noundef zeroext i1 @_ZN4Luau7CodeGen13lowerFunctionINS0_3X6418AssemblyBuilderX64EEEbRNS0_9IrBuilderEPNS0_10LogBuilderERT_RNS0_13ModuleHelpersEP5ProtoNS0_15AssemblyOptionsEPNS0_13LoweringStatsERNS0_24CodeGenCompilationResultE(ptr noundef nonnull align 8 dereferenceable(1056) %7, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull align 4 dereferenceable(56) %6, ptr noundef %i.eg, ptr noundef nonnull byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit
  br i1 %i.jo, label %bb.br, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jp = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.jr = load i8, ptr %i.bt, align 1, !tbaa !59, !range !60, !noundef !61
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.1)
          to label %bb.bq unwind label %bb.bn

bb.bn:                                            ; preds = %bb.cu, %bb.cs, %bb.bs, %bb.br, %bb.bp, %bb.bm, %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3X6418AssemblyBuilderX64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bo:                                            ; preds = %bb.bk
  %i.ju = load i8, ptr %i.db, align 8, !tbaa !199, !range !60, !noundef !61
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.1)
          to label %bb.bq unwind label %bb.bn

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.bl, %bb.bm
  br i1 %.not95, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.bq
  %i.jw = load i32, ptr %i.dc, align 4, !tbaa !200
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.dc, align 4, !tbaa !200
  br label %bb.bu

bb.br:                                            ; preds = %bb.bj
  %i.jy = invoke noundef i32 @_ZNK4Luau7CodeGen3X6418AssemblyBuilderX6411getCodeSizeEv(ptr noundef nonnull align 8 dereferenceable(268) %2)
          to label %bb.bs unwind label %bb.bn

bb.bs:                                            ; preds = %bb.br
  %i.jz = invoke noundef i32 @_ZNK4Luau7CodeGen3X6418AssemblyBuilderX6419getInstructionCountEv(ptr noundef nonnull align 8 dereferenceable(268) %2)
          to label %bb.bt unwind label %bb.bn

bb.bt:                                            ; preds = %bb.bs
  %i.ka = sub i32 %i.jy, %i.eh
  %i.kb = sub i32 %i.jz, %i.ei
  br i1 %.not95, label %.critedge, label %bb.bu

bb.bu:                                            ; preds = %.thread, %bb.bt
  %.015 = phi i32 [ 0, %.thread ], [ %i.kb, %bb.bt ]
  %.07514 = phi i32 [ 0, %.thread ], [ %i.ka, %bb.bt ]
  %i.kc = load i32, ptr %i.dd, align 8, !tbaa !201
  %i.kd = and i32 %i.kc, 1
  %.not99 = icmp eq i32 %i.kd, 0
  br i1 %.not99, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %i.de, ptr %8, align 8, !tbaa !43
  store i64 0, ptr %i.df, align 8, !tbaa !45
  store i8 0, ptr %i.de, align 8, !tbaa !46
  store i32 -1, ptr %i.dg, align 8, !tbaa !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !85 ; 2 uses
  %.not100 = icmp eq ptr %i.kf, null
  br i1 %.not100, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.kh = getelementptr inbounds nuw i8, ptr %i.eg, i64 168
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !209
  %i.kj = load i32, ptr %i.dj, align 8, !tbaa !209
  %i.kk = icmp eq i32 %i.ki, %i.kj
  %.str.2..str.3 = select i1 %i.kk, ptr @.str.2, ptr @.str.3
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.kl = phi ptr [ %i.kg, %bb.bw ], [ %.str.2..str.3, %bb.bx ] ; 2 uses
  %i.km = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kl) #20
  %i.kn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.kl, i64 noundef %i.km)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.by
  %i.ko = getelementptr inbounds nuw i8, ptr %i.eg, i64 164
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !88
  store i32 %i.kp, ptr %i.dg, align 8, !tbaa !208
  %i.kq = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !210
  %i.ks = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !211 ; 2 uses
  %.not.i147 = icmp eq i32 %i.kt, 0
  br i1 %.not.i147, label %_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %.noexc150
  %.08.i = phi i32 [ %i.la, %.noexc150 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %.067.i = phi i32 [ %i.kz, %.noexc150 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.ku = zext i32 %.08.i to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !39
  %i.kx = and i32 %i.kw, 255
  %i.ky = invoke noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef %i.kx)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %.lr.ph.i148
  %i.kz = add i32 %.067.i, 1                      ; 2 uses
  %i.la = add i32 %i.ky, %.08.i                   ; 2 uses
  %i.lb = icmp ult i32 %i.la, %i.kt
  br i1 %i.lb, label %.lr.ph.i148, label %_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit, !llvm.loop !1

_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit:  ; preds = %.noexc150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.06.lcssa.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.kz, %.noexc150 ]
  store i32 %.06.lcssa.i, ptr %i.dh, align 4, !tbaa !212
  %i.lc = load ptr, ptr %i.dl, align 8, !tbaa !213
  %i.ld = load ptr, ptr %i.dk, align 8, !tbaa !214
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = lshr exact i64 %i.lg, 6
  %i.li = trunc i64 %i.lh to i32
  store i32 %i.li, ptr %i.dm, align 8, !tbaa !215
  store i32 %.07514, ptr %i.dn, align 8, !tbaa !216
  store i32 %.015, ptr %i.do, align 4, !tbaa !217
  %i.lj = load i32, ptr %i.dd, align 8, !tbaa !201
  %i.lk = and i32 %i.lj, 2
  %.not101 = icmp eq i32 %i.lk, 0
  br i1 %.not101, label %bb.cl, label %bb.bz

bb.bz:                                            ; preds = %_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN4Luau7CodeGen23FunctionBytecodeSummary9fromProtoEP5Protoj(ptr dead_on_unwind nonnull writable sret(%"class.Luau::CodeGen::FunctionBytecodeSummary") align 8 %9, ptr noundef %i.eg, i32 noundef 0)
          to label %bb.ca unwind label %bb.cj

bb.ca:                                            ; preds = %bb.bz
  %i.ll = load ptr, ptr %i.dp, align 8, !tbaa !218 ; 4 uses
  %i.lm = load ptr, ptr %i.dq, align 8, !tbaa !219 ; 6 uses
  %i.ln = load ptr, ptr %i.dr, align 8, !tbaa !220
  %.not.i151 = icmp eq ptr %i.lm, %i.ln
  br i1 %.not.i151, label %bb.cg, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !221 ; 2 uses
  %i.lq = load ptr, ptr %i.ll, align 8, !tbaa !222 ; 2 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.lp, %i.lq
  br i1 %.not.i.i.i.i.i, label %.noexc153, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lu = icmp ugt i64 %i.lt, 9223372036854775804
  br i1 %i.lu, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !223

.noexc.i.i.i:                                     ; preds = %bb.cc
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGenL15getAssemblyImplINS0_3A6418AssemblyBuilderA64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10LogBuilderERT_PK10lua_TValueNS0_15AssemblyOptionsEPNS0_13LoweringStatsE:bb.a
  %.not28.i = icmp eq i8 %i.fy, 0
  br i1 %.not28.i, label %._crit_edge.thread.i, label %bb.as

._crit_edge.thread.i:                             ; preds = %bb.ar, %._crit_edge.i, %.noexc
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.thread.i, %bb.ar
  %.str.13.sink.i = phi ptr [ @.str.13, %._crit_edge.thread.i ], [ @.str.12, %bb.ar ]
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull %.str.13.sink.i)
          to label %.noexc120 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ei, i64 164
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !88 ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1
  br i1 %i.gb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc120
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.14, i32 noundef %i.ga)
          to label %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_P5Proto.exit unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %.noexc120
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.4)
          to label %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_P5Proto.exit unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_P5Proto.exit: ; preds = %bb.at, %bb.au, %bb.ah, %bb.af
  %i.gc = load i8, ptr %i.ct, align 4, !tbaa !89, !range !60, !noundef !61
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.av, label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit

bb.av:                                            ; preds = %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_P5Proto.exit
  %i.ge = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = load ptr, ptr %i.cu, align 8, !tbaa !90 ; 4 uses
  br i1 %i.gf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_ZN4Luau7CodeGenL16logFunctionTypesERNS0_10LogBuilderERKNS0_10IrFunctionEPKPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.dc, ptr noundef %i.gg)
          to label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.av
  %i.gh = load ptr, ptr %i.cw, align 8, !tbaa !92
  %i.gi = load ptr, ptr %i.cv, align 8, !tbaa !93 ; 2 uses
  %.not114.i.a = icmp eq ptr %i.gh, %i.gi
  br i1 %.not114.i.a, label %.preheader.i, label %.lr.ph.i123

.preheader.i:                                     ; preds = %.noexc138, %bb.ax
  %i.gj = load ptr, ptr %i.cz, align 8, !tbaa !92
  %i.gk = load ptr, ptr %i.cy, align 8, !tbaa !93 ; 2 uses
  %.not115.i = icmp eq ptr %i.gj, %i.gk
  br i1 %.not115.i, label %._crit_edge.i126, label %.lr.ph108.i

.lr.ph.i123:                                      ; preds = %bb.ax, %.noexc138
  %i.gl = phi ptr [ %i.hl, %.noexc138 ], [ %i.gi, %bb.ax ]
  %.065105.i = phi i64 [ %i.hj, %.noexc138 ], [ 0, %bb.ax ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.065105.i
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !46  ; 3 uses
  %i.go = invoke noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.gn, ptr noundef %i.gg)
          to label %.noexc137 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc137:                                        ; preds = %.lr.ph.i123
  %.not73.i = icmp sgt i8 %i.gn, -1
  %i.gp = select i1 %.not73.i, ptr @.str.9, ptr @.str.15 ; 2 uses
  %.not74.i = icmp eq i8 %i.gn, 15
  br i1 %.not74.i, label %.noexc138, label %bb.ay

bb.ay:                                            ; preds = %.noexc137
  %i.gq = load ptr, ptr %i.cx, align 8, !tbaa !174 ; 2 uses
  %i.gr = trunc i64 %.065105.i to i32             ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 144
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !29 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.i.i.i128, label %select.unfold.i124

.lr.ph.i.i.i128:                                  ; preds = %bb.ay
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 72
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !30
  %wide.trip.count.i.i.i129 = zext nneg i32 %i.gt to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %.lr.ph.i.i.i128
  %indvars.iv.i.i.i130 = phi i64 [ 0, %.lr.ph.i.i.i128 ], [ %indvars.iv.next.i.i.i131, %bb.bc ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %indvars.iv.i.i.i130 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !32
  %i.ha = zext i8 %i.gz to i32
  %i.hb = icmp eq i32 %i.gr, %i.ha
  br i1 %i.hb, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !33
  %.not.i.i.i133 = icmp sgt i32 %i.hd, 0
  br i1 %.not.i.i.i133, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !34
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next.i.i.i131 = add nuw nsw i64 %indvars.iv.i.i.i130, 1 ; 2 uses
  %exitcond.not.i.i.i132 = icmp eq i64 %indvars.iv.next.i.i.i131, %wide.trip.count.i.i.i129
  br i1 %exitcond.not.i.i.i132, label %select.unfold.i124, label %bb.az, !llvm.loop !0

_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134: ; preds = %bb.bb
  %i.hh = load ptr, ptr %i.gx, align 8, !tbaa !36 ; 2 uses
  %.not8.i.i135 = icmp eq ptr %i.hh, null
  br i1 %.not8.i.i135, label %select.unfold.i124, label %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit.i136

_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit.i136: ; preds = %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.16, i32 noundef %i.gr, ptr noundef %i.go, ptr noundef nonnull %i.gp, ptr noundef nonnull %i.hi)
          to label %.noexc138 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold.i124:                               ; preds = %bb.bc, %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i.i134, %bb.ay
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.17, i32 noundef %i.gr, ptr noundef %i.go, ptr noundef nonnull %i.gp)
          to label %.noexc138 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %select.unfold.i124, %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit.i136, %.noexc137
  %i.hj = add nuw i64 %.065105.i, 1               ; 2 uses
  %i.hk = load ptr, ptr %i.cw, align 8, !tbaa !92
  %i.hl = load ptr, ptr %i.cv, align 8, !tbaa !93 ; 2 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = icmp ult i64 %i.hj, %i.ho
  br i1 %i.hp, label %.lr.ph.i123, label %.preheader.i, !llvm.loop !386

._crit_edge.i126:                                 ; preds = %.noexc141, %.preheader.i
  %i.hq = load ptr, ptr %i.da, align 8, !tbaa !175 ; 2 uses
  %i.hr = load ptr, ptr %i.db, align 8, !tbaa !175 ; 2 uses
  %.not100109.i = icmp eq ptr %i.hq, %i.hr
  br i1 %.not100109.i, label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit, label %.lr.ph112.i

.lr.ph108.i:                                      ; preds = %.preheader.i, %.noexc141
  %i.hs = phi ptr [ %i.ih, %.noexc141 ], [ %i.gk, %.preheader.i ]
  %.0106.i = phi i64 [ %i.if, %.noexc141 ], [ 0, %.preheader.i ] ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.0106.i
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !46  ; 3 uses
  %i.hv = invoke noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.hu, ptr noundef %i.gg)
          to label %.noexc140 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc140:                                        ; preds = %.lr.ph108.i
  %.not70.i = icmp sgt i8 %i.hu, -1
  %i.hw = select i1 %.not70.i, ptr @.str.9, ptr @.str.15 ; 2 uses
  %.not71.i = icmp eq i8 %i.hu, 15
  br i1 %.not71.i, label %.noexc141, label %bb.bd

bb.bd:                                            ; preds = %.noexc140
  %i.hx = load ptr, ptr %i.cx, align 8, !tbaa !174
  %i.hy = trunc i64 %.0106.i to i32               ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !37 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i125, label %select.unfold94.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %sext.i = shl i64 %.0106.i, 32
  %i.ib = ashr exact i64 %sext.i, 29
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !38 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.id, null
  br i1 %.not7.i.i, label %select.unfold94.i, label %_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit.i

_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit.i: ; preds = %bb.be
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.18, i32 noundef %i.hy, ptr noundef %i.hv, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.ie)
          to label %.noexc141 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold94.i:                                ; preds = %bb.be, %bb.bd
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.19, i32 noundef %i.hy, ptr noundef %i.hv, ptr noundef nonnull %i.hw)
          to label %.noexc141 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %select.unfold94.i, %_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit.i, %.noexc140
  %i.if = add nuw i64 %.0106.i, 1                 ; 2 uses
  %i.ig = load ptr, ptr %i.cz, align 8, !tbaa !92
  %i.ih = load ptr, ptr %i.cy, align 8, !tbaa !93 ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = icmp ult i64 %i.if, %i.ik
  br i1 %i.il, label %.lr.ph108.i, label %._crit_edge.i126, !llvm.loop !387

.lr.ph112.i:                                      ; preds = %._crit_edge.i126, %.noexc144
  %.sroa.089.0110.i = phi ptr [ %i.jp, %.noexc144 ], [ %i.hq, %._crit_edge.i126 ] ; 7 uses
  %i.im = load i8, ptr %.sroa.089.0110.i, align 4, !tbaa !177
  %i.in = invoke noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.im, ptr noundef %i.gg)
          to label %.noexc143 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc143:                                        ; preds = %.lr.ph112.i
  %i.io = load i8, ptr %.sroa.089.0110.i, align 4, !tbaa !177
  %.not.i127 = icmp sgt i8 %i.io, -1
  %i.ip = select i1 %.not.i127, ptr @.str.9, ptr @.str.15 ; 2 uses
  %i.iq = load ptr, ptr %i.cx, align 8, !tbaa !174 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !178 ; 2 uses
  %i.it = zext i8 %i.is to i32                    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 8
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !179 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 144
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !29 ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph.i.i79.i, label %select.unfold97.i

.lr.ph.i.i79.i:                                   ; preds = %.noexc143
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !30
  %wide.trip.count.i.i80.i = zext nneg i32 %i.ix to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bi, %.lr.ph.i.i79.i
  %indvars.iv.i.i81.i = phi i64 [ 0, %.lr.ph.i.i79.i ], [ %indvars.iv.next.i.i82.i, %bb.bi ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %indvars.iv.i.i81.i ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !32
  %i.je = icmp eq i8 %i.is, %i.jd
  br i1 %i.je, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !33
  %.not.i.i84.not.i = icmp sgt i32 %i.iv, %i.jg
  br i1 %.not.i.i84.not.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !34
  %.not101.i = icmp sgt i32 %i.iv, %i.ji
  br i1 %.not101.i, label %bb.bi, label %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %indvars.iv.next.i.i82.i = add nuw nsw i64 %indvars.iv.i.i81.i, 1 ; 2 uses
  %exitcond.not.i.i83.i = icmp eq i64 %indvars.iv.next.i.i82.i, %wide.trip.count.i.i80.i
  br i1 %exitcond.not.i.i83.i, label %select.unfold97.i, label %bb.bf, !llvm.loop !0

_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i: ; preds = %bb.bh
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !36 ; 2 uses
  %.not8.i86.i = icmp eq ptr %i.jj, null
  br i1 %.not8.i86.i, label %select.unfold97.i, label %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88.i

_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88.i: ; preds = %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !180
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.20, i32 noundef %i.it, ptr noundef %i.in, ptr noundef nonnull %i.ip, i32 noundef %i.jm, i32 noundef %i.iv, ptr noundef nonnull %i.jk)
          to label %.noexc144 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold97.i:                                ; preds = %bb.bi, %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85.i, %.noexc143
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !180
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.21, i32 noundef %i.it, ptr noundef %i.in, ptr noundef nonnull %i.ip, i32 noundef %i.jo, i32 noundef %i.iv)
          to label %.noexc144 unwind label %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %select.unfold97.i, %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.089.0110.i, i64 12 ; 2 uses
  %.not100.i = icmp eq ptr %i.jp, %i.hr
  br i1 %.not100.i, label %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit, label %.lr.ph112.i

_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit: ; preds = %.noexc144, %._crit_edge.i126, %bb.aw, %_ZN4Luau7CodeGenL28logFunctionHeader_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_P5Proto.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !182
  %i.jq = invoke noundef zeroext i1 @_ZN4Luau7CodeGen13lowerFunctionINS0_3A6418AssemblyBuilderA64EEEbRNS0_9IrBuilderEPNS0_10LogBuilderERT_RNS0_13ModuleHelpersEP5ProtoNS0_15AssemblyOptionsEPNS0_13LoweringStatsERNS0_24CodeGenCompilationResultE(ptr noundef nonnull align 8 dereferenceable(1056) %7, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 4 dereferenceable(56) %6, ptr noundef %i.ei, ptr noundef nonnull byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit
  br i1 %i.jq, label %bb.br, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jr = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.jt = load i8, ptr %i.bt, align 1, !tbaa !59, !range !60, !noundef !61
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.1)
          to label %bb.bq unwind label %bb.bn

bb.bn:                                            ; preds = %bb.cu, %bb.cs, %bb.bs, %bb.br, %bb.bp, %bb.bm, %_ZN4Luau7CodeGenL27logFunctionTypes_DEPRECATEDINS0_3A6418AssemblyBuilderA64EEEvRT_RKNS0_10IrFunctionEPKPKc.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bo:                                            ; preds = %bb.bk
  %i.jw = load i8, ptr %i.dd, align 8, !tbaa !256, !range !60, !noundef !61
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.1)
          to label %bb.bq unwind label %bb.bn

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.bl, %bb.bm
  br i1 %.not95, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.bq
  %i.jy = load i32, ptr %i.de, align 4, !tbaa !200
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.de, align 4, !tbaa !200
  br label %bb.bu

bb.br:                                            ; preds = %bb.bj
  %i.ka = invoke noundef i32 @_ZNK4Luau7CodeGen3A6418AssemblyBuilderA6411getCodeSizeEv(ptr noundef nonnull align 8 dereferenceable(184) %2)
          to label %bb.bs unwind label %bb.bn

bb.bs:                                            ; preds = %bb.br
  %i.kb = invoke noundef i32 @_ZNK4Luau7CodeGen3A6418AssemblyBuilderA6419getInstructionCountEv(ptr noundef nonnull align 8 dereferenceable(184) %2)
          to label %bb.bt unwind label %bb.bn

bb.bt:                                            ; preds = %bb.bs
  %i.kc = sub i32 %i.ka, %i.ej
  %i.kd = sub i32 %i.kb, %i.ek
  %i.ke = shl i32 %i.kc, 2
  br i1 %.not95, label %.critedge, label %bb.bu

bb.bu:                                            ; preds = %.thread, %bb.bt
  %.015 = phi i32 [ 0, %.thread ], [ %i.kd, %bb.bt ]
  %.07514 = phi i32 [ 0, %.thread ], [ %i.ke, %bb.bt ]
  %i.kf = load i32, ptr %i.df, align 8, !tbaa !201
  %i.kg = and i32 %i.kf, 1
  %.not99 = icmp eq i32 %i.kg, 0
  br i1 %.not99, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %i.dg, ptr %8, align 8, !tbaa !43
  store i64 0, ptr %i.dh, align 8, !tbaa !45
  store i8 0, ptr %i.dg, align 8, !tbaa !46
  store i32 -1, ptr %i.di, align 8, !tbaa !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !85 ; 2 uses
  %.not100 = icmp eq ptr %i.ki, null
  br i1 %.not100, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ei, i64 168
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !209
  %i.km = load i32, ptr %i.dl, align 8, !tbaa !209
  %i.kn = icmp eq i32 %i.kl, %i.km
  %.str.2..str.3 = select i1 %i.kn, ptr @.str.2, ptr @.str.3
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ko = phi ptr [ %i.kj, %bb.bw ], [ %.str.2..str.3, %bb.bx ] ; 2 uses
  %i.kp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ko) #20
  %i.kq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.ko, i64 noundef %i.kp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.by
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ei, i64 164
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !88
  store i32 %i.ks, ptr %i.di, align 8, !tbaa !208
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !210
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ei, i64 136
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !211 ; 2 uses
  %.not.i147 = icmp eq i32 %i.kw, 0
  br i1 %.not.i147, label %_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %.noexc150
  %.08.i = phi i32 [ %i.ld, %.noexc150 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %.067.i = phi i32 [ %i.lc, %.noexc150 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.kx = zext i32 %.08.i to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !39
  %i.la = and i32 %i.kz, 255
  %i.lb = invoke noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef %i.la)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %.lr.ph.i148
  %i.lc = add i32 %.067.i, 1                      ; 2 uses
  %i.ld = add i32 %i.lb, %.08.i                   ; 2 uses
  %i.le = icmp ult i32 %i.ld, %i.kw
  br i1 %i.le, label %.lr.ph.i148, label %_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit, !llvm.loop !1

_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit:  ; preds = %.noexc150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.06.lcssa.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.lc, %.noexc150 ]
  store i32 %.06.lcssa.i, ptr %i.dj, align 4, !tbaa !212
  %i.lf = load ptr, ptr %i.dn, align 8, !tbaa !213
  %i.lg = load ptr, ptr %i.dm, align 8, !tbaa !214
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = lshr exact i64 %i.lj, 6
  %i.ll = trunc i64 %i.lk to i32
  store i32 %i.ll, ptr %i.do, align 8, !tbaa !215
  store i32 %.07514, ptr %i.dp, align 8, !tbaa !216
  store i32 %.015, ptr %i.dq, align 4, !tbaa !217
  %i.lm = load i32, ptr %i.df, align 8, !tbaa !201
  %i.ln = and i32 %i.lm, 2
  %.not101 = icmp eq i32 %i.ln, 0
  br i1 %.not101, label %bb.cl, label %bb.bz

bb.bz:                                            ; preds = %_ZN4Luau7CodeGen19getInstructionCountEPKjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN4Luau7CodeGen23FunctionBytecodeSummary9fromProtoEP5Protoj(ptr dead_on_unwind nonnull writable sret(%"class.Luau::CodeGen::FunctionBytecodeSummary") align 8 %9, ptr noundef %i.ei, i32 noundef 0)
          to label %bb.ca unwind label %bb.cj

bb.ca:                                            ; preds = %bb.bz
  %i.lo = load ptr, ptr %i.dr, align 8, !tbaa !218 ; 4 uses
  %i.lp = load ptr, ptr %i.ds, align 8, !tbaa !219 ; 6 uses
  %i.lq = load ptr, ptr %i.dt, align 8, !tbaa !220
  %.not.i151 = icmp eq ptr %i.lp, %i.lq
  br i1 %.not.i151, label %bb.cg, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !221 ; 2 uses
  %i.lt = load ptr, ptr %i.lo, align 8, !tbaa !222 ; 2 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lp, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ls, %i.lt
  br i1 %.not.i.i.i.i.i, label %.noexc153, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lx = icmp ugt i64 %i.lw, 9223372036854775804
  br i1 %i.lx, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !223

end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGenL17logFunctionHeaderERNS0_10LogBuilderEP5Proto:bb.a
  %.not28 = icmp eq i8 %i.ag, 0
  br i1 %.not28, label %._crit_edge.thread, label %bb.l

._crit_edge.thread:                               ; preds = %bb.d, %bb.k, %._crit_edge
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.thread
  %.str.13.sink = phi ptr [ @.str.13, %._crit_edge.thread ], [ @.str.12, %bb.k ]
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.str.13.sink)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !88 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.14, i32 noundef %i.ai)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.4)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL16logFunctionTypesERNS0_10LogBuilderERKNS0_10IrFunctionEPKPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %.not114.a = icmp eq ptr %i.c, %i.d
  br i1 %.not114.a, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 520
  br label %bb.b

.preheader:                                       ; preds = %bb.h, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %.not115 = icmp eq ptr %i.h, %i.i
  br i1 %.not115, label %._crit_edge, label %.lr.ph108

.lr.ph108:                                        ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 520
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ak, %bb.h ]
  %.065105 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.065105
  %i.m = load i8, ptr %i.l, align 1, !tbaa !46    ; 3 uses
  %i.n = tail call noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.m, ptr noundef %2) ; 2 uses
  %.not73 = icmp sgt i8 %i.m, -1
  %i.o = select i1 %.not73, ptr @.str.9, ptr @.str.15 ; 2 uses
  %.not74 = icmp eq i8 %i.m, 15
  br i1 %.not74, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %i.q = trunc i64 %.065105 to i32                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %select.unfold

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %wide.trip.count.i.i = zext nneg i32 %i.s to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !32
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %i.q, %i.z
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !33
  %.not.i.i = icmp sgt i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %select.unfold, label %bb.d, !llvm.loop !0

_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i: ; preds = %bb.f
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !36  ; 2 uses
  %.not8.i = icmp eq ptr %i.ag, null
  br i1 %.not8.i, label %select.unfold, label %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit

_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit: ; preds = %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.16, i32 noundef %i.q, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ah)
  br label %bb.h

select.unfold:                                    ; preds = %bb.g, %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i, %bb.c
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.17, i32 noundef %i.q, ptr noundef %i.n, ptr noundef nonnull %i.o)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit, %select.unfold, %bb.b
  %i.ai = add nuw i64 %.065105, 1                 ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.b, label %.preheader, !llvm.loop !401

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !175 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !175 ; 2 uses
  %.not100109 = icmp eq ptr %i.aq, %i.as
  br i1 %.not100109, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 520
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph108, %bb.l
  %i.au = phi ptr [ %i.i, %.lr.ph108 ], [ %i.bj, %bb.l ]
  %.0106 = phi i64 [ 0, %.lr.ph108 ], [ %i.bh, %bb.l ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0106
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !46  ; 3 uses
  %i.ax = tail call noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.aw, ptr noundef %2) ; 2 uses
  %.not70 = icmp sgt i8 %i.aw, -1
  %i.ay = select i1 %.not70, ptr @.str.9, ptr @.str.15 ; 2 uses
  %.not71 = icmp eq i8 %i.aw, 15
  br i1 %.not71, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !174
  %i.ba = trunc i64 %.0106 to i32                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %select.unfold94, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %.0106, 32
  %i.bd = ashr exact i64 %sext, 29
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %.not7.i = icmp eq ptr %i.bf, null
  br i1 %.not7.i, label %select.unfold94, label %_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit

_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit: ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.18, i32 noundef %i.ba, ptr noundef %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bg)
  br label %bb.l

select.unfold94:                                  ; preds = %bb.k, %bb.j
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.19, i32 noundef %i.ba, ptr noundef %i.ax, ptr noundef nonnull %i.ay)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4Luau7CodeGen18tryFindUpvalueNameEPK5Protoi.exit, %select.unfold94, %bb.i
  %i.bh = add nuw i64 %.0106, 1                   ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.bh, %i.bm
  br i1 %i.bn, label %bb.i, label %._crit_edge, !llvm.loop !402

._crit_edge113:                                   ; preds = %bb.r, %._crit_edge
  ret void

bb.m:                                             ; preds = %.lr.ph112, %bb.r
  %.sroa.089.0110 = phi ptr [ %i.aq, %.lr.ph112 ], [ %i.cr, %bb.r ] ; 7 uses
  %i.bo = load i8, ptr %.sroa.089.0110, align 4, !tbaa !177
  %i.bp = tail call noundef ptr @_ZN4Luau7CodeGen19getBytecodeTypeNameEhPKPKc(i8 noundef zeroext %i.bo, ptr noundef %2) ; 2 uses
  %i.bq = load i8, ptr %.sroa.089.0110, align 4, !tbaa !177
  %.not = icmp sgt i8 %i.bq, -1
  %i.br = select i1 %.not, ptr @.str.9, ptr @.str.15 ; 2 uses
  %i.bs = load ptr, ptr %i.at, align 8, !tbaa !174 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.089.0110, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !178 ; 2 uses
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.089.0110, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !179 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !29 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i.i79, label %select.unfold97

.lr.ph.i.i79:                                     ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  %wide.trip.count.i.i80 = zext nneg i32 %i.bz to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i.i79
  %indvars.iv.i.i81 = phi i64 [ 0, %.lr.ph.i.i79 ], [ %indvars.iv.next.i.i82, %bb.q ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv.i.i81 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !32
  %i.cg = icmp eq i8 %i.bu, %i.cf
  br i1 %i.cg, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !33
  %.not.i.i84.not = icmp sgt i32 %i.bx, %i.ci
  br i1 %.not.i.i84.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !34
  %.not101 = icmp sgt i32 %i.bx, %i.ck
  br i1 %.not101, label %bb.q, label %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %indvars.iv.next.i.i82 = add nuw nsw i64 %indvars.iv.i.i81, 1 ; 2 uses
  %exitcond.not.i.i83 = icmp eq i64 %indvars.iv.next.i.i82, %wide.trip.count.i.i80
  br i1 %exitcond.not.i.i83, label %select.unfold97, label %bb.n, !llvm.loop !0

_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85: ; preds = %bb.p
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !36 ; 2 uses
  %.not8.i86 = icmp eq ptr %i.cl, null
  br i1 %.not8.i86, label %select.unfold97, label %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88

_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88: ; preds = %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.089.0110, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !180
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.20, i32 noundef %i.bv, ptr noundef %i.bp, ptr noundef nonnull %i.br, i32 noundef %i.co, i32 noundef %i.bx, ptr noundef nonnull %i.cm)
  br label %bb.r

select.unfold97:                                  ; preds = %bb.q, %_ZN4Luau7CodeGenL12tryFindLocalEPK5Protoii.exit.i85, %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.089.0110, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !180
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.21, i32 noundef %i.bv, ptr noundef %i.bp, ptr noundef nonnull %i.br, i32 noundef %i.cq, i32 noundef %i.bx)
  br label %bb.r

bb.r:                                             ; preds = %select.unfold97, %_ZN4Luau7CodeGen16tryFindLocalNameEPK5Protoii.exit88
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.089.0110, i64 12 ; 2 uses
  %.not100 = icmp eq ptr %i.cr, %i.as
  br i1 %.not100, label %._crit_edge113, label %bb.m
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7CodeGen13lowerFunctionINS0_3X6418AssemblyBuilderX64EEEbRNS0_9IrBuilderEPNS0_10LogBuilderERT_RNS0_13ModuleHelpersEP5ProtoNS0_15AssemblyOptionsEPNS0_13LoweringStatsERNS0_24CodeGenCompilationResultE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull align 4 dereferenceable(56) %3, ptr noundef %4, ptr noundef byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::vector.8", align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %6, ptr %i.b, align 8, !tbaa !265
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.d = load i8, ptr %i.c, align 8, !tbaa !266, !range !60, !noundef !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i8 %i.d, ptr %i.e, align 8, !tbaa !267
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 105
  %i.g = load i8, ptr %i.f, align 1, !tbaa !268, !range !60, !noundef !61
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = icmp ne ptr %4, null
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %4 to i64
  %i.k = tail call noundef i64 @_ZN4Luau7CodeGen10jitRngSeedEm(i64 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 %i.k, ptr %i.l, align 8, !tbaa !269
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4Luau7CodeGen16killUnusedBlocksERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928) %i.a)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !270  ; 2 uses
  %.not8991 = icmp eq ptr %i.m, %i.o
  br i1 %.not8991, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %.059.lcssa = phi i32 [ 0, %bb.c ], [ %i.s, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %6, null                    ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.05994 = phi i32 [ %i.s, %.lr.ph ], [ 0, %bb.c ]
  %.093 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ 0, %bb.c ]
  %.sroa.082.092 = phi ptr [ %i.y, %.lr.ph ], [ %i.m, %bb.c ] ; 4 uses
  %i.p = load i8, ptr %.sroa.082.092, align 4, !tbaa !274
  %i.q = icmp ne i8 %i.p, 5
  %i.r = zext i1 %i.q to i32
  %i.s = add i32 %.05994, %i.r                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.082.092, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !275
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.082.092, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !276
  %i.x = sub i32 %i.u, %i.w
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.093, i32 %i.x) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.082.092, i64 36 ; 2 uses
  %.not89 = icmp eq ptr %i.y, %i.o
  br i1 %.not89, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !277
  %i.ab = add i32 %i.aa, %.059.lcssa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !277
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %.0.lcssa, ptr %i.ac, align 4, !tbaa !278
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ad = load i32, ptr @_ZN4FInt27CodegenHeuristicsBlockLimitE, align 8, !tbaa !281
  %.not62 = icmp ult i32 %.059.lcssa, %i.ad
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 5, ptr %7, align 4, !tbaa !182
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.ae = load i32, ptr @_ZN4FInt38CodegenHeuristicsBlockInstructionLimitE, align 8, !tbaa !281
  %.not63 = icmp ult i32 %.0.lcssa, %i.ae
  br i1 %.not63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 6, ptr %7, align 4, !tbaa !182
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4Luau7CodeGen14computeCfgInfoERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928) %i.a)
  tail call void @_ZN4Luau7CodeGen22constPropInBlockChainsERNS0_9IrBuilderE(ptr noundef nonnull align 8 dereferenceable(1056) %0)
  %i.af = load i8, ptr @_ZN5FFlag19DebugCodegenOptSizeE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !282 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !282 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not5.i.i.i, label %_ZN4Luau7CodeGen19getInstructionCountERKSt6vectorINS0_6IrInstESaIS2_EENS0_5IrCmdE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = ptrtoaddr ptr %i.ai to i64
  %i.an = add i64 %i.al, -64
  %i.ao = sub i64 %i.an, %i.am                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 448
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aq, 576460752303423480      ; 3 uses
  %i.ar = shl i64 %n.vec, 6
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %vec.phi112 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %i.at = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.at
  %i.au = getelementptr i8, ptr %i.ai, i64 %i.at
  %next.gep113 = getelementptr i8, ptr %i.au, i64 64
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.at
  %next.gep114 = getelementptr i8, ptr %i.av, i64 128
  %i.aw = getelementptr i8, ptr %i.ai, i64 %i.at
  %next.gep115 = getelementptr i8, ptr %i.aw, i64 192
  %i.ax = getelementptr i8, ptr %i.ai, i64 %i.at
  %next.gep116 = getelementptr i8, ptr %i.ax, i64 256
  %i.ay = getelementptr i8, ptr %i.ai, i64 %i.at
  %next.gep117 = getelementptr i8, ptr %i.ay, i64 320
  %i.az = getelementptr i8, ptr %i.ai, i64 %i.at
  %next.gep118 = getelementptr i8, ptr %i.az, i64 384
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.at
  %next.gep119 = getelementptr i8, ptr %i.ba, i64 448
  %i.bb = load i8, ptr %next.gep, align 8, !tbaa !291
  %i.bc = load i8, ptr %next.gep113, align 8, !tbaa !291
  %i.bd = load i8, ptr %next.gep114, align 8, !tbaa !291
  %i.be = load i8, ptr %next.gep115, align 8, !tbaa !291
  %i.bf = insertelement <4 x i8> poison, i8 %i.bb, i64 0
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bc, i64 1
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.bd, i64 2
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.be, i64 3
  %i.bj = load i8, ptr %next.gep116, align 8, !tbaa !291
  %i.bk = load i8, ptr %next.gep117, align 8, !tbaa !291
  %i.bl = load i8, ptr %next.gep118, align 8, !tbaa !291
  %i.bm = load i8, ptr %next.gep119, align 8, !tbaa !291
  %i.bn = insertelement <4 x i8> poison, i8 %i.bj, i64 0
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.bk, i64 1
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 2
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 3
  %i.br = icmp eq <4 x i8> %i.bi, splat (i8 -85)
  %i.bs = icmp eq <4 x i8> %i.bq, splat (i8 -85)
  %i.bt = zext <4 x i1> %i.br to <4 x i32>
  %i.bu = zext <4 x i1> %i.bs to <4 x i32>
  %i.bv = add <4 x i32> %vec.phi, %i.bt           ; 2 uses
  %i.bw = add <4 x i32> %vec.phi112, %i.bu        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bw, %i.bv
  %i.by = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN4Luau7CodeGen19getInstructionCountERKSt6vectorINS0_6IrInstESaIS2_EENS0_5IrCmdE.exit, label %.lr.ph.i.i.i.preheader144

end_hunk_2
