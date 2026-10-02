Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpWarmStartIterateInitializer?download=true
inline.NumInlined: 1468
inline.NumDeleted: 169
begin_hunk_0_@_ZN5Ipopt27WarmStartIterateInitializer18SetInitialIteratesEv:bb.a
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(205) %i.kv) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit617

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit617:      ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.sroa.02251.5 = phi ptr [ %i.gn, %bb.bm ], [ %.sroa.02251.4, %bb.bn ], [ %.sroa.02251.4, %bb.bo ], [ %.sroa.02251.4, %bb.bp ]
  %.pn287 = phi { ptr, i32 } [ %i.kt, %bb.bm ], [ %i.ku, %bb.bn ], [ %i.ku, %bb.bo ], [ %i.ku, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit617, %bb.bl
  %.sroa.02251.6 = phi ptr [ %.sroa.02251.5, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit617 ], [ %.sroa.02251.3, %bb.bl ] ; 3 uses
  %.pn287.pn = phi { ptr, i32 } [ %.pn287, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit617 ], [ %i.ks, %bb.bl ] ; 3 uses
  %i.ld = load ptr, ptr %7, align 8, !tbaa !48    ; 4 uses
  %.not.i.i618 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i618, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit619, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !15
  %i.lg = add nsw i32 %i.lf, -1                   ; 2 uses
  store i32 %i.lg, ptr %i.le, align 8, !tbaa !15
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.bs, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit619

bb.bs:                                            ; preds = %bb.br
  %i.li = load ptr, ptr %i.ld, align 8, !tbaa !17
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(205) %i.ld) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit619

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit619:      ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bk
  %.sroa.02251.7 = phi ptr [ %i.fo, %bb.bk ], [ %.sroa.02251.6, %bb.bq ], [ %.sroa.02251.6, %bb.br ], [ %.sroa.02251.6, %bb.bs ]
  %.pn287.pn.pn = phi { ptr, i32 } [ %i.kr, %bb.bk ], [ %.pn287.pn, %bb.bq ], [ %.pn287.pn, %bb.br ], [ %.pn287.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit619, %bb.bj
  %.sroa.02251.8 = phi ptr [ %.sroa.02251.7, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit619 ], [ %.sroa.02251.2, %bb.bj ] ; 3 uses
  %.pn287.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit619 ], [ %i.kq, %bb.bj ] ; 3 uses
  %i.ll = load ptr, ptr %6, align 8, !tbaa !48    ; 4 uses
  %.not.i.i620 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i620, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !15
  %i.lo = add nsw i32 %i.ln, -1                   ; 2 uses
  store i32 %i.lo, ptr %i.lm, align 8, !tbaa !15
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.bv, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621

bb.bv:                                            ; preds = %bb.bu
  %i.lq = load ptr, ptr %i.ll, align 8, !tbaa !17
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(205) %i.ll) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621:      ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bi
  %.sroa.02251.9 = phi ptr [ %i.ep, %bb.bi ], [ %.sroa.02251.8, %bb.bt ], [ %.sroa.02251.8, %bb.bu ], [ %.sroa.02251.8, %bb.bv ]
  %.pn287.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kp, %bb.bi ], [ %.pn287.pn.pn.pn, %bb.bt ], [ %.pn287.pn.pn.pn, %bb.bu ], [ %.pn287.pn.pn.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621, %bb.bh
  %.sroa.02251.10 = phi ptr [ %.sroa.02251.9, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621 ], [ %.sroa.02251.1, %bb.bh ] ; 3 uses
  %.pn287.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621 ], [ %i.ko, %bb.bh ] ; 3 uses
  %i.lt = load ptr, ptr %5, align 8, !tbaa !48    ; 4 uses
  %.not.i.i622 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i622, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !15
  %i.lw = add nsw i32 %i.lv, -1                   ; 2 uses
  store i32 %i.lw, ptr %i.lu, align 8, !tbaa !15
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.by, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623

bb.by:                                            ; preds = %bb.bx
  %i.ly = load ptr, ptr %i.lt, align 8, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(205) %i.lt) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623:      ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bg
  %.sroa.02251.11 = phi ptr [ %i.dh, %bb.bg ], [ %.sroa.02251.10, %bb.bw ], [ %.sroa.02251.10, %bb.bx ], [ %.sroa.02251.10, %bb.by ]
  %.pn287.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kn, %bb.bg ], [ %.pn287.pn.pn.pn.pn.pn, %bb.bw ], [ %.pn287.pn.pn.pn.pn.pn, %bb.bx ], [ %.pn287.pn.pn.pn.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623, %bb.bf
  %.sroa.02251.12 = phi ptr [ %.sroa.02251.11, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623 ], [ %.sroa.02251.0, %bb.bf ] ; 3 uses
  %.pn287.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623 ], [ %i.km, %bb.bf ] ; 3 uses
  %i.mb = load ptr, ptr %4, align 8, !tbaa !48    ; 4 uses
  %.not.i.i624 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i624, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !15
  %i.me = add nsw i32 %i.md, -1                   ; 2 uses
  store i32 %i.me, ptr %i.mc, align 8, !tbaa !15
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.cb, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625

bb.cb:                                            ; preds = %bb.ca
  %i.mg = load ptr, ptr %i.mb, align 8, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(205) %i.mb) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625:      ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.be
  %.sroa.02251.13 = phi ptr [ %i.cg, %bb.be ], [ %.sroa.02251.12, %bb.bz ], [ %.sroa.02251.12, %bb.ca ], [ %.sroa.02251.12, %bb.cb ]
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kl, %bb.be ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn, %bb.bz ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bd, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625
  %.sroa.02251.14 = phi ptr [ %.sroa.02251.13, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625 ], [ %i.cg, %bb.bd ] ; 3 uses
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit625 ], [ %i.kk, %bb.bd ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.02251.14, i64 8 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !15
  %i.ml = add nsw i32 %i.mk, -1                   ; 2 uses
  store i32 %i.ml, ptr %i.mj, align 8, !tbaa !15
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.cd, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit627

bb.cd:                                            ; preds = %bb.cc
  %i.mn = load ptr, ptr %.sroa.02251.14, align 8, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.02251.14) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit627

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit627:      ; preds = %bb.cd, %bb.cc, %bb.bc
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kj, %bb.bc ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cc ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cd ] ; 3 uses
  %i.mq = load ptr, ptr %3, align 8, !tbaa !48    ; 4 uses
  %.not.i.i628 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i628, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit629, label %bb.ce

bb.ce:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit627
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !15
  %i.mt = add nsw i32 %i.ms, -1                   ; 2 uses
  store i32 %i.mt, ptr %i.mr, align 8, !tbaa !15
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %bb.cf, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit629

