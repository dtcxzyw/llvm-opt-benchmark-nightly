Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpIpoptApplication?download=true
inline.NumInlined: 1742
inline.NumDeleted: 310
begin_hunk_0_@_ZN5Ipopt16IpoptApplication13call_optimizeEv:._crit_edge.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 136
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = invoke noundef double %i.kd(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, i32 noundef 2)
          to label %bb.bc unwind label %bb.bq

bb.bc:                                            ; preds = %bb.bb
  %i.kf = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 152
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke noundef double %i.kh(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, i32 noundef 2)
          to label %bb.bd unwind label %bb.bq

bb.bd:                                            ; preds = %bb.bc
  %i.kj = load ptr, ptr %i.ka, align 8, !tbaa !24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.kl(ptr noundef nonnull align 8 dereferenceable(40) %i.ka, i32 noundef 3, i32 noundef 10, ptr noundef nonnull @.str.71, double noundef %i.ke, double noundef %i.ki)
          to label %bb.be unwind label %bb.bq

bb.be:                                            ; preds = %bb.bd
  %i.km = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.kn = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 80
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = invoke noundef double %i.kp(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, i32 noundef 2)
          to label %bb.bf unwind label %bb.bq

bb.bf:                                            ; preds = %bb.be
  %i.kr = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = invoke noundef double %i.kt(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, i32 noundef 2)
          to label %bb.bg unwind label %bb.bq

bb.bg:                                            ; preds = %bb.bf
  %i.kv = load ptr, ptr %i.km, align 8, !tbaa !24
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.kx(ptr noundef nonnull align 8 dereferenceable(40) %i.km, i32 noundef 3, i32 noundef 10, ptr noundef nonnull @.str.72, double noundef %i.kq, double noundef %i.ku)
          to label %bb.bh unwind label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.ky = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.kz = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 112
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke noundef double %i.lb(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, i32 noundef 2)
          to label %bb.bi unwind label %bb.bq

bb.bi:                                            ; preds = %bb.bh
  %i.ld = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 104
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = invoke noundef double %i.lf(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, i32 noundef 2)
          to label %bb.bj unwind label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !24
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.lj(ptr noundef nonnull align 8 dereferenceable(40) %i.ky, i32 noundef 3, i32 noundef 10, ptr noundef nonnull @.str.73, double noundef %i.lc, double noundef %i.lg)
          to label %bb.bk unwind label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  %i.lk = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.ll = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 160
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = invoke noundef double %i.ln(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, double noundef 0.000000e+00, i32 noundef 2)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.lp = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 176
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = invoke noundef double %i.lr(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb, double noundef 0.000000e+00, i32 noundef 2)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !24
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.lv(ptr noundef nonnull align 8 dereferenceable(40) %i.lk, i32 noundef 3, i32 noundef 10, ptr noundef nonnull @.str.74, double noundef %i.lo, double noundef %i.ls)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.lw = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.lx = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 192
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = invoke noundef double %i.lz(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.mb = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 200
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = invoke noundef double %i.md(ptr noundef nonnull align 8 dereferenceable(2185) %i.cb)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !24
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.mh(ptr noundef nonnull align 8 dereferenceable(40) %i.lw, i32 noundef 3, i32 noundef 10, ptr noundef nonnull @.str.75, double noundef %i.ma, double noundef %i.me)
          to label %bb.bv unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.mi = landingpad { ptr, i32 }
          catch ptr @_ZTIN5Ipopt8IpoptNLP10Eval_ErrorE
          catch ptr @_ZTIN5Ipopt11TOO_FEW_DOFE
          catch ptr @_ZTIN5Ipopt14OPTION_INVALIDE
          catch ptr @_ZTIN5Ipopt23DYNAMIC_LIBRARY_FAILUREE
          catch ptr @_ZTIN5Ipopt19INCONSISTENT_BOUNDSE
          catch ptr @_ZTIN5Ipopt14IpoptExceptionE
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt14overflow_error
          catch ptr null                          ; 2 uses
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0      ; 2 uses
  %i.mk = extractvalue { ptr, i32 } %i.mi, 1      ; 2 uses
  %i.ml = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5Ipopt8IpoptNLP10Eval_ErrorE) #19
  %i.mm = icmp eq i32 %i.mk, %i.ml
  br i1 %i.mm, label %bb.br, label %bb.gu

