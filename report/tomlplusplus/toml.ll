Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv:bb.a
  %lpad.phi72 = phi { ptr, i32 } [ %lpad.loopexit70, %.loopexit68 ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp69 ] ; 2 uses
  %i.cn = load ptr, ptr %21, align 8, !tbaa !174  ; 3 uses
  %.not.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %bb.be
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.bf:                                            ; preds = %_ZN4toml2v35array7reserveEm.exit, %bb.bb
  %i.cr = phi ptr [ %i.bj, %_ZN4toml2v35array7reserveEm.exit ], [ %i.bf, %bb.bb ] ; 10 uses
  %i.cs = phi ptr [ %i.cl, %_ZN4toml2v35array7reserveEm.exit ], [ %i.be, %bb.bb ] ; 4 uses
  %i.ct = phi ptr [ %i.ck, %_ZN4toml2v35array7reserveEm.exit ], [ %.pre, %bb.bb ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cs
  br i1 %.not.i.i.i.i, label %bb.bg, label %.thread57

.thread57:                                        ; preds = %bb.bf
  %i.cu = load i64, ptr %21, align 8, !tbaa !174
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !174
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cv, ptr %i.j, align 8, !tbaa !172
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

bb.bg:                                            ; preds = %bb.bf
  %i.cw = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cx = ptrtoint ptr %i.cr to i64               ; 4 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.bh, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc47 unwind label %.loopexit.split-lp69

.noexc47:                                         ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bg
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #55
          to label %.noexc48 unwind label %.loopexit68 ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = load i64, ptr %21, align 8, !tbaa !174
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !174
  store ptr null, ptr %21, align 8, !tbaa !174
  %.not10.i.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc48
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader242, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dg, i64 8
  %i.dn = add i64 %i.cw, -8
  %i.do = sub i64 %i.dn, %i.cx
  %i.dp = and i64 %i.do, -8                       ; 2 uses
  %scevgep213 = getelementptr i8, ptr %scevgep, i64 %i.dp
  %scevgep214 = getelementptr i8, ptr %i.cr, i64 8
  %scevgep215 = getelementptr i8, ptr %scevgep214, i64 %i.dp
  %bound0 = icmp ult ptr %i.dg, %scevgep215
  %bound1 = icmp ult ptr %i.cr, %scevgep213
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader242, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cr, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dt ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.cr, i64 %i.dt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.du = getelementptr i8, ptr %next.gep216, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep216, align 8, !tbaa !174, !alias.scope !652, !noalias !650
  %wide.load217 = load <2 x i64>, ptr %i.du, align 8, !tbaa !174, !alias.scope !652, !noalias !650
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !653, !noalias !652
  store <2 x i64> %wide.load217, ptr %i.dv, align 8, !tbaa !174, !alias.scope !653, !noalias !652
  %i.dw = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep216, align 8, !tbaa !174, !alias.scope !652, !noalias !650
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !tbaa !174, !alias.scope !652, !noalias !650
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader242

.lr.ph.i.i.i.i.preheader242:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader242, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader242 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader242 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.dy = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !651, !noalias !650
  store i64 %i.dy, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !650, !noalias !651
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !651, !noalias !650
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dz, %i.cs
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !644

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %.noexc48 ], [ %i.dr, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ee) #51
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.bi
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !173
  store ptr %i.eb, ptr %i.j, align 8, !tbaa !172
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.ef, ptr %i.i, align 8, !tbaa !193
  %.pr56 = load ptr, ptr %21, align 8, !tbaa !174 ; 3 uses
  %.not.i30 = icmp eq ptr %.pr56, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31: ; preds = %bb.bj
  %i.eg = load ptr, ptr %.pr56, align 8, !tbaa !74
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(40) %.pr56) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32: ; preds = %.thread57, %bb.bj, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, %bb.al
  %.be = phi i1 [ false, %bb.al ], [ true, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32 ]
  br label %.backedge, !llvm.loop !645

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i, %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.bd ], [ %lpad.phi72, %bb.be ], [ %lpad.phi72, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %bb.ai, %bb.ao, %bb.ar, %bb.az, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %.loopexit.i, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit59
  %.pn17 = phi { ptr, i32 } [ %i.an, %bb.ai ], [ %i.aq, %bb.ao ], [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.as, %bb.ar ], [ %i.bd, %bb.az ], [ %.pn.i, %.loopexit.i ], [ %lpad.loopexit60, %.loopexit59 ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.bk:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ %.pn17, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.e = load i64, ptr %i.c, align 8, !tbaa !154
  store i64 %i.e, ptr %i.d, align 8, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !247  ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !247
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.m = load i64, ptr %i.l, align 8, !tbaa !249
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.o = load i64, ptr %i.n, align 8, !tbaa !250
  %reass.sub = sub i64 %i.m, %i.g
  %i.p = add i64 %reass.sub, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = urem i64 %i.q, 127
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.r
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !250  ; 4 uses
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null               ; 2 uses
  %i.y = select i1 %.not6.i, i1 %.not7.i, i1 false
  br i1 %i.y, label %bb.f, label %bb.g, !prof !155

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !inline_history !31 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread, label %bb.h

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread: ; preds = %bb.g
  store ptr null, ptr %i.a, align 8, !tbaa !239
  br label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %i.v, 127
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !155

bb.i:                                             ; preds = %bb.h
  %i.af = add nuw nsw i64 %i.v, 1
  store i64 %i.af, ptr %i.u, align 8, !tbaa !250
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !249 ; 2 uses
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !249
  %i.aj = add i64 %i.ah, 127
  %i.ak = urem i64 %i.aj, 127
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink13.i = phi i64 [ %i.ak, %bb.j ], [ %i.v, %bb.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sink13.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.am = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !inline_history !31 ; 2 uses
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.k
  %.0.i = phi ptr [ %i.s, %bb.d ], [ %i.j, %bb.c ], [ %i.ad, %bb.f ], [ %i.aq, %bb.k ] ; 5 uses
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !239
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !253, !range !104, !noundef !105
  %i.at = trunc nuw i8 %i.as to i1
  %.not = icmp ne ptr %.0.i, null
  %or.cond.not = and i1 %.not, %i.at
  br i1 %or.cond.not, label %bb.l, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3465
  %i.av = load i8, ptr %i.au, align 1, !tbaa !254, !range !104, !noundef !105
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.0.i, align 4, !tbaa !241 ; 6 uses
  switch i32 %i.ax, label %bb.n [
    i32 32, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i32 9, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.ay = add i32 %i.ax, -65280
  %or.cond.i.i.i = icmp ult i32 %i.ay, -65120
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = trunc nuw i32 %i.ax to i16              ; 4 uses
  %.lhs.trunc.i.i.i = add i16 %i.az, -160
  %i.ba = udiv i16 %.lhs.trunc.i.i.i, 1018        ; 2 uses
  %.zext.i.i.i = zext nneg i16 %i.ba to i64
  %i.bb = shl nuw i64 1, %.zext.i.i.i
  %i.bc = and i64 %i.bb, 9223372036854773598
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZN4toml2v34impl13is_whitespaceEDi.exit

bb.p:                                             ; preds = %bb.o
  switch i16 %i.az, label %bb.q [
    i16 -257, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 12288, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 160, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.q:                                             ; preds = %bb.p
  switch i16 %i.ba, label %_ZN4toml2v34impl13is_whitespaceEDi.exit [
    i16 5, label %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i
    i16 7, label %.split.i
  ]

.split.i:                                         ; preds = %bb.q
  %i.bd = add nsw i32 %i.ax, -8192
  %or.cond7.i.i.i = icmp ult i32 %i.bd, 12
  br i1 %or.cond7.i.i.i, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.split.i
  switch i16 %i.az, label %_ZN4toml2v34impl13is_whitespaceEDi.exit [
    i16 8288, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 8287, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 8239, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i: ; preds = %bb.q
  switch i16 %i.az, label %_ZN4toml2v34impl13is_whitespaceEDi.exit [
    i16 6158, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i16 5760, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.r:                                             ; preds = %bb.n
  %i.be = add i32 %i.ax, -10
  %i.bf = icmp ult i32 %i.be, 4
  br i1 %i.bf, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread, label %_ZN4toml2v34impl13is_whitespaceEDi.exit

_ZN4toml2v34impl13is_whitespaceEDi.exit:          ; preds = %bb.o, %bb.q, %switch.early.test.i, %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i, %bb.r
  switch i32 %i.ax, label %bb.s [
    i32 8233, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i32 8232, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
    i32 133, label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread
  ]

bb.s:                                             ; preds = %_ZN4toml2v34impl13is_whitespaceEDi.exit, %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !246 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !67
  %i.bk = sub i64 4611686018427387903, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bh
  br i1 %i.bl, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bo = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.bn, i64 noundef %i.bh) ; 0 uses
  br label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

_ZN4toml2v34impl13is_whitespaceEDi.exit.thread:   ; preds = %_ZN4toml2v34impl13is_whitespaceEDi.exit, %_ZN4toml2v34impl13is_whitespaceEDi.exit, %_ZN4toml2v34impl13is_whitespaceEDi.exit, %.split.i, %bb.p, %bb.p, %bb.p, %bb.m, %bb.m, %bb.r, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i, %_ZN4toml2v34impl24is_horizontal_whitespaceEDi.exit.i, %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK4toml2v34impl7impl_ex6parser16current_positionEj(ptr noundef nonnull align 8 dereferenceable(3496) %0, i32 noundef 1) #50
  tail call void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23
end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl7impl_ex6parser15consume_commentEv:bb.a
.loopexit:                                        ; preds = %bb.d, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.h = load i32, ptr %i.g, align 4, !tbaa !241  ; 5 uses
  %i.i = icmp ult i32 %i.h, 9
  br i1 %i.i, label %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread, label %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit, !prof !169

_ZN4toml2v34impl27is_nontab_control_characterEDi.exit: ; preds = %bb.f
  %i.j = icmp ne i32 %i.h, 9
  %i.k = icmp ult i32 %i.h, 32
  %or.cond.i = and i1 %i.j, %i.k
  %i.l = icmp eq i32 %i.h, 127
  %spec.select.i = or i1 %i.l, %or.cond.i
  br i1 %spec.select.i, label %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread, label %bb.i, !prof !244

_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread: ; preds = %bb.f, %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 80, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.72, ptr %i.m, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread
  unreachable

bb.h:                                             ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.o

bb.i:                                             ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit
  %i.o = and i32 %i.h, -2048
  %i.p = icmp eq i32 %i.o, 55296
  br i1 %i.p, label %bb.j, label %bb.m, !prof !155

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 75, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.73, ptr %i.q, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.preheader unwind label %.loopexit, !llvm.loop !30

bb.n:                                             ; preds = %.preheader, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.r, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %bb.b, %bb.a, %bb.n
  %.1 = phi i1 [ true, %bb.n ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK4toml2v34impl7impl_ex6parser16current_positionEj(ptr noundef nonnull align 8 dereferenceable(3496) %0, i32 noundef 1) #50
  tail call void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser11parse_valueEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 13 uses
  %7 = alloca %class.anon.76, align 8             ; 10 uses
  %8 = alloca %class.anon.77, align 8             ; 8 uses
  %9 = alloca %class.anon.78, align 8             ; 9 uses
  %i.b = alloca [128 x i32], align 16             ; 15 uses
  %i.c = alloca i64, align 8                      ; 15 uses
  %i.d = alloca i64, align 8                      ; 16 uses
  %i.e = alloca i8, align 1                       ; 10 uses
  %10 = alloca %class.anon.79, align 8            ; 16 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %11 = alloca %class.anon.80, align 8            ; 11 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !239, !nonnull !105, !noundef !105 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !241  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !212
  store i64 5, ptr %i.k, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store ptr @.str.74, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3488 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !123
  %i.o = icmp ugt i64 %i.n, 128
  br i1 %i.o, label %bb.b, label %bb.e, !prof !155

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 39, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.75, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 25, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.76, ptr %i.q, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmS8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4toml2v34impl7impl_ex6parser17max_nested_valuesE, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.e:                                             ; preds = %bb.a
  %i.s = icmp ult i32 %i.j, 32
  %i.t = icmp eq i32 %i.j, 127
  %i.u = or i1 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.i, !prof !155

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 28, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.77, ptr %i.v, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.i:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.j, 95
  br i1 %i.x, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 37, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.78, ptr %i.y, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.m:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.025.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !154 ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  invoke void @_ZN4toml2v34impl7impl_ex6parser26parse_value_known_prefixesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit unwind label %.thread

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.m
  %i.ab = load ptr, ptr %6, align 8, !tbaa !174   ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  %.not126 = icmp eq ptr %i.ab, null
  br i1 %.not126, label %bb.n, label %.thread155

.thread:                                          ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store ptr %i.a, ptr %7, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store ptr %i.a, ptr %8, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store ptr %i.a, ptr %9, align 8, !tbaa !156
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !239
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !241 ; 3 uses
  %i.af = add i32 %i.ae, -48
  %i.ag = icmp ult i32 %i.af, 10
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = icmp eq i32 %i.ae, 48
  %spec.store.select = select i1 %i.ah, i32 24576, i32 8192
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  switch i32 %i.ae, label %.thread157 [
    i32 45, label %bb.q
    i32 43, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.o
  %storemerge = phi i32 [ %spec.store.select, %bb.o ], [ 4096, %bb.p ], [ 4096, %bb.p ]
  store i32 %storemerge, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  store i64 0, ptr %i.c, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  store i64 0, ptr %i.d, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  store i8 0, ptr %i.e, align 1, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store ptr %1, ptr %10, align 8, !tbaa !264
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !658
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !659
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %9, ptr %i.ak, align 8, !tbaa !156
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.al, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %8, ptr %i.am, align 8, !tbaa !156
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.d, ptr %i.an, align 8, !tbaa !659
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !660
  invoke void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.r unwind label %.thread171

bb.r:                                             ; preds = %bb.q
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !123
  %i.aq = icmp eq i64 %i.ap, 10
  br i1 %i.aq, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !266 ; 2 uses
  %i.as = and i32 %i.ar, -16385
  %i.at = icmp eq i32 %i.as, 9217
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.av = load i32, ptr %i.au, align 16
  %i.aw = icmp eq i32 %i.av, 45
  %or.cond = select i1 %i.at, i1 %i.aw, i1 false
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, 45
  %or.cond5 = select i1 %or.cond, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !239 ; 3 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !241
  %i.bc = icmp eq i32 %i.bb, 32
  br i1 %i.bc, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !123
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #50
  store i32 %i.ar, ptr %i.g, align 4, !tbaa !266
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !241
  store i64 11, ptr %i.c, align 8, !tbaa !123
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !241
  %i.bg = load ptr, ptr %9, align 8, !tbaa !268, !nonnull !105, !align !269 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !266
  %i.bi = or i32 %i.bh, 32
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  store ptr %1, ptr %11, align 8, !tbaa !271
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.bj, align 8, !tbaa !659
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.bk, align 8, !tbaa !659
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.bl, align 8, !tbaa !156
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.bm, align 8, !tbaa !156
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.bn, align 8, !tbaa !659
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !123
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.d, align 8, !tbaa !123
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !239 ; 2 uses
  %.not38 = icmp eq ptr %i.bq, null
  br i1 %.not38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !241 ; 2 uses
  %i.bs = add i32 %i.br, -48
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bu = load ptr, ptr %11, align 8, !tbaa !271  ; 7 uses
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !272, !nonnull !105, !align !252 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !123 ; 2 uses
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !273, !nonnull !105, !align !252 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !123 ; 2 uses
  %i.bz = sub i64 %i.bw, %i.by
  %i.ca = icmp ne i64 %i.bw, %i.by
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 3056
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !250 ; 3 uses
  %i.cd = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 3080 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !247
  %i.cg = add i64 %i.cf, %i.bz                    ; 4 uses
  %i.ch = icmp ule i64 %i.cg, %i.cc
  call void @llvm.assume(i1 %i.ch)
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !247
  %.not.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 3064
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !249
  %i.cl = sub i64 %i.cc, %i.cg
  %i.cm = add i64 %i.cl, %i.ck
  %i.cn = urem i64 %i.cm, 127
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cn
  br label %_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 3072
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !248
  br label %_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit

_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit: ; preds = %bb.z, %bb.aa
  %i.cr = phi ptr [ %i.co, %bb.z ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 3192
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !239
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 3184
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !154
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !154
  %i.cw = load i64, ptr %i.bx, align 8, !tbaa !123
  store i64 %i.cw, ptr %i.bv, align 8, !tbaa !123
  %i.cx = load ptr, ptr %i.bm, align 8, !tbaa !274, !nonnull !105, !align !269
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !266
  %i.cz = load ptr, ptr %i.bl, align 8, !tbaa !275, !nonnull !105, !align !269
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !266
  %i.da = load ptr, ptr %i.bn, align 8, !tbaa !276, !nonnull !105, !align !252
  store i64 10, ptr %i.da, align 8, !tbaa !123
  br label %bb.ag

bb.ab:                                            ; preds = %bb.ad, %bb.ac, %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  br label %.thread166

bb.ac:                                            ; preds = %bb.x
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !123 ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, 1
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !123
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dc
  store i32 %i.br, ptr %i.de, align 4, !tbaa !241
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i64, ptr %i.d, align 8, !tbaa !123
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.d, align 8, !tbaa !123
  invoke void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !123
  %i.di = icmp eq i64 %i.dh, 12
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.u, %bb.t, %bb.s, %bb.r
  %i.dj = load i64, ptr %i.d, align 8, !tbaa !123 ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3056
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !250 ; 3 uses
  %i.dn = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3080 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !247
  %i.dq = add i64 %i.dp, %i.dj                    ; 4 uses
  %i.dr = icmp ule i64 %i.dq, %i.dm
  call void @llvm.assume(i1 %i.dr)
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !247
  %.not.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !249
  %i.dv = sub i64 %i.dm, %i.dq
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = urem i64 %i.dw, 127
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dx
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !248
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.ai, %bb.aj
  %i.eb = phi ptr [ %i.dy, %bb.ai ], [ %i.ea, %bb.aj ] ; 2 uses
  store ptr %i.eb, ptr %i.h, align 8, !tbaa !239
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !154
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !154
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !123 ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  %i.eh = load ptr, ptr %7, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !266
  %i.ej = and i32 %i.ei, 8192
  %.not134 = icmp eq i32 %i.ej, 0
  br i1 %.not134, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %.thread171 ; 7 uses

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.al
  %i.el = load i32, ptr %i.b, align 16, !tbaa !241
  %i.em = add i32 %i.el, -48
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.ek, align 8, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !183
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store i16 0, ptr %i.eq, align 8, !tbaa !279
  store ptr %i.ek, ptr %0, align 8, !tbaa !174
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.thread159 unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  %i.er = load i8, ptr %i.e, align 1, !tbaa !258, !range !104, !noundef !105
  %i.es = trunc nuw i8 %i.er to i1                ; 2 uses
  %spec.select = select i1 %i.es, i64 23, i64 30
  %spec.select175 = select i1 %i.es, ptr @.str.13, ptr @.str.79
  store i64 %spec.select, ptr %12, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %spec.select175, ptr %i.et, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %12) #54
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #50
  br label %.thread166

bb.ap:                                            ; preds = %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  %i.ev = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = load ptr, ptr %7, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !266 ; 8 uses
  %i.ey = and i32 %i.ex, 16
  %.not127 = icmp eq i32 %i.ey, 0
  br i1 %.not127, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ez = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.ar unwind label %.thread171 ; 7 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fa = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser15parse_hex_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.ez, align 8, !tbaa !74
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store double %i.fa, ptr %i.fc, align 8, !tbaa !186
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store i16 0, ptr %i.fd, align 8, !tbaa !280
  store ptr %i.ez, ptr %0, align 8, !tbaa !174
  br label %.thread159

bb.at:                                            ; preds = %bb.ar
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 56) #51
  br label %.thread166

bb.au:                                            ; preds = %bb.ap
  %i.ff = and i32 %i.ex, 74
  %.not128 = icmp eq i32 %i.ff, 0
  br i1 %.not128, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fg = and i32 %i.ex, 64
  %.not131 = icmp eq i32 %i.fg, 0
  br i1 %.not131, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm16EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bb unwind label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.aw
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.thread166

bb.ay:                                            ; preds = %bb.av
  %i.fj = and i32 %i.ex, 8
  %.not132 = icmp eq i32 %i.fj, 0
  br i1 %.not132, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm8EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bb unwind label %bb.ax

bb.ba:                                            ; preds = %bb.ay
  %i.fl = invoke noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm2EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bb unwind label %bb.ax

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.0 = phi i64 [ %i.fk, %bb.az ], [ %i.fh, %bb.aw ], [ %i.fl, %bb.ba ]
  %.031 = phi i16 [ 2, %bb.az ], [ 3, %bb.aw ], [ 1, %bb.ba ]
  %i.fm = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit50 unwind label %bb.ax ; 6 uses

bb.bc:                                            ; preds = %bb.au
  %i.fn = and i32 %i.ex, 4
  %.not129 = icmp eq i32 %i.fn, 0
  br i1 %.not129, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fo = and i32 %i.ex, 8192
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4            ; 3 uses
  %i.fs = icmp eq i32 %i.fr, 46
  %or.cond8 = select i1 %i.fp, i1 %i.fs, i1 false
  br i1 %or.cond8, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ft = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %bb.bf unwind label %.thread171 ; 7 uses

bb.bf:                                            ; preds = %bb.be
  %i.fu = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.ft, align 8, !tbaa !74
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store double %i.fu, ptr %i.fw, align 8, !tbaa !186
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store i16 0, ptr %i.fx, align 8, !tbaa !280
  store ptr %i.ft, ptr %0, align 8, !tbaa !174
  br label %.thread159

bb.bh:                                            ; preds = %bb.bf
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 56) #51
  br label %.thread166

bb.bi:                                            ; preds = %bb.bd
  %i.fz = and i32 %i.ex, 4096
  %.not130 = icmp eq i32 %i.fz, 0
  br i1 %.not130, label %bb.bv, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ga = icmp eq i64 %i.ef, 2
  %i.gb = trunc i32 %i.ex to i1
  %or.cond125 = and i1 %i.ga, %i.gb
  br i1 %or.cond125, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.gc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55
          to label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59 unwind label %.thread171 ; 8 uses

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59: ; preds = %bb.bk
  %i.gd = load i32, ptr %i.fq, align 4, !tbaa !241
  %i.ge = add i32 %i.gd, -48
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = load i32, ptr %i.b, align 16, !tbaa !241
  %i.gh = icmp eq i32 %i.gg, 45
  %i.gi = sub nsw i64 0, %i.gf
  %i.gj = select i1 %i.gh, i64 %i.gi, i64 %i.gf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gk, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.gc, align 8, !tbaa !74
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !183
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  store i16 0, ptr %i.gm, align 8, !tbaa !279
  store ptr %i.gc, ptr %0, align 8, !tbaa !174
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bl unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.thread159 unwind label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99

end_hunk_1
begin_hunk_2_@_ZN4toml2v34impl7impl_ex6parser31parse_key_value_pair_and_insertEPNS0_5tableE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.ck

bb.af:                                            ; preds = %bb.ab
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !241 ; 4 uses
  %i.az = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.ay) #56
  br i1 %i.az, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 21, ptr %8, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.155, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.bb = icmp ult i32 %i.ay, 32
  br i1 %i.bb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bc = zext nneg i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i72 = load i64, ptr %i.bd, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4.0.copyload.i74 = load ptr, ptr %.sroa.4.0..sroa_idx.i73, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit75

bb.ai:                                            ; preds = %bb.ag
  %i.be = icmp eq i32 %i.ay, 127
  br i1 %i.be, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit75, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit75

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit75: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.0.i68 = phi ptr [ %.sroa.4.0.copyload.i74, %bb.ah ], [ %i.bf, %bb.aj ], [ @.str.29, %bb.ai ]
  %.sroa.0.0.i69 = phi i64 [ %.sroa.0.0.copyload.i72, %bb.ah ], [ %i.bh, %bb.aj ], [ 6, %bb.ai ]
  store i64 %.sroa.0.0.i69, ptr %9, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.4.0.i68, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 1, ptr %10, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.16, ptr %i.bj, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10) #54
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit75
  unreachable

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit75
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.ck

bb.am:                                            ; preds = %bb.af
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3296 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3336 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !297
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !298 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 16
  br i1 %i.bt, label %.lr.ph, label %.loopexit192

.lr.ph:                                           ; preds = %bb.am
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3224 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %.critedge64
  %i.cc = phi ptr [ %i.bp, %.lr.ph ], [ %i.hf, %.critedge64 ]
  %.0211 = phi ptr [ %1, %.lr.ph ], [ %.1, %.critedge64 ] ; 3 uses
  %.045209 = phi i64 [ 0, %.lr.ph ], [ %i.hd, %.critedge64 ] ; 4 uses
  %i.cd = load ptr, ptr %i.bl, align 8, !tbaa !66
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.045209 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !300
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !301 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0211, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %.0211, i64 48 ; 3 uses
  %.0810.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !160, !noalias !669 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %.0810.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.an, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i
  %.0813.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i ], [ %.0810.i.i.i.i.i, %bb.an ] ; 4 uses
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i ], [ %i.ck, %bb.an ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !67, !noalias !669 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cm) ; 2 uses
  %i.cn = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66, !noalias !669
  %i.cq = call i32 @memcmp(ptr noundef %i.cp, ptr noundef readonly %i.cg, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #50, !noalias !669 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cs = sub i64 %i.cm, %i.ci
  %spec.select7.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cs, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.cq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.ct = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0   ; 2 uses
  %.19.in.v.i.i.i.i.i = select i1 %i.ct, i64 24, i64 16
  %.19.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 %.19.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.ct, ptr %.012.i.i.i.i.i, ptr %.0813.i.i.i.i.i ; 8 uses
  %.08.i.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i.i, align 8, !tbaa !160, !noalias !669 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i
  %.not190 = icmp eq ptr %.1.i.i.i.i.i, %i.ck
  br i1 %.not190, label %.critedge, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit: ; preds = %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !174 ; 3 uses
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !67
  %i.da = icmp eq i64 %i.cz, %i.ci
  br i1 %i.da, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit
  %i.db = icmp eq i64 %i.ci, 0
  br i1 %i.db, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit78, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.ao
  %bcmp.i = call i32 @bcmp(ptr %i.cx, ptr %i.cg, i64 %i.ci)
  %i.dc = icmp eq i32 %bcmp.i, 0
  br i1 %i.dc, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit78, label %.critedge

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit78: ; preds = %bb.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !74 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef ptr %i.df(ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #52 ; 5 uses
  %.not55 = icmp eq ptr %i.dg, null
  br i1 %.not55, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit86, label %bb.ap, !prof !155

bb.ap:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit78
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !302 ; 2 uses
  %i.di = load ptr, ptr %i.bv, align 8, !tbaa !302 ; 2 uses
  %.not6.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %bb.aq
  %.sroa.02.07.i = phi ptr [ %i.dl, %bb.aq ], [ %i.dh, %bb.ap ] ; 2 uses
  %i.dj = load ptr, ptr %.sroa.02.07.i, align 8, !tbaa !295
  %i.dk = icmp eq ptr %i.dj, %i.dg
  br i1 %i.dk, label %.critedge64, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %.not.i79 = icmp eq ptr %i.dl, %i.di
  br i1 %.not.i79, label %.loopexit, label %.lr.ph.i, !llvm.loop !33

.loopexit:                                        ; preds = %bb.aq, %bb.ap
  %i.dm = load ptr, ptr %i.bw, align 8, !tbaa !302 ; 2 uses
  %i.dn = load ptr, ptr %i.bx, align 8, !tbaa !302 ; 2 uses
  %.not6.i80 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not6.i80, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit86, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.loopexit, %bb.ar
  %.sroa.02.07.i82 = phi ptr [ %i.dq, %bb.ar ], [ %i.dm, %.loopexit ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.02.07.i82, align 8, !tbaa !295
  %i.dp = icmp eq ptr %i.do, %i.dg
  br i1 %i.dp, label %.critedge64, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i81
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i82, i64 8 ; 2 uses
  %.not.i83 = icmp eq ptr %i.dq, %i.dn
  br i1 %.not.i83, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit86, label %.lr.ph.i81, !llvm.loop !33

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit86: ; preds = %.loopexit, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit78, %bb.ar
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !303
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.045209
  %.sroa.09.0.copyload = load i64, ptr %i.dt, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  store i64 25, ptr %11, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.156, ptr %i.du, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call noundef zeroext i8 %i.dw(ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #52
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl24node_type_friendly_namesE, i64 %i.dy ; 2 uses
  %.sroa.0.0.copyload.i87 = load i64, ptr %i.dz, align 16, !tbaa !123
  %.sroa.2.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i88, align 8, !tbaa !124
  store i64 %.sroa.0.0.copyload.i87, ptr %12, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  store i64 25, ptr %13, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.157, ptr %i.eb, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.09.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13) #54
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit86
  unreachable

bb.at:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit86
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  br label %bb.ck

.critedge:                                        ; preds = %bb.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0.lcssa.i.i.i.i.i181 = phi ptr [ %.1.i.i.i.i.i, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.1.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.1.i.i.i.i.i, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit ], [ %i.ck, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  store ptr %.0.lcssa.i.i.i.i.i181, ptr %15, align 8, !tbaa !304
  store i8 0, ptr %i.by, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #50
  invoke void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::key") align 8 %16, ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 noundef %.045209)
          to label %bb.au unwind label %bb.br

bb.au:                                            ; preds = %.critedge
  invoke void @_ZN4toml2v35table12emplace_hintIS1_NS0_3keyEJETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringIS5_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSA_ILb1EEES6_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::impl::table_iterator") align 8 %14, ptr noundef nonnull align 8 dereferenceable(89) %.0211, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.av unwind label %bb.bs

bb.av:                                            ; preds = %bb.au
  %i.ed = load i64, ptr %14, align 8, !tbaa !160
  %i.ee = inttoptr i64 %i.ed to ptr               ; 4 uses
  %i.ef = load ptr, ptr %i.bz, align 8, !tbaa !150 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.eg, align 8, !tbaa !152
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !153
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !74
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #50, !inline_history !34
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #50, !inline_history !34
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i91 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i91, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i.i = phi i32 [ %i.ej, %bb.az ], [ %i.et, %bb.ba ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.bb, label %_ZN4toml2v313source_regionD2Ev.exit.i, !prof !155

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

_ZN4toml2v313source_regionD2Ev.exit.i:            ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ax, %bb.av
  %i.ev = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ca
  br i1 %i.ew, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i
  %i.ex = load i64, ptr %i.ca, align 8, !tbaa !69
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #51
  br label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !174 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i64 16, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !113
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !113
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !150 ; 4 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i93, label %_ZN4toml2v313source_regionaSERKS1_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92
  %.not7.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 3 uses
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i94 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i94, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !154
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fk, align 4, !tbaa !154
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.fo = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.fg, align 8, !tbaa !150
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bc
  %i.fp = phi ptr [ %i.fj, %bb.bc ], [ %i.fj, %bb.be ], [ %.pr.pre.i.i.i.i, %bb.bf ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.fq, align 8, !tbaa !152
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !153
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !74
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #50, !inline_history !665
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !74
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #50, !inline_history !665
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i9.i.i.i.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i9.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95

bb.bk:                                            ; preds = %bb.bi
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i96 = phi i32 [ %i.ft, %bb.bj ], [ %i.gd, %bb.bk ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i96, 1
  br i1 %i.ge, label %bb.bl, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !155

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #50
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95, %bb.bh, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !150
end_hunk_2
begin_hunk_3_@_ZN4toml2v34impl7impl_ex6parser31parse_key_value_pair_and_insertEPNS0_5tableE:bb.a
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #50
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146, %bb.cg
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146 ], [ %i.kc, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #50
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit194, %.loopexit.split-lp, %bb.bw, %bb.cj, %bb.at, %bb.bt, %bb.al, %bb.ae, %bb.z, %bb.u, %bb.n, %bb.m
  %.pn59 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.aq, %bb.u ], [ %i.at, %bb.z ], [ %i.ax, %bb.ae ], [ %i.bk, %bb.al ], [ %i.ad, %bb.m ], [ %.pn53, %bb.bt ], [ %i.ec, %bb.at ], [ %.pn.pn, %bb.cj ], [ %i.ja, %bb.bw ], [ %lpad.loopexit, %.loopexit194 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6176, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6176)
  resume { ptr, i32 } %.pn59
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v32ex5parseESt17basic_string_viewIcSt11char_traitsIcEES5_(ptr dead_on_unwind noalias writable sret(%"class.toml::v3::table") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator.96", align 1 ; 3 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.(anonymous namespace)::utf8_reader", align 32 ; 14 uses
  store i64 %3, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %8, align 32, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !306
  %i.d = icmp ugt i64 %1, 2
  br i1 %i.d, label %bb.b, label %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %2, align 1
  %i.f = xor i16 -17425, %i.e
  %i.g = getelementptr i8, ptr %2, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 191, %i.i
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i

bb.c:                                             ; preds = %bb.b
  store i64 3, ptr %i.c, align 8, !tbaa !306
  br label %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i

_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %i.o, align 32, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 864 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 0, ptr %i.q, align 8, !tbaa !312
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = icmp eq i64 %3, 0
  br i1 %i.s, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50, !noalias !673
  store ptr null, ptr %6, align 16, !tbaa !113, !alias.scope !673
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvEJRSt17basic_string_viewIcS7_EEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %bb.e

_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50, !noalias !673
  %i.u = load <2 x ptr>, ptr %6, align 16, !tbaa !156
  store <2 x ptr> %i.u, ptr %i.p, align 32, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #53
  unreachable

_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit: ; preds = %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i, %_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  invoke fastcc void @_ZN12_GLOBAL__N_18do_parseEONS_21utf8_reader_interfaceE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 872
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !153
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #50, !inline_history !35
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #50, !inline_history !35
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i3 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i5 = phi i32 [ %i.ac, %bb.j ], [ %i.am, %bb.k ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i5, 1
  br i1 %i.an, label %bb.l, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, !prof !155

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  ret void

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 32 dead_on_return(880) dereferenceable(896) %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18do_parseEONS_21utf8_reader_interfaceE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.toml::v3::impl::impl_ex::parser", align 8 ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store ptr %1, ptr %2, align 8, !tbaa !677
  %.ptr3.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3080) %.ptr3.i.i, i8 0, i64 3080, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3088 ; 4 uses
  call void @_ZN4toml2v35tableC1Ev(ptr noundef nonnull align 8 dereferenceable(89) %i.a) #50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3184 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3188
  store i32 1, ptr %i.c, align 4, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3192 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 3200
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 3224
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 3248
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3272
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 3296 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3312 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 3304
  store i64 0, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i8 0, i64 72, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 3400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 3416 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 3408
  store i64 0, ptr %i.o, align 8, !tbaa !67
  store i8 0, ptr %i.n, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3432 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3448 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 3440
  store i64 0, ptr %i.r, align 8, !tbaa !67
  store i8 0, ptr %i.q, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 3464
  store i8 0, ptr %i.s, align 8, !tbaa !253
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 3465
  store i8 1, ptr %i.t, align 1, !tbaa !254
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 3472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = load i64, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #50, !inline_history !674 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !150 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !156
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !154
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !154
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit.i

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 3096
  store i64 %i.v, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 3104
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 3112
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 3120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !150 ; 8 uses
  store <2 x ptr> %i.ac, ptr %i.aj, align 8, !tbaa !156
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.am, align 8, !tbaa !152
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !153
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #50, !inline_history !675
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #50, !inline_history !675
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.h ], [ %i.az, %bb.i ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.j, label %_ZN4toml2v313source_regionD2Ev.exit.i, !prof !155

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

_ZN4toml2v313source_regionD2Ev.exit.i:            ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit.i
  %.val.i = load ptr, ptr %2, align 8, !tbaa !251 ; 2 uses
  %i.bb = load ptr, ptr %.val.i, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %.val.i)
          to label %_ZNK12_GLOBAL__N_120utf8_buffered_reader8peek_eofEv.exit.i unwind label %bb.v, !inline_history !676

_ZNK12_GLOBAL__N_120utf8_buffered_reader8peek_eofEv.exit.i: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i
  br i1 %i.be, label %_ZN4toml2v34impl7impl_ex6parserC2EON12_GLOBAL__N_121utf8_reader_interfaceE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK12_GLOBAL__N_120utf8_buffered_reader8peek_eofEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 3080 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !247 ; 3 uses
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !247
  %.not9.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not9.i.i, label %bb.m, label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread18.i

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.i

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread18.i: ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 3064
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !249
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 3056
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !250
  %reass.sub = sub i64 %i.bl, %i.bg
  %i.bo = add i64 %reass.sub, 1
  %i.bp = add i64 %i.bo, %i.bn
  %i.bq = urem i64 %i.bp, 127
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %.ptr3.i.i, i64 %i.bq
  store ptr %i.br, ptr %i.d, align 8, !tbaa !239
  br label %bb.u

bb.n:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 3056 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !250 ; 4 uses
  %.not6.i.i = icmp eq i64 %i.bt, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 3072 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not7.i.i = icmp eq ptr %i.bv, null            ; 2 uses
  %i.bw = select i1 %.not6.i.i, i1 %.not7.i.i, i1 false
  br i1 %i.bw, label %bb.o, label %bb.p, !prof !155

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %2, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %.noexc.i unwind label %bb.v, !inline_history !31 ; 2 uses

.noexc.i:                                         ; preds = %bb.o
  store ptr %i.cb, ptr %i.bu, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.i

bb.p:                                             ; preds = %bb.n
  br i1 %.not7.i.i, label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread.i, label %bb.q

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread.i: ; preds = %bb.p
  store ptr null, ptr %i.d, align 8, !tbaa !239
  br label %_ZN4toml2v34impl7impl_ex6parserC2EON12_GLOBAL__N_121utf8_reader_interfaceE.exit

bb.q:                                             ; preds = %bb.p
  %i.cc = icmp ult i64 %i.bt, 127
  br i1 %i.cc, label %bb.r, label %bb.s, !prof !155

bb.r:                                             ; preds = %bb.q
  %i.cd = add nuw nsw i64 %i.bt, 1
  store i64 %i.cd, ptr %i.bs, align 8, !tbaa !250
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 3064 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !249 ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !249
  %i.ch = add i64 %i.cf, 127
  %i.ci = urem i64 %i.ch, 127
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink13.i.i = phi i64 [ %i.ci, %bb.s ], [ %i.bt, %bb.r ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.ptr3.i.i, i64 %.sink13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  %i.ck = load ptr, ptr %2, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
          to label %.noexc5.i unwind label %bb.v, !inline_history !31 ; 2 uses

.noexc5.i:                                        ; preds = %bb.t
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.i

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.i: ; preds = %.noexc5.i, %.noexc.i, %bb.m
  %.0.i.i = phi ptr [ %i.co, %.noexc5.i ], [ %i.bj, %bb.m ], [ %i.cb, %.noexc.i ] ; 2 uses
  store ptr %.0.i.i, ptr %i.d, align 8, !tbaa !239
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %_ZN4toml2v34impl7impl_ex6parserC2EON12_GLOBAL__N_121utf8_reader_interfaceE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.i, %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread18.i
  invoke void @_ZN4toml2v34impl7impl_ex6parser14parse_documentEv(ptr noundef nonnull align 8 dereferenceable(3496) %2)
          to label %_ZN4toml2v34impl7impl_ex6parserC2EON12_GLOBAL__N_121utf8_reader_interfaceE.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.o, %_ZN4toml2v313source_regionD2Ev.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.q
end_hunk_3
begin_hunk_4_@_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEEN12_GLOBAL__N_117escaped_codepointES8_EEEvNS0_15source_positionEDpRKT_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull readonly align 1 @.str.54, i64 %spec.select.i10.i, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.i10.i ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !124
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.g, %bb.a ], [ %i.m, %bb.b ] ; 3 uses
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not.i.i = icmp ult ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.c, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, !prof !168

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load ptr, ptr %i.p, align 8
  %.val5 = load i64, ptr %2, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %.val5) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val6, i64 %spec.select.i.i, i1 false)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select.i.i
  store ptr %i.u, ptr %i.b, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit: ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.c
  %.val7 = load ptr, ptr %3, align 8
  call fastcc void @_ZN12_GLOBAL__N_113error_builder6appendINS_17escaped_codepointEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(528) %6, ptr %.val7) #50
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !333  ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %.not.i.i8 = icmp ult ptr %i.w, %i.v
  br i1 %.not.i.i8, label %bb.d, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit10, !prof !168

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val4 = load ptr, ptr %i.x, align 8
  %.val = load i64, ptr %4, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  %spec.select.i.i9 = call i64 @llvm.umin.i64(i64 %i.aa, i64 %.val) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr readonly align 1 %.val4, i64 %spec.select.i.i9, i1 false)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select.i.i9
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit10

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit10: ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, %bb.d
  %i.ad = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #50, !inline_history !32
  call fastcc void @_ZNK12_GLOBAL__N_113error_builder6finishERKN4toml2v315source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(528) %6, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #54
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZNK4toml2v34impl7impl_ex6parser16current_positionEj(ptr noundef nonnull align 8 dereferenceable(3496) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !154
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3188
  %i.f = load i32, ptr %i.e, align 4, !tbaa !291
  %i.g = add i32 %i.f, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %.sroa.3.0 = phi i32 [ %.sroa.3.0.copyload, %bb.b ], [ %i.g, %bb.c ]
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 8, !tbaa !154
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113error_builder6appendINS_17escaped_codepointEEEvRKT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(528) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #35 align 2 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !124  ; 5 uses
  %.not.i = icmp ult ptr %i.e, %i.d
  br i1 %.not.i, label %bb.b, label %_ZN12_GLOBAL__N_111concatenateINS_17escaped_codepointEEEvRPcS2_RKT_.exit, !prof !168

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %.0.val, align 8, !tbaa !334 ; 6 uses
  %i.g = icmp ult i32 %i.f, 128
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.f, 32
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.f, 127
  br i1 %i.k, label %_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit.i

_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i.i = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.d ], [ %i.l, %bb.f ], [ @.str.29, %bb.e ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %i.n, %bb.f ], [ 6, %bb.e ]
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = sub i64 %i.o, %i.p
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.0.0.i.i) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr readonly align 1 %.sroa.4.0.i.i, i64 %spec.select.i.i, i1 false)
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_111concatenateINS_17escaped_codepointEEEvRPcS2_RKT_.exit

bb.g:                                             ; preds = %bb.b
  %i.t = icmp ugt i32 %i.f, 65535                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i8 92, ptr %i.a, align 1, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.v = select i1 %i.t, i8 85, i8 117
  store i8 %i.v, ptr %i.u, align 1, !tbaa !69
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i64 0, ptr %scevgep.i, align 1
  %i.w = select i1 %i.t, i64 10, i64 6            ; 2 uses
  br label %bb.h

_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit30.i: ; preds = %bb.h
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = sub i64 %i.x, %i.y
  %spec.select.i29.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.w) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull readonly align 1 %i.a, i64 %spec.select.i29.i, i1 false)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.select.i29.i
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_111concatenateINS_17escaped_codepointEEEvRPcS2_RKT_.exit

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i = phi i64 [ %i.w, %bb.g ], [ %i.ac, %bb.h ]
  %.0193.i = phi i32 [ %i.f, %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %i.ac = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.ad = and i32 %.0193.i, 15                    ; 3 uses
  %i.ae = icmp samesign ugt i32 %i.ad, 9
  %i.af = add nuw nsw i32 %i.ad, 55
  %i.ag = or disjoint i32 %i.ad, 48
  %i.ah = select i1 %i.ae, i32 %i.af, i32 %i.ag
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !69
  %i.ak = lshr i32 %.0193.i, 4
  %.wide.i = icmp ugt i64 %i.ac, 2
  br i1 %.wide.i, label %bb.h, label %_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit30.i, !llvm.loop !776

_ZN12_GLOBAL__N_111concatenateINS_17escaped_codepointEEEvRPcS2_RKT_.exit: ; preds = %bb.a, %_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit.i, %_ZN12_GLOBAL__N_111concatenateISt17basic_string_viewIcSt11char_traitsIcEEEEvRPcS5_RKT_.exit30.i
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113error_builder6finishERKN4toml2v315source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #36 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !777
  store i8 0, ptr %i.b, align 1, !tbaa !69
  %i.c = tail call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  tail call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #50
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 4, !tbaa !154    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = load <2 x ptr>, ptr %3, align 8, !tbaa !156
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !154
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !154
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1)
          to label %_ZN4toml2v313source_regionD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #53
  unreachable

