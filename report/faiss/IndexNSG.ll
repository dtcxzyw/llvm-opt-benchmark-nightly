Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexNSG?download=true
inline.NumInlined: 338
inline.NumDeleted: 175
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5faiss8IndexNSG3addElPKf:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !44, !range !40, !noundef !41
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %1) ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i, %bb.au, %bb.cb, %_ZNSt6vectorIlSaIlEE6resizeEm.exit, %bb.ai
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !45
  switch i8 %i.bo, label %bb.bu [
    i8 0, label %bb.ag
    i8 1, label %bb.ba
  ]

bb.ag:                                            ; preds = %bb.af
  %i.bp = load i8, ptr %i.bi, align 8, !tbaa !44, !range !40, !noundef !41
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(36) %i.br, i64 noundef %1, ptr noundef %2)
          to label %bb.aj unwind label %bb.ae

bb.aj:                                            ; preds = %bb.ai
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !43 ; 2 uses
  store i64 %i.bx, ptr %i.ap, align 8, !tbaa !43
  %i.by = icmp eq i64 %i.bx, %1
  br i1 %i.by, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bz, ptr %7, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ca, align 8, !tbaa !33
  store i8 0, ptr %i.bz, align 8, !tbaa !35
  %i.cb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #17 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cd = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ce)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cf = load ptr, ptr %7, align 8, !tbaa !36
  %i.cg = load i64, ptr %i.ca, align 8, !tbaa !33
  %i.ch = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cd)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am, %bb.al
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %i.cj = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss8IndexNSG3addElPKf, ptr noundef nonnull @.str.2, i32 noundef 161)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.cp unwind label %bb.an

bb.aq:                                            ; preds = %bb.ao
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cj) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn85 = phi { ptr, i32 } [ %i.ci, %bb.an ], [ %i.ck, %bb.aq ]
  %i.cl = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bz
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ar
  %i.cn = load i64, ptr %i.bz, align 8, !tbaa !35
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.cm

bb.as:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 5116 ; 4 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !46
  %i.cr = add nsw i32 %i.cq, 1
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = mul nsw i64 %1, %i.cs                   ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not201 = icmp eq i64 %i.ct, 0
  br i1 %.not201, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cw = icmp ugt i64 %i.ct, 1152921504606846975
  br i1 %i.cw, label %bb.au, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc119 unwind label %bb.ae

.noexc119:                                        ; preds = %bb.au
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.at
  %i.cx = shl nuw nsw i64 %i.ct, 3
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #27
          to label %.noexc120 unwind label %bb.ae ; 5 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cy, align 8, !tbaa !47
  %i.cz = add nsw i64 %i.ct, -1                   ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc120
  %i.db = getelementptr i8, ptr %i.cy, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cz, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.db, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !47
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i: ; preds = %.noexc120, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %.pre155.pre = load i32, ptr %i.cp, align 4, !tbaa !46
  %.pre154.pre = load i64, ptr %i.ap, align 8, !tbaa !43
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !9
  store ptr %i.cy, ptr %6, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ct ; 2 uses
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !51
  store ptr %i.dc, ptr %i.cv, align 8, !tbaa !52
  %.pre161 = add nsw i32 %.pre155.pre, 1
  %.pre162 = sext i32 %.pre161 to i64
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.as, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i
  %.pre-phi163 = phi i64 [ %.pre162, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i ], [ %i.cs, %bb.as ]
  %i.dd = phi ptr [ %i.cy, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i ], [ null, %bb.as ] ; 13 uses
  %i.de = phi i64 [ %.pre154.pre, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i ], [ %1, %bb.as ]
  %i.df = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i ], [ %i.bv, %bb.as ] ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(36) %i.df, i64 noundef %i.de, ptr noundef %2, ptr noundef %i.dd, i64 noundef %.pre-phi163)
          to label %bb.av unwind label %bb.ae

