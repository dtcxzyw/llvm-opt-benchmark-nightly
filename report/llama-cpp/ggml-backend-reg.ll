Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend-reg?download=true
inline.NumInlined: 957
inline.NumDeleted: 401
begin_hunk_0_@_ZL22ggml_backend_load_bestPKcbS0_:bb.a
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc152
  store ptr %i.al, ptr %8, align 8, !tbaa !50, !alias.scope !173
  %i.as = load i64, ptr %i.am, align 8, !tbaa !42
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !42, !alias.scope !173
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.at = phi i64 [ %i.ap, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !52, !alias.scope !173
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !50
  store i64 0, ptr %i.au, align 8, !tbaa !52
  store i8 0, ptr %i.am, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !53
  %i.ax = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %i.av, align 8, !tbaa !52 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.f
  store ptr %i.ax, ptr %7, align 8, !tbaa !50
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !42
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !42
  %.pre = load i64, ptr %i.av, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.g
  %i.bd = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.az, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !52
  store ptr %i.ak, ptr %8, align 8, !tbaa !50
  store i64 0, ptr %i.av, align 8, !tbaa !52
  store i8 0, ptr %i.ak, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.bi) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.k, %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.i ], [ %i.bh, %bb.j ], [ %i.bh, %bb.k ] ; 2 uses
  %i.bj = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aw
  br i1 %i.bk, label %.body154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.bl = load i64, ptr %i.aw, align 8, !tbaa !42
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #25
  br label %.body154

_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit: ; preds = %bb.h
  %i.bn = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ak
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit
  %i.bp = load i64, ptr %i.ak, align 8, !tbaa !42
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i157, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i158, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %i.bs) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i158

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i158: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i158
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !42
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.by = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.p
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ca = load i64, ptr %i.p, align 8, !tbaa !42
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i165 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i165, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i166, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull %i.cd) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i166

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i166: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.ce = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i166
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !42
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit170

_ZNSt10filesystem7__cxx114pathD2Ev.exit170:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA4_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(4) @.str.40, i8 noundef zeroext 2)
          to label %_ZL26backend_filename_extensionB5cxx11v.exit unwind label %bb.bm

_ZL26backend_filename_extensionB5cxx11v.exit:     ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.n, label %bb.bx

bb.n:                                             ; preds = %_ZL26backend_filename_extensionB5cxx11v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !174
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.cl, ptr %2, align 8, !tbaa !53, !noalias !174
  store i8 46, ptr %i.cl, align 8, !tbaa !42, !noalias !174
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 1, ptr %i.cm, align 8, !tbaa !52, !noalias !174
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.cn, align 1, !tbaa !42, !noalias !174
  %i.co = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #24
          to label %bb.o unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit54.i.thread, !noalias !174 ; 6 uses

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1024 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.co, i8 0, i64 1024, i1 false), !noalias !174
  %i.cq = call i64 @readlink(ptr noundef nonnull @.str.42, ptr noundef nonnull %i.co, i64 noundef 1024) #22, !noalias !174 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  br label %.lr.ph.i

_ZNSt6vectorIcSaIcEED2Ev.exit54.i.thread:         ; preds = %bb.n
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i, %.lr.ph.preheader.i
  %i.cv = phi i64 [ %i.gi, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ], [ %i.cq, %.lr.ph.preheader.i ] ; 5 uses
  %i.cw = phi i64 [ %i.gh, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ], [ 1024, %.lr.ph.preheader.i ] ; 12 uses
  %i.cx = phi i64 [ %i.gg, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ], [ %i.cs, %.lr.ph.preheader.i ]
  %i.cy = phi i64 [ %i.gf, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ], [ %i.ct, %.lr.ph.preheader.i ]
  %.sroa.059.0103.i = phi ptr [ %.sroa.059.1.i, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ], [ %i.co, %.lr.ph.preheader.i ] ; 15 uses
  %.sroa.14.0102.i = phi ptr [ %.sroa.14.1.i, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ], [ %i.cp, %.lr.ph.preheader.i ] ; 6 uses
  %.sroa.22.0101.i = phi ptr [ %.sroa.22.1.i, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ], [ %i.cp, %.lr.ph.preheader.i ] ; 11 uses
  %i.cz = icmp slt i64 %i.cv, %i.cw
  br i1 %i.cz, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !174
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.da, ptr %3, align 8, !tbaa !53, !noalias !174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22, !noalias !174
  store i64 %i.cv, ptr %i.g, align 8, !tbaa !54, !noalias !174
  %i.db = icmp ugt i64 %i.cv, 15
  br i1 %i.db, label %.noexc.i23.i, label %._crit_edge.i.i22.i