bb.cf:                                            ; preds = %bb.ce
  %i.mv = load ptr, ptr %i.mq, align 8, !tbaa !17
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(205) %i.mq) #14, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit629

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit629:      ; preds = %bb.cf, %bb.ce, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit627, %bb.bb
  %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ki, %bb.bb ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit627 ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %.pn287.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit779.thread

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.sroa.02278.1 = phi ptr [ null, %bb.a ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 22 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !43
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !44
  %i.nc = invoke noundef zeroext i1 @_ZN5Ipopt9IpoptData24InitializeDataStructuresERNS_8IpoptNLPEbbbbb(ptr noundef nonnull align 8 dereferenceable(2232) %i.mz, ptr noundef nonnull align 8 dereferenceable(24) %i.nb, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ch unwind label %bb.d

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.nc, label %bb.ci, label %bb.abj

bb.ci:                                            ; preds = %bb.ch
  %i.nd = load ptr, ptr %i.my, align 8, !tbaa !43
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !397, !noalias !402 ; 10 uses
  %.not.i.i.i.i630 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i630, label %_ZNK5Ipopt9IpoptData4currEv.exit631, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !15, !noalias !402
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.ng, align 8, !tbaa !15, !noalias !402
  br label %_ZNK5Ipopt9IpoptData4currEv.exit631

_ZNK5Ipopt9IpoptData4currEv.exit631:              ; preds = %bb.cj, %bb.ci
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 208
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !54, !noalias !403
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !48, !noalias !403 ; 2 uses
  %.not.i.i.i632 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i632, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit631
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 232
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !57, !noalias !403
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !59, !noalias !403, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit631
  %.0.i3.i.i.i = phi ptr [ %i.nl, %_ZNK5Ipopt9IpoptData4currEv.exit631 ], [ %i.no, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 6 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 6 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !15, !noalias !404
  %i.nr = add nsw i32 %i.nq, 1
  store i32 %i.nr, ptr %i.np, align 8, !tbaa !15, !noalias !404
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.nu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.nu, ptr %9, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.nu, ptr noundef nonnull align 1 dereferenceable(15) @.str.25, i64 15, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 15, ptr %i.nv, align 8, !tbaa !27
  %i.nw = getelementptr inbounds nuw i8, ptr %9, i64 31
  store i8 0, ptr %i.nw, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.nx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.nx, ptr %10, align 8, !tbaa !21
  %i.ny = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ny, align 8, !tbaa !27
  store i8 0, ptr %i.nx, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.nt, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ck unwind label %bb.dn

bb.ck:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %i.nz = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.nx
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i641

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i641: ; preds = %bb.ck
  %i.ob = load i64, ptr %i.nx, align 8, !tbaa !26
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i641
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.od = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.nu
  br i1 %i.oe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i645, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643
  %i.of = load i64, ptr %i.nu, align 8, !tbaa !26
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i645

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i645: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.oh = load i32, ptr %i.np, align 8, !tbaa !15
  %i.oi = add nsw i32 %i.oh, -1                   ; 2 uses
  store i32 %i.oi, ptr %i.np, align 8, !tbaa !15
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %bb.cl, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i645
  %i.ok = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !17
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i645
  %i.on = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !15
  %i.op = add nsw i32 %i.oo, -1                   ; 2 uses
  store i32 %i.op, ptr %i.on, align 8, !tbaa !15
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.or = load ptr, ptr %i.nf, align 8, !tbaa !17
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(280) %i.nf) #14, !inline_history !105
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.ou = load ptr, ptr %i.my, align 8, !tbaa !43
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !397, !noalias !405 ; 10 uses
  %.not.i.i.i.i650 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i.i650, label %_ZNK5Ipopt9IpoptData4currEv.exit651, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !15, !noalias !405
  %i.oz = add nsw i32 %i.oy, 1
  store i32 %i.oz, ptr %i.ox, align 8, !tbaa !15, !noalias !405
  br label %_ZNK5Ipopt9IpoptData4currEv.exit651

_ZNK5Ipopt9IpoptData4currEv.exit651:              ; preds = %bb.co, %bb.cn
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 208
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !54, !noalias !406
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !48, !noalias !406 ; 2 uses
  %.not.i.i.i652 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i652, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i656, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i653

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i656: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit651
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 232
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !57, !noalias !406
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !59, !noalias !406 ; 2 uses
  %.not3.i.i.i657 = icmp eq ptr %i.ph, null
  br i1 %.not3.i.i.i657, label %.noexc.i659, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i653

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i653: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i656, %_ZNK5Ipopt9IpoptData4currEv.exit651
  %.0.i3.i.i.i654 = phi ptr [ %i.pd, %_ZNK5Ipopt9IpoptData4currEv.exit651 ], [ %i.ph, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i656 ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i654, i64 8 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !15, !noalias !407
  %i.pk = add nsw i32 %i.pj, 1
  store i32 %i.pk, ptr %i.pi, align 8, !tbaa !15, !noalias !407
  br label %.noexc.i659

.noexc.i659:                                      ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i656, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i653
  %storemerge.i.i655 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i656 ], [ %.0.i3.i.i.i654, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i653 ] ; 8 uses
  %i.pl = load ptr, ptr %i.ns, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.pm, ptr %11, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 17, ptr %i.i, align 8, !tbaa !23
  %i.pn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc660 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785 ; 2 uses

.noexc660:                                        ; preds = %.noexc.i659
  store ptr %i.pn, ptr %11, align 8, !tbaa !25
  %i.po = load i64, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.pn, ptr noundef nonnull align 1 dereferenceable(17) @.str.26, i64 17, i1 false)
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.po, ptr %i.pp, align 8, !tbaa !27
  %i.pq = load ptr, ptr %11, align 8, !tbaa !25
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.po
  store i8 0, ptr %i.pr, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ps, ptr %12, align 8, !tbaa !21
  %i.pt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.pt, align 8, !tbaa !27
  store i8 0, ptr %i.ps, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i655, ptr noundef nonnull align 8 dereferenceable(40) %i.pl, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cp unwind label %bb.dq

bb.cp:                                            ; preds = %.noexc660
  %i.pu = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.ps
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666: ; preds = %bb.cp
  %i.pw = load i64, ptr %i.ps, align 8, !tbaa !26
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.py = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.pm
  br i1 %i.pz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i670, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668
  %i.qa = load i64, ptr %i.pm, align 8, !tbaa !26
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i670

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i670: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.qc = getelementptr inbounds nuw i8, ptr %storemerge.i.i655, i64 8 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !15
  %i.qe = add nsw i32 %i.qd, -1                   ; 2 uses
  store i32 %i.qe, ptr %i.qc, align 8, !tbaa !15
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %bb.cq, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i670
  %i.qg = load ptr, ptr %storemerge.i.i655, align 8, !tbaa !17
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i655) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673:     ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i670
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !15
  %i.ql = add nsw i32 %i.qk, -1                   ; 2 uses
  store i32 %i.ql, ptr %i.qj, align 8, !tbaa !15
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit673
  %i.qn = load ptr, ptr %i.ow, align 8, !tbaa !17
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8
end_hunk_0
begin_hunk_1_@_ZN5Ipopt27WarmStartIterateInitializer18SetInitialIteratesEv:bb.a
  %i.dad = load i32, ptr %i.dac, align 8, !tbaa !15
  %i.dae = add nsw i32 %i.dad, -1                 ; 2 uses
  store i32 %i.dae, ptr %i.dac, align 8, !tbaa !15
  %i.daf = icmp eq i32 %i.dae, 0
  br i1 %i.daf, label %bb.ty, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1433

bb.ty:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1431
  %i.dag = load ptr, ptr %i.cyr, align 8, !tbaa !17
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dag, i64 8
  %i.dai = load ptr, ptr %i.dah, align 8
  call void %i.dai(ptr noundef nonnull align 8 dereferenceable(280) %i.cyr) #14, !inline_history !105
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1433

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1433: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1431, %bb.ty
  %i.daj = load double, ptr %i.chw, align 8, !tbaa !423
  %i.dak = load ptr, ptr %i.czl, align 8, !tbaa !17
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dak, i64 72
  %i.dam = load ptr, ptr %i.dal, align 8
  invoke void %i.dam(ptr noundef nonnull align 8 dereferenceable(205) %i.czl, double noundef %i.daj)
          to label %.noexc1434 unwind label %bb.yx, !inline_history !106

.noexc1434:                                       ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1433
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.czl)
          to label %_ZN5Ipopt6Vector3SetEd.exit1436 unwind label %bb.yx

_ZN5Ipopt6Vector3SetEd.exit1436:                  ; preds = %.noexc1434
  %i.dan = load ptr, ptr %i.cvi, align 8, !tbaa !17
  %i.dao = getelementptr inbounds nuw i8, ptr %i.dan, i64 104
  %i.dap = load ptr, ptr %i.dao, align 8
  invoke void %i.dap(ptr noundef nonnull align 8 dereferenceable(205) %i.cvi, ptr noundef nonnull align 8 dereferenceable(205) %i.czl)
          to label %.noexc1437 unwind label %bb.yx, !inline_history !108

.noexc1437:                                       ; preds = %_ZN5Ipopt6Vector3SetEd.exit1436
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.cvi)
          to label %bb.tz unwind label %bb.yx

bb.tz:                                            ; preds = %.noexc1437
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #14
  %i.daq = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.dar = getelementptr inbounds nuw i8, ptr %i.daq, i64 16
  %i.das = load ptr, ptr %i.dar, align 8, !tbaa !397, !noalias !488 ; 9 uses
  %.not.i.i.i.i1440 = icmp eq ptr %i.das, null
  br i1 %.not.i.i.i.i1440, label %_ZNK5Ipopt9IpoptData4currEv.exit1441, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.dat = getelementptr inbounds nuw i8, ptr %i.das, i64 8 ; 2 uses
  %i.dau = load i32, ptr %i.dat, align 8, !tbaa !15, !noalias !488
  %i.dav = add nsw i32 %i.dau, 1
  store i32 %i.dav, ptr %i.dat, align 8, !tbaa !15, !noalias !488
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1441

_ZNK5Ipopt9IpoptData4currEv.exit1441:             ; preds = %bb.ua, %bb.tz
  invoke void @_ZNK5Ipopt14IteratesVector16MakeNewContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %58, ptr noundef nonnull align 8 dereferenceable(280) %i.das)
          to label %bb.ub unwind label %.thread2422

bb.ub:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1441
  %i.daw = load ptr, ptr %58, align 8, !tbaa !400 ; 22 uses
  %.not.i.i.i1442 = icmp eq ptr %i.daw, null
  br i1 %.not.i.i.i1442, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit1446, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.dax = getelementptr inbounds nuw i8, ptr %i.daw, i64 8
  %i.day = load i32, ptr %i.dax, align 8, !tbaa !15
  %i.daz = icmp eq i32 %i.day, 0
  br i1 %i.daz, label %bb.ud, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit1446

bb.ud:                                            ; preds = %bb.uc
  %i.dba = load ptr, ptr %i.daw, align 8, !tbaa !17
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.dba, i64 8
  %i.dbc = load ptr, ptr %i.dbb, align 8
  call void %i.dbc(ptr noundef nonnull align 8 dereferenceable(280) %i.daw) #14, !inline_history !104
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit1446

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit1446: ; preds = %bb.ub, %bb.ud, %bb.uc
  %i.dbd = getelementptr inbounds nuw i8, ptr %i.das, i64 8 ; 2 uses
  %i.dbe = load i32, ptr %i.dbd, align 8, !tbaa !15
  %i.dbf = add nsw i32 %i.dbe, -1                 ; 2 uses
  store i32 %i.dbf, ptr %i.dbd, align 8, !tbaa !15
  %i.dbg = icmp eq i32 %i.dbf, 0
  br i1 %i.dbg, label %bb.ue, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1448

