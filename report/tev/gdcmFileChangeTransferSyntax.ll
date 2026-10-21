Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmFileChangeTransferSyntax?download=true
inline.NumInlined: 1362
inline.NumDeleted: 585
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4gdcm24FileChangeTransferSyntax6ChangeEv:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph351, %bb.bf, %bb.bh, %bb.bp, %bb.az, %bb.ax, %bb.bx, %bb.bw, %bb.bs, %bb.br, %bb.bd, %bb.aw
  %lpad.loopexit.split-lp429 = landingpad { ptr, i32 }
          cleanup
  br label %.body196

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc195:                                        ; preds = %bb.bs
  %i.hv = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.hw = getelementptr i8, ptr %i.hv, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr %i.ae, i64 %i.hx ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !62
  %i.ib = and i32 %i.ia, 5
  %.not.i193 = icmp eq i32 %i.ib, 0
  br i1 %.not.i193, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %.noexc195
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !63 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !16
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = invoke { i64, i64 } %i.ig(ptr noundef nonnull align 8 dereferenceable(64) %i.id, i64 noundef %i.hr, i32 noundef 0, i32 noundef 16)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i194 unwind label %bb.bv, !inline_history !134

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i194: ; preds = %bb.bt
  %i.ii = extractvalue { i64, i64 } %i.ih, 1
  %i.ij = icmp eq i64 %i.ii, -1
  br i1 %i.ij, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i194
  %i.ik = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.il = getelementptr i8, ptr %i.ik, i64 -24
  %i.im = load i64, ptr %i.il, align 8
  %i.in = getelementptr inbounds i8, ptr %i.ae, i64 %i.im ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !62
  %i.iq = or i32 %i.ip, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.in, i32 noundef %i.iq)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body196

bb.bw:                                            ; preds = %bb.bu, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i194, %.noexc195
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.is = zext i1 %spec.select.i192 to i32
  %spec.select.i200 = add nuw i32 %i.is, %i.ho
  store i32 %spec.select.i200, ptr %i.d, align 4, !tbaa !68
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.noexc205 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc205:                                        ; preds = %bb.bx
  %i.iu = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.iv = getelementptr i8, ptr %i.iu, i64 -24
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds i8, ptr %i.ae, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !62
  %i.ja = and i32 %i.iz, 5
  %.not.i203 = icmp eq i32 %i.ja, 0
  br i1 %.not.i203, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %.noexc205
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !63 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke { i64, i64 } %i.jf(ptr noundef nonnull align 8 dereferenceable(64) %i.jc, i64 noundef 0, i32 noundef 2, i32 noundef 16)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i204 unwind label %bb.ca, !inline_history !134

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i204: ; preds = %bb.by
  %i.jh = extractvalue { i64, i64 } %i.jg, 1
  %i.ji = icmp eq i64 %i.jh, -1
  br i1 %i.ji, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i204
  %i.jj = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.jk = getelementptr i8, ptr %i.jj, i64 -24
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds i8, ptr %i.ae, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !62
  %i.jp = or i32 %i.jo, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.jm, i32 noundef %i.jp)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body196

bb.cb:                                            ; preds = %bb.bz, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffB8ne180100ExNS_8ios_base7seekdirEj.exit.i204, %.noexc205
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.jr = add nuw i32 %.083354, 1                 ; 2 uses
  %i.js = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !68
  %.not143 = icmp ult i32 %i.jr, %i.ju
  br i1 %.not143, label %bb.ax, label %.thread, !llvm.loop !137

.thread:                                          ; preds = %bb.cb, %bb.bi, %bb.bg, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %.084325 = phi i64 [ 0, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit ], [ %.084353, %bb.bi ], [ %.084353, %bb.bg ], [ %i.hq, %bb.cb ]
  %.not143316 = phi i1 [ false, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit ], [ true, %bb.bi ], [ true, %bb.bg ], [ false, %bb.cb ]
  %i.jv = load ptr, ptr %13, align 8, !tbaa !82   ; 4 uses
  %.not.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %.thread
  store ptr %i.jv, ptr %i.el, align 8, !tbaa !83
  %i.jw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !89
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #28
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit: ; preds = %.thread, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %.not143316, label %bb.eg, label %bb.dp