.noexc.i23.i:                                     ; preds = %bb.p
  %i.dc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc25.i unwind label %bb.ah, !noalias !174 ; 2 uses

.noexc25.i:                                       ; preds = %.noexc.i23.i
  store ptr %i.dc, ptr %3, align 8, !tbaa !50, !noalias !174
  %i.dd = load i64, ptr %i.g, align 8, !tbaa !54, !noalias !174
  store i64 %i.dd, ptr %i.da, align 8, !tbaa !42, !noalias !174
  br label %._crit_edge.i.i22.i

._crit_edge.i.i22.i:                              ; preds = %.noexc25.i, %bb.p
  %i.de = phi ptr [ %i.dc, %.noexc25.i ], [ %i.da, %bb.p ] ; 2 uses
  switch i64 %i.cv, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i22.i
  %i.df = load i8, ptr %.sroa.059.0103.i, align 1, !tbaa !42, !noalias !174
  store i8 %i.df, ptr %i.de, align 1, !tbaa !42, !noalias !174
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i22.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %.sroa.059.0103.i, i64 %i.cv, i1 false), !noalias !174
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i22.i
  %i.dg = load i64, ptr %i.g, align 8, !tbaa !54, !noalias !174 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !52, !noalias !174
  %i.di = load ptr, ptr %3, align 8, !tbaa !50, !noalias !174
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dg
  store i8 0, ptr %i.dj, align 1, !tbaa !42, !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22, !noalias !174
  %i.dk = load ptr, ptr %2, align 8, !tbaa !50, !noalias !174 ; 6 uses
  %i.dl = icmp eq ptr %i.dk, %i.cl
  %i.dm = load ptr, ptr %3, align 8, !tbaa !50, !noalias !174 ; 5 uses
  %i.dn = icmp eq ptr %i.dm, %i.da                ; 2 uses
  br i1 %i.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.s
  br i1 %i.dn, label %bb.t, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176: ; preds = %bb.s
  br i1 %i.dn, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  %i.do = load i64, ptr %i.dh, align 8, !tbaa !52, !noalias !174 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  switch i64 %i.do, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !42, !noalias !174
  store i8 %i.dq, ptr %i.dk, align 1, !tbaa !42, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dm, i64 %i.do, i1 false), !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.dr = load i64, ptr %i.dh, align 8, !tbaa !52, !noalias !174 ; 2 uses
  store i64 %i.dr, ptr %i.cm, align 8, !tbaa !52, !noalias !174
  %i.ds = load ptr, ptr %2, align 8, !tbaa !50, !noalias !174
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !42, !noalias !174
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !50, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  store ptr %i.dm, ptr %2, align 8, !tbaa !50, !noalias !174
  %i.du = load <2 x i64>, ptr %i.dh, align 8, !tbaa !42, !noalias !174
  store <2 x i64> %i.du, ptr %i.cm, align 8, !tbaa !42, !noalias !174
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176
  %i.dv = load i64, ptr %i.cl, align 8, !tbaa !42, !noalias !174
  store ptr %i.dm, ptr %2, align 8, !tbaa !50, !noalias !174
  %i.dw = load <2 x i64>, ptr %i.dh, align 8, !tbaa !42, !noalias !174
  store <2 x i64> %i.dw, ptr %i.cm, align 8, !tbaa !42, !noalias !174
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dk, ptr %3, align 8, !tbaa !50, !noalias !174
  store i64 %i.dv, ptr %i.da, align 8, !tbaa !42, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.da, ptr %3, align 8, !tbaa !50, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.x, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.dx = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.dk, %bb.w ], [ %i.da, %bb.x ]
  store i64 0, ptr %i.dh, align 8, !tbaa !52, !noalias !174
  store i8 0, ptr %i.dx, align 1, !tbaa !42, !noalias !174
  %i.dy = load ptr, ptr %3, align 8, !tbaa !50, !noalias !174 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.da
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.ea = load i64, ptr %i.da, align 8, !tbaa !42, !noalias !174
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #25, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !174
  %i.ec = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 47, i64 noundef -1) #22, !noalias !174 ; 2 uses
  %.not.i = icmp eq i64 %i.ec, -1
  br i1 %.not.i, label %.loopexit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !174
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.ed = load i64, ptr %i.cm, align 8, !tbaa !52, !noalias !176
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.ee, ptr %4, align 8, !tbaa !53, !alias.scope !175, !noalias !174
  %i.ef = load ptr, ptr %2, align 8, !tbaa !50, !noalias !176 ; 2 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ec, i64 %i.ed) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22, !noalias !176
  store i64 %spec.select.i.i.i.i, ptr %i.f, align 8, !tbaa !54, !noalias !176
  %i.eg = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.eg, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %bb.y
  %i.eh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc26.i unwind label %bb.ai, !noalias !174 ; 2 uses