bb.br:                                            ; preds = %bb.bq
  %i.mn = call ptr @__cxa_begin_catch(ptr %i.mj) #19 ; 4 uses
  %i.mo = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 80
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !57
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !57
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 72
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !63
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !57
  %i.mx = load ptr, ptr %i.mo, align 8, !tbaa !24
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.mz(ptr noundef nonnull align 8 dereferenceable(40) %i.mo, i32 noundef 2, i32 noundef 2, ptr noundef nonnull @.str.139, ptr noundef %i.mq, ptr noundef %i.ms, i32 noundef %i.mu, ptr noundef %i.mw)
          to label %_ZNK5Ipopt14IpoptException15ReportExceptionERKNS_10JournalistENS_13EJournalLevelE.exit unwind label %bb.bs, !inline_history !3

_ZNK5Ipopt14IpoptException15ReportExceptionERKNS_10JournalistENS_13EJournalLevelE.exit: ; preds = %bb.br
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.na = landingpad { ptr, i32 }
          catch ptr @_ZTIN5Ipopt11TOO_FEW_DOFE
          catch ptr @_ZTIN5Ipopt14OPTION_INVALIDE
          catch ptr @_ZTIN5Ipopt23DYNAMIC_LIBRARY_FAILUREE
          catch ptr @_ZTIN5Ipopt19INCONSISTENT_BOUNDSE
          catch ptr @_ZTIN5Ipopt14IpoptExceptionE
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt14overflow_error
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.bu unwind label %bb.ni

bb.bt:                                            ; preds = %_ZNK5Ipopt14IpoptException15ReportExceptionERKNS_10JournalistENS_13EJournalLevelE.exit
  %i.nb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5Ipopt11TOO_FEW_DOFE
          catch ptr @_ZTIN5Ipopt14OPTION_INVALIDE
          catch ptr @_ZTIN5Ipopt23DYNAMIC_LIBRARY_FAILUREE
          catch ptr @_ZTIN5Ipopt19INCONSISTENT_BOUNDSE
          catch ptr @_ZTIN5Ipopt14IpoptExceptionE
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt14overflow_error
          catch ptr null
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.pn274 = phi { ptr, i32 } [ %i.nb, %bb.bt ], [ %i.na, %bb.bs ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn274, 1
  %.13155 = extractvalue { ptr, i32 } %.pn274, 0
  br label %bb.gu

bb.bv:                                            ; preds = %_ZNK5Ipopt14IpoptException15ReportExceptionERKNS_10JournalistENS_13EJournalLevelE.exit, %bb.bp, %bb.aw
  %.1131 = phi i32 [ %i.im, %bb.bp ], [ 12, %bb.aw ], [ 12, %_ZNK5Ipopt14IpoptException15ReportExceptionERKNS_10JournalistENS_13EJournalLevelE.exit ] ; 26 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 7 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !309, !noalias !310 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !22, !noalias !310
  %i.ng = add nsw i32 %i.nf, 1
  store i32 %i.ng, ptr %i.ne, align 8, !tbaa !22, !noalias !310
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.bw, %bb.bv
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 208
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !313, !noalias !314
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !317, !noalias !314 ; 2 uses
  %.not.i.i.i524 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i524, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 232
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !320, !noalias !314
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !322, !noalias !314
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.nj, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.nm, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 6 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 6 uses
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !22, !noalias !323
  %i.np = add nsw i32 %i.no, 1
  store i32 %i.np, ptr %i.nn, align 8, !tbaa !22, !noalias !323
  %i.nq = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.nr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.nr, ptr %18, align 8, !tbaa !51
  store i8 120, ptr %i.nr, align 8, !tbaa !54
  %i.ns = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.ns, align 8, !tbaa !53
  %i.nt = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.nt, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.nu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.nu, ptr %19, align 8, !tbaa !51
  %i.nv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.nv, align 8, !tbaa !53
  store i8 0, ptr %i.nu, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.nq, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bx unwind label %bb.df

bb.bx:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %i.nw = load ptr, ptr %19, align 8, !tbaa !57   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.nu
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533: ; preds = %bb.bx
  %i.ny = load i64, ptr %i.nu, align 8, !tbaa !54
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.oa = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.nr
  br i1 %i.ob, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
  %i.oc = load i64, ptr %i.nr, align 8, !tbaa !54
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.oe = load i32, ptr %i.nn, align 8, !tbaa !22
  %i.of = add nsw i32 %i.oe, -1                   ; 2 uses
  store i32 %i.of, ptr %i.nn, align 8, !tbaa !22
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %bb.by, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537
  %i.oh = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !24
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !22
  %i.om = add nsw i32 %i.ol, -1                   ; 2 uses
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !22
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %bb.bz, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.bz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.oo = load ptr, ptr %i.nd, align 8, !tbaa !24
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(280) %i.nd) #19, !inline_history !149
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.bz
  %i.or = load ptr, ptr %i.nc, align 8, !tbaa !309, !noalias !324 ; 10 uses
  %.not.i.i.i.i540 = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i.i540, label %_ZNK5Ipopt9IpoptData4currEv.exit541, label %bb.ca