.body196:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo, %bb.be, %bb.bv, %bb.ca
  %.pn149.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jq, %bb.ca ], [ %i.gc, %bb.be ], [ %i.ir, %bb.bv ], [ %.pn149, %bb.bo ], [ %lpad.loopexit.split-lp429, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.kb = load ptr, ptr %13, align 8, !tbaa !82   ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i209, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit210, label %bb.cd

bb.cd:                                            ; preds = %.body196
  store ptr %i.kb, ptr %i.el, align 8, !tbaa !83
  %i.kc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !89
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #28
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit210

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit210: ; preds = %.body196, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.eo

bb.ce:                                            ; preds = %bb.au
  %i.kh = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !39 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !16
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 112
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = invoke noundef zeroext i1 %i.kl(ptr noundef nonnull align 8 dereferenceable(65) %i.ki)
          to label %bb.cf unwind label %bb.dz

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.km, label %bb.cg, label %bb.eg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.kn = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 3 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !68
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !68
  %i.kr = mul i32 %i.ko, %i.bz
  %i.ks = mul i32 %i.kr, %i.kq                    ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %.not397 = icmp eq i32 %i.ks, 0
  br i1 %.not397, label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ku = zext i32 %i.ks to i64
  invoke void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %i.ku)
          to label %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212_crit_edge unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212_crit_edge: ; preds = %bb.ch
  %.pre = load ptr, ptr %15, align 8, !tbaa !82
  %.pre377 = load ptr, ptr %i.kt, align 8, !tbaa !83
  %.pre378 = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.kv = ptrtoint ptr %.pre377 to i64
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212: ; preds = %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212_crit_edge, %bb.cg
  %i.kw = phi ptr [ %.pre378, %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212_crit_edge ], [ %i.kn, %bb.cg ]
  %i.kx = phi i64 [ %i.kv, %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212_crit_edge ], [ 0, %bb.cg ]
  %i.ky = phi ptr [ %.pre, %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212_crit_edge ], [ null, %bb.cg ] ; 5 uses
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = sub i64 %i.kx, %i.kz                    ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !68 ; 2 uses
  %i.ld = uitofp i32 %i.lc to double
  %i.le = fdiv double 1.000000e+00, %i.ld
  %.not338.not = icmp eq i32 %i.lc, 0
  br i1 %.not338.not, label %.thread292, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit212
  %i.lf = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph, %bb.dm
  %.0340 = phi i32 [ 0, %.lr.ph ], [ %i.pp, %bb.dm ]
  %.3339 = phi i64 [ 0, %.lr.ph ], [ %i.nm, %bb.dm ] ; 3 uses
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4gdcm8Fragment5WriteINS_11SwapperNoOpEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.cj unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.lh = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.li = getelementptr i8, ptr %i.lh, i64 -24
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = getelementptr inbounds i8, ptr %i.ae, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !62
  %i.ln = and i32 %i.lm, 5
  %.not.i213 = icmp eq i32 %i.ln, 0
  br i1 %.not.i213, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !63 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = invoke { i64, i64 } %i.ls(ptr noundef nonnull align 8 dereferenceable(64) %i.lp, i64 noundef 0, i32 noundef 1, i32 noundef 16)
          to label %.noexc218 unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !135

.noexc218:                                        ; preds = %bb.ck
  %i.lu = extractvalue { i64, i64 } %i.lt, 1
  br label %bb.cl

bb.cl:                                            ; preds = %.noexc218, %bb.cj
  %.sroa.3.0.i214 = phi i64 [ %i.lu, %.noexc218 ], [ -1, %bb.cj ] ; 2 uses
  %i.lv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ky, i64 noundef %i.la)
          to label %bb.cm unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  %i.lw = load ptr, ptr %7, align 8, !tbaa !16
  %i.lx = getelementptr i8, ptr %i.lw, i64 -24
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds i8, ptr %7, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !62
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.md = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.md, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 192, ptr noundef nonnull @.str.2)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  invoke void @__cxa_throw(ptr nonnull %i.md, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
          to label %bb.fb unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.cn
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.md) #27
  br label %.body233

bb.cq:                                            ; preds = %bb.cm
  %i.mf = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !39
  %i.mh = invoke noundef zeroext i1 @_ZN4gdcm10ImageCodec17CleanupUnusedBitsEPcm(ptr noundef nonnull align 8 dereferenceable(65) %i.mg, ptr noundef %i.ky, i64 noundef %i.la)
          to label %bb.cr unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.mh, label %bb.cs, label %.thread292.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.mi = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !39 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !16
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 128
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = invoke noundef zeroext i1 %i.mm(ptr noundef nonnull align 8 dereferenceable(65) %i.mj, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ky, i64 noundef %i.la)
          to label %bb.ct unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.mn, label %bb.cu, label %.thread292.loopexit

bb.cu:                                            ; preds = %bb.ct
  %i.mo = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 136 ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !151
  %i.mr = fadd double %i.le, %i.mq
  store double %i.mr, ptr %i.mp, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZN4gdcm5EventC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.cv unwind label %bb.da, !inline_history !0

bb.cv:                                            ; preds = %bb.cu
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4gdcm13ProgressEventE, i64 16), ptr %16, align 8, !tbaa !16
  %i.ms = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 136
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !151
  store double %i.mu, ptr %i.lf, align 8, !tbaa !87
  invoke void @_ZN4gdcm7Subject11InvokeEventERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.cw unwind label %bb.db

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN4gdcm5EventD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.mv = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.mw = getelementptr i8, ptr %i.mv, i64 -24
  %i.mx = load i64, ptr %i.mw, align 8
  %i.my = getelementptr inbounds i8, ptr %i.ae, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !62
  %i.nb = and i32 %i.na, 5
  %.not.i222 = icmp eq i32 %i.nb, 0
  br i1 %.not.i222, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !63 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !16
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = invoke { i64, i64 } %i.ng(ptr noundef nonnull align 8 dereferenceable(64) %i.nd, i64 noundef 0, i32 noundef 1, i32 noundef 16)
          to label %.noexc227 unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !135