.noexc26.i:                                       ; preds = %.noexc10.i.i.i
  store ptr %i.eh, ptr %4, align 8, !tbaa !50, !alias.scope !175, !noalias !174
  %i.ei = load i64, ptr %i.f, align 8, !tbaa !54, !noalias !176
  store i64 %i.ei, ptr %i.ee, align 8, !tbaa !42, !alias.scope !175, !noalias !174
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc26.i, %bb.y
  %i.ej = phi ptr [ %i.eh, %.noexc26.i ], [ %i.ee, %bb.y ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ek = load i8, ptr %i.ef, align 1, !tbaa !42, !noalias !174
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !42, !noalias !174
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ef, i64 %spec.select.i.i.i.i, i1 false), !noalias !174
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i.i
  %i.el = load i64, ptr %i.f, align 8, !tbaa !54, !noalias !176 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.el, ptr %i.em, align 8, !tbaa !52, !alias.scope !175, !noalias !174
  %i.en = load ptr, ptr %4, align 8, !tbaa !50, !alias.scope !175, !noalias !174
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  store i8 0, ptr %i.eo, align 1, !tbaa !42, !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22, !noalias !176
  %i.ep = load ptr, ptr %2, align 8, !tbaa !50, !noalias !174 ; 6 uses
  %i.eq = icmp eq ptr %i.ep, %i.cl
  %i.er = load ptr, ptr %4, align 8, !tbaa !50, !noalias !174 ; 5 uses
  %i.es = icmp eq ptr %i.er, %i.ee                ; 2 uses
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32.i: ; preds = %bb.ab
  br i1 %i.es, label %bb.ac, label %.thread.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27.i: ; preds = %bb.ab
  br i1 %i.es, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32.i
  %i.et = load i64, ptr %i.em, align 8, !tbaa !52, !noalias !174 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  switch i64 %i.et, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !42, !noalias !174
  store i8 %i.ev, ptr %i.ep, align 1, !tbaa !42, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.er, i64 %i.et, i1 false), !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ew = load i64, ptr %i.em, align 8, !tbaa !52, !noalias !174 ; 2 uses
  store i64 %i.ew, ptr %i.cm, align 8, !tbaa !52, !noalias !174
  %i.ex = load ptr, ptr %2, align 8, !tbaa !50, !noalias !174
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !42, !noalias !174
  %.pre.i31.i = load ptr, ptr %4, align 8, !tbaa !50, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34.i