bb.ca:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !22, !noalias !324
  %i.ou = add nsw i32 %i.ot, 1
  store i32 %i.ou, ptr %i.os, align 8, !tbaa !22, !noalias !324
  br label %_ZNK5Ipopt9IpoptData4currEv.exit541

_ZNK5Ipopt9IpoptData4currEv.exit541:              ; preds = %bb.ca, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 208
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !313, !noalias !325
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !317, !noalias !325 ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i542, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i546, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i543

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i546: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit541
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 232
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !320, !noalias !325
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !322, !noalias !325
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i543

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i543: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i546, %_ZNK5Ipopt9IpoptData4currEv.exit541
  %.0.i3.i.i.i544 = phi ptr [ %i.oy, %_ZNK5Ipopt9IpoptData4currEv.exit541 ], [ %i.pc, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i546 ] ; 6 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i544, i64 8 ; 6 uses
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !22, !noalias !326
  %i.pf = add nsw i32 %i.pe, 1
  store i32 %i.pf, ptr %i.pd, align 8, !tbaa !22, !noalias !326
  %i.pg = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.ph = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.ph, ptr %20, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ph, ptr noundef nonnull align 1 dereferenceable(3) @.str.77, i64 3, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 3, ptr %i.pi, align 8, !tbaa !53
  %i.pj = getelementptr inbounds nuw i8, ptr %20, i64 19
  store i8 0, ptr %i.pj, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.pk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.pk, ptr %21, align 8, !tbaa !51
  %i.pl = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.pl, align 8, !tbaa !53
  store i8 0, ptr %i.pk, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i544, ptr noundef nonnull align 8 dereferenceable(40) %i.pg, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.cb unwind label %bb.di

bb.cb:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i543
  %i.pm = load ptr, ptr %21, align 8, !tbaa !57   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.pk
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556: ; preds = %bb.cb
  %i.po = load i64, ptr %i.pk, align 8, !tbaa !54
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.pq = load ptr, ptr %20, align 8, !tbaa !57   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.ph
  br i1 %i.pr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
  %i.ps = load i64, ptr %i.ph, align 8, !tbaa !54
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i560

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i560: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.pu = load i32, ptr %i.pd, align 8, !tbaa !22
  %i.pv = add nsw i32 %i.pu, -1                   ; 2 uses
  store i32 %i.pv, ptr %i.pd, align 8, !tbaa !22
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %bb.cc, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit563

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i560
  %i.px = load ptr, ptr %.0.i3.i.i.i544, align 8, !tbaa !24
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = load ptr, ptr %i.py, align 8
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i544) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit563

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit563:     ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i560
  %i.qa = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !22
  %i.qc = add nsw i32 %i.qb, -1                   ; 2 uses
  store i32 %i.qc, ptr %i.qa, align 8, !tbaa !22
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.cd, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit565

bb.cd:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit563
  %i.qe = load ptr, ptr %i.or, align 8, !tbaa !24
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8
  call void %i.qg(ptr noundef nonnull align 8 dereferenceable(280) %i.or) #19, !inline_history !149
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit565

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit565: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit563, %bb.cd
  %i.qh = load ptr, ptr %i.nc, align 8, !tbaa !309, !noalias !327 ; 10 uses
  %.not.i.i.i.i566 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i.i566, label %_ZNK5Ipopt9IpoptData4currEv.exit567, label %bb.ce