.noexc227:                                        ; preds = %bb.cx
  %i.ni = extractvalue { i64, i64 } %i.nh, 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %.noexc227
  %.sroa.3.0.i223 = phi i64 [ %i.ni, %.noexc227 ], [ -1, %bb.cw ]
  %i.nj = sub nsw i64 %.sroa.3.0.i223, %.sroa.3.0.i214 ; 3 uses
  %i.nk = trunc i64 %i.nj to i32                  ; 2 uses
  %i.nl = and i64 %i.nj, 4294967295
  %i.nm = add i64 %i.nl, %.3339                   ; 2 uses
  %i.nn = add nsw i64 %.sroa.3.0.i214, -4
  %i.no = icmp ne i32 %i.nk, -1
  %i.np = trunc i64 %i.nj to i1
  %spec.select.i229 = and i1 %i.no, %i.np         ; 2 uses
  br i1 %spec.select.i229, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext 0)
          to label %bb.dd unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.da:                                            ; preds = %bb.cu
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cv
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm5EventD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn = phi { ptr, i32 } [ %i.ns, %bb.db ], [ %i.nr, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.body233

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cx, %bb.cl, %bb.cq, %bb.cs, %bb.ck, %bb.ci, %bb.di, %bb.dh, %bb.dd, %bb.cz, %bb.co, %bb.ch
  %lpad.loopexit.split-lp443 = landingpad { ptr, i32 }
          cleanup
  br label %.body233

bb.dd:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.noexc232 unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.dd
  %i.nt = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.nu = getelementptr i8, ptr %i.nt, i64 -24
  %i.nv = load i64, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds i8, ptr %i.ae, i64 %i.nv ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !62
  %i.nz = and i32 %i.ny, 5
  %.not.i230 = icmp eq i32 %i.nz, 0
  br i1 %.not.i230, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %.noexc232
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !63 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !16
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 32
end_hunk_0
begin_hunk_1_@_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEE5closeEv
define linkonce_odr hidden void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEE5closeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv(ptr noundef nonnull align 8 dereferenceable(163) %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62
  %i.j = or i32 %i.i, 4
  tail call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.g, i32 noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm24FileChangeTransferSyntax22UpdateCompressionLevelEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.gdcm::Attribute", align 8   ; 9 uses
  %3 = alloca %"class.gdcm::DataElement", align 8 ; 7 uses
  %4 = alloca %"class.gdcm::FileAnonymizer", align 8 ; 10 uses
  %5 = alloca %"class.gdcm::VL", align 4          ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = tail call noundef zeroext i1 @_ZNK4gdcm10ImageCodec12GetLossyFlagEv(ptr noundef nonnull align 8 dereferenceable(65) %i.d)
  br i1 %i.e, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store double %1, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -2
  store i8 %i.i, ptr %i.g, align 4
  store i32 1, ptr %i.f, align 8, !tbaa !111
  store ptr %i.a, ptr %2, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK4gdcm9AttributeILt40ELt8466ELx32ELi218367EE16GetAsDataElementEv(ptr dead_on_unwind nonnull writable sret(%"class.gdcm::DataElement") align 8 %3, ptr noundef nonnull align 8 dereferenceable(13) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 57
  %i.q = select i1 %i.m, ptr %i.o, ptr %i.p       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN4gdcm14FileAnonymizerC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4gdcm14FileAnonymizer16SetInputFileNameEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.q)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4gdcm14FileAnonymizer17SetOutputFileNameEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.q)
          to label %_ZNK4gdcm11DataElement12GetByteValueEv.exit unwind label %bb.i

_ZNK4gdcm11DataElement12GetByteValueEv.exit:      ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73, !nonnull !67, !noundef !67
  %i.t = call ptr @__dynamic_cast(ptr nonnull %i.s, ptr nonnull @_ZTIN4gdcm5ValueE, ptr nonnull @_ZTIN4gdcm9ByteValueE, i64 0) #27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.y = icmp eq ptr %i.v, %i.x
  %spec.select.i = select i1 %i.y, ptr null, ptr %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 16, ptr %5, align 4, !tbaa !77
  invoke void @_ZN4gdcm14FileAnonymizer7ReplaceERKNS_3TagEPKcRKNS_2VLE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef %spec.select.i, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.z = invoke noundef zeroext i1 @_ZN4gdcm14FileAnonymizer5WriteEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.j:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.u

bb.k:                                             ; preds = %bb.f
  call void @_ZN4gdcm14FileAnonymizerD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !73  ; 4 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
          to label %.noexc.i unwind label %bb.r

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ai) #27
  br label %.body.i

bb.p:                                             ; preds = %bb.l
  %i.ak = add nsw i64 %i.ag, -1                   ; 2 uses
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !90
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.q, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #27, !inline_history !2
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.r:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.aj, %bb.o ]
  %i.ap = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit:      ; preds = %bb.k, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.aq = load i8, ptr %i.g, align 4
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.s, label %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit

bb.s:                                             ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  %i.as = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.as) #28
  br label %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit

_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit: ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.z

bb.u:                                             ; preds = %bb.i, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ac, %bb.i ]
  call void @_ZN4gdcm14FileAnonymizerD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.av = load i8, ptr %i.g, align 4
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.x, label %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit19

bb.x:                                             ; preds = %bb.w
  %i.ax = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit19, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #28
  br label %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit19

_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit19: ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.z:                                             ; preds = %bb.a, %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit
  %.113 = phi i1 [ %i.z, %_ZN4gdcm9AttributeILt40ELt8466ELx32ELi218367EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.113
}

; Function Attrs: nounwind
declare void @_ZN4gdcm5EventD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__113basic_fstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__113basic_fstreamIcNS_11char_traitsIcEEEE, i64 104), ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__113basic_fstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dead_on_return(163) dereferenceable(163) %i.c) #27
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__113basic_fstreamIcNS_11char_traitsIcEEEE, i64 8)) #27
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dead_on_return(163) dereferenceable(163) %i.f) #27
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.g) #27
  ret void
}

declare noundef zeroext i1 @_ZNK4gdcm10ImageCodec12GetLossyFlagEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4gdcm9AttributeILt40ELt8466ELx32ELi218367EE16GetAsDataElementEv(ptr dead_on_unwind noalias writable sret(%"class.gdcm::DataElement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(13) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 35 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.gdcm::VR", align 8          ; 6 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  store i32 554827816, ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !16
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !16
  %i.j = load ptr, ptr %2, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.m, ptr noundef nonnull %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr null, ptr %i.n, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i32 -1, ptr %i.o, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %2, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.c, align 8, !tbaa !16
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.d)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.p, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.c) #27
  br label %.body

bb.f:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.d, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.s, align 8, !tbaa !117
  %i.t = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !111
  %i.w = zext i32 %i.v to i64
  invoke void @_ZN4gdcm22EncodingImplementationILx1685163643EE5WriteIdEEvPKT_mRNSt3__113basic_ostreamIcNS6_11char_traitsIcEEEE(ptr noundef nonnull %i.t, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.x = load i32, ptr %i.s, align 8, !tbaa !117, !noalias !180 ; 2 uses
  %i.y = and i32 %i.x, 16
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118, !noalias !180 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !119, !noalias !180 ; 3 uses
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !118, !noalias !180
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi ptr [ %i.ac, %bb.j ], [ %i.aa, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.ag = and i32 %i.x, 8
  %.not1.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.m

.thread15.i.i.i:                                  ; preds = %bb.l
  store i8 0, ptr %3, align 8, !alias.scope !180
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !120, !noalias !180
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.m, %bb.k
  %.sink22.i.i.i = phi ptr [ %i.ae, %bb.k ], [ %i.ak, %bb.m ]
  %.sink21.in.i.i.i = phi ptr [ %i.af, %bb.k ], [ %i.ai, %bb.m ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !89, !noalias !180 ; 2 uses
  %i.al = ptrtoint ptr %.sink22.i.i.i to i64
  %i.am = ptrtoint ptr %.sink21.i.i.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 8 uses
  %i.ao = icmp ugt i64 %i.an, -9
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.ap = icmp ult i64 %i.an, 23
  br i1 %i.ap, label %bb.p, label %.thread.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN4gdcm7DataSet7ReplaceERKNS_11DataElementE:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.ac, %bb.n ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.preheader8.i.i.i.i.i

.preheader8.i.i.i.i.i:                            ; preds = %bb.p, %.preheader8.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.af, %.preheader8.i.i.i.i.i ], [ %i.ae, %bb.p ] ; 2 uses
  %i.af = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i, label %.preheader8.i.i.i.i.i, !llvm.loop !4

.preheader.i.i.i.i.i:                             ; preds = %bb.p, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %.preheader.i.i.i.i.i ], [ %i.o, %bb.p ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !123 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = icmp eq ptr %.0.i.i.i.i.i, %i.ai
  br i1 %i.aj, label %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !192

_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i: ; preds = %.preheader8.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ah, %.preheader.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %.preheader8.i.i.i.i.i ]
  %i.ak = load ptr, ptr %0, align 8, !tbaa !107
  %i.al = icmp eq ptr %i.ak, %i.o
  br i1 %i.al, label %bb.q, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit

bb.q:                                             ; preds = %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i
  store ptr %.06.i.i.i.i.i, ptr %0, align 8, !tbaa !107
  br label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit

_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit: ; preds = %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i, %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !105
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !105
  tail call void @_ZNSt3__113__tree_removeB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.o) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 56) #28
  br label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread

_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread: ; preds = %bb.g, %bb.i, %bb.a, %_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i, %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit
  %i.aq = tail call { ptr, i8 } @_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE25__emplace_unique_key_argsIS2_JRKS2_EEENS_4pairINS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret void