bb.ue:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit1446
  %i.dbh = load ptr, ptr %i.das, align 8, !tbaa !17
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbh, i64 8
  %i.dbj = load ptr, ptr %i.dbi, align 8
  call void %i.dbj(ptr noundef nonnull align 8 dereferenceable(280) %i.das) #14, !inline_history !105
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1448

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1448: ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit1446, %bb.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #14
  %i.dbk = load ptr, ptr %46, align 8, !tbaa !59
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.daw, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %i.dbk)
          to label %_ZN5Ipopt14IteratesVector5Set_xERKNS_6VectorE.exit1450 unwind label %bb.yx

_ZN5Ipopt14IteratesVector5Set_xERKNS_6VectorE.exit1450: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit1448
  %i.dbl = load ptr, ptr %47, align 8, !tbaa !59
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.daw, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %i.dbl)
          to label %_ZN5Ipopt14IteratesVector5Set_sERKNS_6VectorE.exit1452 unwind label %bb.yx

_ZN5Ipopt14IteratesVector5Set_sERKNS_6VectorE.exit1452: ; preds = %_ZN5Ipopt14IteratesVector5Set_xERKNS_6VectorE.exit1450
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.daw, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(205) %i.cdc)
          to label %_ZN5Ipopt14IteratesVector7Set_z_LERKNS_6VectorE.exit1454 unwind label %bb.yx

_ZN5Ipopt14IteratesVector7Set_z_LERKNS_6VectorE.exit1454: ; preds = %_ZN5Ipopt14IteratesVector5Set_sERKNS_6VectorE.exit1452
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.daw, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(205) %i.cja)
          to label %_ZN5Ipopt14IteratesVector7Set_z_UERKNS_6VectorE.exit1456 unwind label %bb.yx

_ZN5Ipopt14IteratesVector7Set_z_UERKNS_6VectorE.exit1456: ; preds = %_ZN5Ipopt14IteratesVector7Set_z_LERKNS_6VectorE.exit1454
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.daw, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(205) %i.cpe)
          to label %_ZN5Ipopt14IteratesVector7Set_v_LERKNS_6VectorE.exit1458 unwind label %bb.yx

_ZN5Ipopt14IteratesVector7Set_v_LERKNS_6VectorE.exit1458: ; preds = %_ZN5Ipopt14IteratesVector7Set_z_UERKNS_6VectorE.exit1456
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(280) %i.daw, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(205) %i.cvi)
          to label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i1462 unwind label %bb.yx

_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i1462: ; preds = %_ZN5Ipopt14IteratesVector7Set_v_LERKNS_6VectorE.exit1458
  %i.dbm = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.daw, i64 8 ; 6 uses
  %i.dbo = load i32, ptr %i.dbn, align 8, !tbaa !15, !noalias !489
  %i.dbp = add nsw i32 %i.dbo, 2
  store i32 %i.dbp, ptr %i.dbn, align 8, !tbaa !15
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbm, i64 24 ; 2 uses
  %i.dbr = load ptr, ptr %i.dbq, align 8, !tbaa !397 ; 4 uses
  %.not.i.i.i.i.i1463 = icmp eq ptr %i.dbr, null
  br i1 %.not.i.i.i.i.i1463, label %bb.uh, label %bb.uf

bb.uf:                                            ; preds = %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i1462
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbr, i64 8 ; 2 uses
  %i.dbt = load i32, ptr %i.dbs, align 8, !tbaa !15
  %i.dbu = add nsw i32 %i.dbt, -1                 ; 2 uses
  store i32 %i.dbu, ptr %i.dbs, align 8, !tbaa !15
  %i.dbv = icmp eq i32 %i.dbu, 0
  br i1 %i.dbv, label %bb.ug, label %bb.uh

bb.ug:                                            ; preds = %bb.uf
  %i.dbw = load ptr, ptr %i.dbr, align 8, !tbaa !17
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dbw, i64 8
  %i.dby = load ptr, ptr %i.dbx, align 8
  call void %i.dby(ptr noundef nonnull align 8 dereferenceable(280) %i.dbr) #14, !inline_history !169
  br label %bb.uh

bb.uh:                                            ; preds = %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i1462, %bb.uf, %bb.ug
  store ptr %i.daw, ptr %i.dbq, align 8, !tbaa !397
  %i.dbz = load i32, ptr %i.dbn, align 8, !tbaa !15
  %i.dca = add nsw i32 %i.dbz, -1                 ; 3 uses
  store i32 %i.dca, ptr %i.dbn, align 8, !tbaa !15
  %i.dcb = icmp eq i32 %i.dca, 0
  br i1 %i.dcb, label %bb.ui, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i1464

bb.ui:                                            ; preds = %bb.uh
  %i.dcc = load ptr, ptr %i.daw, align 8, !tbaa !17
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dcc, i64 8
  %i.dce = load ptr, ptr %i.dcd, align 8
  call void %i.dce(ptr noundef nonnull align 8 dereferenceable(280) %i.daw) #14, !inline_history !170
  %.pre2479 = load i32, ptr %i.dbn, align 8, !tbaa !15
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i1464

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i1464: ; preds = %bb.uh, %bb.ui
  %i.dcf = phi i32 [ %i.dca, %bb.uh ], [ %.pre2479, %bb.ui ]
  %i.dcg = add nsw i32 %i.dcf, -1                 ; 2 uses
  store i32 %i.dcg, ptr %i.dbn, align 8, !tbaa !15
  %i.dch = icmp eq i32 %i.dcg, 0
  br i1 %i.dch, label %bb.uj, label %bb.uk

bb.uj:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i1464
  %i.dci = load ptr, ptr %i.daw, align 8, !tbaa !17
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dci, i64 8
  %i.dck = load ptr, ptr %i.dcj, align 8
  call void %i.dck(ptr noundef nonnull align 8 dereferenceable(280) %i.daw) #14, !inline_history !171
  br label %bb.uk

bb.uk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i1464, %bb.uj
  %i.dcl = load ptr, ptr %i.atx, align 8, !tbaa !43
  invoke void @_ZN5Ipopt9IpoptData16AcceptTrialPointEv(ptr noundef nonnull align 8 dereferenceable(2232) %i.dcl)
          to label %bb.ul unwind label %bb.yx

bb.ul:                                            ; preds = %bb.uk
  %i.dcm = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.dcn = getelementptr inbounds nuw i8, ptr %i.dcm, i64 16
  %i.dco = load ptr, ptr %i.dcn, align 8, !tbaa !397, !noalias !490 ; 10 uses
  %.not.i.i.i.i1467 = icmp eq ptr %i.dco, null
  br i1 %.not.i.i.i.i1467, label %_ZNK5Ipopt9IpoptData4currEv.exit1468, label %bb.um

bb.um:                                            ; preds = %bb.ul
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 8 ; 2 uses
  %i.dcq = load i32, ptr %i.dcp, align 8, !tbaa !15, !noalias !490
  %i.dcr = add nsw i32 %i.dcq, 1
  store i32 %i.dcr, ptr %i.dcp, align 8, !tbaa !15, !noalias !490
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1468

_ZNK5Ipopt9IpoptData4currEv.exit1468:             ; preds = %bb.um, %bb.ul
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dco, i64 208
  %i.dct = load ptr, ptr %i.dcs, align 8, !tbaa !54, !noalias !491
  %i.dcu = load ptr, ptr %i.dct, align 8, !tbaa !48, !noalias !491 ; 2 uses
  %.not.i.i.i1469 = icmp eq ptr %i.dcu, null
  br i1 %.not.i.i.i1469, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1473, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1470

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1473: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1468
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dco, i64 232
  %i.dcw = load ptr, ptr %i.dcv, align 8, !tbaa !57, !noalias !491
  %i.dcx = load ptr, ptr %i.dcw, align 8, !tbaa !59, !noalias !491, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1470

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1470: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1473, %_ZNK5Ipopt9IpoptData4currEv.exit1468
  %.0.i3.i.i.i1471 = phi ptr [ %i.dcu, %_ZNK5Ipopt9IpoptData4currEv.exit1468 ], [ %i.dcx, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1473 ] ; 6 uses
  %i.dcy = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1471, i64 8 ; 6 uses
  %i.dcz = load i32, ptr %i.dcy, align 8, !tbaa !15, !noalias !492
  %i.dda = add nsw i32 %i.dcz, 1
  store i32 %i.dda, ptr %i.dcy, align 8, !tbaa !15, !noalias !492
  %i.ddb = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #14
  %i.ddc = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  store ptr %i.ddc, ptr %59, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ddc, ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  %i.ddd = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 9, ptr %i.ddd, align 8, !tbaa !27
  %i.dde = getelementptr inbounds nuw i8, ptr %59, i64 25
  store i8 0, ptr %i.dde, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #14
  %i.ddf = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 6 uses
  store ptr %i.ddf, ptr %60, align 8, !tbaa !21
  %i.ddg = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 0, ptr %i.ddg, align 8, !tbaa !27
  store i8 0, ptr %i.ddf, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1471, ptr noundef nonnull align 8 dereferenceable(40) %i.ddb, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %59, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %60)
          to label %bb.un unwind label %bb.yz