bb.ce:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit565
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !22, !noalias !327
  %i.qk = add nsw i32 %i.qj, 1
  store i32 %i.qk, ptr %i.qi, align 8, !tbaa !22, !noalias !327
  br label %_ZNK5Ipopt9IpoptData4currEv.exit567

_ZNK5Ipopt9IpoptData4currEv.exit567:              ; preds = %bb.ce, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit565
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 208
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !313, !noalias !328
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !317, !noalias !328 ; 2 uses
  %.not.i.i.i568 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i.i568, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i572, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i569

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i572: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit567
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qh, i64 232
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !320, !noalias !328
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !322, !noalias !328
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i569

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i569: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i572, %_ZNK5Ipopt9IpoptData4currEv.exit567
  %.0.i3.i.i.i570 = phi ptr [ %i.qo, %_ZNK5Ipopt9IpoptData4currEv.exit567 ], [ %i.qs, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i572 ] ; 6 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i570, i64 8 ; 6 uses
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !22, !noalias !329
  %i.qv = add nsw i32 %i.qu, 1
  store i32 %i.qv, ptr %i.qt, align 8, !tbaa !22, !noalias !329
  %i.qw = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.qx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.qx, ptr %22, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.qx, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.qy = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 3, ptr %i.qy, align 8, !tbaa !53
  %i.qz = getelementptr inbounds nuw i8, ptr %22, i64 19
  store i8 0, ptr %i.qz, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ra = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.ra, ptr %23, align 8, !tbaa !51
  %i.rb = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.rb, align 8, !tbaa !53
  store i8 0, ptr %i.ra, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i570, ptr noundef nonnull align 8 dereferenceable(40) %i.qw, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cf unwind label %bb.dl

bb.cf:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i569
  %i.rc = load ptr, ptr %23, align 8, !tbaa !57   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.ra
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582: ; preds = %bb.cf
  %i.re = load i64, ptr %i.ra, align 8, !tbaa !54
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.rg = load ptr, ptr %22, align 8, !tbaa !57   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.qx
  br i1 %i.rh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i586, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584
  %i.ri = load i64, ptr %i.qx, align 8, !tbaa !54
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i586: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.rk = load i32, ptr %i.qt, align 8, !tbaa !22
  %i.rl = add nsw i32 %i.rk, -1                   ; 2 uses
  store i32 %i.rl, ptr %i.qt, align 8, !tbaa !22
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.cg, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit589

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i586
  %i.rn = load ptr, ptr %.0.i3.i.i.i570, align 8, !tbaa !24
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i570) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit589

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit589:     ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i586
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !22
  %i.rs = add nsw i32 %i.rr, -1                   ; 2 uses
  store i32 %i.rs, ptr %i.rq, align 8, !tbaa !22
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.ch, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit591

bb.ch:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit589
  %i.ru = load ptr, ptr %i.qh, align 8, !tbaa !24
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8
  call void %i.rw(ptr noundef nonnull align 8 dereferenceable(280) %i.qh) #19, !inline_history !149
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit591

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit591: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit589, %bb.ch
  %i.rx = load ptr, ptr %i.nc, align 8, !tbaa !309, !noalias !330 ; 10 uses
  %.not.i.i.i.i592 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i.i592, label %_ZNK5Ipopt9IpoptData4currEv.exit593, label %bb.ci

bb.ci:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit591
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !22, !noalias !330
  %i.sa = add nsw i32 %i.rz, 1
  store i32 %i.sa, ptr %i.ry, align 8, !tbaa !22, !noalias !330
  br label %_ZNK5Ipopt9IpoptData4currEv.exit593