bb.r:                                             ; preds = %bb.l
  unreachable
}

declare void @_ZN4gdcm14FileDerivationC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm14FileDerivation12AddReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4gdcm14FileDerivation42SetPurposeOfReferenceCodeSequenceCodeValueEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare void @_ZN4gdcm14FileDerivation34SetDerivationCodeSequenceCodeValueEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare void @_ZN4gdcm14FileDerivation24SetDerivationDescriptionEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm14FileDerivation6DeriveEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9AttributeILt40ELt8464ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8                 ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !124
  br label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.f, i64 noundef %i.h) ; 0 uses
  br label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = select i1 %i.d, ptr %i.k, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i8 %i.c, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = select i1 %i.d, i64 %i.o, i64 %i.q
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.m, i64 noundef %i.r) ; 0 uses
  br label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit

_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit:    ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm6StringILc92ELj16ELc32EEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !52
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !52
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.a to i8
  %i.m = shl nuw nsw i8 %i.l, 1
  store i8 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %.017.i.i = phi ptr [ %i.h, %.thread.i.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.d, %bb.e
  %.018.i.i = phi ptr [ %i.n, %bb.d ], [ %.017.i.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %i.a
  store i8 0, ptr %i.o, align 1, !tbaa !52
  %i.p = load i8, ptr %0, align 8                 ; 2 uses
  %i.q = trunc i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i8 %i.p, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.q, i64 %i.s, i64 %i.u
  %i.w = and i64 %i.v, 1
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 32)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load i8, ptr %0, align 8
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ac = load i64, ptr %0, align 8
  %i.ad = and i64 %i.ac, -2
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #28
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %bb.f, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4gdcm9AttributeILt40ELt8464ELx8ELi1EE16GetAsDataElementEv(ptr dead_on_unwind noalias writable sret(%"class.gdcm::DataElement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 37 uses
  %3 = alloca %"class.gdcm::VR", align 8          ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  store i32 554696744, ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !16
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !16
  %i.j = load ptr, ptr %2, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.m, ptr noundef nonnull %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr null, ptr %i.n, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i32 -1, ptr %i.o, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %2, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.c, align 8, !tbaa !16
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.d)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.p, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.c) #27
  br label %.body

bb.f:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.d, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.s, align 8, !tbaa !117
  %7 = load ptr, ptr %2, align 8, !tbaa !16
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %2, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = and i32 %12, 5
  %.not19.i = icmp eq i32 %13, 0
  br i1 %.not19.i, label %19, label %14

14:                                               ; preds = %bb.f
  %15 = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef 257, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %17

.invoke:                                          ; preds = %bb.i, %14
  %16 = phi ptr [ %15, %14 ], [ %i.w, %bb.i ]
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %15) #27
  br label %bb.bc

19:                                               ; preds = %bb.f
  %20 = load i8, ptr %1, align 8                  ; 2 uses
  %21 = trunc i8 %20 to i1                        ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %25 = select i1 %21, ptr %23, ptr %24
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = lshr i8 %20, 1
  %29 = zext nneg i8 %28 to i64
  %30 = select i1 %21, i64 %27, i64 %29
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %25, i64 noundef %30)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 8, ptr %3, align 8
  %i.t = invoke noundef zeroext i1 @_ZNK4gdcm2VR8IsVRFileEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  br i1 %i.t, label %bb.h, label %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exitthread-pre-split

bb.h:                                             ; preds = %.noexc
  %i.u = load i64, ptr %3, align 8, !tbaa !70     ; 2 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !70
  br label %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit

_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exitthread-pre-split: ; preds = %.noexc
  %.pr = load i64, ptr %i.b, align 8, !tbaa !75
  br label %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit

_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit:       ; preds = %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exitthread-pre-split, %bb.h
  %i.v = phi i64 [ %.pr, %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exitthread-pre-split ], [ %i.u, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i64 %i.v, 262144
  br i1 %.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit
  %i.w = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef 425, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.l

bb.j:                                             ; preds = %.invoke, %bb.y, %19
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.k:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.bc

bb.l:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.w) #27
  br label %bb.bc