bb.av:                                            ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !53
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = load i64, ptr %i.ap, align 8, !tbaa !43 ; 5 uses
  %i.do = icmp sgt i64 %i.dn, 0                   ; 2 uses
  br i1 %i.dm, label %.preheader142, label %.preheader143

.preheader143:                                    ; preds = %bb.av
  br i1 %i.do, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader143
  %.pre156 = load i32, ptr %i.cp, align 4, !tbaa !46 ; 2 uses
  %i.dp = sext i32 %.pre156 to i64                ; 6 uses
  %i.dq = add nsw i32 %.pre156, 1
  %i.dr = sext i32 %i.dq to i64                   ; 5 uses
  %i.ds = shl nsw i64 %i.dp, 3                    ; 5 uses
  %xtraiter = and i64 %i.dn, 3                    ; 3 uses
  %i.dt = icmp ult i64 %i.dn, 4
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.dn, 9223372036854775804
  br label %bb.az

.preheader142:                                    ; preds = %bb.av
  br i1 %i.do, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader142
  %i.du = load i32, ptr %i.cp, align 4, !tbaa !46 ; 4 uses
  %.not91146 = icmp slt i32 %i.du, 0
  %i.dv = add nsw i32 %i.du, 1
  %13 = sext i32 %i.dv to i64
  %14 = sext i32 %i.du to i64                     ; 2 uses
  br i1 %.not91146, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.052151 = phi i64 [ %i.ef, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.dw = mul nuw nsw i64 %.052151, %13
  %i.dx = getelementptr [8 x i8], ptr %i.dd, i64 %i.dw
  %i.dy = mul nuw nsw i64 %.052151, %14
  %i.dz = getelementptr [8 x i8], ptr %i.dd, i64 %i.dy
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %.preheader ] ; 3 uses
  %.049147 = phi i32 [ %.150, %bb.ay ], [ 0, %.preheader ] ; 3 uses
  %i.ea = getelementptr [8 x i8], ptr %i.dx, i64 %indvars.iv
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !47 ; 2 uses
  %.not92 = icmp eq i64 %i.eb, %.052151
  br i1 %.not92, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ec = sext i32 %.049147 to i64
  %i.ed = getelementptr [8 x i8], ptr %i.dz, i64 %i.ec
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !47
  %i.ee = add nsw i32 %.049147, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.150 = phi i32 [ %i.ee, %bb.ax ], [ %.049147, %bb.aw ] ; 2 uses
  %.not93 = icmp eq i32 %.150, %i.du
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not91 = icmp sge i64 %indvars.iv, %14
  %or.cond = or i1 %.not93, %.not91
  br i1 %or.cond, label %._crit_edge, label %bb.aw, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.ay
  %i.ef = add nuw nsw i64 %.052151, 1             ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %i.dn
  br i1 %i.eg, label %.preheader, label %.loopexit, !llvm.loop !56

bb.az:                                            ; preds = %bb.az, %.lr.ph.new
  %.047145 = phi i64 [ 0, %.lr.ph.new ], [ %i.fe, %bb.az ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.az ]
  %i.eh = mul nsw i64 %.047145, %i.dp
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.eh
  %i.ej = mul nsw i64 %.047145, %i.dr
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ei, ptr nonnull align 8 %i.el, i64 %i.ds, i1 false)
  %i.em = or disjoint i64 %.047145, 1             ; 2 uses
  %i.en = mul nsw i64 %i.em, %i.dp
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.en
  %i.ep = mul nsw i64 %i.em, %i.dr
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.eo, ptr nonnull align 8 %i.er, i64 %i.ds, i1 false)
  %i.es = or disjoint i64 %.047145, 2             ; 2 uses
  %i.et = mul nsw i64 %i.es, %i.dp
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.et
  %i.ev = mul nsw i64 %i.es, %i.dr
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.eu, ptr nonnull align 8 %i.ex, i64 %i.ds, i1 false)
  %i.ey = or disjoint i64 %.047145, 3             ; 2 uses
  %i.ez = mul nsw i64 %i.ey, %i.dp
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.ez
  %i.fb = mul nsw i64 %i.ey, %i.dr
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fa, ptr nonnull align 8 %i.fd, i64 %i.ds, i1 false)
  %i.fe = add nuw nsw i64 %.047145, 4             ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit204.unr-lcssa, label %bb.az, !llvm.loop !57