_ZNK5Ipopt9IpoptData4currEv.exit593:              ; preds = %bb.ci, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit591
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 208
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !313, !noalias !331
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !317, !noalias !331 ; 2 uses
  %.not.i.i.i594 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i594, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i598, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i595

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i598: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit593
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rx, i64 232
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !320, !noalias !331
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !322, !noalias !331
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i595

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i595: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i598, %_ZNK5Ipopt9IpoptData4currEv.exit593
  %.0.i3.i.i.i596 = phi ptr [ %i.se, %_ZNK5Ipopt9IpoptData4currEv.exit593 ], [ %i.si, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i598 ] ; 6 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i596, i64 8 ; 6 uses
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !22, !noalias !332
  %i.sl = add nsw i32 %i.sk, 1
  store i32 %i.sl, ptr %i.sj, align 8, !tbaa !22, !noalias !332
  %i.sm = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.sn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.sn, ptr %24, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.sn, ptr noundef nonnull align 1 dereferenceable(3) @.str.79, i64 3, i1 false)
  %i.so = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 3, ptr %i.so, align 8, !tbaa !53
  %i.sp = getelementptr inbounds nuw i8, ptr %24, i64 19
  store i8 0, ptr %i.sp, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.sq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.sq, ptr %25, align 8, !tbaa !51
  %i.sr = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.sr, align 8, !tbaa !53
  store i8 0, ptr %i.sq, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i596, ptr noundef nonnull align 8 dereferenceable(40) %i.sm, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.cj unwind label %bb.do

bb.cj:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i595
  %i.ss = load ptr, ptr %25, align 8, !tbaa !57   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.sq
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608: ; preds = %bb.cj
  %i.su = load i64, ptr %i.sq, align 8, !tbaa !54
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.sw = load ptr, ptr %24, align 8, !tbaa !57   ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.sn
  br i1 %i.sx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610
  %i.sy = load i64, ptr %i.sn, align 8, !tbaa !54
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i612: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.ta = load i32, ptr %i.sj, align 8, !tbaa !22
  %i.tb = add nsw i32 %i.ta, -1                   ; 2 uses
  store i32 %i.tb, ptr %i.sj, align 8, !tbaa !22
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.ck, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit615

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i612
  %i.td = load ptr, ptr %.0.i3.i.i.i596, align 8, !tbaa !24
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load ptr, ptr %i.te, align 8
  call void %i.tf(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i596) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit615

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit615:     ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i612
  %i.tg = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !22
  %i.ti = add nsw i32 %i.th, -1                   ; 2 uses
  store i32 %i.ti, ptr %i.tg, align 8, !tbaa !22
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %bb.cl, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit617

bb.cl:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit615
  %i.tk = load ptr, ptr %i.rx, align 8, !tbaa !24
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8
  call void %i.tm(ptr noundef nonnull align 8 dereferenceable(280) %i.rx) #19, !inline_history !149
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit617

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit617: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit615, %bb.cl
  %i.tn = load ptr, ptr %i.nc, align 8, !tbaa !309, !noalias !333 ; 10 uses
  %.not.i.i.i.i618 = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i.i618, label %_ZNK5Ipopt9IpoptData4currEv.exit619, label %bb.cm

bb.cm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit617
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 2 uses
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !22, !noalias !333
  %i.tq = add nsw i32 %i.tp, 1
  store i32 %i.tq, ptr %i.to, align 8, !tbaa !22, !noalias !333
  br label %_ZNK5Ipopt9IpoptData4currEv.exit619

_ZNK5Ipopt9IpoptData4currEv.exit619:              ; preds = %bb.cm, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit617
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 208
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !313, !noalias !334
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 40
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !317, !noalias !334 ; 2 uses
  %.not.i.i.i620 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i620, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i624, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i621

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i624: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit619
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tn, i64 232
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !320, !noalias !334
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 40
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !322, !noalias !334
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i621

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i621: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i624, %_ZNK5Ipopt9IpoptData4currEv.exit619
  %.0.i3.i.i.i622 = phi ptr [ %i.tu, %_ZNK5Ipopt9IpoptData4currEv.exit619 ], [ %i.ty, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i624 ] ; 6 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i622, i64 8 ; 6 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !22, !noalias !335
  %i.ub = add nsw i32 %i.ua, 1
  store i32 %i.ub, ptr %i.tz, align 8, !tbaa !22, !noalias !335
  %i.uc = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.ud = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ud, ptr %26, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ud, ptr noundef nonnull align 1 dereferenceable(3) @.str.80, i64 3, i1 false)
  %i.ue = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 3, ptr %i.ue, align 8, !tbaa !53
  %i.uf = getelementptr inbounds nuw i8, ptr %26, i64 19
  store i8 0, ptr %i.uf, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.ug = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.ug, ptr %27, align 8, !tbaa !51
  %i.uh = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.uh, align 8, !tbaa !53
  store i8 0, ptr %i.ug, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i622, ptr noundef nonnull align 8 dereferenceable(40) %i.uc, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.cn unwind label %bb.dr