bb.m:                                             ; preds = %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !117, !noalias !214 ; 2 uses
  %i.ab = and i32 %i.aa, 16
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118, !noalias !214 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !119, !noalias !214 ; 3 uses
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !118, !noalias !214
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ah = phi ptr [ %i.af, %bb.o ], [ %i.ad, %bb.n ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.q:                                             ; preds = %bb.m
  %i.aj = and i32 %i.aa, 8
  %.not1.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.r

.thread15.i.i.i:                                  ; preds = %bb.q
  store i8 0, ptr %4, align 8, !alias.scope !214
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !120, !noalias !214
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.r, %bb.p
  %.sink22.i.i.i = phi ptr [ %i.ah, %bb.p ], [ %i.an, %bb.r ]
  %.sink21.in.i.i.i = phi ptr [ %i.ai, %bb.p ], [ %i.al, %bb.r ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !89, !noalias !214 ; 2 uses
  %i.ao = ptrtoint ptr %.sink22.i.i.i to i64
  %i.ap = ptrtoint ptr %.sink21.i.i.i to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 8 uses
  %i.ar = icmp ugt i64 %i.aq, -9
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #29
          to label %.noexc14 unwind label %bb.z

.noexc14:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.as = icmp ult i64 %i.aq, 23
  br i1 %i.as, label %bb.u, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.t
  %i.at = or i64 %i.aq, 7                         ; 2 uses
  %i.au = icmp eq i64 %i.at, 23
  %i.av = add nuw i64 %i.at, 1
  %i.aw = select i1 %i.au, i64 25, i64 %i.av      ; 2 uses
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #26
          to label %.noexc15 unwind label %bb.z   ; 2 uses

.noexc15:                                         ; preds = %.thread.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !52, !alias.scope !214
  %i.az = or i64 %i.aw, 1
  store i64 %i.az, ptr %4, align 8, !alias.scope !214
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aq, ptr %i.ba, align 8, !tbaa !52, !alias.scope !214
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = trunc nuw nsw i64 %i.aq to i8
  %i.bc = shl nuw nsw i8 %i.bb, 1
  store i8 %i.bc, ptr %4, align 8, !alias.scope !214
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc15
  %.017.i.i.i.i.i = phi ptr [ %i.ax, %.noexc15 ], [ %i.bd, %bb.u ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i, ptr align 1 %.sink21.i.i.i, i64 %i.aq, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread15.i.i.i
  %.sroa.4.0.i712.i.i.i = phi i64 [ 0, %bb.u ], [ %i.aq, %bb.v ], [ 0, %.thread15.i.i.i ]
  %.018.i.i.i.i.i = phi ptr [ %i.bd, %bb.u ], [ %.017.i.i.i.i.i, %bb.v ], [ %i.ak, %.thread15.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i, i64 %.sroa.4.0.i712.i.i.i
  store i8 0, ptr %i.be, align 1, !tbaa !52
  %i.bf = load i8, ptr %4, align 8                ; 2 uses
  %i.bg = trunc i8 %i.bf to i1                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = lshr i8 %i.bf, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = select i1 %i.bg, i64 %i.bi, i64 %i.bk
  %i.bm = and i64 %i.bl, 1
  %.not9 = icmp eq i64 %i.bm, 0
  br i1 %i.bg, label %bb.x, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52
  %i.bp = load i64, ptr %4, align 8
  %i.bq = and i64 %i.bp, -2
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bq) #28
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.not9, label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.j ; 0 uses

bb.z:                                             ; preds = %.thread.i.i.i.i.i, %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bc

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.y, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.bt = load i32, ptr %i.s, align 8, !tbaa !117, !noalias !218 ; 2 uses
  %i.bu = and i32 %i.bt, 16
  %.not.i.i.i.i17 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i17, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !118, !noalias !218 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !119, !noalias !218 ; 3 uses
  %i.bz = icmp ult ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !118, !noalias !218
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ca = phi ptr [ %i.by, %bb.ab ], [ %i.bw, %bb.aa ]
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i18

bb.ad:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.cc = and i32 %i.bt, 8
  %.not1.i.i.i.i27 = icmp eq i32 %i.cc, 0
  br i1 %.not1.i.i.i.i27, label %.thread15.i.i.i28, label %bb.ae

.thread15.i.i.i28:                                ; preds = %bb.ad
  store i8 0, ptr %5, align 8, !alias.scope !218
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !120, !noalias !218
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i18

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i18: ; preds = %bb.ae, %bb.ac
  %.sink22.i.i.i19 = phi ptr [ %i.ca, %bb.ac ], [ %i.cg, %bb.ae ]
  %.sink21.in.i.i.i20 = phi ptr [ %i.cb, %bb.ac ], [ %i.ce, %bb.ae ]
  %.sink21.i.i.i21 = load ptr, ptr %.sink21.in.i.i.i20, align 8, !tbaa !89, !noalias !218 ; 2 uses
  %i.ch = ptrtoint ptr %.sink22.i.i.i19 to i64
  %i.ci = ptrtoint ptr %.sink21.i.i.i21 to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 8 uses
  %i.ck = icmp ugt i64 %i.cj, -9
  br i1 %i.ck, label %bb.af, label %bb.ag
end_hunk_2
begin_hunk_3_@_ZNK4gdcm9AttributeILt40ELt8464ELx8ELi1EE16GetAsDataElementEv:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i25, i64 %.sroa.4.0.i712.i.i.i24
  store i8 0, ptr %i.cx, align 1, !tbaa !52
  %i.cy = load i8, ptr %5, align 8                ; 2 uses
  %i.cz = trunc i8 %i.cy to i1                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = lshr i8 %i.cy, 1
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = select i1 %i.cz, i64 %i.db, i64 %i.dd
  br i1 %i.cz, label %bb.ak, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !52
  %i.dh = load i64, ptr %5, align 8
  %i.di = and i64 %i.dh, -2
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.di) #28
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.dj = load i32, ptr %i.s, align 8, !tbaa !117, !noalias !222 ; 2 uses
  %i.dk = and i32 %i.dj, 16
  %.not.i.i.i.i33 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i.i.i33, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !118, !noalias !222 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !119, !noalias !222 ; 3 uses
  %i.dp = icmp ult ptr %i.dm, %i.do
  br i1 %i.dp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store ptr %i.do, ptr %i.dl, align 8, !tbaa !118, !noalias !222
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dq = phi ptr [ %i.do, %bb.am ], [ %i.dm, %bb.al ]
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i34

bb.ao:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %i.ds = and i32 %i.dj, 8
  %.not1.i.i.i.i43 = icmp eq i32 %i.ds, 0
  br i1 %.not1.i.i.i.i43, label %.thread15.i.i.i44, label %bb.ap

.thread15.i.i.i44:                                ; preds = %bb.ao
  store i8 0, ptr %6, align 8, !alias.scope !222
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 1
  br label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !120, !noalias !222
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i34

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i34: ; preds = %bb.ap, %bb.an
  %.sink22.i.i.i35 = phi ptr [ %i.dq, %bb.an ], [ %i.dw, %bb.ap ]
  %.sink21.in.i.i.i36 = phi ptr [ %i.dr, %bb.an ], [ %i.du, %bb.ap ]
  %.sink21.i.i.i37 = load ptr, ptr %.sink21.in.i.i.i36, align 8, !tbaa !89, !noalias !222 ; 2 uses
  %i.dx = ptrtoint ptr %.sink22.i.i.i35 to i64
  %i.dy = ptrtoint ptr %.sink21.i.i.i37 to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 8 uses
  %i.ea = icmp ugt i64 %i.dz, -9
  br i1 %i.ea, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i34
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #29
          to label %.noexc45 unwind label %bb.az

.noexc45:                                         ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i34
  %i.eb = icmp ult i64 %i.dz, 23
  br i1 %i.eb, label %bb.as, label %.thread.i.i.i.i.i38

.thread.i.i.i.i.i38:                              ; preds = %bb.ar
  %i.ec = or i64 %i.dz, 7                         ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 23
  %i.ee = add nuw i64 %i.ec, 1
  %i.ef = select i1 %i.ed, i64 25, i64 %i.ee      ; 2 uses
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #26
          to label %.noexc46 unwind label %bb.az  ; 2 uses

.noexc46:                                         ; preds = %.thread.i.i.i.i.i38
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !52, !alias.scope !222
  %i.ei = or i64 %i.ef, 1
  store i64 %i.ei, ptr %6, align 8, !alias.scope !222
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dz, ptr %i.ej, align 8, !tbaa !52, !alias.scope !222
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ek = trunc nuw nsw i64 %i.dz to i8
  %i.el = shl nuw nsw i8 %i.ek, 1
  store i8 %i.el, ptr %6, align 8, !alias.scope !222
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i42 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i42, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc46
  %.017.i.i.i.i.i39 = phi ptr [ %i.eg, %.noexc46 ], [ %i.em, %bb.as ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i39, ptr align 1 %.sink21.i.i.i37, i64 %i.dz, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.thread15.i.i.i44
  %.sroa.4.0.i712.i.i.i40 = phi i64 [ 0, %bb.as ], [ %i.dz, %bb.at ], [ 0, %.thread15.i.i.i44 ]
  %.018.i.i.i.i.i41 = phi ptr [ %i.em, %bb.as ], [ %.017.i.i.i.i.i39, %bb.at ], [ %i.dt, %.thread15.i.i.i44 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i41, i64 %.sroa.4.0.i712.i.i.i40
  store i8 0, ptr %i.en, align 1, !tbaa !52
  %i.eo = trunc i64 %i.de to i32
  %i.ep = load i8, ptr %6, align 8
  %i.eq = trunc i8 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.eu = select i1 %i.eq, ptr %i.es, ptr %i.et
  invoke void @_ZN4gdcm11DataElement12SetByteValueEPKcNS_2VLE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.eu, i32 %i.eo)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ev = load i8, ptr %6, align 8
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %bb.aw, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48

bb.aw:                                            ; preds = %bb.av
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !52
  %i.ey = load i64, ptr %6, align 8
  %i.ez = and i64 %i.ey, -2
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ez) #28
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.fa = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.fa, ptr %2, align 8, !tbaa !16
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.fc = getelementptr i8, ptr %i.fa, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %2, i64 %i.fd
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.d, align 8, !tbaa !16
  %i.ff = load i8, ptr %i.r, align 8
  %i.fg = trunc i8 %i.ff to i1
  br i1 %i.fg, label %bb.ax, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.ax:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !52
  %i.fj = load i64, ptr %i.r, align 8
  %i.fk = and i64 %i.fj, -2
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fk) #28
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48, %bb.ax
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.d) #27
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #27
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.ay:                                            ; preds = %.thread.i.i.i.i.i22, %bb.af
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bc