_ZN4toml2v313source_regionD2Ev.exit:              ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4toml2v32ex11parse_errorE, i64 16), ptr %0, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %i.d, ptr %i.m, align 8, !tbaa !156
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4toml2v32ex11parse_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4toml2v32ex11parse_errorE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !40
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !40
  br label %_ZN4toml2v313source_regionD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4toml2v313source_regionD2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit

_ZN4toml2v313source_regionD2Ev.exit:              ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #50
  ret void
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4toml2v32ex11parse_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4toml2v32ex11parse_errorE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v32ex11parse_errorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !778
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !778
  br label %_ZN4toml2v32ex11parse_errorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4toml2v32ex11parse_errorD2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !779
  br label %_ZN4toml2v32ex11parse_errorD2Ev.exit

_ZN4toml2v32ex11parse_errorD2Ev.exit:             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(48) %0) #50, !inline_history !779
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #51
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %0) local_unnamed_addr #37 comdat {
bb.a:
  switch i32 %0, label %bb.b [
    i32 32, label %switch.edge
    i32 9, label %switch.edge
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, -65280
  %or.cond.i.i.i = icmp ult i32 %i.a, -65120
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw i32 %0 to i16                  ; 4 uses
  %.lhs.trunc.i.i.i = add i16 %i.b, -160
  %i.c = udiv i16 %.lhs.trunc.i.i.i, 1018         ; 2 uses
  %.zext.i.i.i = zext nneg i16 %i.c to i64
  %i.d = shl nuw i64 1, %.zext.i.i.i
  %i.e = and i64 %i.d, 9223372036854773598
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN4toml2v34impl13is_whitespaceEDi.exit

bb.d:                                             ; preds = %bb.c
  switch i16 %i.b, label %bb.e [
    i16 -257, label %switch.edge
    i16 12288, label %switch.edge
    i16 160, label %switch.edge
  ]

bb.e:                                             ; preds = %bb.d
end_hunk_4
begin_hunk_5_@_ZN4toml2v34impl7impl_ex6parser26parse_value_known_prefixesEv:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 4, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.w, %bb.b
  %i.l = phi i32 [ %i.bw, %bb.w ], [ %i.d, %bb.b ] ; 7 uses
  %.not16 = icmp eq i32 %i.l, 95
  br i1 %.not16, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !784, !nonnull !105, !align !269 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !785, !nonnull !105, !align !252 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !123  ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 5 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !123
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  store i32 %i.l, ptr %i.q, align 4, !tbaa !241
  %i.r = add i32 %i.l, -48
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.l, -33
  %i.u = add i32 %i.t, -65
  %i.v = icmp ult i32 %i.u, 26
  br i1 %i.v, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.w = or i32 %i.l, 32
  switch i32 %i.w, label %.thread [
    i32 98, label %bb.g
    i32 101, label %bb.i
    i32 111, label %bb.m
    i32 112, label %bb.o
    i32 120, label %bb.p
    i32 116, label %.thread.sink.split
    i32 122, label %bb.t
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.p, 2
  br i1 %i.x, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !105, !align !252
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !266
  %i.ab = and i32 %i.aa, 16384
  %.not25 = icmp eq i32 %i.ab, 0
  br i1 %.not25, label %.thread, label %.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %i.p, 1
  br i1 %i.ac, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !787, !nonnull !105, !align !252
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !789, !nonnull !105, !align !269
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !266 ; 2 uses
  %i.ag = and i32 %i.af, 506
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = and i32 %i.af, 1536
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !105, !align !252
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.am = load i32, ptr %i.al, align 4, !tbaa !266
  %i.an = and i32 %i.am, 4096
  %.not24 = icmp eq i32 %i.an, 0
  br i1 %.not24, label %.thread, label %.thread.sink.split

bb.m:                                             ; preds = %bb.f
  %i.ao = icmp eq i64 %i.p, 2
  br i1 %i.ao, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !105, !align !252
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !266
  %i.as = and i32 %i.ar, 16384
  %.not23 = icmp eq i32 %i.as, 0
  br i1 %.not23, label %.thread, label %.thread.sink.split

bb.o:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !105, !align !252
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.av = load i32, ptr %i.au, align 4, !tbaa !266
  %i.aw = and i32 %i.av, 64
  %.not22 = icmp eq i32 %i.aw, 0
  br i1 %.not22, label %.thread, label %.thread.sink.split

bb.p:                                             ; preds = %bb.f
  switch i64 %i.p, label %.thread [
    i64 2, label %bb.q
    i64 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !105, !align !252
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !266
  %i.ba = and i32 %i.az, 16384
  %.not21 = icmp eq i32 %i.ba, 0
  br i1 %.not21, label %.thread, label %.thread.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !105, !align !252
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !278, !nonnull !105, !align !269
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !266
  %i.be = and i32 %i.bd, 4096
  %.not20 = icmp eq i32 %i.be, 0
  br i1 %.not20, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !241
  %i.bh = icmp eq i32 %i.bg, 48
  br i1 %i.bh, label %.thread.sink.split, label %.thread

bb.t:                                             ; preds = %bb.f
  br label %.thread.sink.split

bb.u:                                             ; preds = %bb.e
  %i.bi = icmp ult i32 %i.l, 59
  br i1 %i.bi, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %switch.tableidx = add nsw i32 %i.l, -43        ; 3 uses
  %i.bj = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -32755, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.bj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.v
  %i.bk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv, i64 %i.bk
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %switch.lookup, %bb.f, %bb.q, %bb.s, %bb.o, %bb.n, %bb.k, %bb.l, %bb.h, %bb.d, %bb.t
  %.sink30 = phi i32 [ 16, %bb.o ], [ 4, %bb.l ], [ 64, %bb.s ], [ %switch.ext, %switch.lookup ], [ 32, %bb.f ], [ 64, %bb.q ], [ 128, %bb.t ], [ 1, %bb.d ], [ 2, %bb.h ], [ 4, %bb.k ], [ 8, %bb.n ]
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !790, !nonnull !105, !align !252
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !268, !nonnull !105, !align !269 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !266
  %i.bo = or i32 %i.bn, %.sink30
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !266
  br label %.thread

.thread:                                          ; preds = %bb.v, %.thread.sink.split, %bb.p, %bb.q, %bb.u, %bb.f, %bb.h, %bb.g, %bb.l, %bb.j, %bb.i, %bb.n, %bb.m, %bb.o, %bb.s, %bb.r, %bb.c
  tail call void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %i.a)
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !791, !nonnull !105, !align !252 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.br = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !123
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !239 ; 2 uses
  %.not17 = icmp eq ptr %i.bs, null               ; 2 uses
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !792, !nonnull !105
  %i.bu = zext i1 %.not17 to i8
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !258
  %i.bv = icmp ugt i64 %i.br, 126
  %brmerge = select i1 %i.bv, i1 true, i1 %.not17
  br i1 %brmerge, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !241 ; 2 uses
  %i.bx = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.bw) #56
  br i1 %i.bx, label %.critedge, label %bb.c, !llvm.loop !783

.critedge:                                        ; preds = %.thread, %bb.w, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !272, !nonnull !105, !align !252 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !273, !nonnull !105, !align !252 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %i.h = sub i64 %i.d, %i.g
  %i.i = icmp ne i64 %i.d, %i.g
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3056
  %i.k = load i64, ptr %i.j, align 8, !tbaa !250  ; 3 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3080 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !247
  %i.o = add i64 %i.n, %i.h                       ; 4 uses
  %i.p = icmp ule i64 %i.o, %i.k
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.o, ptr %i.m, align 8, !tbaa !247
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3064
  %i.s = load i64, ptr %i.r, align 8, !tbaa !249
  %i.t = sub i64 %i.k, %i.o
  %i.u = add i64 %i.t, %i.s
  %i.v = urem i64 %i.u, 127
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.v
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !248
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.w, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3192
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !239
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 3184
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !154
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !154
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !123
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !123
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !274, !nonnull !105, !align !269
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !266
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !275, !nonnull !105, !align !269
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !266
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !276, !nonnull !105, !align !252
  store i64 10, ptr %i.al, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef double @_ZN4toml2v34impl7impl_ex6parser15parse_hex_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit:
  %.sroa.4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !212
  store i64 26, ptr %i.a, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.101, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 77, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.102, ptr %i.b, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit
  unreachable

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm16EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 11 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !212
  store i64 19, ptr %i.d, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.110, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !239  ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !241  ; 4 uses
  %.not = icmp eq i32 %i.f, 48
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 19, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.103, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.h = icmp ult i32 %i.f, 32
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.f, 127
  br i1 %i.k, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.c ], [ %i.l, %bb.e ], [ @.str.29, %bb.d ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.c ], [ %i.n, %bb.e ], [ 6, %bb.d ]
  store i64 %.sroa.0.0.i, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 1, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.16, ptr %i.p, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.cf