bb.un:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1470
  %i.ddh = load ptr, ptr %60, align 8, !tbaa !25  ; 2 uses
  %i.ddi = icmp eq ptr %i.ddh, %i.ddf
  br i1 %i.ddi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1484: ; preds = %bb.un
  %i.ddj = load i64, ptr %i.ddf, align 8, !tbaa !26
  %i.ddk = add i64 %i.ddj, 1
  call void @_ZdlPvm(ptr noundef %i.ddh, i64 noundef %i.ddk) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486: ; preds = %bb.un, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1484
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #14
  %i.ddl = load ptr, ptr %59, align 8, !tbaa !25  ; 2 uses
  %i.ddm = icmp eq ptr %i.ddl, %i.ddc
  br i1 %i.ddm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1487: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486
  %i.ddn = load i64, ptr %i.ddc, align 8, !tbaa !26
  %i.ddo = add i64 %i.ddn, 1
  call void @_ZdlPvm(ptr noundef %i.ddl, i64 noundef %i.ddo) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1488

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1488: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1487
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #14
  %i.ddp = load i32, ptr %i.dcy, align 8, !tbaa !15
  %i.ddq = add nsw i32 %i.ddp, -1                 ; 2 uses
  store i32 %i.ddq, ptr %i.dcy, align 8, !tbaa !15
  %i.ddr = icmp eq i32 %i.ddq, 0
  br i1 %i.ddr, label %bb.uo, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1491

bb.uo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1488
  %i.dds = load ptr, ptr %.0.i3.i.i.i1471, align 8, !tbaa !17
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.dds, i64 8
  %i.ddu = load ptr, ptr %i.ddt, align 8
  call void %i.ddu(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1471) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1491

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1491:    ; preds = %bb.uo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1488
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.dco, i64 8 ; 2 uses
  %i.ddw = load i32, ptr %i.ddv, align 8, !tbaa !15
  %i.ddx = add nsw i32 %i.ddw, -1                 ; 2 uses
  store i32 %i.ddx, ptr %i.ddv, align 8, !tbaa !15
  %i.ddy = icmp eq i32 %i.ddx, 0
  br i1 %i.ddy, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1491
  %i.ddz = load ptr, ptr %i.dco, align 8, !tbaa !17
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddz, i64 8
  %i.deb = load ptr, ptr %i.dea, align 8
  call void %i.deb(ptr noundef nonnull align 8 dereferenceable(280) %i.dco) #14, !inline_history !105
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1491
  %i.dec = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dec, i64 16
  %i.dee = load ptr, ptr %i.ded, align 8, !tbaa !397, !noalias !493 ; 10 uses
  %.not.i.i.i.i1494 = icmp eq ptr %i.dee, null
  br i1 %.not.i.i.i.i1494, label %_ZNK5Ipopt9IpoptData4currEv.exit1495, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.def = getelementptr inbounds nuw i8, ptr %i.dee, i64 8 ; 2 uses
  %i.deg = load i32, ptr %i.def, align 8, !tbaa !15, !noalias !493
  %i.deh = add nsw i32 %i.deg, 1
  store i32 %i.deh, ptr %i.def, align 8, !tbaa !15, !noalias !493
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1495

_ZNK5Ipopt9IpoptData4currEv.exit1495:             ; preds = %bb.ur, %bb.uq
  %i.dei = getelementptr inbounds nuw i8, ptr %i.dee, i64 208
  %i.dej = load ptr, ptr %i.dei, align 8, !tbaa !54, !noalias !494
  %i.dek = getelementptr inbounds nuw i8, ptr %i.dej, i64 8
  %i.del = load ptr, ptr %i.dek, align 8, !tbaa !48, !noalias !494 ; 2 uses
  %.not.i.i.i1496 = icmp eq ptr %i.del, null
  br i1 %.not.i.i.i1496, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1500, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1497

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1500: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1495
  %i.dem = getelementptr inbounds nuw i8, ptr %i.dee, i64 232
  %i.den = load ptr, ptr %i.dem, align 8, !tbaa !57, !noalias !494
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 8
  %i.dep = load ptr, ptr %i.deo, align 8, !tbaa !59, !noalias !494, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1497

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1497: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1500, %_ZNK5Ipopt9IpoptData4currEv.exit1495
  %.0.i3.i.i.i1498 = phi ptr [ %i.del, %_ZNK5Ipopt9IpoptData4currEv.exit1495 ], [ %i.dep, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1500 ] ; 6 uses
  %i.deq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1498, i64 8 ; 6 uses
  %i.der = load i32, ptr %i.deq, align 8, !tbaa !15, !noalias !495
  %i.des = add nsw i32 %i.der, 1
  store i32 %i.des, ptr %i.deq, align 8, !tbaa !15, !noalias !495
  %i.det = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #14
  %i.deu = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 6 uses
  store ptr %i.deu, ptr %61, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.deu, ptr noundef nonnull align 1 dereferenceable(9) @.str.34, i64 9, i1 false)
  %i.dev = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 9, ptr %i.dev, align 8, !tbaa !27
  %i.dew = getelementptr inbounds nuw i8, ptr %61, i64 25
  store i8 0, ptr %i.dew, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #14
  %i.dex = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 6 uses
  store ptr %i.dex, ptr %62, align 8, !tbaa !21
  %i.dey = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 0, ptr %i.dey, align 8, !tbaa !27
  store i8 0, ptr %i.dex, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1498, ptr noundef nonnull align 8 dereferenceable(40) %i.det, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %61, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %62)
          to label %bb.us unwind label %bb.zc

bb.us:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1497
  %i.dez = load ptr, ptr %62, align 8, !tbaa !25  ; 2 uses
  %i.dfa = icmp eq ptr %i.dez, %i.dex
  br i1 %i.dfa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1511: ; preds = %bb.us
  %i.dfb = load i64, ptr %i.dex, align 8, !tbaa !26
  %i.dfc = add i64 %i.dfb, 1
  call void @_ZdlPvm(ptr noundef %i.dez, i64 noundef %i.dfc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513: ; preds = %bb.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1511
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #14
  %i.dfd = load ptr, ptr %61, align 8, !tbaa !25  ; 2 uses
  %i.dfe = icmp eq ptr %i.dfd, %i.deu
  br i1 %i.dfe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1514: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513
  %i.dff = load i64, ptr %i.deu, align 8, !tbaa !26
  %i.dfg = add i64 %i.dff, 1
  call void @_ZdlPvm(ptr noundef %i.dfd, i64 noundef %i.dfg) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1515: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1514
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #14
  %i.dfh = load i32, ptr %i.deq, align 8, !tbaa !15
  %i.dfi = add nsw i32 %i.dfh, -1                 ; 2 uses
  store i32 %i.dfi, ptr %i.deq, align 8, !tbaa !15
  %i.dfj = icmp eq i32 %i.dfi, 0
  br i1 %i.dfj, label %bb.ut, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1518

bb.ut:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1515
  %i.dfk = load ptr, ptr %.0.i3.i.i.i1498, align 8, !tbaa !17
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dfk, i64 8
  %i.dfm = load ptr, ptr %i.dfl, align 8
  call void %i.dfm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1498) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1518

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1518:    ; preds = %bb.ut, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1515
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dee, i64 8 ; 2 uses
  %i.dfo = load i32, ptr %i.dfn, align 8, !tbaa !15
  %i.dfp = add nsw i32 %i.dfo, -1                 ; 2 uses
  store i32 %i.dfp, ptr %i.dfn, align 8, !tbaa !15
  %i.dfq = icmp eq i32 %i.dfp, 0
  br i1 %i.dfq, label %bb.uu, label %bb.uv

bb.uu:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1518
  %i.dfr = load ptr, ptr %i.dee, align 8, !tbaa !17
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfr, i64 8
  %i.dft = load ptr, ptr %i.dfs, align 8
  call void %i.dft(ptr noundef nonnull align 8 dereferenceable(280) %i.dee) #14, !inline_history !105
  br label %bb.uv

bb.uv:                                            ; preds = %bb.uu, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1518
  %i.dfu = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfu, i64 16
  %i.dfw = load ptr, ptr %i.dfv, align 8, !tbaa !397, !noalias !496 ; 10 uses
  %.not.i.i.i.i1521 = icmp eq ptr %i.dfw, null
  br i1 %.not.i.i.i.i1521, label %_ZNK5Ipopt9IpoptData4currEv.exit1522, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.dfx = getelementptr inbounds nuw i8, ptr %i.dfw, i64 8 ; 2 uses
  %i.dfy = load i32, ptr %i.dfx, align 8, !tbaa !15, !noalias !496
  %i.dfz = add nsw i32 %i.dfy, 1
  store i32 %i.dfz, ptr %i.dfx, align 8, !tbaa !15, !noalias !496
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1522