bb.az:                                            ; preds = %.thread.i.i.i.i.i38, %bb.aq
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49

bb.ba:                                            ; preds = %bb.au
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load i8, ptr %6, align 8
  %i.fp = trunc i8 %i.fo to i1
  br i1 %i.fp, label %bb.bb, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49

bb.bb:                                            ; preds = %bb.ba
  %i.fq = load ptr, ptr %i.er, align 8, !tbaa !52
  %i.fr = load i64, ptr %6, align 8
  %i.fs = and i64 %i.fr, -2
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fs) #28
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49: ; preds = %bb.bb, %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.az ], [ %i.fn, %bb.ba ], [ %i.fn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.j, %17, %bb.ay, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49, %bb.z, %bb.l, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.fl, %bb.ay ], [ %i.bs, %bb.z ], [ %18, %17 ], [ %i.z, %bb.l ], [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49 ], [ %i.x, %bb.j ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #27
  br label %.body

.body:                                            ; preds = %bb.e, %bb.bc
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bc ], [ %.pn.i, %bb.e ]
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ft) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #14 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN4gdcm24FileChangeTransferSyntax14InitializeCopyEvE10newvalues2, align 16
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4gdcm24FileChangeTransferSyntax14InitializeCopyEvE10newvalues2, i64 16), align 16, !tbaa !52
  %i.d = load i64, ptr @_ZZN4gdcm24FileChangeTransferSyntax14InitializeCopyEvE10newvalues2, align 16
  %i.e = and i64 %i.d, -2
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.e) #28
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9AttributeILt40ELt8468ELx8ELi218367EE9SetValuesEPKNS_6StringILc92ELj16ELc32EEEjb(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.idx = mul i64 %i.g, 24                        ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.j = phi ptr [ %i.k, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -24 ; 4 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.d:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = load i64, ptr %i.k, align 8
  %i.q = and i64 %i.p, -2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.q) #28
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %.preheader, %bb.d
  %i.r = icmp eq ptr %i.k, %i.b
  br i1 %i.r, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.c
  %i.s = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.f, i64 noundef %i.s) #28
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, -2
  %i.w = or disjoint i8 %i.v, %i.a
  store i8 %i.w, ptr %i.t, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %2, ptr %i.x, align 8, !tbaa !103
  br i1 %3, label %bb.g, label %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit.sink.split