bb.h:                                             ; preds = %bb.a
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !239  ; 4 uses
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %bb.j, label %bb.n, !prof !155

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 23, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.s, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.u, %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.cf

bb.n:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.r, align 4, !tbaa !241  ; 4 uses
  %.not51 = icmp eq i32 %i.v, 120
  br i1 %.not51, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 10, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 8, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.99, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.y = icmp ult i32 %i.v, 32
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i71 = load i64, ptr %i.aa, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4.0.copyload.i73 = load ptr, ptr %.sroa.4.0..sroa_idx.i72, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit74

bb.q:                                             ; preds = %bb.o
  %i.ab = icmp eq i32 %i.v, 127
  br i1 %i.ab, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit74, label %bb.r

end_hunk_5
begin_hunk_6_@_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.ez = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader.i53
  %.0.in27.i = phi i32 [ %.022.i.i52, %.preheader.i53 ], [ %.0.i, %bb.ae ]
  %.02026.i = phi i64 [ %2, %.preheader.i53 ], [ %i.fa, %bb.ae ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.fa = udiv i64 %.02026.i, %i.ez               ; 3 uses
  %i.fb = urem i64 %.02026.i, %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !69
  %i.fe = zext i32 %.0.i to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !69
  %.not.i55 = icmp ult i64 %i.fa, %i.ed
  br i1 %.not.i55, label %._crit_edge.i56, label %bb.ae, !llvm.loop !44

._crit_edge.i56:                                  ; preds = %bb.ae, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.fg = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.et, %bb.ae ]
  %.020.lcssa.i = phi i64 [ %2, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fa, %bb.ae ]
  %i.fh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fi, %._crit_edge.i56 ], [ %i.bt, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bv, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.fg, %._crit_edge.i56 ], [ %i.av, %bb.p ], [ %i.cc, %bb.u ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.av, %bb.q ], [ %i.db, %.preheader.i ], [ %i.db, %.lr.ph.i42 ], [ %i.db, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !69
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fj, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #39

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105
  %i.c = load i32, ptr %i.b, align 4, !tbaa !241  ; 4 uses
  %i.d = icmp eq i32 %i.c, 39                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !212
  store i64 6, ptr %i.e, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store ptr @.str.82, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3432
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3440
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !155

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.j, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.ac

bb.g:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.i, align 8, !tbaa !334  ; 2 uses
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not16 = icmp eq ptr %i.n, null
  br i1 %.not16, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.o = icmp eq i32 %i.m, %i.c
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 23, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.13, ptr %i.q, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.ac

bb.o:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.n, align 8, !tbaa !334
  %i.t = icmp eq i32 %i.c, %i.m
  %i.u = icmp eq i32 %i.c, %i.s
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.d, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.v = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser20parse_literal_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.w = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser18parse_basic_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink26 = phi { i64, ptr } [ %i.v, %bb.q ], [ %i.w, %bb.r ] ; 2 uses
  %i.x = extractvalue { i64, ptr } %.sink26, 0
  store i64 %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = extractvalue { i64, ptr } %.sink26, 1
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aa, align 8, !tbaa !345
  br label %bb.ab

bb.t:                                             ; preds = %bb.x, %bb.z, %bb.y, %bb.r, %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 3056
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !250 ; 3 uses
  %i.ae = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3080 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !247 ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 3 uses
  %i.ai = icmp ule i64 %i.ah, %i.ad
  tail call void @llvm.assume(i1 %i.ai)
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !247
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !249
  %reass.sub = sub i64 %i.ad, %i.ag
  %i.am = add i64 %reass.sub, -2
  %i.an = add i64 %i.am, %i.al
  %i.ao = urem i64 %i.an, 127
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ao
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.w:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !248
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.v, %bb.w
  %i.as = phi ptr [ %i.ap, %bb.v ], [ %i.ar, %bb.w ] ; 2 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !239
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.av = load i64, ptr %i.at, align 8, !tbaa !154
  store i64 %i.av, ptr %i.au, align 8, !tbaa !154
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 3464
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !253, !range !104, !noundef !105
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.x:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.h, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.x, %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  br i1 %i.d, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.az = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser20parse_literal_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.t

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ba = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser18parse_basic_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink29 = phi { i64, ptr } [ %i.az, %bb.y ], [ %i.ba, %bb.z ] ; 2 uses
  %i.bb = extractvalue { i64, ptr } %.sink29, 0
  store i64 %i.bb, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = extractvalue { i64, ptr } %.sink29, 1
  store ptr %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !345
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.s, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.ac:                                            ; preds = %bb.k, %bb.t, %bb.n, %bb.f, %bb.e
  %.pn20 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.p, %bb.k ], [ %i.ab, %bb.t ], [ %i.r, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser13parse_booleanEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 7, ptr %i.b, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.95, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  store i8 1, ptr %i.c, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3465
  store i8 1, ptr %i.d, align 1, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !67
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !66
  store i8 0, ptr %i.g, align 1, !tbaa !69
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246  ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !67
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.n, i64 noundef %i.j)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge unwind label %bb.b ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.p = load i32, ptr %.pre, align 4, !tbaa !241 ; 2 uses
  %i.q = and i32 %i.p, -33
  %i.r = icmp eq i32 %i.q, 84                     ; 3 uses
  %i.s = add i32 %i.p, -84
  %switch.and = and i32 %i.s, -33
  %switch.selectcmp = icmp eq i32 %switch.and, 0  ; 2 uses
  %.sroa.0.0 = select i1 %switch.selectcmp, i64 16, i64 20
  %.sroa.3.0 = select i1 %switch.selectcmp, ptr @.str.96, ptr @.str.97 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 %.sroa.0.0
  br label %.lr.ph.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #53
  unreachable

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge, %.noexc13
  %.01018.i = phi ptr [ %i.aa, %.noexc13 ], [ %.sroa.3.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge ] ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not13.i = icmp eq ptr %i.w, null
  br i1 %.not13.i, label %bb.c, label %bb.d, !prof !155

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.x, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = load i32, ptr %.01018.i, align 4, !tbaa !241
  %i.z = load i32, ptr %i.w, align 4, !tbaa !241
  %.not14.i = icmp eq i32 %i.z, %i.y
  br i1 %.not14.i, label %bb.e, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.01018.i, i64 4 ; 2 uses
  %.not.i12 = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i12, label %bb.h, label %.lr.ph.i