.thread.i33.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32.i
  store ptr %i.er, ptr %2, align 8, !tbaa !50, !noalias !174
  %i.ez = load <2 x i64>, ptr %i.em, align 8, !tbaa !42, !noalias !174
  store <2 x i64> %i.ez, ptr %i.cm, align 8, !tbaa !42, !noalias !174
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27.i
  %i.fa = load i64, ptr %i.cl, align 8, !tbaa !42, !noalias !174
  store ptr %i.er, ptr %2, align 8, !tbaa !50, !noalias !174
  %i.fb = load <2 x i64>, ptr %i.em, align 8, !tbaa !42, !noalias !174
  store <2 x i64> %i.fb, ptr %i.cm, align 8, !tbaa !42, !noalias !174
  %.not.i29.i = icmp eq ptr %i.ep, null
  br i1 %.not.i29.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28.i
  store ptr %i.ep, ptr %4, align 8, !tbaa !50, !noalias !174
  store i64 %i.fa, ptr %i.ee, align 8, !tbaa !42, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28.i, %.thread.i33.i
  store ptr %i.ee, ptr %4, align 8, !tbaa !50, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34.i: ; preds = %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30.i
  %i.fc = phi ptr [ %.pre.i31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30.i ], [ %i.ep, %bb.af ], [ %i.ee, %bb.ag ]
  store i64 0, ptr %i.em, align 8, !tbaa !52, !noalias !174
  store i8 0, ptr %i.fc, align 1, !tbaa !42, !noalias !174
  %i.fd = load ptr, ptr %4, align 8, !tbaa !50, !noalias !174 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ee
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34.i
  %i.ff = load i64, ptr %i.ee, align 8, !tbaa !42, !noalias !174
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #25, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !174
  br label %.loopexit.i

bb.ah:                                            ; preds = %.noexc.i23.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !174
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit54.i

bb.ai:                                            ; preds = %.noexc10.i.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !174
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit54.i

bb.aj:                                            ; preds = %.lr.ph.i
  %i.fj = shl i64 %i.cw, 1                        ; 3 uses
  %i.fk = icmp sgt i64 %i.cw, 0
  br i1 %i.fk, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.fl = ptrtoint ptr %.sroa.22.0101.i to i64    ; 2 uses
  %i.fm = sub i64 %i.fl, %i.cy                    ; 2 uses
  %i.fn = xor i64 %i.cw, 9223372036854775807      ; 2 uses
  %i.fo = icmp ule i64 %i.fm, %i.fn
  call void @llvm.assume(i1 %i.fo)
  %.not28.i.i.i = icmp ult i64 %i.fm, %i.cw
  br i1 %.not28.i.i.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %.sroa.14.0102.i, align 1, !tbaa !42, !noalias !174
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.14.0102.i, i64 1 ; 2 uses
  %i.fq = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = getelementptr i8, ptr %.sroa.14.0102.i, i64 %i.cw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fp, i8 0, i64 %i.fq, i1 false), !noalias !174
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.ft = icmp samesign ult i64 %i.fn, %i.cw
  br i1 %i.ft, label %bb.ao, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #23
          to label %.noexc38.i unwind label %.loopexit.split-lp.i, !noalias !174

.noexc38.i:                                       ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.an
  %i.fu = call i64 @llvm.umin.i64(i64 %i.fj, i64 9223372036854775807) ; 2 uses
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #24
          to label %.noexc39.i unwind label %.loopexit85.i, !noalias !174 ; 5 uses

.noexc39.i:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.cw ; 2 uses
  store i8 0, ptr %i.fw, align 1, !tbaa !42, !noalias !174
  %i.fx = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc39.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fz, i8 0, i64 %i.fx, i1 false), !noalias !174
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i.i: ; preds = %bb.ap, %.noexc39.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr align 1 %.sroa.059.0103.i, i64 %i.cw, i1 false), !noalias !174
  %i.ga = sub i64 %i.fl, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0103.i, i64 noundef %i.ga) #25, !noalias !174
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fu
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i

bb.aq:                                            ; preds = %bb.aj
  %i.gd = icmp slt i64 %i.cw, 0
  br i1 %i.gd, label %bb.ar, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.059.0103.i, i64 %i.fj ; 2 uses
  %.not.i4.i.i = icmp eq ptr %.sroa.14.0102.i, %i.ge
  %spec.select.i = select i1 %.not.i4.i.i, ptr %.sroa.14.0102.i, ptr %i.ge
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i