_ZNK5Ipopt9IpoptData4currEv.exit1522:             ; preds = %bb.uw, %bb.uv
  %i.dga = getelementptr inbounds nuw i8, ptr %i.dfw, i64 208
  %i.dgb = load ptr, ptr %i.dga, align 8, !tbaa !54, !noalias !497
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dgb, i64 16
  %i.dgd = load ptr, ptr %i.dgc, align 8, !tbaa !48, !noalias !497 ; 2 uses
  %.not.i.i.i1523 = icmp eq ptr %i.dgd, null
  br i1 %.not.i.i.i1523, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1527, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1524

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1527: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1522
  %i.dge = getelementptr inbounds nuw i8, ptr %i.dfw, i64 232
  %i.dgf = load ptr, ptr %i.dge, align 8, !tbaa !57, !noalias !497
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 16
  %i.dgh = load ptr, ptr %i.dgg, align 8, !tbaa !59, !noalias !497, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1524

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1524: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1527, %_ZNK5Ipopt9IpoptData4currEv.exit1522
  %.0.i3.i.i.i1525 = phi ptr [ %i.dgd, %_ZNK5Ipopt9IpoptData4currEv.exit1522 ], [ %i.dgh, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1527 ] ; 6 uses
  %i.dgi = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1525, i64 8 ; 6 uses
  %i.dgj = load i32, ptr %i.dgi, align 8, !tbaa !15, !noalias !498
  %i.dgk = add nsw i32 %i.dgj, 1
  store i32 %i.dgk, ptr %i.dgi, align 8, !tbaa !15, !noalias !498
  %i.dgl = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #14
  %i.dgm = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.dgm, ptr %63, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dgm, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, i64 11, i1 false)
  %i.dgn = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 11, ptr %i.dgn, align 8, !tbaa !27
  %i.dgo = getelementptr inbounds nuw i8, ptr %63, i64 27
  store i8 0, ptr %i.dgo, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #14
  %i.dgp = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  store ptr %i.dgp, ptr %64, align 8, !tbaa !21
  %i.dgq = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 0, ptr %i.dgq, align 8, !tbaa !27
  store i8 0, ptr %i.dgp, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1525, ptr noundef nonnull align 8 dereferenceable(40) %i.dgl, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %63, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %64)
          to label %bb.ux unwind label %bb.zf

bb.ux:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1524
  %i.dgr = load ptr, ptr %64, align 8, !tbaa !25  ; 2 uses
  %i.dgs = icmp eq ptr %i.dgr, %i.dgp
  br i1 %i.dgs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538: ; preds = %bb.ux
  %i.dgt = load i64, ptr %i.dgp, align 8, !tbaa !26
  %i.dgu = add i64 %i.dgt, 1
  call void @_ZdlPvm(ptr noundef %i.dgr, i64 noundef %i.dgu) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540: ; preds = %bb.ux, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #14
  %i.dgv = load ptr, ptr %63, align 8, !tbaa !25  ; 2 uses
  %i.dgw = icmp eq ptr %i.dgv, %i.dgm
  br i1 %i.dgw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540
  %i.dgx = load i64, ptr %i.dgm, align 8, !tbaa !26
  %i.dgy = add i64 %i.dgx, 1
  call void @_ZdlPvm(ptr noundef %i.dgv, i64 noundef %i.dgy) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #14
  %i.dgz = load i32, ptr %i.dgi, align 8, !tbaa !15
  %i.dha = add nsw i32 %i.dgz, -1                 ; 2 uses
  store i32 %i.dha, ptr %i.dgi, align 8, !tbaa !15
  %i.dhb = icmp eq i32 %i.dha, 0
  br i1 %i.dhb, label %bb.uy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1545

bb.uy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542
  %i.dhc = load ptr, ptr %.0.i3.i.i.i1525, align 8, !tbaa !17
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dhc, i64 8
  %i.dhe = load ptr, ptr %i.dhd, align 8
  call void %i.dhe(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1525) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1545

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1545:    ; preds = %bb.uy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1542
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dfw, i64 8 ; 2 uses
  %i.dhg = load i32, ptr %i.dhf, align 8, !tbaa !15
  %i.dhh = add nsw i32 %i.dhg, -1                 ; 2 uses
  store i32 %i.dhh, ptr %i.dhf, align 8, !tbaa !15
  %i.dhi = icmp eq i32 %i.dhh, 0
  br i1 %i.dhi, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1545
  %i.dhj = load ptr, ptr %i.dfw, align 8, !tbaa !17
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhj, i64 8
  %i.dhl = load ptr, ptr %i.dhk, align 8
  call void %i.dhl(ptr noundef nonnull align 8 dereferenceable(280) %i.dfw) #14, !inline_history !105
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1545
  %i.dhm = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dhm, i64 16
  %i.dho = load ptr, ptr %i.dhn, align 8, !tbaa !397, !noalias !499 ; 10 uses
  %.not.i.i.i.i1548 = icmp eq ptr %i.dho, null
  br i1 %.not.i.i.i.i1548, label %_ZNK5Ipopt9IpoptData4currEv.exit1549, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 8 ; 2 uses
  %i.dhq = load i32, ptr %i.dhp, align 8, !tbaa !15, !noalias !499
  %i.dhr = add nsw i32 %i.dhq, 1
  store i32 %i.dhr, ptr %i.dhp, align 8, !tbaa !15, !noalias !499
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1549

_ZNK5Ipopt9IpoptData4currEv.exit1549:             ; preds = %bb.vb, %bb.va
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dho, i64 208
  %i.dht = load ptr, ptr %i.dhs, align 8, !tbaa !54, !noalias !500
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 24
  %i.dhv = load ptr, ptr %i.dhu, align 8, !tbaa !48, !noalias !500 ; 2 uses
  %.not.i.i.i1550 = icmp eq ptr %i.dhv, null
  br i1 %.not.i.i.i1550, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1554, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1551

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1554: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1549
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dho, i64 232
  %i.dhx = load ptr, ptr %i.dhw, align 8, !tbaa !57, !noalias !500
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 24
  %i.dhz = load ptr, ptr %i.dhy, align 8, !tbaa !59, !noalias !500, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1551

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1551: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1554, %_ZNK5Ipopt9IpoptData4currEv.exit1549
  %.0.i3.i.i.i1552 = phi ptr [ %i.dhv, %_ZNK5Ipopt9IpoptData4currEv.exit1549 ], [ %i.dhz, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1554 ] ; 6 uses
  %i.dia = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1552, i64 8 ; 6 uses
  %i.dib = load i32, ptr %i.dia, align 8, !tbaa !15, !noalias !501
  %i.dic = add nsw i32 %i.dib, 1
  store i32 %i.dic, ptr %i.dia, align 8, !tbaa !15, !noalias !501
  %i.did = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #14
  %i.die = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 6 uses
  store ptr %i.die, ptr %65, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.die, ptr noundef nonnull align 1 dereferenceable(11) @.str.36, i64 11, i1 false)
  %i.dif = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 11, ptr %i.dif, align 8, !tbaa !27
  %i.dig = getelementptr inbounds nuw i8, ptr %65, i64 27
  store i8 0, ptr %i.dig, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #14
  %i.dih = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 6 uses
  store ptr %i.dih, ptr %66, align 8, !tbaa !21
  %i.dii = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 0, ptr %i.dii, align 8, !tbaa !27
  store i8 0, ptr %i.dih, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1552, ptr noundef nonnull align 8 dereferenceable(40) %i.did, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %65, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.vc unwind label %bb.zi

bb.vc:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1551
  %i.dij = load ptr, ptr %66, align 8, !tbaa !25  ; 2 uses
  %i.dik = icmp eq ptr %i.dij, %i.dih
  br i1 %i.dik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1565

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1565: ; preds = %bb.vc
  %i.dil = load i64, ptr %i.dih, align 8, !tbaa !26
  %i.dim = add i64 %i.dil, 1
  call void @_ZdlPvm(ptr noundef %i.dij, i64 noundef %i.dim) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567: ; preds = %bb.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1565
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #14
  %i.din = load ptr, ptr %65, align 8, !tbaa !25  ; 2 uses
  %i.dio = icmp eq ptr %i.din, %i.die
  br i1 %i.dio, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1569, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1568

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1568: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567
  %i.dip = load i64, ptr %i.die, align 8, !tbaa !26
  %i.diq = add i64 %i.dip, 1
  call void @_ZdlPvm(ptr noundef %i.din, i64 noundef %i.diq) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1569: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1568
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #14
  %i.dir = load i32, ptr %i.dia, align 8, !tbaa !15
  %i.dis = add nsw i32 %i.dir, -1                 ; 2 uses
  store i32 %i.dis, ptr %i.dia, align 8, !tbaa !15
  %i.dit = icmp eq i32 %i.dis, 0
  br i1 %i.dit, label %bb.vd, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1572

bb.vd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1569
  %i.diu = load ptr, ptr %.0.i3.i.i.i1552, align 8, !tbaa !17
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 8
  %i.diw = load ptr, ptr %i.div, align 8
  call void %i.diw(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1552) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1572

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1572:    ; preds = %bb.vd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1569
  %i.dix = getelementptr inbounds nuw i8, ptr %i.dho, i64 8 ; 2 uses
  %i.diy = load i32, ptr %i.dix, align 8, !tbaa !15
  %i.diz = add nsw i32 %i.diy, -1                 ; 2 uses
  store i32 %i.diz, ptr %i.dix, align 8, !tbaa !15
  %i.dja = icmp eq i32 %i.diz, 0
  br i1 %i.dja, label %bb.ve, label %bb.vf

bb.ve:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1572
  %i.djb = load ptr, ptr %i.dho, align 8, !tbaa !17
  %i.djc = getelementptr inbounds nuw i8, ptr %i.djb, i64 8
  %i.djd = load ptr, ptr %i.djc, align 8
  call void %i.djd(ptr noundef nonnull align 8 dereferenceable(280) %i.dho) #14, !inline_history !105
  br label %bb.vf

bb.vf:                                            ; preds = %bb.ve, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1572
  %i.dje = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dje, i64 16
  %i.djg = load ptr, ptr %i.djf, align 8, !tbaa !397, !noalias !502 ; 10 uses
  %.not.i.i.i.i1575 = icmp eq ptr %i.djg, null
  br i1 %.not.i.i.i.i1575, label %_ZNK5Ipopt9IpoptData4currEv.exit1576, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.djh = getelementptr inbounds nuw i8, ptr %i.djg, i64 8 ; 2 uses
  %i.dji = load i32, ptr %i.djh, align 8, !tbaa !15, !noalias !502
  %i.djj = add nsw i32 %i.dji, 1
  store i32 %i.djj, ptr %i.djh, align 8, !tbaa !15, !noalias !502
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1576