_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 10, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.98, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.ac = select i1 %i.r, i64 4, i64 5
  store i64 %i.ac, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = select i1 %i.r, ptr @.str, ptr @.str.1
  store ptr %i.ae, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 8, ptr %4, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.99, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.val = load ptr, ptr %i.e, align 8, !tbaa !66
  %.val11 = load i64, ptr %i.f, align 8, !tbaa !67
  store i64 %.val11, ptr %5, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.val, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 1, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.16, ptr %i.ah, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  unreachable

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.q

bb.h:                                             ; preds = %.noexc13
  store i8 0, ptr %i.c, align 8, !tbaa !253
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !239 ; 4 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.p, label %bb.i
end_hunk_6
begin_hunk_7_@_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8is_valueEv:bb.a
; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE9is_stringEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10is_integerEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE17is_floating_pointEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE9is_numberEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10is_booleanEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7is_dateEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7is_timeEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE12is_date_timeEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE8as_tableEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE8as_arrayEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE9as_stringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE10as_integerEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE17as_floating_pointEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE10as_booleanEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE7as_dateEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE7as_timeEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE12as_date_timeEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8as_tableEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8as_arrayEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE9as_stringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10as_integerEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE17as_floating_pointEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10as_booleanEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7as_dateEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7as_timeEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE12as_date_timeEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser9parse_keyEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"struct.(anonymous namespace)::parsed_string", align 8 ; 7 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 3, ptr %i.b, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.159, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3296 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3304 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !67
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !66
  store i8 0, ptr %i.e, align 1, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !298  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3336 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !297
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt4pairImmES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairImmES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  store ptr %i.g, ptr %i.h, align 8, !tbaa !297
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit.i:  ; preds = %_ZSt8_DestroyIPSt4pairImmES1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !303  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !824
  %.not.i.i1.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4toml2v315source_positionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4toml2v315source_positionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit.i
  store ptr %i.k, ptr %i.l, align 8, !tbaa !824
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4toml2v315source_positionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3376 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !303  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3384 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !824
  %.not.i.i2.i = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i2.i, label %_ZN12_GLOBAL__N_116parse_key_buffer5clearEv.exit, label %_ZSt8_DestroyIPN4toml2v315source_positionES2_EvT_S4_RSaIT0_E.exit.i.i3.i

_ZSt8_DestroyIPN4toml2v315source_positionES2_EvT_S4_RSaIT0_E.exit.i.i3.i: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE5clearEv.exit.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !824
  br label %_ZN12_GLOBAL__N_116parse_key_buffer5clearEv.exit

_ZN12_GLOBAL__N_116parse_key_buffer5clearEv.exit: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE5clearEv.exit.i, %_ZSt8_DestroyIPN4toml2v315source_positionES2_EvT_S4_RSaIT0_E.exit.i.i3.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3465 ; 3 uses
  store i8 0, ptr %i.r, align 1, !tbaa !254
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3188 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3392 ; 3 uses
  br label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit

_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit: ; preds = %bb.ao, %_ZN12_GLOBAL__N_116parse_key_buffer5clearEv.exit
  %i.y = phi ptr [ %.pr, %_ZN12_GLOBAL__N_116parse_key_buffer5clearEv.exit ], [ %i.ev, %bb.ao ] ; 6 uses
  %.not.i = icmp eq ptr %i.y, null                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.sroa.0.0.in.i = select i1 %.not.i, ptr %i.s, ptr %i.z
  %.sroa.3.0.i.in = select i1 %.not.i, ptr %i.t, ptr %.sroa.3.0..sroa_idx.i
  %.sroa.3.0.i = load i32, ptr %.sroa.3.0.i.in, align 4, !tbaa !154
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.in.i, align 8, !tbaa !154
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.3.0.i to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !241 ; 7 uses
  %i.ab = add i32 %i.aa, -123
  %or.cond.i.i24 = icmp ult i32 %i.ab, -78
  br i1 %or.cond.i.i24, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27

_ZN4toml2v34impl21is_bare_key_characterEDi.exit27: ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = add nsw i64 %i.ac, -45
  %.not.i.i25 = icmp samesign ugt i32 %i.aa, 108
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, -3307330977390599
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = select i1 %.not.i.i25, i1 true, i1 %i.ag
  br i1 %i.ah, label %bb.a, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread

bb.a:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27
  %i.ai = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser22parse_bare_key_segmentEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1
  br label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39