bb.cn:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i621
  %i.ui = load ptr, ptr %27, align 8, !tbaa !57   ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.ug
  br i1 %i.uj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634: ; preds = %bb.cn
  %i.uk = load i64, ptr %i.ug, align 8, !tbaa !54
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.ul) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.um = load ptr, ptr %26, align 8, !tbaa !57   ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.ud
  br i1 %i.un, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i638, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
  %i.uo = load i64, ptr %i.ud, align 8, !tbaa !54
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.up) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i638

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i638: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.uq = load i32, ptr %i.tz, align 8, !tbaa !22
  %i.ur = add nsw i32 %i.uq, -1                   ; 2 uses
  store i32 %i.ur, ptr %i.tz, align 8, !tbaa !22
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %bb.co, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i638
  %i.ut = load ptr, ptr %.0.i3.i.i.i622, align 8, !tbaa !24
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i622) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641:     ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i638
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !22
  %i.uy = add nsw i32 %i.ux, -1                   ; 2 uses
  store i32 %i.uy, ptr %i.uw, align 8, !tbaa !22
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %bb.cp, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643

bb.cp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641
  %i.va = load ptr, ptr %i.tn, align 8, !tbaa !24
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(280) %i.tn) #19, !inline_history !149
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit641, %bb.cp
  %i.vd = load ptr, ptr %i.nc, align 8, !tbaa !309, !noalias !336 ; 10 uses
  %.not.i.i.i.i644 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.i.i644, label %_ZNK5Ipopt9IpoptData4currEv.exit645, label %bb.cq

bb.cq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !22, !noalias !336
  %i.vg = add nsw i32 %i.vf, 1
  store i32 %i.vg, ptr %i.ve, align 8, !tbaa !22, !noalias !336
  br label %_ZNK5Ipopt9IpoptData4currEv.exit645

_ZNK5Ipopt9IpoptData4currEv.exit645:              ; preds = %bb.cq, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit643
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 208
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !313, !noalias !337
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !317, !noalias !337 ; 2 uses
  %.not.i.i.i646 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i.i646, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i650, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i647

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i650: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit645
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vd, i64 232
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !320, !noalias !337
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 48
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !322, !noalias !337
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i647

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i647: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i650, %_ZNK5Ipopt9IpoptData4currEv.exit645
  %.0.i3.i.i.i648 = phi ptr [ %i.vk, %_ZNK5Ipopt9IpoptData4currEv.exit645 ], [ %i.vo, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i650 ] ; 6 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i648, i64 8 ; 6 uses
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !22, !noalias !338
  %i.vr = add nsw i32 %i.vq, 1
  store i32 %i.vr, ptr %i.vp, align 8, !tbaa !22, !noalias !338
  %i.vs = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.vt = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.vt, ptr %28, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.vt, ptr noundef nonnull align 1 dereferenceable(3) @.str.81, i64 3, i1 false)
  %i.vu = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 3, ptr %i.vu, align 8, !tbaa !53
  %i.vv = getelementptr inbounds nuw i8, ptr %28, i64 19
  store i8 0, ptr %i.vv, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.vw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.vw, ptr %29, align 8, !tbaa !51
  %i.vx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.vx, align 8, !tbaa !53
  store i8 0, ptr %i.vw, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i648, ptr noundef nonnull align 8 dereferenceable(40) %i.vs, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.cr unwind label %bb.du

bb.cr:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i647
  %i.vy = load ptr, ptr %29, align 8, !tbaa !57   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.vw
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i660

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i660: ; preds = %bb.cr
  %i.wa = load i64, ptr %i.vw, align 8, !tbaa !54
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i660
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %i.wc = load ptr, ptr %28, align 8, !tbaa !57   ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.vt
  br i1 %i.wd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662
  %i.we = load i64, ptr %i.vt, align 8, !tbaa !54
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  %i.wg = load i32, ptr %i.vp, align 8, !tbaa !22
  %i.wh = add nsw i32 %i.wg, -1                   ; 2 uses
  store i32 %i.wh, ptr %i.vp, align 8, !tbaa !22
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %bb.cs, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit667

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664
  %i.wj = load ptr, ptr %.0.i3.i.i.i648, align 8, !tbaa !24
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i648) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit667

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit667:     ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i664
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !22
  %i.wo = add nsw i32 %i.wn, -1                   ; 2 uses
  store i32 %i.wo, ptr %i.wm, align 8, !tbaa !22
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %bb.ct, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit669