bb.ba:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 5116 ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !46
  invoke void @_ZN5faiss14IndexNNDescentC1EPNS_5IndexEi(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef %i.ff, i32 noundef %i.fh)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 5124
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !58 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !59
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 5128
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !72 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !73
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 5132
  %i.fp = load i32, ptr %i.fg, align 4, !tbaa !46
  %i.fq = add nsw i32 %i.fp, 50
  %i.fr = load i32, ptr %i.fo, align 4, !tbaa !74
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.fr, i32 %i.fq) ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 %.sroa.speculated, ptr %i.fs, align 8, !tbaa !75
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 5136
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !76 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !77
  %i.fw = load i8, ptr %i.bi, align 8, !tbaa !44, !range !40, !noundef !41 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 %i.fw, ptr %i.fx, align 8, !tbaa !44
  %i.fy = trunc nuw i8 %i.fw to i1
  br i1 %i.fy, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.fz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.fj, i32 noundef %i.fm, i32 noundef %.sroa.speculated, i32 noundef %i.fu) ; 0 uses
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.be:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i127, %bb.br, %bb.bf
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bf:                                            ; preds = %bb.bc, %bb.bb
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i8 0, ptr %i.gc, align 8, !tbaa !78
  invoke void @_ZN5faiss14IndexNNDescent3addElPKf(ptr noundef nonnull align 8 dereferenceable(144) %8, i64 noundef %1, ptr noundef %2)
          to label %bb.bg unwind label %bb.be

bb.bg:                                            ; preds = %bb.bf
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !43 ; 2 uses
  store i64 %i.gf, ptr %i.ap, align 8, !tbaa !43
  %i.gg = icmp eq i64 %i.gf, %1
  br i1 %i.gg, label %bb.bp, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.gh, ptr %9, align 8, !tbaa !30
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.gi, align 8, !tbaa !33
  store i8 0, ptr %i.gh, align 8, !tbaa !35
  %i.gj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #17 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.gl = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gm = add nuw nsw i64 %i.gl, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.gm)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gn = load ptr, ptr %9, align 8, !tbaa !36
  %i.go = load i64, ptr %i.gi, align 8, !tbaa !33
  %i.gp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.gn, i64 noundef %i.go, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.gl)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bm, %bb.bj, %bb.bi
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj, %bb.bh
  %i.gr = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss8IndexNSG3addElPKf, ptr noundef nonnull @.str.2, i32 noundef 215)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  invoke void @__cxa_throw(ptr nonnull %i.gr, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.cp unwind label %bb.bk

bb.bn:                                            ; preds = %bb.bl
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gr) #17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %.pn80 = phi { ptr, i32 } [ %i.gq, %bb.bk ], [ %i.gs, %bb.bn ]
  %i.gt = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.gh
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.bo
  %i.gv = load i64, ptr %i.gh, align 8, !tbaa !35
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bg
  %i.gx = load i32, ptr %i.fg, align 4, !tbaa !46
  %i.gy = sext i32 %i.gx to i64
  %i.gz = mul nsw i64 %1, %i.gy                   ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not200 = icmp eq i64 %i.gz, 0
  br i1 %.not200, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit112, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hc = icmp ugt i64 %i.gz, 1152921504606846975
  br i1 %i.hc, label %bb.br, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i127

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc135 unwind label %bb.be