bb.c:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread: ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27
  switch i32 %i.aa, label %bb.l [
    i32 39, label %bb.d
    i32 34, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread
  %.sroa.05.0.copyload = load i64, ptr %i.z, align 8, !tbaa !154
  store i8 1, ptr %i.r, align 1, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  invoke fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.r, align 1, !tbaa !254
  %i.am = load i8, ptr %i.u, align 8, !tbaa !345, !range !104, !noundef !105
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 37, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.160, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !825
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !825
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  %spec.select = select i1 %i.ar, i64 0, i64 7
  %spec.select126 = select i1 %i.ar, ptr @.str.7, ptr @.str.161
  store i64 %spec.select, ptr %3, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select126, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 4, ptr %4, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.162, ptr %i.at, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !123
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.au, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.as

bb.l:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 63, ptr %5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.163, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.ax = icmp ult i32 %i.aa, 32
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = zext nneg i32 %i.aa to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.ay ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.az, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.n:                                             ; preds = %bb.l
  %i.ba = icmp eq i32 %i.aa, 127
  br i1 %i.ba, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.m ], [ %i.bb, %bb.o ], [ @.str.29, %bb.n ]
  %.sroa.0.0.i28 = phi i64 [ %.sroa.0.0.copyload.i, %bb.m ], [ %i.bd, %bb.o ], [ 6, %bb.n ]
  store i64 %.sroa.0.0.i28, ptr %6, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.4.0.i, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 1, ptr %7, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.16, ptr %i.bf, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.as

_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39: ; preds = %bb.j, %bb.b
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.b ], [ %.sroa.0.0.copyload, %bb.j ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.ak, %bb.b ], [ %.sroa.7.0.copyload, %bb.j ]
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !239 ; 3 uses
  %.not.i29 = icmp eq ptr %i.bh, null             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.3.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %.sroa.0.0.in.i32 = select i1 %.not.i29, ptr %i.s, ptr %i.bi
  %.sroa.3.0.i33.in = select i1 %.not.i29, ptr %i.t, ptr %.sroa.3.0..sroa_idx.i30
  %.sroa.3.0.i33 = load i32, ptr %.sroa.3.0.i33.in, align 4, !tbaa !154
  %.sroa.0.0.i34 = load i32, ptr %.sroa.0.0.in.i32, align 8, !tbaa !154
  %.sroa.3.0.insert.ext.i35 = zext i32 %.sroa.3.0.i33 to i64
  %.sroa.3.0.insert.shift.i36 = shl nuw i64 %.sroa.3.0.insert.ext.i35, 32
  %.sroa.0.0.insert.ext.i37 = zext i32 %.sroa.0.0.i34 to i64
  %.sroa.0.0.insert.insert.i38 = or disjoint i64 %.sroa.3.0.insert.shift.i36, %.sroa.0.0.insert.ext.i37 ; 2 uses
  %i.bj = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.r unwind label %.loopexit  ; 0 uses

bb.r:                                             ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !297 ; 6 uses
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !346
  %.not.i.i.i40 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.bk, ptr %i.bl, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !297
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bo, ptr %i.h, align 8, !tbaa !297
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !298 ; 5 uses
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775792
  br i1 %i.bt, label %.invoke, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.aa, %bb.w, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i, %bb.t
  %i.bu = phi ptr [ @.str.65, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i ], [ @.str.63, %bb.t ], [ @.str.63, %bb.w ], [ @.str.63, %bb.aa ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bu) #54
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.bv = ashr exact i64 %i.bs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 576460752303423487)
  %i.bz = select i1 %i.bx, i64 576460752303423487, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #55
          to label %.noexc42 unwind label %.loopexit ; 5 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bs ; 2 uses
  store i64 %i.bk, ptr %i.cc, align 8
  %.sroa.5.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx11.i, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc42, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cb, %.noexc42 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bp, %.noexc42 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !826
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !823

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc42
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.noexc42 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !346
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.ci) #51
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.f, align 8, !tbaa !298
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !297
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cj, ptr %i.v, align 8, !tbaa !346
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.s
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !67
  %i.cl = sub i64 4611686018427387903, %i.ck
  %i.cm = icmp ult i64 %i.cl, %.sroa.0.0
  br i1 %i.cm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef %.sroa.7.0, i64 noundef %.sroa.0.0)
          to label %.noexc44 unwind label %.loopexit ; 0 uses

.noexc44:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.co = load ptr, ptr %i.l, align 8, !tbaa !824 ; 4 uses
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !347
  %.not.i.i41 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc44
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.co, align 4, !tbaa !154
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cq, ptr %i.l, align 8, !tbaa !824
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i

bb.w:                                             ; preds = %.noexc44
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !303 ; 4 uses
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 5 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %.invoke, label %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.da, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #55
          to label %.noexc46 unwind label %.loopexit ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cu ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dd, align 4, !tbaa !154
  %i.de = icmp sgt i64 %i.cu, 0
  br i1 %i.de, label %bb.x, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr align 4 %i.cr, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.x, %.noexc46
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.dg = load ptr, ptr %i.w, align 8, !tbaa !347
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.di) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !303
  store ptr %i.df, ptr %i.l, align 8, !tbaa !824
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dj, ptr %i.w, align 8, !tbaa !347
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.v
  %i.dk = load ptr, ptr %i.p, align 8, !tbaa !824 ; 4 uses
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !347
  %.not.i1.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i
  store i64 %.sroa.0.0.insert.insert.i38, ptr %i.dk, align 4, !tbaa !154
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dm, ptr %i.p, align 8, !tbaa !824
  br label %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !303 ; 4 uses
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 5 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %.invoke, label %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i

_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i: ; preds = %bb.aa
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i3.i = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i3.i, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i4.i = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i4.i)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #55
          to label %.noexc48 unwind label %.loopexit ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i38, ptr %i.dz, align 4, !tbaa !154
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.ab, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i

bb.ab:                                            ; preds = %.noexc48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 4 %i.dn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i: ; preds = %bb.ab, %.noexc48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.not.i17.i.i6.i = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i6.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i
  %i.ec = load ptr, ptr %i.x, align 8, !tbaa !347
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ee) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i: ; preds = %bb.ac, %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i
  store ptr %i.dy, ptr %i.n, align 8, !tbaa !303
  store ptr %i.eb, ptr %i.p, align 8, !tbaa !824
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ef, ptr %i.x, align 8, !tbaa !347
  br label %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit

_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i, %bb.z
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !297
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !298
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = icmp ugt i64 %i.ek, 16384
  br i1 %i.el, label %bb.ad, label %bb.ag, !prof !155

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 38, ptr %8, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.164, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 29, ptr %9, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.165, ptr %i.en, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmS8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4toml2v34impl7impl_ex6parser21max_dotted_keys_depthE, ptr noundef nonnull align 8 dereferenceable(16) %9) #54
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

.loopexit:                                        ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39, %bb.ai, %bb.an, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i, %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.af:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.as

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !239 ; 2 uses
  %.not = icmp eq ptr %i.ep, null
  br i1 %.not, label %bb.at, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !241
  %.not18 = icmp eq i32 %i.eq, 46
  br i1 %.not18, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.aj unwind label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not19 = icmp eq ptr %i.er, null
  br i1 %.not19, label %bb.ak, label %bb.an, !prof !155

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 23, ptr %10, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.13, ptr %i.es, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %10) #54
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  br label %bb.as

bb.an:                                            ; preds = %bb.aj
  %i.eu = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.ao unwind label %.loopexit ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !239 ; 2 uses
  %.not20 = icmp eq ptr %i.ev, null
  br i1 %.not20, label %bb.ap, label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, !prof !155

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  store i64 23, ptr %11, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.13, ptr %i.ew, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %11) #54
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.am, %bb.ar, %bb.q, %bb.k, %bb.c
  %.pn21.pn = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.al, %bb.c ], [ %.pn, %bb.k ], [ %i.eo, %bb.af ], [ %i.et, %bb.am ], [ %i.ex, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn21.pn

bb.at:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i1 true
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #34 comdat align 2 {
bb.a:
  %5 = alloca %"struct.toml::v3::source_position", align 8 ; 2 uses
  %6 = alloca %"struct.(anonymous namespace)::error_builder", align 8 ; 7 uses
  store i64 %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 520 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 511
  store ptr %i.d, ptr %i.c, align 8, !tbaa !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %6, ptr noundef nonnull readonly align 1 dereferenceable(20) @.str.67, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !124
  %spec.select.i7.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload, i64 491) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr readonly align 1 %.sroa.2.0.copyload, i64 %spec.select.i7.i, i1 false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.i7.i ; 5 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !124
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !333  ; 3 uses
  %.not.i9.i = icmp ult ptr %i.g, %i.h
  br i1 %.not.i9.i, label %bb.b, label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !168

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %spec.select.i10.i = call i64 @llvm.umin.i64(i64 %i.k, i64 2) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull readonly align 1 @.str.54, i64 %spec.select.i10.i, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.i10.i ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !124
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.g, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.not.i.i = icmp ult ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.c, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, !prof !168

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.p, align 8
  %.val7 = load i64, ptr %2, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %.val7) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val8, i64 %spec.select.i.i, i1 false)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select.i.i ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !124
  %.pre15 = load ptr, ptr %i.c, align 8, !tbaa !333
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit
end_hunk_7
begin_hunk_8_@_ZN4toml2v35table12emplace_hintIS1_NS0_3keyEJETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringIS5_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSA_ILb1EEES6_DpOT1_:bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZN4toml2v33keyC2EOS1_.exit

_ZN4toml2v33keyC2EOS1_.exit:                      ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !67
  store ptr %i.e, ptr %3, align 8, !tbaa !66
  store i64 0, ptr %i.m, align 8, !tbaa !67
  store i8 0, ptr %i.e, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !156
  store ptr null, ptr %i.t, align 8, !tbaa !150
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !156
  store ptr null, ptr %i.r, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store ptr null, ptr %5, align 8, !tbaa !257
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = invoke ptr @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJS2_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit unwind label %bb.k ; 3 uses

_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit: ; preds = %_ZN4toml2v33keyC2EOS1_.exit
  %i.x = load ptr, ptr %5, align 8, !tbaa !174    ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !150 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ac, align 8, !tbaa !152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !153
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #50, !inline_history !34
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #50, !inline_history !34
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %bb.f ], [ %i.ap, %bb.g ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.h, label %_ZN4toml2v313source_regionD2Ev.exit.i, !prof !155

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

_ZN4toml2v313source_regionD2Ev.exit.i:            ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %i.ar = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZN4toml2v33keyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i
  %i.at = load i64, ptr %i.c, align 8, !tbaa !69
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #51
  br label %_ZN4toml2v33keyD2Ev.exit

_ZN4toml2v33keyD2Ev.exit:                         ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 96 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !174
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit

bb.i:                                             ; preds = %_ZN4toml2v33keyD2Ev.exit
  %i.ax = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #55
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN4toml2v35tableC1Ev(ptr noundef nonnull align 8 dereferenceable(89) %i.ax) #50
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !174 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !174
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i: ; preds = %bb.j
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #50, !inline_history !45
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit

bb.k:                                             ; preds = %_ZN4toml2v33keyC2EOS1_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %5, align 8, !tbaa !174   ; 3 uses
  %.not.i7 = icmp eq ptr %i.bd, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit9, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i8

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i8: ; preds = %bb.k
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit9

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit9: ; preds = %bb.k, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = call ptr @__cxa_begin_catch(ptr %i.bi) #50 ; 0 uses
  %i.bk = call ptr @_ZN4toml2v35table5eraseESt23_Rb_tree_const_iteratorISt4pairIKNS0_3keyESt10unique_ptrINS0_4nodeESt14default_deleteIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr nonnull %i.w) #50 ; 0 uses
  invoke void @__cxa_rethrow() #54
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i, %bb.j, %_ZN4toml2v33keyD2Ev.exit
  store ptr %i.w, ptr %0, align 8, !tbaa !160
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bm, align 8, !tbaa !208
  ret void

bb.n:                                             ; preds = %bb.m, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit9
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %i.bc, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit9 ]
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #53
  unreachable

bb.p:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind noalias writable sret(%"class.toml::v3::key") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3496) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.toml::v3::source_region", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !298
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !300
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !301  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !303
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %2
  %i.n = load i64, ptr %i.m, align 4, !tbaa !154
  store i64 %i.n, ptr %3, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3376
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !303
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %2
  %i.s = load i64, ptr %i.r, align 4, !tbaa !154
  store i64 %i.s, ptr %i.o, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3112
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !150  ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !156
  store <2 x ptr> %i.x, ptr %i.t, align 8, !tbaa !156
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !154
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !154
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !86
  %i.ae = icmp eq ptr %i.c, null
  %i.af = icmp ne i64 %i.j, 0
  %or.cond.i.i.i.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %i.j, ptr %i.a, align 8, !tbaa !123
  %i.ag = icmp ugt i64 %i.j, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.e
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5 unwind label %bb.h    ; 2 uses

.noexc5:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %0, align 8, !tbaa !66
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc5, %bb.e
  %i.aj = phi ptr [ %i.ah, %.noexc5 ], [ %i.ad, %bb.e ] ; 2 uses
  switch i64 %i.j, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4toml2v313source_regionD2Ev.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %i.h, align 1, !tbaa !69
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !69
  br label %_ZN4toml2v313source_regionD2Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN4toml2v313source_regionD2Ev.exit

_ZN4toml2v313source_regionD2Ev.exit:              ; preds = %._crit_edge.i.i.i.i.i, %bb.f, %bb.g
  %i.al = load i64, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !67
  %i.an = load ptr, ptr %0, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load <2 x ptr>, ptr %i.t, align 8, !tbaa !156
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret void

bb.h:                                             ; preds = %.noexc.i.i.i.i, %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4toml2v313source_regionD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v35table12emplace_hintISt10unique_ptrINS0_4nodeESt14default_deleteIS4_EENS0_3keyEJS7_ETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringISA_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSF_ILb1EEESB_DpOT1_(ptr dead_on_unwind noalias writable sret(%"class.toml::v3::impl::table_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(89) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.toml::v3::key", align 8     ; 13 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !160
  %i.b = inttoptr i64 %i.a to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !86
  %i.d = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN4toml2v33keyC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %5, align 8, !tbaa !66
  %i.k = load i64, ptr %i.e, align 8, !tbaa !69
  store i64 %i.k, ptr %i.c, align 8, !tbaa !69
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZN4toml2v33keyC2EOS1_.exit

_ZN4toml2v33keyC2EOS1_.exit:                      ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !67
  store ptr %i.e, ptr %3, align 8, !tbaa !66
  store i64 0, ptr %i.m, align 8, !tbaa !67
  store i8 0, ptr %i.e, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !156
  store ptr null, ptr %i.t, align 8, !tbaa !150
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !156
  store ptr null, ptr %i.r, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store ptr null, ptr %6, align 8, !tbaa !257
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = invoke ptr @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJS2_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit unwind label %bb.j ; 2 uses

_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit: ; preds = %_ZN4toml2v33keyC2EOS1_.exit
  %i.x = load ptr, ptr %6, align 8, !tbaa !174    ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4toml2v35table16insert_with_hintENS0_4impl14table_iteratorILb1EEEONS0_3keyEOSt10unique_ptrINS0_4nodeESt14default_deleteIS8_EE.exit, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !150 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ac, align 8, !tbaa !152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !153
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #50, !inline_history !34
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #50, !inline_history !34
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !154
end_hunk_8
begin_hunk_9_@_ZN4toml2v34impl7impl_ex6parser14parse_documentEv:bb.a
  %i.l = add i32 %i.i, -123
  %or.cond.i.i = icmp ult i32 %i.l, -78
  br i1 %or.cond.i.i, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.k
  %i.m = zext nneg i32 %i.i to i64
  %i.n = add nsw i64 %i.m, -45
  %.not.i.i = icmp samesign ugt i32 %i.i, 108
  %i.o = shl nuw i64 1, %i.n
  %i.p = and i64 %i.o, -3307330977390599
  %i.q = icmp ne i64 %i.p, 0
  %i.r = select i1 %.not.i.i, i1 true, i1 %i.q
  br i1 %i.r, label %bb.l, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread: ; preds = %bb.k, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  switch i32 %i.i, label %bb.ac [
    i32 39, label %bb.l
    i32 34, label %bb.l
  ]

bb.l:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 14, ptr %i.b, align 8, !tbaa !123
  store ptr @.str.153, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.s = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser31parse_key_value_pair_and_insertEPNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef %.0)
          to label %bb.m unwind label %bb.y       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.t = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.n unwind label %bb.y       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser15consume_commentEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  br i1 %i.v, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser18consume_line_breakEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  br i1 %i.w, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 39, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.170, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !239  ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = load i32, ptr %i.y, align 8, !tbaa !334  ; 3 uses
  %i.aa = icmp ult i32 %i.z, 32
  br i1 %i.aa, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ad = icmp eq i32 %i.z, 127
  br i1 %i.ad, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit.i

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.4.0.i.i = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.u ], [ %i.ae, %bb.w ], [ @.str.29, %bb.v ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.u ], [ %i.ag, %bb.w ], [ 6, %bb.v ]
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %.sroa.4.0.i.i, 1
  br label %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit: ; preds = %bb.s, %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit.i
  %.pn.i = phi { i64, ptr } [ %.fca.1.insert.i.i, %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit.i ], [ { i64 0, ptr @.str.7 }, %bb.s ] ; 2 uses
  %i.ah = extractvalue { i64, ptr } %.pn.i, 0
  store i64 %i.ah, ptr %2, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = extractvalue { i64, ptr } %.pn.i, 1
  store ptr %i.aj, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 1, ptr %3, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.16, ptr %i.ak, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit
  unreachable