bb.g:                                             ; preds = %bb.f
  %i.y = zext i32 %2 to i64                       ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 24                 ; 3 uses
  %i.aa = add nuw nsw i64 %i.z, 8
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #26 ; 2 uses
  store i64 %i.y, ptr %i.ab, align 16
  %i.ac = getelementptr i8, ptr %i.ab, i64 8      ; 4 uses
  %i.ad = icmp eq i32 %2, 0
  br i1 %i.ad, label %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %i.z, -24                   ; 2 uses
  %i.af = urem i64 %i.ae, 24
  %i.ag = sub nuw nsw i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ah, i1 false)
  store ptr %i.ac, ptr %0, align 8, !tbaa !102
  %.not21 = icmp eq ptr %1, null
  br i1 %.not21, label %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i
  %storemerge8.i.i.i.i.i = phi ptr [ %i.bd, %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i ], [ %i.ac, %bb.i ] ; 6 uses
  %.07.i.i.i.i.i = phi ptr [ %i.bc, %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i ], [ %1, %bb.i ] ; 9 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %storemerge8.i.i.i.i.i, %.07.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = load i8, ptr %storemerge8.i.i.i.i.i, align 8
  %i.ak = trunc i8 %i.aj to i1
  %i.al = load i8, ptr %.07.i.i.i.i.i, align 8    ; 2 uses
  %i.am = trunc i8 %i.al to i1                    ; 3 uses
  br i1 %i.ak, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.07.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !124
  br label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef %i.ao, i64 noundef %i.aq) ; 0 uses
  br label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 1
  %i.av = select i1 %i.am, ptr %i.at, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i8 %i.al, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.am, i64 %i.ax, i64 %i.az
  %i.bb = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef %i.av, i64 noundef %i.ba) ; 0 uses
  br label %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i

_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %.lr.ph.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !223

_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit.sink.split: ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.ac, %bb.g ], [ %1, %bb.f ]
  store ptr %.sink, ptr %0, align 8, !tbaa !102
  br label %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit

_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit: ; preds = %_ZN4gdcm6StringILc92ELj16ELc32EEaSERKS1_.exit.i.i.i.i.i, %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit.sink.split, %bb.h
  %i.be = load i32, ptr %i.x, align 8, !tbaa !103
  %i.bf = icmp eq i32 %2, %i.be
  br i1 %i.bf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 643, ptr noundef nonnull @.str.2)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
  unreachable

bb.q:                                             ; preds = %_ZNSt3__14copyB8ne180100IPKN4gdcm6StringILc92ELj16ELc32EEEPS3_EET0_T_S8_S7_.exit
  ret void

bb.r:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bg) #27
  resume { ptr, i32 } %i.bh
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.9(ptr nofree readnone captures(none) %0) #14 section ".text.startup" personality ptr @__gxx_personality_v0 {
end_hunk_3