bb.ct:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit667
  %i.wq = load ptr, ptr %i.vd, align 8, !tbaa !24
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8
  call void %i.ws(ptr noundef nonnull align 8 dereferenceable(280) %i.vd) #19, !inline_history !149
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit669

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit669: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit667, %bb.ct
  %i.wt = load ptr, ptr %i.nc, align 8, !tbaa !309, !noalias !339 ; 10 uses
  %.not.i.i.i.i670 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i670, label %_ZNK5Ipopt9IpoptData4currEv.exit671, label %bb.cu

bb.cu:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit669
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !22, !noalias !339
  %i.ww = add nsw i32 %i.wv, 1
  store i32 %i.ww, ptr %i.wu, align 8, !tbaa !22, !noalias !339
  br label %_ZNK5Ipopt9IpoptData4currEv.exit671

_ZNK5Ipopt9IpoptData4currEv.exit671:              ; preds = %bb.cu, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit669
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 208
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !313, !noalias !340
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 56
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !317, !noalias !340 ; 2 uses
  %.not.i.i.i672 = icmp eq ptr %i.xa, null
  br i1 %.not.i.i.i672, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i676, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i673

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i676: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit671
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wt, i64 232
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !320, !noalias !340
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 56
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !322, !noalias !340
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i673

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i673: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i676, %_ZNK5Ipopt9IpoptData4currEv.exit671
  %.0.i3.i.i.i674 = phi ptr [ %i.xa, %_ZNK5Ipopt9IpoptData4currEv.exit671 ], [ %i.xe, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i676 ] ; 6 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i674, i64 8 ; 6 uses
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !22, !noalias !341
  %i.xh = add nsw i32 %i.xg, 1
  store i32 %i.xh, ptr %i.xf, align 8, !tbaa !22, !noalias !341
  %i.xi = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.xj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.xj, ptr %30, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.xj, ptr noundef nonnull align 1 dereferenceable(3) @.str.82, i64 3, i1 false)
  %i.xk = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 3, ptr %i.xk, align 8, !tbaa !53
  %i.xl = getelementptr inbounds nuw i8, ptr %30, i64 19
  store i8 0, ptr %i.xl, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.xm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.xm, ptr %31, align 8, !tbaa !51
  %i.xn = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.xn, align 8, !tbaa !53
  store i8 0, ptr %i.xm, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i674, ptr noundef nonnull align 8 dereferenceable(40) %i.xi, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.cv unwind label %bb.dx

bb.cv:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i673
  %i.xo = load ptr, ptr %31, align 8, !tbaa !57   ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.xm
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i686

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i686: ; preds = %bb.cv
  %i.xq = load i64, ptr %i.xm, align 8, !tbaa !54
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i686
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %i.xs = load ptr, ptr %30, align 8, !tbaa !57   ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.xj
  br i1 %i.xt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i690, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688
  %i.xu = load i64, ptr %i.xj, align 8, !tbaa !54
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i690

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i690: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %i.xw = load i32, ptr %i.xf, align 8, !tbaa !22
  %i.xx = add nsw i32 %i.xw, -1                   ; 2 uses
  store i32 %i.xx, ptr %i.xf, align 8, !tbaa !22
  %i.xy = icmp eq i32 %i.xx, 0
  br i1 %i.xy, label %bb.cw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit693

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i690
  %i.xz = load ptr, ptr %.0.i3.i.i.i674, align 8, !tbaa !24
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i674) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit693

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit693:     ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i690
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !22
  %i.ye = add nsw i32 %i.yd, -1                   ; 2 uses
  store i32 %i.ye, ptr %i.yc, align 8, !tbaa !22
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %bb.cx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit695

bb.cx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit693
  %i.yg = load ptr, ptr %i.wt, align 8, !tbaa !24
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yi = load ptr, ptr %i.yh, align 8
  call void %i.yi(ptr noundef nonnull align 8 dereferenceable(280) %i.wt) #19, !inline_history !149
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit695

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit695: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit693, %bb.cx
  %i.yj = icmp eq i32 %.1131, 6                   ; 2 uses
  br i1 %i.yj, label %bb.cy, label %bb.ei