_ZNK5Ipopt9IpoptData4currEv.exit1576:             ; preds = %bb.vg, %bb.vf
  %i.djk = getelementptr inbounds nuw i8, ptr %i.djg, i64 208
  %i.djl = load ptr, ptr %i.djk, align 8, !tbaa !54, !noalias !503
  %i.djm = getelementptr inbounds nuw i8, ptr %i.djl, i64 32
  %i.djn = load ptr, ptr %i.djm, align 8, !tbaa !48, !noalias !503 ; 2 uses
  %.not.i.i.i1577 = icmp eq ptr %i.djn, null
  br i1 %.not.i.i.i1577, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1581, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1578

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1581: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1576
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djg, i64 232
  %i.djp = load ptr, ptr %i.djo, align 8, !tbaa !57, !noalias !503
  %i.djq = getelementptr inbounds nuw i8, ptr %i.djp, i64 32
  %i.djr = load ptr, ptr %i.djq, align 8, !tbaa !59, !noalias !503, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1578

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1578: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1581, %_ZNK5Ipopt9IpoptData4currEv.exit1576
  %.0.i3.i.i.i1579 = phi ptr [ %i.djn, %_ZNK5Ipopt9IpoptData4currEv.exit1576 ], [ %i.djr, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1581 ] ; 6 uses
  %i.djs = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1579, i64 8 ; 6 uses
  %i.djt = load i32, ptr %i.djs, align 8, !tbaa !15, !noalias !504
  %i.dju = add nsw i32 %i.djt, 1
  store i32 %i.dju, ptr %i.djs, align 8, !tbaa !15, !noalias !504
  %i.djv = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #14
  %i.djw = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  store ptr %i.djw, ptr %67, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.djw, ptr noundef nonnull align 1 dereferenceable(11) @.str.37, i64 11, i1 false)
  %i.djx = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 11, ptr %i.djx, align 8, !tbaa !27
  %i.djy = getelementptr inbounds nuw i8, ptr %67, i64 27
  store i8 0, ptr %i.djy, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #14
  %i.djz = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 6 uses
  store ptr %i.djz, ptr %68, align 8, !tbaa !21
  %i.dka = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 0, ptr %i.dka, align 8, !tbaa !27
  store i8 0, ptr %i.djz, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1579, ptr noundef nonnull align 8 dereferenceable(40) %i.djv, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %67, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %68)
          to label %bb.vh unwind label %bb.zl

bb.vh:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1578
  %i.dkb = load ptr, ptr %68, align 8, !tbaa !25  ; 2 uses
  %i.dkc = icmp eq ptr %i.dkb, %i.djz
  br i1 %i.dkc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1592: ; preds = %bb.vh
  %i.dkd = load i64, ptr %i.djz, align 8, !tbaa !26
  %i.dke = add i64 %i.dkd, 1
  call void @_ZdlPvm(ptr noundef %i.dkb, i64 noundef %i.dke) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594: ; preds = %bb.vh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1592
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #14
  %i.dkf = load ptr, ptr %67, align 8, !tbaa !25  ; 2 uses
  %i.dkg = icmp eq ptr %i.dkf, %i.djw
  br i1 %i.dkg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1596, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1595

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1595: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594
  %i.dkh = load i64, ptr %i.djw, align 8, !tbaa !26
  %i.dki = add i64 %i.dkh, 1
  call void @_ZdlPvm(ptr noundef %i.dkf, i64 noundef %i.dki) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1596: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1595
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #14
  %i.dkj = load i32, ptr %i.djs, align 8, !tbaa !15
  %i.dkk = add nsw i32 %i.dkj, -1                 ; 2 uses
  store i32 %i.dkk, ptr %i.djs, align 8, !tbaa !15
  %i.dkl = icmp eq i32 %i.dkk, 0
  br i1 %i.dkl, label %bb.vi, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1599

bb.vi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1596
  %i.dkm = load ptr, ptr %.0.i3.i.i.i1579, align 8, !tbaa !17
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 8
  %i.dko = load ptr, ptr %i.dkn, align 8
  call void %i.dko(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1579) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1599

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1599:    ; preds = %bb.vi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1596
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.djg, i64 8 ; 2 uses
  %i.dkq = load i32, ptr %i.dkp, align 8, !tbaa !15
  %i.dkr = add nsw i32 %i.dkq, -1                 ; 2 uses
  store i32 %i.dkr, ptr %i.dkp, align 8, !tbaa !15
  %i.dks = icmp eq i32 %i.dkr, 0
  br i1 %i.dks, label %bb.vj, label %bb.vk

bb.vj:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1599
  %i.dkt = load ptr, ptr %i.djg, align 8, !tbaa !17
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkt, i64 8
  %i.dkv = load ptr, ptr %i.dku, align 8
  call void %i.dkv(ptr noundef nonnull align 8 dereferenceable(280) %i.djg) #14, !inline_history !105
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1599
  %i.dkw = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkw, i64 16
  %i.dky = load ptr, ptr %i.dkx, align 8, !tbaa !397, !noalias !505 ; 10 uses
  %.not.i.i.i.i1602 = icmp eq ptr %i.dky, null
  br i1 %.not.i.i.i.i1602, label %_ZNK5Ipopt9IpoptData4currEv.exit1603, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dky, i64 8 ; 2 uses
  %i.dla = load i32, ptr %i.dkz, align 8, !tbaa !15, !noalias !505
  %i.dlb = add nsw i32 %i.dla, 1
  store i32 %i.dlb, ptr %i.dkz, align 8, !tbaa !15, !noalias !505
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1603

_ZNK5Ipopt9IpoptData4currEv.exit1603:             ; preds = %bb.vl, %bb.vk
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dky, i64 208
  %i.dld = load ptr, ptr %i.dlc, align 8, !tbaa !54, !noalias !506
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dld, i64 40
  %i.dlf = load ptr, ptr %i.dle, align 8, !tbaa !48, !noalias !506 ; 2 uses
  %.not.i.i.i1604 = icmp eq ptr %i.dlf, null
  br i1 %.not.i.i.i1604, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1608, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1605

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1608: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1603
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dky, i64 232
  %i.dlh = load ptr, ptr %i.dlg, align 8, !tbaa !57, !noalias !506
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dlh, i64 40
  %i.dlj = load ptr, ptr %i.dli, align 8, !tbaa !59, !noalias !506, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1605

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1605: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1608, %_ZNK5Ipopt9IpoptData4currEv.exit1603
  %.0.i3.i.i.i1606 = phi ptr [ %i.dlf, %_ZNK5Ipopt9IpoptData4currEv.exit1603 ], [ %i.dlj, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1608 ] ; 6 uses
  %i.dlk = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1606, i64 8 ; 6 uses
  %i.dll = load i32, ptr %i.dlk, align 8, !tbaa !15, !noalias !507
  %i.dlm = add nsw i32 %i.dll, 1
  store i32 %i.dlm, ptr %i.dlk, align 8, !tbaa !15, !noalias !507
  %i.dln = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #14
  %i.dlo = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 6 uses
  store ptr %i.dlo, ptr %69, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dlo, ptr noundef nonnull align 1 dereferenceable(11) @.str.38, i64 11, i1 false)
  %i.dlp = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 11, ptr %i.dlp, align 8, !tbaa !27
  %i.dlq = getelementptr inbounds nuw i8, ptr %69, i64 27
  store i8 0, ptr %i.dlq, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #14
  %i.dlr = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 6 uses
  store ptr %i.dlr, ptr %70, align 8, !tbaa !21
  %i.dls = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 0, ptr %i.dls, align 8, !tbaa !27
  store i8 0, ptr %i.dlr, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1606, ptr noundef nonnull align 8 dereferenceable(40) %i.dln, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %69, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.vm unwind label %bb.zo

bb.vm:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1605
  %i.dlt = load ptr, ptr %70, align 8, !tbaa !25  ; 2 uses
  %i.dlu = icmp eq ptr %i.dlt, %i.dlr
  br i1 %i.dlu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1621, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1619: ; preds = %bb.vm
  %i.dlv = load i64, ptr %i.dlr, align 8, !tbaa !26
  %i.dlw = add i64 %i.dlv, 1
  call void @_ZdlPvm(ptr noundef %i.dlt, i64 noundef %i.dlw) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1621

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1621: ; preds = %bb.vm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1619
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #14
  %i.dlx = load ptr, ptr %69, align 8, !tbaa !25  ; 2 uses
  %i.dly = icmp eq ptr %i.dlx, %i.dlo
  br i1 %i.dly, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1623, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1622: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1621
  %i.dlz = load i64, ptr %i.dlo, align 8, !tbaa !26
  %i.dma = add i64 %i.dlz, 1
  call void @_ZdlPvm(ptr noundef %i.dlx, i64 noundef %i.dma) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1623

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1623: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1621, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1622
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #14
  %i.dmb = load i32, ptr %i.dlk, align 8, !tbaa !15
  %i.dmc = add nsw i32 %i.dmb, -1                 ; 2 uses
  store i32 %i.dmc, ptr %i.dlk, align 8, !tbaa !15
  %i.dmd = icmp eq i32 %i.dmc, 0
  br i1 %i.dmd, label %bb.vn, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1626