_ZNSt6vectorIcSaIcEE6resizeEm.exit.i:             ; preds = %bb.ar, %bb.aq, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i.i, %bb.am, %bb.al
  %.sroa.22.1.i = phi ptr [ %.sroa.22.0101.i, %bb.ar ], [ %.sroa.22.0101.i, %bb.am ], [ %.sroa.22.0101.i, %bb.al ], [ %i.gc, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i.i ], [ %.sroa.22.0101.i, %bb.aq ] ; 2 uses
  %.sroa.14.1.i = phi ptr [ %spec.select.i, %bb.ar ], [ %i.fs, %bb.am ], [ %i.fp, %bb.al ], [ %i.gb, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i.i ], [ %.sroa.14.0102.i, %bb.aq ] ; 2 uses
  %.sroa.059.1.i = phi ptr [ %.sroa.059.0103.i, %bb.ar ], [ %.sroa.059.0103.i, %bb.am ], [ %.sroa.059.0103.i, %bb.al ], [ %i.fv, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i.i ], [ %.sroa.059.0103.i, %bb.aq ] ; 4 uses
  %i.gf = ptrtoint ptr %.sroa.14.1.i to i64       ; 2 uses
  %i.gg = ptrtoint ptr %.sroa.059.1.i to i64      ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 2 uses
  %i.gi = call i64 @readlink(ptr noundef nonnull @.str.42, ptr noundef %.sroa.059.1.i, i64 noundef %i.gh) #22, !noalias !174 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %.loopexit.i, label %.lr.ph.i

.loopexit85.i:                                    ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit54.i

.loopexit.split-lp.i:                             ; preds = %bb.ao
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit54.i

.loopexit.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178, %bb.o
  %.sroa.22.0100.i = phi ptr [ %.sroa.22.0101.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.22.0101.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178 ], [ %i.cp, %bb.o ], [ %.sroa.22.1.i, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ] ; 2 uses
  %.sroa.059.094.i = phi ptr [ %.sroa.059.0103.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ], [ %.sroa.059.0103.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178 ], [ %i.co, %bb.o ], [ %.sroa.059.1.i, %_ZNSt6vectorIcSaIcEE6resizeEm.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !174
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.gk = load ptr, ptr %2, align 8, !tbaa !50, !noalias !178
  %i.gl = load i64, ptr %i.cm, align 8, !tbaa !52, !noalias !178 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.gm, ptr %5, align 8, !tbaa !53, !alias.scope !179, !noalias !174
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.gn, align 8, !tbaa !52, !alias.scope !179, !noalias !174
  store i8 0, ptr %i.gm, align 8, !tbaa !42, !alias.scope !179, !noalias !174
  %i.go = add i64 %i.gl, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.go)
          to label %bb.as unwind label %bb.at, !noalias !174

bb.as:                                            ; preds = %.loopexit.i
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !52, !alias.scope !179, !noalias !174
  %i.gq = sub i64 4611686018427387903, %i.gp
  %i.gr = icmp ult i64 %i.gq, %i.gl
  br i1 %i.gr, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.as
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.gk, i64 noundef %i.gl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %bb.at, !noalias !174 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.gt = load i64, ptr %i.gn, align 8, !tbaa !52, !alias.scope !179, !noalias !174
  %i.gu = icmp eq i64 %i.gt, 4611686018427387903
  br i1 %i.gu, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #23
          to label %.cont.i.i.i unwind label %bb.at, !noalias !174

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.gv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i unwind label %bb.at, !noalias !174 ; 0 uses

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i, %.invoke.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %.loopexit.i
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = load ptr, ptr %5, align 8, !tbaa !50, !alias.scope !179, !noalias !174 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gm
  br i1 %i.gy, label %.body.i172, label %.body.i172.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 12 uses
  store ptr %i.gz, ptr %14, align 8, !tbaa !53, !alias.scope !174
  %i.ha = load ptr, ptr %5, align 8, !tbaa !50, !noalias !174 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gm
  br i1 %i.hb, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i