bb.cy:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit695
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities6curr_cEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.59") align 8 %32, ptr noundef nonnull align 8 dereferenceable(2185) %i.cb)
          to label %._crit_edge.i.i696 unwind label %bb.ea

._crit_edge.i.i696:                               ; preds = %bb.cy
  %i.yk = load ptr, ptr %32, align 8, !tbaa !322
  %i.yl = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.ym = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.ym, ptr %33, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ym, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.yn = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 6, ptr %i.yn, align 8, !tbaa !53
  %i.yo = getelementptr inbounds nuw i8, ptr %33, i64 22
  store i8 0, ptr %i.yo, align 2, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.yp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.yp, ptr %34, align 8, !tbaa !51
  %i.yq = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.yq, align 8, !tbaa !53
  store i8 0, ptr %i.yp, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.yk, ptr noundef nonnull align 8 dereferenceable(40) %i.yl, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.cz unwind label %bb.eb

bb.cz:                                            ; preds = %._crit_edge.i.i696
  %i.yr = load ptr, ptr %34, align 8, !tbaa !57   ; 2 uses
  %i.ys = icmp eq ptr %i.yr, %i.yp
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704: ; preds = %bb.cz
  %i.yt = load i64, ptr %i.yp, align 8, !tbaa !54
  %i.yu = add i64 %i.yt, 1
  call void @_ZdlPvm(ptr noundef %i.yr, i64 noundef %i.yu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  %i.yv = load ptr, ptr %33, align 8, !tbaa !57   ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.ym
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706
  %i.yx = load i64, ptr %i.ym, align 8, !tbaa !54
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.yz = load ptr, ptr %32, align 8, !tbaa !322  ; 4 uses
  %.not.i.i710 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i710, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711, label %bb.da

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !22
  %i.zc = add nsw i32 %i.zb, -1                   ; 2 uses
  store i32 %i.zc, ptr %i.za, align 8, !tbaa !22
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %bb.db, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711

bb.db:                                            ; preds = %bb.da
  %i.ze = load ptr, ptr %i.yz, align 8, !tbaa !24
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8
  call void %i.zg(ptr noundef nonnull align 8 dereferenceable(205) %i.yz) #19, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_d_minus_sEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.59") align 8 %35, ptr noundef nonnull align 8 dereferenceable(2185) %i.cb)
          to label %._crit_edge.i.i712 unwind label %bb.ee

._crit_edge.i.i712:                               ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit711
  %i.zh = load ptr, ptr %35, align 8, !tbaa !322
  %i.zi = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.zj = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.zj, ptr %36, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.zj, ptr noundef nonnull align 1 dereferenceable(14) @.str.84, i64 14, i1 false)
  %i.zk = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 14, ptr %i.zk, align 8, !tbaa !53
  %i.zl = getelementptr inbounds nuw i8, ptr %36, i64 30
  store i8 0, ptr %i.zl, align 2, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.zm = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  store ptr %i.zm, ptr %37, align 8, !tbaa !51
  %i.zn = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 0, ptr %i.zn, align 8, !tbaa !53
  store i8 0, ptr %i.zm, align 8, !tbaa !54
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.zh, ptr noundef nonnull align 8 dereferenceable(40) %i.zi, i32 noundef 8, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %bb.dc unwind label %bb.ef

bb.dc:                                            ; preds = %._crit_edge.i.i712
  %i.zo = load ptr, ptr %37, align 8, !tbaa !57   ; 2 uses
  %i.zp = icmp eq ptr %i.zo, %i.zm
  br i1 %i.zp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %bb.dc
  %i.zq = load i64, ptr %i.zm, align 8, !tbaa !54
  %i.zr = add i64 %i.zq, 1
  call void @_ZdlPvm(ptr noundef %i.zo, i64 noundef %i.zr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %i.zs = load ptr, ptr %36, align 8, !tbaa !57   ; 2 uses
  %i.zt = icmp eq ptr %i.zs, %i.zj
  br i1 %i.zt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %i.zu = load i64, ptr %i.zj, align 8, !tbaa !54
  %i.zv = add i64 %i.zu, 1
  call void @_ZdlPvm(ptr noundef %i.zs, i64 noundef %i.zv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725
end_hunk_0