bb.vn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1623
  %i.dme = load ptr, ptr %.0.i3.i.i.i1606, align 8, !tbaa !17
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.dme, i64 8
  %i.dmg = load ptr, ptr %i.dmf, align 8
  call void %i.dmg(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1606) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1626

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1626:    ; preds = %bb.vn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1623
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dky, i64 8 ; 2 uses
  %i.dmi = load i32, ptr %i.dmh, align 8, !tbaa !15
  %i.dmj = add nsw i32 %i.dmi, -1                 ; 2 uses
  store i32 %i.dmj, ptr %i.dmh, align 8, !tbaa !15
  %i.dmk = icmp eq i32 %i.dmj, 0
  br i1 %i.dmk, label %bb.vo, label %bb.vp

bb.vo:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1626
  %i.dml = load ptr, ptr %i.dky, align 8, !tbaa !17
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dml, i64 8
  %i.dmn = load ptr, ptr %i.dmm, align 8
  call void %i.dmn(ptr noundef nonnull align 8 dereferenceable(280) %i.dky) #14, !inline_history !105
  br label %bb.vp

bb.vp:                                            ; preds = %bb.vo, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1626
  %i.dmo = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmq = load ptr, ptr %i.dmp, align 8, !tbaa !397, !noalias !508 ; 10 uses
  %.not.i.i.i.i1629 = icmp eq ptr %i.dmq, null
  br i1 %.not.i.i.i.i1629, label %_ZNK5Ipopt9IpoptData4currEv.exit1630, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dmq, i64 8 ; 2 uses
  %i.dms = load i32, ptr %i.dmr, align 8, !tbaa !15, !noalias !508
  %i.dmt = add nsw i32 %i.dms, 1
  store i32 %i.dmt, ptr %i.dmr, align 8, !tbaa !15, !noalias !508
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1630

_ZNK5Ipopt9IpoptData4currEv.exit1630:             ; preds = %bb.vq, %bb.vp
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmq, i64 208
  %i.dmv = load ptr, ptr %i.dmu, align 8, !tbaa !54, !noalias !509
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmv, i64 48
  %i.dmx = load ptr, ptr %i.dmw, align 8, !tbaa !48, !noalias !509 ; 2 uses
  %.not.i.i.i1631 = icmp eq ptr %i.dmx, null
  br i1 %.not.i.i.i1631, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1635, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1632

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1635: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1630
  %i.dmy = getelementptr inbounds nuw i8, ptr %i.dmq, i64 232
  %i.dmz = load ptr, ptr %i.dmy, align 8, !tbaa !57, !noalias !509
  %i.dna = getelementptr inbounds nuw i8, ptr %i.dmz, i64 48
  %i.dnb = load ptr, ptr %i.dna, align 8, !tbaa !59, !noalias !509, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1632

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1632: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1635, %_ZNK5Ipopt9IpoptData4currEv.exit1630
  %.0.i3.i.i.i1633 = phi ptr [ %i.dmx, %_ZNK5Ipopt9IpoptData4currEv.exit1630 ], [ %i.dnb, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1635 ] ; 6 uses
  %i.dnc = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1633, i64 8 ; 6 uses
  %i.dnd = load i32, ptr %i.dnc, align 8, !tbaa !15, !noalias !510
  %i.dne = add nsw i32 %i.dnd, 1
  store i32 %i.dne, ptr %i.dnc, align 8, !tbaa !15, !noalias !510
  %i.dnf = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #14
  %i.dng = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 6 uses
  store ptr %i.dng, ptr %71, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dng, ptr noundef nonnull align 1 dereferenceable(11) @.str.39, i64 11, i1 false)
  %i.dnh = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 11, ptr %i.dnh, align 8, !tbaa !27
  %i.dni = getelementptr inbounds nuw i8, ptr %71, i64 27
  store i8 0, ptr %i.dni, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #14
  %i.dnj = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 6 uses
  store ptr %i.dnj, ptr %72, align 8, !tbaa !21
  %i.dnk = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 0, ptr %i.dnk, align 8, !tbaa !27
  store i8 0, ptr %i.dnj, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1633, ptr noundef nonnull align 8 dereferenceable(40) %i.dnf, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %71, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %72)
          to label %bb.vr unwind label %bb.zr

bb.vr:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1632
  %i.dnl = load ptr, ptr %72, align 8, !tbaa !25  ; 2 uses
  %i.dnm = icmp eq ptr %i.dnl, %i.dnj
  br i1 %i.dnm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1648, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1646

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1646: ; preds = %bb.vr
  %i.dnn = load i64, ptr %i.dnj, align 8, !tbaa !26
  %i.dno = add i64 %i.dnn, 1
  call void @_ZdlPvm(ptr noundef %i.dnl, i64 noundef %i.dno) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1648: ; preds = %bb.vr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1646
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #14
  %i.dnp = load ptr, ptr %71, align 8, !tbaa !25  ; 2 uses
  %i.dnq = icmp eq ptr %i.dnp, %i.dng
  br i1 %i.dnq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1649: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1648
  %i.dnr = load i64, ptr %i.dng, align 8, !tbaa !26
  %i.dns = add i64 %i.dnr, 1
  call void @_ZdlPvm(ptr noundef %i.dnp, i64 noundef %i.dns) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1650

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1650: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1648, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1649
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #14
  %i.dnt = load i32, ptr %i.dnc, align 8, !tbaa !15
  %i.dnu = add nsw i32 %i.dnt, -1                 ; 2 uses
  store i32 %i.dnu, ptr %i.dnc, align 8, !tbaa !15
  %i.dnv = icmp eq i32 %i.dnu, 0
  br i1 %i.dnv, label %bb.vs, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1653

bb.vs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1650
  %i.dnw = load ptr, ptr %.0.i3.i.i.i1633, align 8, !tbaa !17
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnw, i64 8
  %i.dny = load ptr, ptr %i.dnx, align 8
  call void %i.dny(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1633) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1653

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1653:    ; preds = %bb.vs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1650
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dmq, i64 8 ; 2 uses
  %i.doa = load i32, ptr %i.dnz, align 8, !tbaa !15
  %i.dob = add nsw i32 %i.doa, -1                 ; 2 uses
  store i32 %i.dob, ptr %i.dnz, align 8, !tbaa !15
  %i.doc = icmp eq i32 %i.dob, 0
  br i1 %i.doc, label %bb.vt, label %bb.vu

bb.vt:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1653
  %i.dod = load ptr, ptr %i.dmq, align 8, !tbaa !17
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dod, i64 8
  %i.dof = load ptr, ptr %i.doe, align 8
  call void %i.dof(ptr noundef nonnull align 8 dereferenceable(280) %i.dmq) #14, !inline_history !105
  br label %bb.vu

bb.vu:                                            ; preds = %bb.vt, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1653
  %i.dog = load ptr, ptr %i.atx, align 8, !tbaa !43
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 16
  %i.doi = load ptr, ptr %i.doh, align 8, !tbaa !397, !noalias !511 ; 10 uses
  %.not.i.i.i.i1656 = icmp eq ptr %i.doi, null
  br i1 %.not.i.i.i.i1656, label %_ZNK5Ipopt9IpoptData4currEv.exit1657, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.doj = getelementptr inbounds nuw i8, ptr %i.doi, i64 8 ; 2 uses
  %i.dok = load i32, ptr %i.doj, align 8, !tbaa !15, !noalias !511
  %i.dol = add nsw i32 %i.dok, 1
  store i32 %i.dol, ptr %i.doj, align 8, !tbaa !15, !noalias !511
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1657

_ZNK5Ipopt9IpoptData4currEv.exit1657:             ; preds = %bb.vv, %bb.vu
  %i.dom = getelementptr inbounds nuw i8, ptr %i.doi, i64 208
  %i.don = load ptr, ptr %i.dom, align 8, !tbaa !54, !noalias !512
  %i.doo = getelementptr inbounds nuw i8, ptr %i.don, i64 56
  %i.dop = load ptr, ptr %i.doo, align 8, !tbaa !48, !noalias !512 ; 2 uses
  %.not.i.i.i1658 = icmp eq ptr %i.dop, null
  br i1 %.not.i.i.i1658, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1662, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1659

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1662: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1657
  %i.doq = getelementptr inbounds nuw i8, ptr %i.doi, i64 232
  %i.dor = load ptr, ptr %i.doq, align 8, !tbaa !57, !noalias !512
  %i.dos = getelementptr inbounds nuw i8, ptr %i.dor, i64 56
  %i.dot = load ptr, ptr %i.dos, align 8, !tbaa !59, !noalias !512, !nonnull !42, !noundef !42
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1659

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1659: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1662, %_ZNK5Ipopt9IpoptData4currEv.exit1657
  %.0.i3.i.i.i1660 = phi ptr [ %i.dop, %_ZNK5Ipopt9IpoptData4currEv.exit1657 ], [ %i.dot, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1662 ] ; 6 uses
  %i.dou = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1660, i64 8 ; 6 uses
  %i.dov = load i32, ptr %i.dou, align 8, !tbaa !15, !noalias !513
  %i.dow = add nsw i32 %i.dov, 1
  store i32 %i.dow, ptr %i.dou, align 8, !tbaa !15, !noalias !513
  %i.dox = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #14
  %i.doy = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %i.doy, ptr %73, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.doy, ptr noundef nonnull align 1 dereferenceable(11) @.str.40, i64 11, i1 false)
  %i.doz = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 11, ptr %i.doz, align 8, !tbaa !27
  %i.dpa = getelementptr inbounds nuw i8, ptr %73, i64 27
  store i8 0, ptr %i.dpa, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #14
  %i.dpb = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 6 uses
  store ptr %i.dpb, ptr %74, align 8, !tbaa !21
  %i.dpc = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i64 0, ptr %i.dpc, align 8, !tbaa !27
  store i8 0, ptr %i.dpb, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1660, ptr noundef nonnull align 8 dereferenceable(40) %i.dox, i32 noundef 8, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %73, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %74)
          to label %bb.vw unwind label %bb.zu