bb.y:                                             ; preds = %bb.q, %bb.o, %bb.m, %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.am, %bb.z ], [ %i.al, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.am

bb.ac:                                            ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 52, ptr %4, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.171, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.ao = icmp ult i32 %i.i, 32
  br i1 %i.ao, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ap = zext nneg i32 %i.i to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i.i31 = load i64, ptr %i.aq, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0.copyload.i.i33 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i32, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit34

bb.ae:                                            ; preds = %bb.ac
  %i.ar = icmp eq i32 %i.i, 127
  br i1 %i.ar, label %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit34, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit34

_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit34: ; preds = %bb.ad, %bb.ae, %bb.af
  %.sroa.4.0.i.i26 = phi ptr [ %.sroa.4.0.copyload.i.i33, %bb.ad ], [ %i.as, %bb.af ], [ @.str.29, %bb.ae ]
  %.sroa.0.0.i.i27 = phi i64 [ %.sroa.0.0.copyload.i.i31, %bb.ad ], [ %i.au, %bb.af ], [ 6, %bb.ae ]
  store i64 %.sroa.0.0.i.i27, ptr %5, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.4.0.i.i26, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 1, ptr %6, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.16, ptr %i.aw, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit34
  unreachable

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_15to_svEPKNS_14utf8_codepointE.exit34
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.am

bb.ai:                                            ; preds = %bb.j, %bb.aa, %bb.c, %bb.e, %bb.g
  %.1 = phi ptr [ %.0, %bb.c ], [ %.0, %bb.e ], [ %.0, %bb.g ], [ %.0, %bb.aa ], [ %i.k, %bb.j ] ; 7 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not22 = icmp eq ptr %i.ay, null
  br i1 %.not22, label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, label %bb.b, !llvm.loop !828

_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit: ; preds = %bb.ai
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3188
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !291
  %i.bc = add i32 %i.bb, 1
  %.sroa.0.0.i = load i32, ptr %i.az, align 8, !tbaa !154
  %.sroa.3.0.insert.ext.i = zext i32 %i.bc to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3104
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bd, align 8, !tbaa !154
  %i.be = icmp ne ptr %.1, null
  %i.bf = icmp ne ptr %.1, %i.c
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !107
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bj, 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !108
  %i.bn = zext i32 %i.bm to i64
  %i.bo = or disjoint i64 %i.bk, %i.bn
  %i.bp = load i32, ptr %i.bg, align 4, !tbaa !107
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bq, 32
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !108
  %i.bu = zext i32 %i.bt to i64
  %i.bv = or disjoint i64 %i.br, %i.bu
  %.not41 = icmp ugt i64 %i.bo, %i.bv
  br i1 %.not41, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bh, align 8, !tbaa !154
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.639, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  ret void

bb.am:                                            ; preds = %bb.ah, %bb.ab, %bb.h
  %.pn20 = phi { ptr, i32 } [ %i.g, %bb.h ], [ %.pn, %bb.ab ], [ %i.ax, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.639, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser18update_region_endsERNS0_4nodeE(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i8 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 2 uses
  %i.e = icmp ugt i8 %i.d, 2
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.d, 1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !144, !range !104, !noundef !105
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !197, !noalias !831 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not4147 = icmp eq ptr %i.k, %i.l
  br i1 %.not4147, label %.critedge, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit: ; preds = %bb.d, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit
  %.sroa.032.048 = phi ptr [ %i.o, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.048, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174
  tail call void @_ZN4toml2v34impl7impl_ex6parser18update_region_endsERNS0_4nodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #50
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.048) #52 ; 2 uses
  %.not41 = icmp eq ptr %i.o, %i.l
  br i1 %.not41, label %.critedge, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !154  ; 2 uses
  %.sroa.025.0.extract.trunc = trunc i64 %i.q to i32 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.q, 32    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159  ; 2 uses
  %.not42 = icmp eq ptr %i.s, %i.u
  br i1 %.not42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.v = zext i32 %.sroa.6.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.sroa.6.0.lcssa = phi i64 [ %.sroa.6.0.extract.shift, %bb.e ], [ %i.v, %._crit_edge.loopexit ]
  %.sroa.025.0.lcssa = phi i32 [ %.sroa.025.0.extract.trunc, %bb.e ], [ %.sroa.025.1, %._crit_edge.loopexit ]
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.lcssa, 32
  %.sroa.025.0.insert.ext = zext i32 %.sroa.025.0.lcssa to i64
  %.sroa.025.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.025.0.insert.ext
  store i64 %.sroa.025.0.insert.insert, ptr %i.p, align 8, !tbaa !154
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.sroa.022.045 = phi ptr [ %i.al, %bb.g ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %.sroa.025.044 = phi i32 [ %.sroa.025.1, %bb.g ], [ %.sroa.025.0.extract.trunc, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.043 = phi i32 [ %.sroa.6.1, %bb.g ], [ %.sroa.6.0.extract.trunc, %.lr.ph.preheader ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.022.045, align 8, !tbaa !174 ; 3 uses
  tail call void @_ZN4toml2v34impl7impl_ex6parser18update_region_endsERNS0_4nodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #50
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = zext i32 %.sroa.025.044 to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = zext i32 %.sroa.6.043 to i64
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !107
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !108
  %i.ah = zext i32 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = icmp ult i64 %i.ab, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %.sroa.025.0.extract.trunc27 = trunc i64 %i.ak to i32
  %.sroa.6.0.extract.shift28 = lshr i64 %i.ak, 32
  %.sroa.6.0.extract.trunc29 = trunc nuw i64 %.sroa.6.0.extract.shift28 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.6.1 = phi i32 [ %.sroa.6.0.extract.trunc29, %bb.f ], [ %.sroa.6.043, %.lr.ph ] ; 2 uses
  %.sroa.025.1 = phi i32 [ %.sroa.025.0.extract.trunc27, %bb.f ], [ %.sroa.025.044, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.022.045, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.critedge:                                        ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit, %bb.d, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116parse_key_bufferD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !347
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !298  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !346
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #51
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !69
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6431 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %33 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %34 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %35 = alloca %"class.toml::v3::key", align 8    ; 9 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %37 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %38 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %39 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %40 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %41 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %42 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %43 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %44 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %45 = alloca %"class.toml::v3::key", align 8    ; 10 uses
  %46 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %47 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %48 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %49 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6431)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6431, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !212
  store i64 12, ptr %i.c, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.172, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.093.0.copyload = load i64, ptr %i.d, align 8, !tbaa !154 ; 8 uses
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not143 = icmp eq ptr %i.e, null
  br i1 %.not143, label %bb.c, label %bb.g, !prof !155

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.f, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.gz

bb.g:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %.not144 = icmp eq ptr %i.j, null
  br i1 %.not144, label %bb.i, label %bb.m, !prof !155

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.k, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.bz, %bb.bx, %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, %bb.bs, %bb.bg, %_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit, %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit, %bb.w, %bb.r, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.gz

bb.m:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.j, align 4, !tbaa !241  ; 2 uses
  %i.o = icmp eq i32 %i.n, 91                     ; 9 uses
  br i1 %i.o, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  br i1 %i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 80, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.173, ptr %i.p, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.gz

bb.r:                                             ; preds = %bb.n
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.s unwind label %bb.k

bb.s:                                             ; preds = %bb.r
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not145 = icmp eq ptr %i.r, null
  br i1 %.not145, label %bb.t, label %bb.w, !prof !155

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 23, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.s, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.gz

bb.w:                                             ; preds = %bb.s
  %i.u = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.x unwind label %bb.k       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %.not146 = icmp eq ptr %i.v, null
  br i1 %.not146, label %bb.y, label %._crit_edge506, !prof !155

._crit_edge506:                                   ; preds = %bb.x
  %.pre = load i32, ptr %i.v, align 4, !tbaa !241
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 23, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.13, ptr %i.w, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.gz

bb.ab:                                            ; preds = %._crit_edge506, %bb.m
  %i.y = phi i32 [ %.pre, %._crit_edge506 ], [ %i.n, %bb.m ] ; 8 uses
  %i.z = phi ptr [ %i.v, %._crit_edge506 ], [ %i.j, %bb.m ] ; 2 uses
  %i.aa = icmp eq i32 %i.y, 93
  br i1 %i.aa, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 53, ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.174, ptr %i.ab, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.gz

bb.af:                                            ; preds = %bb.ab
  %i.ad = add i32 %i.y, -123
  %or.cond.i.i = icmp ult i32 %i.ad, -78
  br i1 %or.cond.i.i, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.af
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = add nsw i64 %i.ae, -45
  %.not.i.i = icmp samesign ugt i32 %i.y, 108
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ag, -3307330977390599
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = select i1 %.not.i.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.am, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread: ; preds = %bb.af, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  switch i32 %i.y, label %bb.ag [
    i32 39, label %bb.am
    i32 34, label %bb.am
  ]

bb.ag:                                            ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 63, ptr %7, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.163, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.al = icmp ult i32 %i.y, 32
  br i1 %i.al, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.am = zext nneg i32 %i.y to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
end_hunk_9
begin_hunk_10_@_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv:bb.a

.lr.ph.i268:                                      ; preds = %bb.dz, %bb.ea
  %.sroa.02.07.i269 = phi ptr [ %i.lw, %bb.ea ], [ %i.lr, %bb.dz ] ; 2 uses
  %i.lu = load ptr, ptr %.sroa.02.07.i269, align 8, !tbaa !844
  %i.lv = icmp eq ptr %i.lu, %i.lo
  br i1 %i.lv, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i268
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i269, i64 8 ; 2 uses
  %.not.i270 = icmp eq ptr %i.lw, %i.lt
  br i1 %.not.i270, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread, label %.lr.ph.i268, !llvm.loop !836

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272: ; preds = %.lr.ph.i268
  %i.lx = invoke noundef nonnull align 8 dereferenceable(89) ptr @_ZN4toml2v35array12emplace_backINS0_5tableEJEEEDcDpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.lo)
          to label %bb.eb unwind label %bb.el     ; 8 uses

bb.eb:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272
  %i.ly = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !74
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = call noundef nonnull align 8 dereferenceable(16) ptr %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.ly) #50, !inline_history !32 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !150 ; 2 uses
  %i.me = load <2 x ptr>, ptr %i.mb, align 8, !tbaa !156
  %.not.i.i.i273 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i273, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 3 uses
  %i.mg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i274 = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i.i.i274, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mh = load i32, ptr %i.mf, align 4, !tbaa !154
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %i.mf, align 4, !tbaa !154
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275

bb.ee:                                            ; preds = %bb.ec
  %i.mj = atomicrmw volatile add ptr %i.mf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275: ; preds = %bb.eb, %bb.ed, %bb.ee
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.mk, align 8
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4383.0..sroa_idx, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !150 ; 8 uses
  store <2 x ptr> %i.me, ptr %i.ml, align 8, !tbaa !156
  %.not.i.i.i.i.i276 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i.i.i276, label %_ZN4toml2v313source_regionD2Ev.exit285.thread, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 4 uses
  %i.mp = load atomic i64, ptr %i.mo acquire, align 8 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 4294967297
  %i.mr = trunc i64 %i.mp to i32                  ; 2 uses
  br i1 %i.mq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.mo, align 8, !tbaa !152
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store i32 0, ptr %i.ms, align 4, !tbaa !153
  %i.mt = load ptr, ptr %i.mn, align 8, !tbaa !74
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50, !inline_history !7
  %i.mw = load ptr, ptr %i.mn, align 8, !tbaa !74
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50, !inline_history !7
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.eh:                                            ; preds = %bb.ef
  %i.mz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i277 = icmp eq i8 %i.mz, 0
  br i1 %.not.i.i.i.i.i.i277, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.na = add nsw i32 %i.mr, -1
  store i32 %i.na, ptr %i.mo, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278

bb.ej:                                            ; preds = %bb.eh
  %i.nb = atomicrmw volatile add ptr %i.mo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i279 = phi i32 [ %i.mr, %bb.ei ], [ %i.nb, %bb.ej ]
  %i.nc = icmp eq i32 %.0.i.i.i.i.i.i.i279, 1
  br i1 %i.nc, label %bb.ek, label %_ZN4toml2v313source_regionD2Ev.exit285.thread, !prof !155

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.el:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread: ; preds = %bb.ea, %bb.dz, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ll, i64 144
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = call noundef ptr %i.nf(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52 ; 8 uses
  %i.nh = icmp eq ptr %i.ng, null
  %or.cond9.not = or i1 %i.o, %i.nh
  br i1 %or.cond9.not, label %_ZN4toml2v313source_regionD2Ev.exit285, label %bb.em

bb.em:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !302 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 3 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !302 ; 7 uses
  %i.nm = icmp eq ptr %i.nj, %i.nl
  br i1 %i.nm, label %_ZN4toml2v313source_regionD2Ev.exit285.thread464, label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %bb.em, %bb.en
  %.sroa.02.07.i288 = phi ptr [ %i.np, %bb.en ], [ %i.nj, %bb.em ] ; 3 uses
  %i.nn = load ptr, ptr %.sroa.02.07.i288, align 8, !tbaa !295
  %i.no = icmp eq ptr %i.nn, %i.ng
  br i1 %i.no, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i287
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i288, i64 8 ; 2 uses
  %.not.i289 = icmp eq ptr %i.np, %i.nl
  br i1 %.not.i289, label %_ZN4toml2v313source_regionD2Ev.exit285, label %.lr.ph.i287, !llvm.loop !33

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291: ; preds = %.lr.ph.i287
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !157
  %i.ns = icmp eq i64 %i.nr, 0
  br i1 %i.ns, label %.thread454, label %bb.eo

bb.eo:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !197, !noalias !845 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ng, i64 48 ; 2 uses
  %.not466490 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not466490, label %.thread454, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292: ; preds = %bb.eo, %bb.eq
  %.sroa.0375.0491 = phi ptr [ %i.of, %bb.eq ], [ %i.nu, %bb.eo ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0375.0491, i64 96
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !174 ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !74 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = call noundef zeroext i1 %i.oa(ptr noundef nonnull align 8 dereferenceable(40) %i.nx) #52
  br i1 %i.ob, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 64
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = call noundef zeroext i1 %i.od(ptr noundef nonnull align 8 dereferenceable(40) %i.nx) #52
  br i1 %i.oe, label %bb.eq, label %_ZN4toml2v313source_regionD2Ev.exit285

bb.eq:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292, %bb.ep
  %i.of = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0375.0491) #52 ; 2 uses
  %.not466 = icmp eq ptr %i.of, %i.nv
  br i1 %.not466, label %.thread454, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292

.thread454:                                       ; preds = %bb.eq, %bb.eo, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291
  %i.og = ptrtoint ptr %.sroa.02.07.i288 to i64
  %i.oh = ptrtoint ptr %i.nj to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = getelementptr inbounds i8, ptr %i.nj, i64 %i.oi ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 4 uses
  %.not.i.i293 = icmp eq ptr %i.ok, %i.nl
  br i1 %.not.i.i293, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %.thread454
  %i.ol = ptrtoint ptr %i.nl to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 3 uses
  %i.oo = icmp sgt i64 %i.on, 8
  br i1 %i.oo, label %bb.es, label %bb.et, !prof !168

bb.es:                                            ; preds = %bb.er
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.oj, ptr nonnull align 8 %i.ok, i64 %i.on, i1 false)
  %.pre.i.i = load ptr, ptr %i.nk, align 8, !tbaa !292
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  %i.op = icmp eq i64 %i.on, 8
  br i1 %i.op, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.oq = load ptr, ptr %i.ok, align 8, !tbaa !295
  store ptr %i.oq, ptr %i.oj, align 8, !tbaa !295
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es, %.thread454
  %i.or = phi ptr [ %i.nl, %bb.eu ], [ %i.nl, %bb.et ], [ %.pre.i.i, %bb.es ], [ %i.nl, %.thread454 ]
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -8
  store ptr %i.os, ptr %i.nk, align 8, !tbaa !292
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.ot, align 8, !tbaa !154
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ou, align 8, !tbaa !154
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

_ZN4toml2v313source_regionD2Ev.exit285:           ; preds = %bb.en, %bb.ep, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread
  br i1 %i.o, label %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge, label %_ZN4toml2v313source_regionD2Ev.exit285.thread464

_ZN4toml2v313source_regionD2Ev.exit285._crit_edge: ; preds = %_ZN4toml2v313source_regionD2Ev.exit285
  %.phi.trans.insert510 = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %.pre511 = load ptr, ptr %.phi.trans.insert510, align 8
  br label %bb.ez

_ZN4toml2v313source_regionD2Ev.exit285.thread464: ; preds = %bb.em, %_ZN4toml2v313source_regionD2Ev.exit285
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.ox = call noundef zeroext i8 %i.ow(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52
  %i.oy = icmp eq i8 %i.ox, 1
  br i1 %i.oy, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit285.thread464
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #50
  store i64 32, ptr %36, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr @.str.178, ptr %i.oz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #50
  %.val180 = load ptr, ptr %i.ax, align 8, !tbaa !66
  %.val181 = load i64, ptr %i.ay, align 8, !tbaa !67
  store i64 %.val181, ptr %37, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.val180, ptr %i.pa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #50
  store i64 1, ptr %38, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr @.str.16, ptr %i.pb, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.093.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38) #54
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #50
  br label %bb.gz

bb.ez:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge, %_ZN4toml2v313source_regionD2Ev.exit285.thread464
  %i.pd = phi ptr [ %.pre511, %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge ], [ %i.ow, %_ZN4toml2v313source_regionD2Ev.exit285.thread464 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #50
  store i64 25, ptr %39, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr @.str.156, ptr %i.pe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #50
  %i.pf = call noundef zeroext i8 %i.pd(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl24node_type_friendly_namesE, i64 %i.pg ; 2 uses
  %.sroa.0.0.copyload.i296 = load i64, ptr %i.ph, align 16, !tbaa !123
  %.sroa.2.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %.sroa.2.0.copyload.i298 = load ptr, ptr %.sroa.2.0..sroa_idx.i297, align 8, !tbaa !124
  store i64 %.sroa.0.0.copyload.i296, ptr %40, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %.sroa.2.0.copyload.i298, ptr %i.pi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #50
  store i64 2, ptr %41, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr @.str.158, ptr %i.pj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #50
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !66
  %.val179 = load i64, ptr %i.ay, align 8, !tbaa !67
  store i64 %.val179, ptr %42, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.val, ptr %i.pk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #50
  store i64 5, ptr %43, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr @.str.179, ptr %i.pl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #50
  %spec.select599 = select i1 %i.o, i64 15, i64 5
  %spec.select600 = select i1 %i.o, ptr @.str.180, ptr @.str.167
  store i64 %spec.select599, ptr %44, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %spec.select600, ptr %i.pm, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.093.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %44) #54
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #50
  br label %bb.gz

.critedge6:                                       ; preds = %._crit_edge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0.lcssa.i.i.i.i.i438 = phi ptr [ %.1.i.i.i.i.i, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.1.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262 ], [ %.1.i.i.i.i.i, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259 ], [ %i.ex, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #50
  invoke void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::key") align 8 %45, ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 noundef %.pre-phi520)
          to label %bb.fc unwind label %bb.gc

bb.fc:                                            ; preds = %.critedge6
  br i1 %i.o, label %bb.fd, label %bb.gg

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #50
  store ptr %.0.lcssa.i.i.i.i.i438, ptr %47, align 8, !tbaa !304
  %i.po = getelementptr inbounds nuw i8, ptr %47, i64 24
  store i8 0, ptr %i.po, align 8, !tbaa !211
  invoke void @_ZN4toml2v35table12emplace_hintINS0_5arrayENS0_3keyEJETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringIS6_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSB_ILb1EEES7_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::impl::table_iterator") align 8 %46, ptr noundef nonnull align 8 dereferenceable(89) %.0136.lcssa, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(64) %45)
          to label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303 unwind label %bb.gd

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303: ; preds = %bb.fd
  %i.pp = load i64, ptr %46, align 8, !tbaa !160
  %i.pq = inttoptr i64 %i.pp to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #50
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 96
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !174 ; 7 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 3 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !846 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 3288 ; 3 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !314
  %.not.i.i304 = icmp eq ptr %i.pv, %i.px
  br i1 %.not.i.i304, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303
  store ptr %i.ps, ptr %i.pv, align 8, !tbaa !844
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store ptr %i.py, ptr %i.pu, align 8, !tbaa !846
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit

bb.ff:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303
  %i.pz = load ptr, ptr %i.pt, align 8, !tbaa !313 ; 4 uses
  %i.qa = ptrtoint ptr %i.pv to i64
  %i.qb = ptrtoint ptr %i.pz to i64               ; 2 uses
  %i.qc = sub i64 %i.qa, %i.qb                    ; 5 uses
  %i.qd = icmp eq i64 %i.qc, 9223372036854775800
  br i1 %i.qd, label %bb.fg, label %_ZNKSt6vectorIPN4toml2v35arrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc308 unwind label %bb.ge

.noexc308:                                        ; preds = %bb.fg
  unreachable

_ZNKSt6vectorIPN4toml2v35arrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ff
  %i.qe = ashr exact i64 %i.qc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i305 = call i64 @llvm.umax.i64(i64 %i.qe, i64 1)
  %i.qf = add nsw i64 %.sroa.speculated.i.i.i.i305, %i.qe ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.qe
  %i.qh = call i64 @llvm.umin.i64(i64 %i.qf, i64 1152921504606846975)
  %i.qi = select i1 %i.qg, i64 1152921504606846975, i64 %i.qh ; 3 uses
  %.not.i.i.i.i306 = icmp ne i64 %i.qi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i306)
  %i.qj = shl nuw nsw i64 %i.qi, 3
  %i.qk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qj) #55
          to label %.noexc309 unwind label %bb.ge ; 4 uses

.noexc309:                                        ; preds = %_ZNKSt6vectorIPN4toml2v35arrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ql = getelementptr inbounds i8, ptr %i.qk, i64 %i.qc ; 2 uses
  store ptr %i.ps, ptr %i.ql, align 8, !tbaa !844
  %i.qm = icmp sgt i64 %i.qc, 0
  br i1 %i.qm, label %bb.fh, label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.fh:                                            ; preds = %.noexc309
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qk, ptr align 8 %i.pz, i64 %i.qc, i1 false)
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.fh, %.noexc309
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %.not.i17.i.i.i307 = icmp eq ptr %i.pz, null
  br i1 %.not.i17.i.i.i307, label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.qo = load ptr, ptr %i.pw, align 8, !tbaa !314
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = sub i64 %i.qp, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qq) #51
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.fi, %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.qk, ptr %i.pt, align 8, !tbaa !313
  store ptr %i.qn, ptr %i.pu, align 8, !tbaa !846
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qi
  store ptr %i.qr, ptr %i.pw, align 8, !tbaa !314
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.fe
  %i.qs = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !105, !align !252 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !74
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = call noundef nonnull align 8 dereferenceable(16) ptr %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.qs) #50, !inline_history !32 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !150 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE9read_nextEv:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.02352.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02352.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02352.i
  %i.an = load i8, ptr %i.am, align 2, !tbaa !69  ; 2 uses
  %i.ao = sext i8 %i.an to i32
  store i32 %i.ao, ptr %i.al, align 16, !tbaa !334
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i8 %i.an, ptr %i.ap, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !246
  %i.ar = or disjoint i64 %.02352.i, 1            ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69  ; 2 uses
  %i.av = sext i8 %i.au to i32
  store i32 %i.av, ptr %i.as, align 8, !tbaa !334
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 %i.au, ptr %i.aw, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %i.ax, align 16, !tbaa !246
  %i.ay = add nuw nsw i64 %.02352.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i40.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !916

.lr.ph54.i:                                       ; preds = %.lr.ph38.i.i, %._crit_edge.i.i, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.promoted58.i = load i32, ptr %i.az, align 4
  %umax69.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br label %bb.g

bb.f:                                             ; preds = %bb.o
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  %i.bc = icmp uge i64 %i.l, %i.k
  %i.bd = freeze i1 %i.bc
  %cond.i = icmp ne i8 %i.ca, 0
  %or.cond.not.i = and i1 %i.bd, %cond.i
  br i1 %or.cond.not.i, label %bb.p, label %..lr.ph.i40.i_crit_edge, !prof !339

..lr.ph.i40.i_crit_edge:                          ; preds = %bb.f
  %.pre = load i64, ptr %i.e, align 8, !tbaa !348
  br label %.lr.ph.i40.i

bb.g:                                             ; preds = %bb.o, %.lr.ph54.i
  %i.be = phi i32 [ %.promoted58.i, %.lr.ph54.i ], [ %i.bv, %bb.o ]
  %i.bf = phi i32 [ %i.r, %.lr.ph54.i ], [ %i.cb, %bb.o ] ; 3 uses
  %.02253.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.dd, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02253.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69  ; 4 uses
  %i.bi = icmp ne i32 %i.bf, 12
  call void @llvm.assume(i1 %i.bi)
  %i.bj = zext i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !69  ; 2 uses
  %i.bm = icmp eq i32 %i.bf, 0
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = zext i8 %i.bl to i32                    ; 2 uses
  %i.bo = lshr i32 255, %i.bn
  %i.bp = zext i8 %i.bh to i32
  %i.bq = and i32 %i.bo, %i.bp
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

bb.i:                                             ; preds = %bb.g
  %i.br = and i8 %i.bh, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = shl i32 %i.be, 6
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %.pre.i35.i = zext i8 %i.bl to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

_ZN4toml2v34impl12utf8_decoderclEh.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i32 [ %.pre.i35.i, %bb.i ], [ %i.bn, %bb.h ]
  %i.bv = phi i32 [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 5 uses
  %i.bw = add i32 %i.bf, 256
  %i.bx = add i32 %i.bw, %.pre-phi.i.i
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !69  ; 4 uses
  %i.cb = zext i8 %i.ca to i32                    ; 4 uses
  %i.cc = icmp eq i8 %i.ca, 12
  br i1 %i.cc, label %bb.j, label %bb.k, !prof !155

bb.j:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cd = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i36.i = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr [24 x i8], ptr %0, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = select i1 %.not.i36.i, ptr %i.ch, ptr %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef @.str.223, ptr noundef nonnull align 4 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #50
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.k:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  %i.ck = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.bb, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ck
  store i8 %i.bh, ptr %i.cm, align 1, !tbaa !69
  %i.cn = icmp eq i8 %i.ca, 0
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.e, align 8, !tbaa !348
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.co ; 3 uses
  store i32 %i.bv, ptr %i.cq, align 8, !tbaa !334
  %i.cr = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !246
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr nonnull align 16 %i.ba, i64 %i.cr, i1 false)
  store i64 0, ptr %i.bb, align 8, !tbaa !312
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cu = load i64, ptr %i.bb, align 8, !tbaa !312
  %i.cv = icmp eq i64 %i.cu, 4
  br i1 %i.cv, label %bb.n, label %bb.o, !prof !155

bb.n:                                             ; preds = %bb.m
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cw = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.cx = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i37.i = icmp eq i64 %i.cx, 0
  %i.cy = getelementptr [24 x i8], ptr %0, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.db = select i1 %.not.i37.i, ptr %i.da, ptr %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, ptr noundef @.str.224, ptr noundef nonnull align 4 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #50
  call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.dd = add nuw nsw i64 %.02253.i, 1            ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.dd, %umax69.i
  br i1 %exitcond70.not.i, label %bb.f, label %bb.g, !llvm.loop !917

bb.p:                                             ; preds = %bb.f
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.de = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.df = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i38.i = icmp eq i64 %i.df, 0
  %i.dg = getelementptr [24 x i8], ptr %0, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = select i1 %.not.i38.i, ptr %i.di, ptr %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #50
  call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

.lr.ph.i40.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i40.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.02352.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ay, %.lr.ph.i40.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i64 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02352.i.epil.init ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02352.i.epil.init
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !69  ; 2 uses
  %i.do = sext i8 %i.dn to i32
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !334
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i8 %i.dn, ptr %i.dp, align 4, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 1, ptr %i.dq, align 8, !tbaa !246
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i40.i.loopexit.unr-lcssa, %..lr.ph.i40.i_crit_edge
  %i.dr = phi i64 [ %.pre, %..lr.ph.i40.i_crit_edge ], [ %i.m, %.lr.ph.i40.i.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.ds = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i40.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %i.ef, %bb.t ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.01.i.i ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dt, align 32           ; 3 uses
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !154
  %i.dy = load i32, ptr %i.dv, align 8, !tbaa !241
  %i.dz = icmp eq i32 %i.dy, 10
  br i1 %i.dz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ea = trunc i64 %i.dx to i32
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dt, align 32, !tbaa !351
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ec = lshr i64 %i.dx, 32
  %i.ed = trunc nuw i64 %i.ec to i32
  %i.ee = add i32 %i.ed, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi i32 [ %i.ee, %bb.s ], [ 1, %bb.r ]
  store i32 %storemerge.i.i, ptr %i.du, align 4, !tbaa !352
  %i.ef = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %i.ef, %i.dr
  br i1 %exitcond.not.i41.i, label %bb.u, label %bb.q, !llvm.loop !51

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.a
  %i.eg = phi i64 [ 0, %bb.u ], [ %i.d, %bb.a ]   ; 3 uses
  %i.eh = phi i64 [ %i.dr, %bb.u ], [ %i.f, %bb.a ]
  %i.ei = icmp ult i64 %i.eg, %i.eh
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eg, 1
  store i64 %i.ej, ptr %i.c, align 32, !tbaa !918
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.eg
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.v
  %.0 = phi ptr [ %i.ek, %bb.v ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE8peek_eofEv(ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(896) %0) unnamed_addr #45 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !306
  %i.d = load i64, ptr %i.a, align 8, !tbaa !324
  %i.e = icmp uge i64 %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !35
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !35
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 896, i64 noundef 32) #51
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvEJRSt17basic_string_viewIcS7_EEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %3, align 8, !tbaa !123 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !124 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !86
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  %i.h = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.a

.noexc.i.i:                                       ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
          to label %.noexc unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.a:                                             ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !tbaa !123
  %i.i = icmp ugt i64 %.sroa.0.0.copyload.i.i.i, 15
  br i1 %i.i, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11 ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !66
  %i.k = load i64, ptr %i.a, align 8, !tbaa !123
  store i64 %i.k, ptr %i.f, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc9, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc9 ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.m = load i8, ptr %.sroa.2.0.copyload.i.i.i, align 1, !tbaa !69
  store i8 %i.m, ptr %i.l, align 1, !tbaa !69
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i, i1 false)
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !67
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  store ptr %i.b, ptr %0, align 8, !tbaa !150
  store ptr %i.e, ptr %1, align 8, !tbaa !315
  ret void

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11: ; preds = %.noexc.i.i.i.i.i, %.noexc.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #51
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nofree captures(none) %.0.val) unnamed_addr #46 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 840
  %i.b = load i64, ptr %i.a, align 8, !tbaa !348  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 36
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.01 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.e ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.d, align 32             ; 3 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !154
  %i.i = load i32, ptr %i.f, align 8, !tbaa !241
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.h to i32
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 32, !tbaa !351
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.h, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.o, %bb.d ], [ 1, %bb.c ]
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !352
  %i.p = add nuw i64 %.01, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !51
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116utf8_byte_streamISiEC2ERSi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !353
  %i.b = load ptr, ptr %1, align 8, !tbaa !74
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !322
  %i.h = and i32 %i.g, 3
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.k = load ptr, ptr %0, align 8, !tbaa !353
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.a, i64 noundef 3) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !353    ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !322
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !342
  %i.w = icmp eq i64 %i.v, 3
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i16, ptr %i.a, align 1
  %i.y = xor i16 -17425, %i.x
  %i.z = getelementptr i8, ptr %i.a, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 191, %i.ab
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.q, i32 noundef 0)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !353
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef %i.j, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12_GLOBAL__N_111utf8_readerISiE11source_pathB5cxx11Ev(ptr nofree noundef nonnull readnone align 32 captures(ret: address, provenance) dereferenceable(896) %0) unnamed_addr #44 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_111utf8_readerISiE9read_nextEv(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.d = load i64, ptr %i.c, align 32, !tbaa !922 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !354  ; 2 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !353  ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !322
  %i.p = and i32 %i.o, 3
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.c, label %.critedge, !prof !168

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %i.a, i64 noundef 32)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !353  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !342  ; 11 uses
  %.not.i2.not = icmp eq i64 %i.t, 0
  br i1 %.not.i2.not, label %bb.j, label %bb.n, !prof !155

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = extractvalue { ptr, i32 } %i.u, 1
  %i.x = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #50
  %i.y = icmp eq i32 %i.w, %i.x
  %i.z = call ptr @__cxa_begin_catch(ptr %i.v) #50 ; 2 uses
  %i.aa = call ptr @__cxa_allocate_exception(i64 48) #50 ; 4 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #50, !inline_history !919
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #50
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
          to label %bb.ai unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef @.str.226, ptr noundef nonnull align 4 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #50
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
          to label %bb.ai unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.i:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.j:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.r, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !322
  %i.ar = and i32 %i.aq, 2
  %.not58.i = icmp eq i32 %i.ar, 0
  br i1 %.not58.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !349
  switch i32 %i.at, label %bb.l [
    i32 12, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread
    i32 0, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.au = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 864
end_hunk_11
begin_hunk_12_@_ZN12_GLOBAL__N_111utf8_readerISiE9read_nextEv:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !246
  %i.cb = or disjoint i64 %.02962.i, 1            ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !69  ; 2 uses
  %i.cf = sext i8 %i.ce to i32
  store i32 %i.cf, ptr %i.cc, align 8, !tbaa !334
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i8 %i.ce, ptr %i.cg, align 4, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 1, ptr %i.ch, align 16, !tbaa !246
  %i.ci = add nuw nsw i64 %.02962.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i48.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !920

.critedge.i:                                      ; preds = %.lr.ph38.i.i, %._crit_edge.i.i, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.promoted67.i = load i32, ptr %i.cj, align 4
  br label %.backedge

bb.r:                                             ; preds = %bb.y
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  br label %.lr.ph.i48.i

.backedge:                                        ; preds = %.backedge.backedge, %.critedge.i
  %i.cm = phi i32 [ %.promoted67.i, %.critedge.i ], [ %i.dd, %.backedge.backedge ]
  %.02866.i = phi i64 [ 0, %.critedge.i ], [ %.02866.i.be, %.backedge.backedge ] ; 3 uses
  %i.cn = phi i32 [ %i.bb, %.critedge.i ], [ %i.dj, %.backedge.backedge ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02866.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !69  ; 4 uses
  %i.cq = icmp ne i32 %i.cn, 12
  call void @llvm.assume(i1 %i.cq)
  %i.cr = zext i8 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69  ; 2 uses
  %i.cu = icmp eq i32 %i.cn, 0
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.backedge
  %i.cv = zext i8 %i.ct to i32                    ; 2 uses
  %i.cw = lshr i32 255, %i.cv
  %i.cx = zext i8 %i.cp to i32
  %i.cy = and i32 %i.cw, %i.cx
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

bb.t:                                             ; preds = %.backedge
  %i.cz = and i8 %i.cp, 63
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = shl i32 %i.cm, 6
  %i.dc = or disjoint i32 %i.db, %i.da
  %.pre.i43.i = zext i8 %i.ct to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

_ZN4toml2v34impl12utf8_decoderclEh.exit.i:        ; preds = %bb.t, %bb.s
  %.pre-phi.i.i = phi i32 [ %.pre.i43.i, %bb.t ], [ %i.cv, %bb.s ]
  %i.dd = phi i32 [ %i.dc, %bb.t ], [ %i.cy, %bb.s ] ; 6 uses
  %i.de = add i32 %i.cn, 256
  %i.df = add i32 %i.de, %.pre-phi.i.i
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !69  ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 5 uses
  %i.dk = icmp eq i8 %i.di, 12
  br i1 %i.dk, label %bb.u, label %bb.v, !prof !155

bb.u:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.dl = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i44.i = icmp eq i64 %i.dm, 0
  %i.dn = getelementptr [24 x i8], ptr %0, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = select i1 %.not.i44.i, ptr %i.dp, ptr %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef @.str.223, ptr noundef nonnull align 4 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #50
  call void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.v:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  %i.ds = load i64, ptr %i.cl, align 8, !tbaa !321 ; 2 uses
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.cl, align 8, !tbaa !321
  %i.du = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ds
  store i8 %i.cp, ptr %i.du, align 1, !tbaa !69
  %i.dv = icmp eq i8 %i.di, 0
  br i1 %i.dv, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr %i.cl, align 8, !tbaa !321
  %i.dx = icmp eq i64 %i.dw, 4
  br i1 %i.dx, label %bb.x, label %.thread, !prof !155

bb.x:                                             ; preds = %bb.w
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.dy = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.dz = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i45.i = icmp eq i64 %i.dz, 0
  %i.ea = getelementptr [24 x i8], ptr %0, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = select i1 %.not.i45.i, ptr %i.ec, ptr %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef @.str.224, ptr noundef nonnull align 4 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #50
  call void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.e, align 8, !tbaa !354
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ef ; 3 uses
  store i32 %i.dd, ptr %i.eh, align 8, !tbaa !334
  %i.ei = load i64, ptr %i.cl, align 8, !tbaa !321 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !246
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 32 %i.ck, i64 %i.ei, i1 false)
  store i64 0, ptr %i.cl, align 8, !tbaa !321
  %i.el = add nuw nsw i64 %.02866.i, 1            ; 2 uses
  %exitcond82.not.i = icmp eq i64 %i.el, %i.t
  br i1 %exitcond82.not.i, label %bb.r, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.y, %.thread
  %.02866.i.be = phi i64 [ %i.el, %bb.y ], [ %i.em, %.thread ]
  br label %.backedge, !llvm.loop !921

.thread:                                          ; preds = %bb.w
  %i.em = add nuw nsw i64 %.02866.i, 1            ; 2 uses
  %exitcond82.not.i3 = icmp eq i64 %i.em, %i.t
  br i1 %exitcond82.not.i3, label %bb.z, label %.backedge.backedge

bb.z:                                             ; preds = %.thread
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  %i.en = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %i.r, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !322
  %i.et = and i32 %i.es, 2
  %.not59.i = icmp eq i32 %i.et, 0
  br i1 %.not59.i, label %.lr.ph.i48.i, label %bb.aa, !prof !168

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.eu = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i46.i = icmp eq i64 %i.ev, 0
  %i.ew = getelementptr [24 x i8], ptr %0, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 56
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = select i1 %.not.i46.i, ptr %i.ey, ptr %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #50
  call void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

.lr.ph.i48.i.loopexit.unr-lcssa:                  ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i48.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i48.i.loopexit.unr-lcssa, %.loopexit.i
  %.02962.i.epil.init = phi i64 [ 0, %.loopexit.i ], [ %i.ci, %.lr.ph.i48.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod61 = trunc i64 %i.t to i1
  call void @llvm.assume(i1 %lcmp.mod61)
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02962.i.epil.init ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02962.i.epil.init
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !69  ; 2 uses
  %i.fe = sext i8 %i.fd to i32
  store i32 %i.fe, ptr %i.fb, align 8, !tbaa !334
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i8 %i.fd, ptr %i.ff, align 4, !tbaa !69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 1, ptr %i.fg, align 8, !tbaa !246
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.epil.preheader, %.lr.ph.i48.i.loopexit.unr-lcssa, %bb.r, %bb.z
  %i.fh = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.fi = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i48.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i48.i ], [ %i.fv, %bb.ae ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.01.i.i ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fj, align 16           ; 3 uses
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !154
  %i.fo = load i32, ptr %i.fl, align 8, !tbaa !241
  %i.fp = icmp eq i32 %i.fo, 10
  br i1 %i.fp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fq = trunc i64 %i.fn to i32
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fj, align 16, !tbaa !355
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fs = lshr i64 %i.fn, 32
  %i.ft = trunc nuw i64 %i.fs to i32
  %i.fu = add i32 %i.ft, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge.i.i = phi i32 [ %i.fu, %bb.ad ], [ 1, %bb.ac ]
  store i32 %storemerge.i.i, ptr %i.fk, align 4, !tbaa !356
  %i.fv = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i49.i = icmp eq i64 %i.fv, %i.fh
  br i1 %exitcond.not.i49.i, label %_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i, label %bb.ab, !llvm.loop !52

_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i: ; preds = %bb.ae
  %i.fw = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.fx = getelementptr i8, ptr %i.fw, i64 -24
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds i8, ptr %i.r, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !322
  %i.gc = and i32 %i.gb, 1
  %.not60.i = icmp eq i32 %i.gc, 0
  br i1 %.not60.i, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit, label %bb.af, !prof !168

bb.af:                                            ; preds = %_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i
  %i.gd = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.gd, ptr noundef @.str.225, ptr noundef nonnull align 4 dereferenceable(8) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #50
  call void @__cxa_throw(ptr nonnull %i.gd, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.ag:                                            ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ak, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  resume { ptr, i32 } %.pn.i

bb.ah:                                            ; preds = %bb.i, %bb.h
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #53
  unreachable

bb.ai:                                            ; preds = %bb.g, %bb.f
  unreachable

_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread: ; preds = %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.critedge

_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit: ; preds = %_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit, %bb.a
  %i.gh = phi i64 [ 0, %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit ], [ %i.d, %bb.a ] ; 3 uses
  %i.gi = phi i64 [ %i.fh, %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit ], [ %i.f, %bb.a ]
  %i.gj = icmp ult i64 %i.gh, %i.gi
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add nuw nsw i64 %i.gh, 1
  store i64 %i.gk, ptr %i.c, align 32, !tbaa !922
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.gh
  br label %.critedge

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread, %bb.b, %bb.aj
  %.0 = phi ptr [ %i.gl, %bb.aj ], [ null, %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_111utf8_readerISiE8peek_eofEv(ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(896) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !353 ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !74
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !322
  %i.h = and i32 %i.g, 2
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %_ZNK12_GLOBAL__N_116utf8_byte_streamISiE8peek_eofEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %.val)
  %i.j = icmp eq i32 %i.i, -1
  br label %_ZNK12_GLOBAL__N_116utf8_byte_streamISiE8peek_eofEv.exit

_ZNK12_GLOBAL__N_116utf8_byte_streamISiE8peek_eofEv.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111utf8_readerISiED0Ev(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !36
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !36
  br label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit

_ZN12_GLOBAL__N_111utf8_readerISiED2Ev.exit:      ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 896, i64 noundef 32) #51
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #47

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nofree captures(none) %.0.val) unnamed_addr #46 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 840
  %i.b = load i64, ptr %i.a, align 8, !tbaa !354  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.01 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.e ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.d, align 16             ; 3 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !154
  %i.i = load i32, ptr %i.f, align 8, !tbaa !241
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.h to i32
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 16, !tbaa !355
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.h, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.o, %bb.d ], [ 1, %bb.c ]
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !356
  %i.p = add nuw i64 %.01, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !52
}

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #43

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #48

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #49

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #43

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nounwind memory(read, errnomem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #44 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nounwind memory(none) }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #50 = { nounwind }
attributes #51 = { builtin nounwind }
attributes #52 = { nounwind willreturn memory(read) }
attributes #53 = { noreturn nounwind }
attributes #54 = { noreturn }
attributes #55 = { builtin allocsize(0) }
attributes #56 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!53, !54}
!llvm.ident = !{!55}
!llvm.errno.tbaa = !{!60}

!0 = distinct !{!0, !68}
!1 = distinct !{!1, !68}
!2 = distinct !{!2, !68}
!3 = distinct !{!3, !68}
!4 = distinct !{!4, !68}
!5 = distinct !{null, null, ptr @_ZN4toml2v314toml_formatter5printEv}
!6 = distinct !{ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{!8, !68}
!9 = distinct !{!9, !68}
!10 = distinct !{!10, !68}
!11 = distinct !{!11, !68}
!12 = distinct !{!12, !68}
!13 = distinct !{!13, !68}
!14 = distinct !{!14, !68}
!15 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!16 = distinct !{!16, !68}
!17 = distinct !{ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v313source_regionD2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!18 = distinct !{null, null}
!19 = distinct !{ptr @_ZN4toml2v34nodeaSERKS1_, null, null, null, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = distinct !{null, null, null, null, null, null, null}
!21 = distinct !{ptr @_ZN4toml2v34nodeaSEOS1_, null, null, null, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!22 = distinct !{null, null, null, null, null, null, null}
!23 = distinct !{null, null, null, null, null}
!24 = distinct !{!24, !68}
!25 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!26 = distinct !{!26, !68}
!27 = distinct !{null, null, null, null}
!28 = distinct !{!28, !68}
!29 = distinct !{!29, !68}
!30 = distinct !{!30, !68}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{!33, !68}
!34 = distinct !{ptr @_ZN4toml2v33keyD2Ev, ptr @_ZN4toml2v313source_regionD2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!35 = distinct !{ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!36 = distinct !{ptr @_ZN12_GLOBAL__N_111utf8_readerISiED2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!37 = distinct !{!37, !68}
!38 = distinct !{!38, !68}
!39 = distinct !{!39, !68}
!40 = distinct !{ptr @_ZN4toml2v313source_regionD2Ev, ptr @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!41 = distinct !{!41, !68}
!42 = distinct !{!42, !68}
!43 = distinct !{!43, !68}
!44 = distinct !{!44, !68}
!45 = distinct !{null, null, null}
!46 = distinct !{!46, !68}
!47 = distinct !{!47, !68}
!48 = distinct !{!48, !68}
!49 = distinct !{!49, !68}
!50 = distinct !{!50, !68}
!51 = distinct !{!51, !68}
!52 = distinct !{!52, !68}
!53 = !{i32 8, !"PIC Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 2}
!55 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"omnipotent char", !56, i64 0}
!58 = !{!"int", !57, i64 0}
!59 = !{!"__libc_errno", !58, i64 0}
!60 = !{!59, !58, i64 0}
!61 = !{!"any pointer", !57, i64 0}
!62 = !{!"p1 omnipotent char", !61, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !62, i64 0}
!64 = !{!"long", !57, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !64, i64 8, !57, i64 16}
!66 = !{!65, !62, i64 0}
!67 = !{!65, !64, i64 8}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!57, !57, i64 0}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!"branch_weights", i32 4, i32 12}
!73 = !{!"vtable pointer", !56, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTSSt13_Ios_Fmtflags", !57, i64 0}
!76 = !{!"_ZTSSt12_Ios_Iostate", !57, i64 0}
!77 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !61, i64 0}
!78 = !{!"_ZTSNSt8ios_base6_WordsE", !61, i64 0, !64, i64 8}
end_hunk_12