.noexc135:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i127: ; preds = %bb.bq
  %i.hd = shl nuw nsw i64 %i.gz, 3
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #27
          to label %.noexc136 unwind label %bb.be ; 4 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i127
  store i64 0, ptr %i.he, align 8, !tbaa !47
  %i.hf = add nsw i64 %i.gz, -1                   ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i134, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i129

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i129: ; preds = %.noexc136
  %i.hh = getelementptr i8, ptr %i.he, i64 8
  %.idx.i.i.i.i.i31.i130 = shl nuw nsw i64 %i.hf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hh, i8 0, i64 %.idx.i.i.i.i.i31.i130, i1 false), !tbaa !47
end_hunk_0
begin_hunk_1_@_ZNK5faiss3nsg5GraphIlE13get_neighborsEiPl:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.n = sext i32 %i.b to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.n, %._crit_edge ], [ %indvars.iv, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN5faiss14IndexNNDescentC1EPNS_5IndexEi(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef) unnamed_addr #2

declare void @_ZN5faiss14IndexNNDescent3addElPKf(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss8IndexNSG3addElPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #15 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 5116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.f, %i.i                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.l, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 1, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !74
  %i.m = load i32, ptr %0, align 4, !tbaa !74     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.m, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.n = load i64, ptr %i.b, align 8, !tbaa !47
  %i.o = call i64 @llvm.smin.i64(i64 %i.n, i64 %i.l) ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !47
  %i.p = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not14 = icmp sgt i64 %i.p, %i.o
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = load ptr, ptr %4, align 8, !tbaa !80
  %i.r = load ptr, ptr %3, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.015 = phi i64 [ %i.p, %.lr.ph ], [ %i.w, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.015
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.015
  store i64 %i.u, ptr %i.v, align 8, !tbaa !47
  %i.w = add nsw i64 %.015, 1
  %i.x = load i64, ptr %i.b, align 8, !tbaa !47
  %.not.not = icmp slt i64 %.015, %i.x
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN5faiss14IndexNNDescentD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !109

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !36
  store i64 %i.c, ptr %i.a, align 8, !tbaa !35
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !35
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare void @_ZN5faiss3NSG5resetEv(ptr noundef nonnull align 8 dereferenceable(5056)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss8IndexNSG15check_knn_graphEPKlli.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) #15 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.i, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 1, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i64 0, ptr %i.e, align 8, !tbaa !47
  %i.j = load i32, ptr %0, align 4, !tbaa !74     ; 4 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.k = load i64, ptr %i.b, align 8, !tbaa !47
  %i.l = call i64 @llvm.smin.i64(i64 %i.k, i64 %i.i) ; 3 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !47
  %i.m = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not31 = icmp sgt i64 %i.m, %i.l
  br i1 %.not31, label %._crit_edge33, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.n = load i32, ptr %3, align 4, !tbaa !74     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  %6 = sext i32 %i.n to i64
  br i1 %i.o, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.p = load ptr, ptr %4, align 8, !tbaa !91
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod43 = trunc i32 %i.n to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.02532.us = phi i64 [ %i.m, %.preheader.lr.ph.split.us ], [ %i.ap, %._crit_edge.us ] ; 6 uses
  %i.r = phi i64 [ 0, %.preheader.lr.ph.split.us ], [ %i.ao, %._crit_edge.us ]
  %i.s = mul nsw i64 %.02532.us, %6
  %i.t = getelementptr [8 x i8], ptr %i.p, i64 %i.s ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.h ], [ 0, %.preheader.us ] ; 3 uses
  %.02429.us = phi i32 [ %.1.us.1, %bb.h ], [ 0, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.preheader.us ]
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47   ; 3 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.us.new
  %i.x = load i64, ptr %2, align 8, !tbaa !47
  %.not28.us = icmp sge i64 %i.v, %i.x
  %i.y = icmp eq i64 %i.v, %.02532.us
  %or.cond.us = or i1 %i.y, %.not28.us
  br i1 %or.cond.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.preheader.us.new
  %i.z = add nsw i32 %.02429.us, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us = phi i32 [ %i.z, %bb.d ], [ %.02429.us, %bb.c ] ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47 ; 3 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %2, align 8, !tbaa !47
  %.not28.us.1 = icmp sge i64 %i.ac, %i.ae
  %i.af = icmp eq i64 %i.ac, %.02532.us
  %or.cond.us.1 = or i1 %i.af, %.not28.us.1
  br i1 %or.cond.us.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = add nsw i32 %.1.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.us.1 = phi i32 [ %i.ag, %bb.g ], [ %.1.us, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !123

._crit_edge.us.unr-lcssa:                         ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.02429.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod43)
  %i.ah = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.epil.init
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47 ; 3 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.ak = load i64, ptr %2, align 8, !tbaa !47
  %.not28.us.epil = icmp sge i64 %i.ai, %i.ak
  %i.al = icmp eq i64 %i.ai, %.02532.us
  %or.cond.us.epil = or i1 %i.al, %.not28.us.epil
  br i1 %or.cond.us.epil, label %bb.j, label %._crit_edge.us

bb.j:                                             ; preds = %bb.i, %.epil.preheader
  %i.am = add nsw i32 %.02429.us.epil.init, 1
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.i, %bb.j, %._crit_edge.us.unr-lcssa
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %i.am, %bb.j ], [ %.02429.us.epil.init, %bb.i ]
  %i.an = sext i32 %.1.us.lcssa to i64
  %i.ao = add nsw i64 %i.r, %i.an                 ; 2 uses
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !47
  %i.ap = add i64 %.02532.us, 1
  %exitcond36.not = icmp eq i64 %.02532.us, %i.l
  br i1 %exitcond36.not, label %._crit_edge33, label %.preheader.us

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  store i64 0, ptr %i.e, align 8, !tbaa !47
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  store ptr %i.e, ptr %i.f, align 8
  %i.aq = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %i.j, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK5faiss8IndexNSG15check_knn_graphEPKlli.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.aq, label %bb.m [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %._crit_edge33
  %i.ar = load i64, ptr %5, align 8, !tbaa !47
  %i.as = load i64, ptr %i.e, align 8, !tbaa !47
  %i.at = add nsw i64 %i.as, %i.ar
  store i64 %i.at, ptr %5, align 8, !tbaa !47
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.j, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge33
  %i.au = load i64, ptr %i.e, align 8, !tbaa !47
  %i.av = atomicrmw add ptr %5, i64 %i.au monotonic, align 8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK5faiss8IndexNSG15check_knn_graphEPKlli.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #20 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  %i.d = load i64, ptr %i.a, align 8, !tbaa !47
  %i.e = add nsw i64 %i.d, %i.c
  store i64 %i.e, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss12IndexNSGFlatC2Ev(ptr noundef nonnull align 8 dereferenceable(5140) initializes((0, 12), (16, 26), (28, 36)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.d, align 1, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.e, align 4, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss8IndexNSGE, i64 16), ptr %0, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN5faiss3NSGC1Ei(ptr noundef nonnull align 8 dereferenceable(5056) %i.g, i32 noundef 32)
          to label %_ZN5faiss8IndexNSGC2EiiNS_10MetricTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(5140) %0) #17
  resume { ptr, i32 } %i.h

_ZN5faiss8IndexNSGC2EiiNS_10MetricTypeE.exit:     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i8 0, ptr %i.i, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store ptr null, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5112
  store i8 0, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5116
  store i32 64, ptr %i.l, align 4, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5120
  store i8 0, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5124
  store <4 x i32> <i32 10, i32 100, i32 114, i32 10>, ptr %i.n, align 4, !tbaa !74
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss12IndexNSGFlatE, i64 16), ptr %0, align 8, !tbaa !37
  store i8 1, ptr %i.d, align 1, !tbaa !39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss12IndexNSGFlatD0Ev(ptr noundef nonnull align 8 dereferenceable(5140) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss8IndexNSGE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5096
  %i.b = load i8, ptr %i.a, align 8, !tbaa !103, !range !40, !noundef !41
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d
end_hunk_1