bb.vw:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1659
  %i.dpd = load ptr, ptr %74, align 8, !tbaa !25  ; 2 uses
  %i.dpe = icmp eq ptr %i.dpd, %i.dpb
  br i1 %i.dpe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1673: ; preds = %bb.vw
  %i.dpf = load i64, ptr %i.dpb, align 8, !tbaa !26
  %i.dpg = add i64 %i.dpf, 1
  call void @_ZdlPvm(ptr noundef %i.dpd, i64 noundef %i.dpg) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1675: ; preds = %bb.vw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1673
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #14
  %i.dph = load ptr, ptr %73, align 8, !tbaa !25  ; 2 uses
  %i.dpi = icmp eq ptr %i.dph, %i.doy
  br i1 %i.dpi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1676: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1675
  %i.dpj = load i64, ptr %i.doy, align 8, !tbaa !26
  %i.dpk = add i64 %i.dpj, 1
  call void @_ZdlPvm(ptr noundef %i.dph, i64 noundef %i.dpk) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1677

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1677: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1675, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1676
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #14
  %i.dpl = load i32, ptr %i.dou, align 8, !tbaa !15
  %i.dpm = add nsw i32 %i.dpl, -1                 ; 2 uses
  store i32 %i.dpm, ptr %i.dou, align 8, !tbaa !15
  %i.dpn = icmp eq i32 %i.dpm, 0
  br i1 %i.dpn, label %bb.vx, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1680

bb.vx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1677
  %i.dpo = load ptr, ptr %.0.i3.i.i.i1660, align 8, !tbaa !17
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dpo, i64 8
  %i.dpq = load ptr, ptr %i.dpp, align 8
  call void %i.dpq(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1660) #14, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1680

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1680:    ; preds = %bb.vx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1677
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.doi, i64 8 ; 2 uses
  %i.dps = load i32, ptr %i.dpr, align 8, !tbaa !15
  %i.dpt = add nsw i32 %i.dps, -1                 ; 2 uses
  store i32 %i.dpt, ptr %i.dpr, align 8, !tbaa !15
  %i.dpu = icmp eq i32 %i.dpt, 0
  br i1 %i.dpu, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1680
  %i.dpv = load ptr, ptr %i.doi, align 8, !tbaa !17
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.dpv, i64 8
  %i.dpx = load ptr, ptr %i.dpw, align 8
  call void %i.dpx(ptr noundef nonnull align 8 dereferenceable(280) %i.doi) #14, !inline_history !105
  br label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1680
  %i.dpy = load ptr, ptr %i.buy, align 8, !tbaa !45 ; 2 uses
  %i.dpz = load ptr, ptr %i.dpy, align 8, !tbaa !17
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dpz, i64 56
  %i.dqb = load ptr, ptr %i.dqa, align 8
  %i.dqc = invoke noundef zeroext i1 %i.dqb(ptr noundef nonnull align 8 dereferenceable(40) %i.dpy, i32 noundef 9, i32 noundef 3)
          to label %bb.wa unwind label %bb.yx

bb.wa:                                            ; preds = %bb.vz
  br i1 %i.dqc, label %bb.wb, label %bb.aar

bb.wb:                                            ; preds = %bb.wa
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #14
  %i.dqd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.dqe = load ptr, ptr %i.dqd, align 8, !tbaa !60
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_slack_x_LEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.45") align 8 %75, ptr noundef nonnull align 8 dereferenceable(2185) %i.dqe)
          to label %.noexc.i1684 unwind label %bb.zx

.noexc.i1684:                                     ; preds = %bb.wb
  %i.dqf = load ptr, ptr %75, align 8, !tbaa !59
  %i.dqg = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #14
  %i.dqh = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 6 uses
  store ptr %i.dqh, ptr %76, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 17, ptr %i.d, align 8, !tbaa !23
  %i.dqi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc1685 unwind label %bb.zy ; 2 uses

.noexc1685:                                       ; preds = %.noexc.i1684
  store ptr %i.dqi, ptr %76, align 8, !tbaa !25
  %i.dqj = load i64, ptr %i.d, align 8, !tbaa !23 ; 3 uses
  store i64 %i.dqj, ptr %i.dqh, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.dqi, ptr noundef nonnull align 1 dereferenceable(17) @.str.41, i64 17, i1 false)
  %i.dqk = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 %i.dqj, ptr %i.dqk, align 8, !tbaa !27
  %i.dql = load ptr, ptr %76, align 8, !tbaa !25
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dql, i64 %i.dqj
  store i8 0, ptr %i.dqm, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #14
  %i.dqn = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  store ptr %i.dqn, ptr %77, align 8, !tbaa !21
  %i.dqo = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 0, ptr %i.dqo, align 8, !tbaa !27
  store i8 0, ptr %i.dqn, align 8, !tbaa !26
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.dqf, ptr noundef nonnull align 8 dereferenceable(40) %i.dqg, i32 noundef 9, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %76, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %77)
          to label %bb.wc unwind label %bb.zz

bb.wc:                                            ; preds = %.noexc1685
  %i.dqp = load ptr, ptr %77, align 8, !tbaa !25  ; 2 uses
  %i.dqq = icmp eq ptr %i.dqp, %i.dqn
  br i1 %i.dqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1693, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1691

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1691: ; preds = %bb.wc
  %i.dqr = load i64, ptr %i.dqn, align 8, !tbaa !26
  %i.dqs = add i64 %i.dqr, 1
  call void @_ZdlPvm(ptr noundef %i.dqp, i64 noundef %i.dqs) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1693

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1693: ; preds = %bb.wc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1691
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #14
  %i.dqt = load ptr, ptr %76, align 8, !tbaa !25  ; 2 uses
  %i.dqu = icmp eq ptr %i.dqt, %i.dqh
  br i1 %i.dqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1696, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1694: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1693
  %i.dqv = load i64, ptr %i.dqh, align 8, !tbaa !26
  %i.dqw = add i64 %i.dqv, 1
  call void @_ZdlPvm(ptr noundef %i.dqt, i64 noundef %i.dqw) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1696

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1696: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1693, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1694
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #14
  %i.dqx = load ptr, ptr %75, align 8, !tbaa !59  ; 4 uses
  %.not.i.i1697 = icmp eq ptr %i.dqx, null
  br i1 %.not.i.i1697, label %bb.wf, label %bb.wd

bb.wd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1696
  %i.dqy = getelementptr inbounds nuw i8, ptr %i.dqx, i64 8 ; 2 uses
  %i.dqz = load i32, ptr %i.dqy, align 8, !tbaa !15
  %i.dra = add nsw i32 %i.dqz, -1                 ; 2 uses
  store i32 %i.dra, ptr %i.dqy, align 8, !tbaa !15
  %i.drb = icmp eq i32 %i.dra, 0
  br i1 %i.drb, label %bb.we, label %bb.wf

bb.we:                                            ; preds = %bb.wd
  %i.drc = load ptr, ptr %i.dqx, align 8, !tbaa !17
  %i.drd = getelementptr inbounds nuw i8, ptr %i.drc, i64 8
  %i.dre = load ptr, ptr %i.drd, align 8
  call void %i.dre(ptr noundef nonnull align 8 dereferenceable(205) %i.dqx) #14, !inline_history !2
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1696
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #14
  %i.drf = load ptr, ptr %i.dqd, align 8, !tbaa !60
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_slack_x_UEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.45") align 8 %78, ptr noundef nonnull align 8 dereferenceable(2185) %i.drf)
          to label %.noexc.i1700 unwind label %bb.aac

.noexc.i1700:                                     ; preds = %bb.wf
  %i.drg = load ptr, ptr %78, align 8, !tbaa !59
  %i.drh = load ptr, ptr %i.buy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #14
  %i.dri = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 6 uses
  store ptr %i.dri, ptr %79, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 17, ptr %i.c, align 8, !tbaa !23
  %i.drj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc1701 unwind label %bb.aad ; 2 uses

.noexc1701:                                       ; preds = %.noexc.i1700
  store ptr %i.drj, ptr %79, align 8, !tbaa !25
  %i.drk = load i64, ptr %i.c, align 8, !tbaa !23 ; 3 uses
  store i64 %i.drk, ptr %i.dri, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.drj, ptr noundef nonnull align 1 dereferenceable(17) @.str.42, i64 17, i1 false)
  %i.drl = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 %i.drk, ptr %i.drl, align 8, !tbaa !27
  %i.drm = load ptr, ptr %79, align 8, !tbaa !25
  %i.drn = getelementptr inbounds nuw i8, ptr %i.drm, i64 %i.drk
  store i8 0, ptr %i.drn, align 1, !tbaa !26
end_hunk_1
