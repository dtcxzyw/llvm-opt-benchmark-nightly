inline.NumInlined: 515
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK5faiss9QINCoStep6encodeERKNS_2nn16Tensor2DTemplateIfEES5_PS3_:bb.a
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %5, align 8, !tbaa !20
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.v = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss9QINCoStep6encodeERKNS_2nn16Tensor2DTemplateIfEES5_PS3_, ptr noundef nonnull @.str.3, i32 noundef 217)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.ay unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.w, %bb.i ]
  %i.x = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.z = load i64, ptr %i.l, align 8, !tbaa !19
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ax

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 10 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !118
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.a, %i.ad
  call void @_ZN5faiss2nn16Tensor2DTemplateIfEC1EmmPKf(ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %i.ae, i64 noundef %i.e, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !118
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul i64 %i.a, %i.ag
  %i.ai = load i32, ptr %1, align 8, !tbaa !111
  %i.aj = shl nsw i32 %i.ai, 1
  %i.ak = sext i32 %i.aj to i64
  invoke void @_ZN5faiss2nn16Tensor2DTemplateIfEC1EmmPKf(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %i.ah, i64 noundef %i.ak, ptr noundef null)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not145 = icmp eq i64 %i.a, 0                  ; 3 uses
  br i1 %.not145, label %._crit_edge130, label %.preheader127.lr.ph

.preheader127.lr.ph:                              ; preds = %bb.l
  %i.al = load i32, ptr %1, align 8, !tbaa !111
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = shl nsw i64 %i.am, 2                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !118
  br label %.preheader127

.preheader127:                                    ; preds = %.preheader127.lr.ph, %._crit_edge
  %i.au = phi i32 [ %.pre, %.preheader127.lr.ph ], [ %i.ay, %._crit_edge ] ; 2 uses
  %.056129 = phi i64 [ 0, %.preheader127.lr.ph ], [ %i.az, %._crit_edge ] ; 5 uses
  %.not146 = icmp eq i32 %i.au, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.av = sext i32 %i.au to i64
  br label %.lr.ph

._crit_edge130:                                   ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNK5faiss2nn6LinearclERKNS0_16Tensor2DTemplateIfEE(ptr dead_on_unwind nonnull writable sret(%"struct.faiss::nn::Tensor2DTemplate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.n unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit111

._crit_edge:                                      ; preds = %.lr.ph, %.preheader127
  %i.ay = phi i32 [ 0, %.preheader127 ], [ %i.ci, %.lr.ph ]
  %i.az = add nuw i64 %.056129, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %i.a
  br i1 %exitcond.not, label %._crit_edge130, label %.preheader127, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ba = phi i64 [ %i.cj, %.lr.ph ], [ %i.av, %.lr.ph.preheader ]
  %.055128 = phi i64 [ %i.ch, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.bb = mul i64 %i.ba, %.056129
  %i.bc = add i64 %i.bb, %.055128
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !45
  %i.be = load i32, ptr %1, align 8, !tbaa !111
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %.055128, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bg
  %.val93 = load i64, ptr %i.ao, align 8, !tbaa !9
  %.val94 = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.bi = mul i64 %.val93, %i.bc
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bj, ptr readonly align 4 %i.bh, i64 %i.aq, i1 false)
  %i.bk = load i32, ptr %i.ab, align 4, !tbaa !118
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %.056129, %i.bl
  %i.bn = add i64 %i.bm, %.055128
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !45
  %i.bp = load i32, ptr %1, align 8, !tbaa !111
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %.055128, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br
  %.val90 = load i64, ptr %i.ar, align 8, !tbaa !9
  %.val91 = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.bt = mul i64 %i.bn, %.val90
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bu, ptr readonly align 4 %i.bs, i64 %i.aq, i1 false)
  %i.bv = load i32, ptr %i.ab, align 4, !tbaa !118
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %.056129, %i.bw
  %i.by = add i64 %i.bx, %.055128
  %i.bz = load i32, ptr %1, align 8, !tbaa !111
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.cc = mul i64 %.056129, %i.ca
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %.val87 = load i64, ptr %i.ar, align 8, !tbaa !9
  %.val88 = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.ce = mul i64 %i.by, %.val87
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cg, ptr readonly align 4 %i.cd, i64 %i.aq, i1 false)
  %i.ch = add nuw i64 %.055128, 1                 ; 2 uses
  %i.ci = load i32, ptr %i.ab, align 4, !tbaa !118 ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = icmp ult i64 %i.ch, %i.cj
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !146

bb.n:                                             ; preds = %._crit_edge130
  %i.cl = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5faiss2nn16Tensor2DTemplateIfEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %bb.o unwind label %bb.r       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #19
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit

_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit:       ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !119
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph132, label %.preheader126

.lr.ph132:                                        ; preds = %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  br label %bb.t

.preheader126:                                    ; preds = %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit98, %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit
  br i1 %.not145, label %._crit_edge141.split, label %.lr.ph140

.lr.ph140:                                        ; preds = %.preheader126
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !45 ; 2 uses
  %i.db = load i32, ptr %i.ab, align 4, !tbaa !118 ; 2 uses
  %i.dc = sext i32 %i.db to i64                   ; 4 uses
  %i.dd = load i32, ptr %1, align 8, !tbaa !111   ; 5 uses
  %i.de = sext i32 %i.dd to i64                   ; 12 uses
  %factor.op.mul = mul nsw i64 %i.de, %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !45 ; 2 uses
  %.not148 = icmp eq i32 %i.db, 0
  %.not149 = icmp eq i32 %i.dd, 0
  %brmerge = select i1 %.not148, i1 true, i1 %.not149
  br i1 %brmerge, label %._crit_edge141.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph140
  %i.dh = mul nsw i64 %i.dc, %i.de
  %i.di = shl i64 %i.dh, 2
  %i.dj = mul nsw i64 %i.de, %i.dc
  %i.dk = shl i64 %i.dj, 2
  %i.dl = shl nsw i64 %i.de, 2
  %i.dm = shl nsw i64 %i.de, 2
  %i.dn = getelementptr i8, ptr %i.da, i64 %i.di
  %i.do = getelementptr i8, ptr %i.dg, i64 %i.dl
  %min.iters.check = icmp ult i32 %i.dd, 8
  %stride.check = icmp slt i32 %i.dd, 0
  %n.vec = and i64 %i.de, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.de
  %xtraiter = and i64 %i.de, 3
  %i.dp = and i32 %i.dd, 3
  %lcmp.mod.not = icmp eq i32 %i.dp, 0
  br label %.preheader.lr.ph

bb.q:                                             ; preds = %._crit_edge130
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit96

bb.r:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i95, label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit96, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !48
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #19
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit96

_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit96:     ; preds = %bb.s, %bb.r, %bb.q
  %.pn74 = phi { ptr, i32 } [ %i.dq, %bb.q ], [ %i.dr, %bb.r ], [ %i.dr, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %_ZN5faiss2nn16Tensor2DTemplateIiED2Ev.exit

bb.t:                                             ; preds = %.lr.ph132, %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit98
  %indvars.iv = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next, %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit98 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.dz = load ptr, ptr %i.cw, align 8, !tbaa !124
  %i.ea = getelementptr inbounds nuw [128 x i8], ptr %i.dz, i64 %indvars.iv
  invoke void @_ZNK5faiss2nn3FFNclERKNS0_16Tensor2DTemplateIfEE(ptr dead_on_unwind nonnull writable sret(%"struct.faiss::nn::Tensor2DTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.eb = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5faiss2nn16Tensor2DTemplateIfEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ec = load ptr, ptr %i.cx, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i97, label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit98, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = load ptr, ptr %i.cy, align 8, !tbaa !48
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #19
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit98

_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit98:     ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = load i32, ptr %i.ct, align 8, !tbaa !119
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next, %i.ei
  br i1 %i.ej, label %bb.t, label %.preheader126, !llvm.loop !147

bb.x:                                             ; preds = %bb.t
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit100

bb.y:                                             ; preds = %bb.u
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %i.cx, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i99, label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit100, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = load ptr, ptr %i.cy, align 8, !tbaa !48
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #19
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit100

_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit100:    ; preds = %bb.z, %bb.y, %bb.x
  %.pn80 = phi { ptr, i32 } [ %i.ek, %bb.x ], [ %i.el, %bb.y ], [ %i.el, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN5faiss2nn16Tensor2DTemplateIiED2Ev.exit

._crit_edge141.split:                             ; preds = %._crit_edge138, %.lr.ph140, %.preheader126
  invoke void @_ZN5faiss2nn16Tensor2DTemplateIiEC1EmmPKi(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.a, i64 noundef 1, ptr noundef null)
          to label %bb.aa unwind label %bb.ag

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge138
  %.053139 = phi i64 [ %i.fm, %._crit_edge138 ], [ 0, %.preheader.lr.ph.preheader ] ; 5 uses
  %i.er = mul i64 %i.dk, %.053139
  %scevgep179.a = getelementptr i8, ptr %i.dn, i64 %i.er
  %i.es = mul i64 %i.dm, %.053139
  %scevgep181 = getelementptr i8, ptr %i.do, i64 %i.es
  %.reass = mul i64 %factor.op.mul, %.053139
  %i.et = getelementptr [4 x i8], ptr %i.da, i64 %.reass ; 2 uses
  %i.eu = mul i64 %.053139, %i.de
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.eu ; 7 uses
  %bound0 = icmp ult ptr %i.et, %scevgep181
  %bound1 = icmp ult ptr %i.ev, %scevgep179.a
  %found.conflict = and i1 %bound0, %bound1
  %i.ew = or i1 %found.conflict, %stride.check
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge135
  %.051137 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.fo, %._crit_edge135 ]
  %.052136 = phi ptr [ %i.et, %.preheader.lr.ph ], [ %i.fn, %._crit_edge135 ] ; 7 uses
  %brmerge208 = select i1 %min.iters.check, i1 true, i1 %i.ew
  br i1 %brmerge208, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load = load <4 x float>, ptr %i.ex, align 4, !tbaa !51, !alias.scope !148
  %wide.load182.a = load <4 x float>, ptr %i.ey, align 4, !tbaa !51, !alias.scope !148
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.052136, i64 %index ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load183 = load <4 x float>, ptr %i.ez, align 4, !tbaa !51, !alias.scope !151, !noalias !148
  %wide.load184 = load <4 x float>, ptr %i.fa, align 4, !tbaa !51, !alias.scope !151, !noalias !148
  %i.fb = fadd <4 x float> %wide.load, %wide.load183
  %i.fc = fadd <4 x float> %wide.load182.a, %wide.load184
  store <4 x float> %i.fb, ptr %i.ez, align 4, !tbaa !51, !alias.scope !151, !noalias !148
  store <4 x float> %i.fc, ptr %i.fa, align 4, !tbaa !51, !alias.scope !151, !noalias !148
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge135, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.0133.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0133.prol = phi i64 [ %i.fj, %scalar.ph.prol ], [ %.0133.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0133.prol
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !51
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.052136, i64 %.0133.prol ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !51
  %i.fi = fadd float %i.ff, %i.fh
  store float %i.fi, ptr %i.fg, align 4, !tbaa !51
  %i.fj = add nuw i64 %.0133.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !154

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0133.unr = phi i64 [ %.0133.ph, %scalar.ph.preheader ], [ %i.fj, %scalar.ph.prol ]
  %i.fk = sub nsw i64 %.0133.ph, %i.de
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %._crit_edge135, label %scalar.ph

._crit_edge138:                                   ; preds = %._crit_edge135
  %i.fm = add nuw i64 %.053139, 1                 ; 2 uses
  %exitcond153.not = icmp eq i64 %i.fm, %i.a
  br i1 %exitcond153.not, label %._crit_edge141.split, label %.preheader.lr.ph, !llvm.loop !155

._crit_edge135:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fn = getelementptr inbounds [4 x i8], ptr %.052136, i64 %i.de
  %i.fo = add nuw i64 %.051137, 1                 ; 2 uses
  %exitcond152.not = icmp eq i64 %i.fo, %i.dc
  br i1 %exitcond152.not, label %._crit_edge138, label %.preheader, !llvm.loop !156

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0133 = phi i64 [ %i.gm, %scalar.ph ], [ %.0133.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0133
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !51
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.052136, i64 %.0133 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !51
  %i.ft = fadd float %i.fq, %i.fs
  store float %i.ft, ptr %i.fr, align 4, !tbaa !51
  %i.fu = add nuw i64 %.0133, 1                   ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !51
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.052136, i64 %i.fu ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !51
  %i.fz = fadd float %i.fw, %i.fy
  store float %i.fz, ptr %i.fx, align 4, !tbaa !51
  %i.ga = add nuw i64 %.0133, 2                   ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !51
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.052136, i64 %i.ga ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !51
  %i.gf = fadd float %i.gc, %i.ge
  store float %i.gf, ptr %i.gd, align 4, !tbaa !51
  %i.gg = add nuw i64 %.0133, 3                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !51
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.052136, i64 %i.gg ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !51
  %i.gl = fadd float %i.gi, %i.gk
  store float %i.gl, ptr %i.gj, align 4, !tbaa !51
  %i.gm = add nuw i64 %.0133, 4                   ; 2 uses
  %exitcond151.not.3 = icmp eq i64 %i.gm, %i.de
  br i1 %exitcond151.not.3, label %._crit_edge135, label %scalar.ph, !llvm.loop !157

bb.aa:                                            ; preds = %._crit_edge141.split
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.an, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = load i64, ptr %4, align 8, !tbaa !9
  %i.go = icmp eq i64 %i.gn, %i.a
  br i1 %i.go, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !9
  %i.gr = load i32, ptr %1, align 8, !tbaa !111
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp eq i64 %i.gq, %i.gs
  br i1 %i.gt, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.gu, ptr %10, align 8, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.gv, align 8, !tbaa !17
  store i8 0, ptr %i.gu, align 8, !tbaa !19
  %i.gw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #17 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.gy = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gz = add nuw nsw i64 %i.gy, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.gz)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ha = load ptr, ptr %10, align 8, !tbaa !20
  %i.hb = load i64, ptr %i.gv, align 8, !tbaa !17
  %i.hc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ha, i64 noundef %i.hb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.gy)
          to label %bb.ai unwind label %bb.ah

bb.ag:                                            ; preds = %._crit_edge141.split
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss2nn16Tensor2DTemplateIiED2Ev.exit

bb.ah:                                            ; preds = %bb.aj, %bb.af, %bb.ae
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %bb.af, %bb.ad
  %i.hf = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss9QINCoStep6encodeERKNS_2nn16Tensor2DTemplateIfEES5_PS3_, ptr noundef nonnull @.str.3, i32 noundef 267)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.hf, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.ay unwind label %bb.ah

bb.ak:                                            ; preds = %bb.ai
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hf) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.pn76 = phi { ptr, i32 } [ %i.he, %bb.ah ], [ %i.hg, %bb.ak ]
  %i.hh = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gu
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.al
  %i.hj = load i64, ptr %i.gu, align 8, !tbaa !19
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.at

bb.am:                                            ; preds = %bb.ac
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !45
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa
  %.0125 = phi ptr [ null, %bb.aa ], [ %i.hm, %bb.am ]
  br i1 %.not145, label %"_ZN5faiss15with_simd_levelIZNKS_9QINCoStep6encodeERKNS_2nn16Tensor2DTemplateIfEES6_PS4_E3$_0EEDaOT_.exit", label %.lr.ph43.i.i.i.i.preheader

.lr.ph43.i.i.i.i.preheader:                       ; preds = %bb.an
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph43.i.i.i.i

.lr.ph43.i.i.i.i:                                 ; preds = %.lr.ph43.i.i.i.i.preheader, %bb.ap
  %.1 = phi ptr [ %.2, %bb.ap ], [ %.0125, %.lr.ph43.i.i.i.i.preheader ] ; 9 uses
  %.03041.i.i.i.i = phi i64 [ %i.lh, %bb.ap ], [ 0, %.lr.ph43.i.i.i.i.preheader ] ; 6 uses
end_hunk_0