bb.au:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
  %i.hc = load i64, ptr %i.gn, align 8, !tbaa !52, !noalias !174 ; 3 uses
  %i.hd = icmp ult i64 %i.hc, 16
  call void @llvm.assume(i1 %i.hd)
  %i.he = add nuw nsw i64 %i.hc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gz, ptr noundef nonnull align 8 dereferenceable(1) %i.gm, i64 %i.he, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
  store ptr %i.ha, ptr %14, align 8, !tbaa !50, !alias.scope !174
  %i.hf = load i64, ptr %i.gm, align 8, !tbaa !42, !noalias !174
  store i64 %i.hf, ptr %i.gz, align 8, !tbaa !42, !alias.scope !174
  %.pre.i173 = load i64, ptr %i.gn, align 8, !tbaa !52, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i, %bb.au
  %i.hg = phi i64 [ %.pre.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i ], [ %i.hc, %bb.au ]
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !52, !alias.scope !174
  store ptr %i.gm, ptr %5, align 8, !tbaa !50, !noalias !174
  store i64 0, ptr %i.gn, align 8, !tbaa !52, !noalias !174
  store i8 0, ptr %i.gm, align 8, !tbaa !42, !noalias !174
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 7 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.hi)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit.i unwind label %bb.ax

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

bb.ax:                                            ; preds = %bb.av
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !46, !alias.scope !174 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull %i.hl) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  %.pn.i.i = phi { ptr, i32 } [ %i.hj, %bb.aw ], [ %i.hk, %bb.ax ], [ %i.hk, %bb.ay ] ; 2 uses
  %i.hm = load ptr, ptr %14, align 8, !tbaa !50, !alias.scope !174 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.gz
  br i1 %i.hn, label %.body41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.ho = load i64, ptr %i.gz, align 8, !tbaa !42, !alias.scope !174
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #25
  br label %.body41.i

_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit.i: ; preds = %bb.av
  %i.hq = load ptr, ptr %5, align 8, !tbaa !50, !noalias !174 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.gm
  br i1 %i.hr, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit.i
  %i.hs = load i64, ptr %i.gm, align 8, !tbaa !42, !noalias !174
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #25
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !174
  %i.hu = ptrtoint ptr %.sroa.22.0100.i to i64
  %i.hv = ptrtoint ptr %.sroa.059.094.i to i64
  %i.hw = sub i64 %i.hu, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.094.i, i64 noundef %i.hw) #25
  %i.hx = load ptr, ptr %2, align 8, !tbaa !50, !noalias !174 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.cl
  br i1 %i.hy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.hz = load i64, ptr %i.cl, align 8, !tbaa !42, !noalias !174
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48.i

.body41.i:                                        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174
  %i.ib = load ptr, ptr %5, align 8, !tbaa !50, !noalias !174 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.gm
  br i1 %i.ic, label %.body.i172, label %.body.i172.sink.split

.body.i172.sink.split:                            ; preds = %.body41.i, %bb.at
  %.sink = phi ptr [ %i.gx, %bb.at ], [ %i.ib, %.body41.i ]
  %.pn16.i.ph = phi { ptr, i32 } [ %i.gw, %bb.at ], [ %.pn.i.i, %.body41.i ]
  %i.id = load i64, ptr %i.gm, align 8, !tbaa !42, !noalias !174
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ie) #25
  br label %.body.i172

.body.i172:                                       ; preds = %.body.i172.sink.split, %.body41.i, %bb.at
  %.pn16.i = phi { ptr, i32 } [ %i.gw, %bb.at ], [ %.pn.i.i, %.body41.i ], [ %.pn16.i.ph, %.body.i172.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !174
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit54.i

_ZNSt6vectorIcSaIcEED2Ev.exit54.i:                ; preds = %bb.ah, %bb.ai, %.loopexit85.i, %.loopexit.split-lp.i, %.body.i172
  %.sroa.22.098.i = phi ptr [ %.sroa.22.0100.i, %.body.i172 ], [ %.sroa.22.0101.i, %bb.ai ], [ %.sroa.22.0101.i, %bb.ah ], [ %.sroa.22.0101.i, %.loopexit85.i ], [ %.sroa.22.0101.i, %.loopexit.split-lp.i ]
  %.sroa.059.092.i = phi ptr [ %.sroa.059.094.i, %.body.i172 ], [ %.sroa.059.0103.i, %bb.ai ], [ %.sroa.059.0103.i, %bb.ah ], [ %.sroa.059.0103.i, %.loopexit85.i ], [ %.sroa.059.0103.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn16.pn.i = phi { ptr, i32 } [ %.pn16.i, %.body.i172 ], [ %i.fi, %bb.ai ], [ %i.fh, %bb.ah ], [ %lpad.loopexit.i, %.loopexit85.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
end_hunk_0
