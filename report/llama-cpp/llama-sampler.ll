Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@llama_sampler_init_dry:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.o = icmp ne ptr %5, null
  %i.p = icmp ne i64 %6, 0
  %or.cond5 = and i1 %i.o, %i.p
  br i1 %or.cond5, label %.preheader, label %.loopexit106

.preheader:                                       ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.cq
  %.042264 = phi i64 [ 0, %.preheader ], [ %i.lg, %bb.cq ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.042264
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %char0 = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %char0, 0
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.28, i64 noundef %.042264)
          to label %bb.cq unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store ptr %i.q, ptr %13, align 8, !tbaa !110
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !111
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc65 unwind label %bb.n   ; 2 uses

.noexc65:                                         ; preds = %.noexc.i
  store ptr %i.aj, ptr %13, align 8, !tbaa !113
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !111
  store i64 %i.ak, ptr %i.q, align 8, !tbaa !87
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc65, %bb.i
  %i.al = phi ptr [ %i.aj, %.noexc65 ], [ %i.q, %bb.i ] ; 2 uses
  switch i64 %i.ah, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %i.ad, align 1, !tbaa !87
  store i8 %i.am, ptr %i.al, align 1, !tbaa !87
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.ad, i64 %i.ah, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.an = load i64, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  store i64 %i.an, ptr %i.r, align 8, !tbaa !114
  %i.ao = load ptr, ptr %13, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.29)
          to label %_ZL31get_overlapping_token_sequencesRK11llama_vocabRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiSD_EEEi.exit unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.m, %bb.p, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn56.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.at = load ptr, ptr %13, align 8, !tbaa !113  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.q
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.av = load i64, ptr %i.q, align 8, !tbaa !87
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.ax = icmp ugt i64 %i.aq, 40
  br i1 %i.ax, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef 40)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 40, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.q, %bb.o
  %i.ay = invoke noundef i32 @_ZNK11llama_vocab8n_tokensEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph217.i, label %_ZL31get_overlapping_token_sequencesRK11llama_vocabRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiSD_EEEi.exit

.lr.ph217.i:                                      ; preds = %.noexc69, %.noexc70
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc70 ], [ 0, %.noexc69 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.ba = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37
          to label %bb.r unwind label %bb.x       ; 3 uses

bb.r:                                             ; preds = %.lr.ph217.i
  store ptr %i.ba, ptr %9, align 8, !tbaa !199
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  store ptr %i.bb, ptr %i.s, align 8, !tbaa !200
  %i.bc = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !84
  store ptr %i.bb, ptr %i.t, align 8, !tbaa !201
  invoke void @_ZNK11llama_vocab10detokenizeB5cxx11ERKSt6vectorIiSaIiEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.bd = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !200
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.bi = load ptr, ptr %13, align 8, !tbaa !113
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !114
  %i.bk = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.bi, i64 noundef 0, i64 noundef %i.bj) #40
  %.not.i = icmp eq i64 %i.bk, -1
  br i1 %.not.i, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store ptr %12, ptr %7, align 8, !tbaa !213
  %i.bl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
          to label %.noexc.i67 unwind label %bb.aa ; 5 uses

.noexc.i67:                                       ; preds = %bb.u
  store ptr null, ptr %i.bl, align 8, !tbaa !214
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.bc, ptr %i.bm, align 8, !tbaa !216
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr %i.bl, ptr %i.u, align 8, !tbaa !217
  %i.bo = load i64, ptr %i.v, align 8, !tbaa !218
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.preheader223.i, label %.loopexit.i.i.i.i.i

.preheader223.i:                                  ; preds = %.noexc.i67, %bb.v
  %.sroa.0.0.in.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %bb.v ], [ %i.e, %.noexc.i67 ]
  %.sroa.0.0.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 8, !tbaa !214 ; 5 uses
  %.not27.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.preheader223.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !84
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp eq i64 %indvars.iv.i, %i.br
  br i1 %i.bs, label %.loopexit.i.i.i.i.i, label %.preheader223.i, !llvm.loop !1

.loopexit.i.i.i.i.i:                              ; preds = %bb.v, %.preheader223.i, %.noexc.i67
  %.sroa.019.3.i.i.i.i.i.i = phi ptr [ null, %.noexc.i67 ], [ %.sroa.0.0.i.i.i.i.i.i, %.preheader223.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.v ]
  %i.bt = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %.sroa.019.3.i.i.i.i.i.i, i64 noundef %indvars.iv.i, ptr noundef nonnull %i.bl)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit63.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67.i

_ZNSt6vectorIiSaIiEED2Ev.exit63.i:                ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.loopexit130.i

bb.x:                                             ; preds = %.lr.ph217.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit65.i

bb.y:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i64.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i64.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit65.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !200
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit65.i

_ZNSt6vectorIiSaIiEED2Ev.exit65.i:                ; preds = %bb.z, %bb.y, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %i.bw, %bb.y ], [ %i.bw, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i

bb.aa:                                            ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67.i

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cd = load i64, ptr %i.w, align 8, !tbaa !114
  %i.ce = load i64, ptr %i.r, align 8, !tbaa !114 ; 3 uses
  %i.cf = load ptr, ptr %13, align 8, !tbaa !113
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !87
  %i.ch = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext %i.cg, i64 noundef 0) #40 ; 2 uses
  %.not47214.i = icmp eq i64 %i.ch, -1
  br i1 %.not47214.i, label %.loopexit130.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.ab
  %i.ci = icmp ugt i64 %i.ce, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.lr.ph.i
  %i.cj = phi i64 [ %i.ch, %.preheader.lr.ph.i ], [ %i.kq, %.critedge.i ] ; 2 uses
  br i1 %i.ci, label %.lr.ph.i, label %.critedge59.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ck = load ptr, ptr %8, align 8
  %i.cl = load ptr, ptr %13, align 8              ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i
  %.030208.i = phi i64 [ 1, %.lr.ph.i ], [ %i.cs, %bb.ae ] ; 4 uses
  %i.cm = add i64 %.030208.i, %i.cj               ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cd
  br i1 %i.cn, label %bb.ad, label %.critedge59.i

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !87
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.030208.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !87
  %.not48.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not48.i, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.cs = add nuw i64 %.030208.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cs, %i.ce
  br i1 %exitcond.not.i, label %.critedge59.i, label %bb.ac, !llvm.loop !669

.critedge59.i:                                    ; preds = %bb.ae, %bb.ac, %.preheader.i
  %.030.lcssa.i = phi i64 [ 1, %.preheader.i ], [ %i.ce, %bb.ae ], [ %.030208.i, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !114, !noalias !676 ; 3 uses
  %i.cu = icmp ugt i64 %.030.lcssa.i, %i.ct
  br i1 %i.cu, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.af:                                            ; preds = %.critedge59.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.287, i64 noundef %.030.lcssa.i, i64 noundef %i.ct) #38
          to label %.noexc68.i unwind label %.loopexit.split-lp.i

.noexc68.i:                                       ; preds = %bb.af
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %.critedge59.i
  store ptr %i.x, ptr %11, align 8, !tbaa !110, !alias.scope !676
  %i.cv = load ptr, ptr %13, align 8, !tbaa !113, !noalias !676
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.030.lcssa.i ; 2 uses
  %i.cx = sub nuw i64 %i.ct, %.030.lcssa.i        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !676
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !111, !noalias !676
  %i.cy = icmp ugt i64 %i.cx, 15
  br i1 %i.cy, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc69.i unwind label %.loopexit131.i ; 2 uses

.noexc69.i:                                       ; preds = %.noexc10.i.i.i
  store ptr %i.cz, ptr %11, align 8, !tbaa !113, !alias.scope !676
  %i.da = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !676
  store i64 %i.da, ptr %i.x, align 8, !tbaa !87, !alias.scope !676
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.db = phi ptr [ %i.cz, %.noexc69.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %i.cx, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !87
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !87
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr nonnull align 1 %i.cw, i64 %i.cx, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i.i
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !676 ; 2 uses
  store i64 %i.dd, ptr %i.y, align 8, !tbaa !114, !alias.scope !676
  %i.de = load ptr, ptr %11, align 8, !tbaa !113, !alias.scope !676
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !676
  invoke void @_ZNK11llama_vocab8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.14") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dg = load ptr, ptr %11, align 8, !tbaa !113  ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.x
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  %i.di = load i64, ptr %i.x, align 8, !tbaa !87
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  %i.dk = load ptr, ptr %i.z, align 8, !tbaa !201 ; 4 uses
  %i.dl = load ptr, ptr %10, align 8, !tbaa !199  ; 9 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64               ; 3 uses
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp ugt i64 %i.do, 80
  br i1 %i.dp, label %bb.ak, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 80 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dk, %i.dq
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ak
  store ptr %i.dq, ptr %i.z, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

.loopexit131.i:                                   ; preds = %.noexc10.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

.loopexit.split-lp.i:                             ; preds = %bb.af
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

bb.al:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %11, align 8, !tbaa !113  ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.x
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i: ; preds = %bb.al
  %i.du = load i64, ptr %i.x, align 8, !tbaa !87
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

end_hunk_0
begin_hunk_1_@llama_sampler_init_dry:bb.a
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !84
  %i.ea = zext i32 %i.dz to i64
  %i.eb = icmp eq i64 %indvars.iv.i, %i.ea
  br i1 %i.eb, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %.preheader219.i, !llvm.loop !2

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.ec = load i64, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.ed = urem i64 %indvars.iv.i, %i.ec           ; 2 uses
  %i.ee = load ptr, ptr %12, align 8, !tbaa !208
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge61.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !214 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp eq i64 %indvars.iv.i, %i.ek
  br i1 %i.el, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.aq
  %i.em = zext i32 %i.eq to i64
  %i.en = icmp eq i64 %indvars.iv.i, %i.em
  br i1 %i.en, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i.i.i = phi ptr [ %i.eo, %bb.ap ], [ %i.eh, %bb.ao ]
  %i.eo = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !214 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not18.i.i.i.i.i.i, label %.critedge61.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !84 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = urem i64 %i.er, %i.ec
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.es, %i.ed
  br i1 %.not19.i.i.i.i.i.i, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.aq
  br label %.critedge61.i, !llvm.loop !3

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i: ; preds = %bb.ap, %bb.am, %bb.ao
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.am ], [ %i.eh, %bb.ao ], [ %i.eo, %bb.ap ] ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i
  %.sroa.03.0.in.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i ], [ %.sroa.03.0.i.i.i, %bb.as ]
  %.sroa.03.0.i.i.i = load ptr, ptr %.sroa.03.0.in.i.i.i, align 8, !tbaa !214 ; 5 uses
  %.not2.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i, null
  br i1 %.not2.i.i.i, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !84
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp eq i64 %indvars.iv.i, %i.ev
  br i1 %i.ew, label %bb.ar, label %.loopexit.i, !llvm.loop !4

.loopexit.i:                                      ; preds = %bb.as, %bb.ar
  %.not126211.i = icmp eq ptr %.sroa.06.1.i.i.i.i, %.sroa.03.0.i.i.i
  br i1 %.not126211.i, label %.critedge61.i, label %.lr.ph213.i

.lr.ph213.i:                                      ; preds = %.loopexit.i
  %i.ex = ptrtoint ptr %i.dw to i64
  %i.ey = sub i64 %i.ex, %i.dn                    ; 2 uses
  %.not.not.i.i.i.i.i75.i = icmp eq ptr %i.dw, %i.dl
  br label %bb.at

bb.at:                                            ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread125.i, %.lr.ph213.i
  %.sroa.0.0212.i = phi ptr [ %.sroa.06.1.i.i.i.i, %.lr.ph213.i ], [ %i.fh, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread125.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0212.i, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0212.i, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !201
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !199 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp eq i64 %i.ey, %i.ff
  br i1 %i.fg, label %bb.au, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread125.i

bb.au:                                            ; preds = %bb.at
  br i1 %.not.not.i.i.i.i.i75.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i:      ; preds = %bb.au
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.dl, ptr %i.fc, i64 %i.ey)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread125.i

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread125.i: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i, %bb.at
  %i.fh = load ptr, ptr %.sroa.0.0212.i, align 8, !tbaa !214 ; 2 uses
  %.not126.i = icmp eq ptr %i.fh, %.sroa.03.0.i.i.i
  br i1 %.not126.i, label %.critedge61.i, label %bb.at, !llvm.loop !672

.critedge61.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader219.i, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread125.i, %.loopexit.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.an
  %i.fi = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
          to label %.noexc103.i unwind label %bb.cn ; 21 uses

.noexc103.i:                                      ; preds = %.critedge61.i
  store ptr null, ptr %i.fi, align 8, !tbaa !214
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  store i32 %i.bc, ptr %i.fj, align 8, !tbaa !216
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 4 uses
  %i.fl = ptrtoint ptr %i.dw to i64
  %i.fm = sub i64 %i.fl, %i.dn                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, %i.dl
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i, label %bb.av

.thread.i.i:                                      ; preds = %.noexc103.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fo = getelementptr inbounds i8, ptr null, i64 %i.fm ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !200
  br label %.noexc83.i

bb.av:                                            ; preds = %.noexc103.i
  %i.fq = icmp ugt i64 %i.fm, 9223372036854775804
  br i1 %i.fq, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !220

.noexc.i.i.i.i.i:                                 ; preds = %bb.av
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %.loopexit.split-lp133.i

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #37
          to label %.noexc10.i.i unwind label %.loopexit132.i ; 5 uses

.noexc10.i.i:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.fr, ptr %i.fk, align 8, !tbaa !199
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 4 uses
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !201
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fm ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !200
  %i.fv = icmp samesign ugt i64 %i.fm, 4
  br i1 %i.fv, label %bb.aw, label %bb.ax, !prof !221

bb.aw:                                            ; preds = %.noexc10.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fr, ptr align 4 %i.dl, i64 %i.fm, i1 false)
  br label %.noexc83.i

bb.ax:                                            ; preds = %.noexc10.i.i
  %i.fw = icmp eq i64 %i.fm, 4
  br i1 %i.fw, label %bb.ay, label %.noexc83.i

bb.ay:                                            ; preds = %bb.ax
  %i.fx = load i32, ptr %i.dl, align 4, !tbaa !84
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !84
  br label %.noexc83.i

.loopexit132.i:                                   ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit134.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.az

.loopexit.split-lp133.i:                          ; preds = %.noexc.i.i.i.i.i
  %lpad.loopexit.split-lp135.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp133.i, %.loopexit132.i
  %lpad.phi136.i = phi { ptr, i32 } [ %lpad.loopexit134.i, %.loopexit132.i ], [ %lpad.loopexit.split-lp135.i, %.loopexit.split-lp133.i ]
  %i.fy = extractvalue { ptr, i32 } %lpad.phi136.i, 0
  %i.fz = call ptr @__cxa_begin_catch(ptr %i.fy) #40 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 40) #39
  invoke void @__cxa_rethrow() #38
          to label %bb.bc unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body84.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #41
  unreachable

bb.bc:                                            ; preds = %bb.az
  unreachable

.noexc83.i:                                       ; preds = %bb.ay, %bb.ax, %bb.aw, %.thread.i.i
  %i.gd = phi ptr [ %i.ft, %bb.aw ], [ %i.ft, %bb.ax ], [ %i.ft, %bb.ay ], [ %i.fo, %.thread.i.i ]
  %i.ge = phi ptr [ %i.fs, %bb.aw ], [ %i.fs, %bb.ax ], [ %i.fs, %bb.ay ], [ %i.fn, %.thread.i.i ]
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !201
  %.pre38.i.i.i.i.i.i = load i32, ptr %i.fj, align 8 ; 2 uses
  br i1 %.not.not.i.i.i.i, label %.preheader218.i, label %.loopexit.i.i.i.i77.i

.preheader218.i:                                  ; preds = %.noexc83.i, %bb.bd
  %.sroa.0.0.in.i.i.i.i.i80.i = phi ptr [ %.sroa.0.0.i.i.i.i.i81.i, %bb.bd ], [ %i.e, %.noexc83.i ]
  %.sroa.0.0.i.i.i.i.i81.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i80.i, align 8, !tbaa !214 ; 5 uses
  %.not27.i.i.i.i.i82.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i81.i, null
  br i1 %.not27.i.i.i.i.i82.i, label %.loopexit.i.i.i.i77.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader218.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i81.i, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !84
  %i.gh = icmp eq i32 %.pre38.i.i.i.i.i.i, %i.gg
  br i1 %i.gh, label %.loopexit.i.i.i.i77.i, label %.preheader218.i, !llvm.loop !1

.loopexit.i.i.i.i77.i:                            ; preds = %bb.bd, %.preheader218.i, %.noexc83.i
  %.sroa.019.3.i.i.i.i.i78.i = phi ptr [ null, %.noexc83.i ], [ %.sroa.0.0.i.i.i.i.i81.i, %.preheader218.i ], [ %.sroa.0.0.i.i.i.i.i81.i, %bb.bd ] ; 5 uses
  %.sroa.4.3.i.i.i.i.i79.i = sext i32 %.pre38.i.i.i.i.i.i to i64
  %i.gi = load i64, ptr %i.g, align 8, !tbaa !222
  %i.gj = load i64, ptr %i.d, align 8, !tbaa !209
  %i.gk = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef %i.gj, i64 noundef %i.dx, i64 noundef 1)
          to label %.noexc100.i unwind label %bb.cl ; 2 uses

.noexc100.i:                                      ; preds = %.loopexit.i.i.i.i77.i
  %i.gl = extractvalue { i8, i64 } %i.gk, 0
  %i.gm = trunc i8 %i.gl to i1
  br i1 %i.gm, label %bb.be, label %.noexc100._ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge.i

.noexc100._ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge.i: ; preds = %.noexc100.i
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !209
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i.i

bb.be:                                            ; preds = %.noexc100.i
  %i.gn = extractvalue { i8, i64 } %i.gk, 1       ; 9 uses
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bf, label %bb.bg, !prof !220

bb.bf:                                            ; preds = %bb.be
  store ptr null, ptr %i.c, align 8, !tbaa !223
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.gp = icmp ugt i64 %i.gn, 1152921504606846975
  br i1 %i.gp, label %bb.bh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !220

bb.bh:                                            ; preds = %bb.bg
  %i.gq = icmp ugt i64 %i.gn, 2305843009213693951
  br i1 %i.gq, label %.noexc.i.i.i.i, label %.noexc7.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.bh
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc107.i unwind label %.loopexit.split-lp138.i

.noexc107.i:                                      ; preds = %.noexc.i.i.i.i
  unreachable

.noexc7.i.i.i.i:                                  ; preds = %bb.bh
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc108.i unwind label %.loopexit.split-lp138.i

.noexc108.i:                                      ; preds = %.noexc7.i.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.bg
  %i.gr = shl nuw nsw i64 %i.gn, 3                ; 2 uses
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #37
          to label %.noexc109.i unwind label %.loopexit137.i ; 2 uses

.noexc109.i:                                      ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gs, i8 0, i64 %i.gr, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %.noexc109.i, %bb.bf
  %.0.i.i.i = phi ptr [ %i.c, %bb.bf ], [ %i.gs, %.noexc109.i ] ; 5 uses
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !224 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !224
  %.not67.i.i = icmp eq ptr %i.gt, null
  br i1 %.not67.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i, %bb.br
  %.072.i.i = phi i8 [ %.2.i.i, %bb.br ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i ]
  %.05271.i.i = phi ptr [ %.05668.i.i, %bb.br ], [ null, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i ] ; 5 uses
  %.05370.i.i = phi i64 [ %i.gy, %bb.br ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i ] ; 2 uses
  %.05469.i.i = phi i64 [ %.155.i.i, %bb.br ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i ] ; 3 uses
  %.05668.i.i = phi ptr [ %i.gu, %bb.br ], [ %i.gt, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i ] ; 13 uses
  %i.gu = load ptr, ptr %.05668.i.i, align 8, !tbaa !214 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.05668.i.i, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !84
  %i.gx = sext i32 %i.gw to i64
  %i.gy = urem i64 %i.gx, %i.gn                   ; 6 uses
  %.not62.i.i = icmp ne ptr %.05271.i.i, null
  %i.gz = icmp eq i64 %.05370.i.i, %i.gy
  %or.cond.i.i = and i1 %.not62.i.i, %i.gz
  br i1 %or.cond.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i.i
  %i.ha = load ptr, ptr %.05271.i.i, align 8, !tbaa !214
  store ptr %i.ha, ptr %.05668.i.i, align 8, !tbaa !214
  store ptr %.05668.i.i, ptr %.05271.i.i, align 8, !tbaa !214
  br label %bb.br

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.hb = trunc nuw i8 %.072.i.i to i1
  br i1 %i.hb, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hc = load ptr, ptr %.05271.i.i, align 8, !tbaa !214 ; 2 uses
  %.not63.i.i = icmp eq ptr %i.hc, null
  br i1 %.not63.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !84
  %i.hf = sext i32 %i.he to i64
  %i.hg = urem i64 %i.hf, %i.gn                   ; 2 uses
  %.not64.i.i = icmp eq i64 %i.hg, %.05370.i.i
  br i1 %.not64.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.hg
  store ptr %.05271.i.i, ptr %i.hh, align 8, !tbaa !219
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.gy ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !219 ; 2 uses
  %.not65.i.i = icmp eq ptr %i.hj, null
  br i1 %.not65.i.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.hk = load ptr, ptr %i.e, align 8, !tbaa !224
  store ptr %i.hk, ptr %.05668.i.i, align 8, !tbaa !214
  store ptr %.05668.i.i, ptr %i.e, align 8, !tbaa !224
  store ptr %i.e, ptr %i.hi, align 8, !tbaa !219
  %i.hl = load ptr, ptr %.05668.i.i, align 8, !tbaa !214
  %.not66.i.i = icmp eq ptr %i.hl, null
  br i1 %.not66.i.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %.05469.i.i
  store ptr %.05668.i.i, ptr %i.hm, align 8, !tbaa !219
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.hn = load ptr, ptr %i.hj, align 8, !tbaa !214
  store ptr %i.hn, ptr %.05668.i.i, align 8, !tbaa !214
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !219
  store ptr %.05668.i.i, ptr %i.ho, align 8, !tbaa !214
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bi
  %.155.i.i = phi i64 [ %.05469.i.i, %bb.bi ], [ %.05469.i.i, %bb.bq ], [ %i.gy, %bb.bp ], [ %i.gy, %bb.bo ]
  %.2.i.i = phi i8 [ 1, %bb.bi ], [ 0, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bo ] ; 2 uses
  %.not.i106.i = icmp eq ptr %i.gu, null
  br i1 %.not.i106.i, label %._crit_edge.i.i68, label %.lr.ph.i.i, !llvm.loop !5

._crit_edge.i.i68:                                ; preds = %bb.br
  %i.hp = trunc nuw i8 %.2.i.i to i1
  br i1 %i.hp, label %bb.bs, label %._crit_edge.thread.i.i

bb.bs:                                            ; preds = %._crit_edge.i.i68
  %i.hq = load ptr, ptr %.05668.i.i, align 8, !tbaa !214 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.hq, null
  br i1 %.not60.i.i, label %._crit_edge.thread.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !84
  %i.ht = sext i32 %i.hs to i64
  %i.hu = urem i64 %i.ht, %i.gn                   ; 2 uses
  %.not61.i.i = icmp eq i64 %i.hu, %i.gy
  br i1 %.not61.i.i, label %._crit_edge.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.hu
  store ptr %.05668.i.i, ptr %i.hv, align 8, !tbaa !219
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bu, %bb.bt, %bb.bs, %._crit_edge.i.i68, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i
  %i.hw = load ptr, ptr %12, align 8, !tbaa !208  ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.c
  br i1 %i.hx, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit.i, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.thread.i.i
  %i.hy = load i64, ptr %i.d, align 8, !tbaa !209
  %i.hz = shl i64 %i.hy, 3
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #39
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit.i: ; preds = %bb.bv, %._crit_edge.thread.i.i
  store i64 %i.gn, ptr %i.d, align 8, !tbaa !209
  store ptr %.0.i.i.i, ptr %12, align 8, !tbaa !208
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i.i

.loopexit137.i:                                   ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  %lpad.loopexit139.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bw

.loopexit.split-lp138.i:                          ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp140.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp138.i, %.loopexit137.i
  %lpad.phi141.i = phi { ptr, i32 } [ %lpad.loopexit139.i, %.loopexit137.i ], [ %lpad.loopexit.split-lp140.i, %.loopexit.split-lp138.i ]
  %i.ia = extractvalue { ptr, i32 } %lpad.phi141.i, 0
  %i.ib = call ptr @__cxa_begin_catch(ptr %i.ia) #40 ; 0 uses
  store i64 %i.gi, ptr %i.g, align 8, !tbaa !222
  invoke void @__cxa_rethrow() #38
          to label %bb.bz unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body101.i unwind label %bb.by
end_hunk_1
begin_hunk_2_@_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev:bb.a

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 40) #39
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !209
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %0, align 8, !tbaa !208    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !209
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #39
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_Z30llama_sampler_init_dry_testingffiiRKSt6vectorIS_IiSaIiEESaIS1_EE(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Hashtable<int, std::pair<const int, std::vector<int>>, std::allocator<std::pair<const int, std::vector<int>>>, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, false>>::_Scoped_node", align 8 ; 6 uses
  %6 = alloca %struct.llama_vocab, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @_ZN11llama_vocabC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.a = invoke ptr @llama_sampler_init_dry(ptr noundef nonnull %6, float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, i64 noundef 0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i, label %_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.g, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.g = load ptr, ptr %.06.i.i.i, align 8, !tbaa !214 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !200
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #39
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 40) #39
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.b
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !209
  %i.r = shl i64 %i.q, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %4, align 8, !tbaa !678    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !678  ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %.invoke, label %.preheader55

.preheader55:                                     ; preds = %_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5clearEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.invoke
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.p
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !218
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.invoke, label %bb.r

bb.g:                                             ; preds = %.preheader55, %bb.p
  %.sroa.047.058 = phi ptr [ %i.s, %.preheader55 ], [ %i.be, %bb.p ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.047.058, align 8, !tbaa !234 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.047.058, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !234 ; 3 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.32)
          to label %bb.p unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !84 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %i.am = icmp ugt i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.k, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #38
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.j
  %.not.i.i.i30 = icmp eq ptr %i.ae, %i.ai
  br i1 %.not.i.i.i30, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr null, i64 %i.al
  br label %_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEET_S8_RKS0_.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #37
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al ; 3 uses
  %i.aq = icmp samesign ugt i64 %i.al, 4
  br i1 %i.aq, label %bb.l, label %bb.m, !prof !221

bb.l:                                             ; preds = %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr nonnull align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEET_S8_RKS0_.exit

bb.m:                                             ; preds = %.noexc5.i
  %i.ar = icmp eq i64 %i.al, 4
  br i1 %i.ar, label %bb.n, label %_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEET_S8_RKS0_.exit

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !84
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEET_S8_RKS0_.exit

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit:  ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEET_S8_RKS0_.exit: ; preds = %bb.n, %bb.m, %bb.l, %.thread.i.i
  %.sroa.039.0 = phi ptr [ null, %.thread.i.i ], [ %i.ao, %bb.l ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 4 uses
  %.sroa.12.0 = phi ptr [ %i.an, %.thread.i.i ], [ %i.ap, %bb.l ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.d, ptr %5, align 8, !tbaa !213
  %i.at = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
          to label %.noexc unwind label %.body31  ; 7 uses

.noexc:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEET_S8_RKS0_.exit
  store ptr null, ptr %i.at, align 8, !tbaa !214
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.ah, ptr %i.au, align 8, !tbaa !216
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %.sroa.039.0, ptr %i.av, align 8, !tbaa !199
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %.sroa.12.0, ptr %i.aw, align 8, !tbaa !201
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %.sroa.12.0, ptr %i.ax, align 8, !tbaa !200
  store ptr %i.at, ptr %i.w, align 8, !tbaa !217
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !218
  %.not.not.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader, label %.loopexit.i.i.i.i

.preheader:                                       ; preds = %.noexc, %bb.o
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.o ], [ %i.e, %.noexc ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !214 ; 5 uses
  %.not27.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !84
  %i.bb = icmp eq i32 %i.ah, %i.ba
  br i1 %i.bb, label %.loopexit.i.i.i.i, label %.preheader, !llvm.loop !1

.loopexit.i.i.i.i:                                ; preds = %bb.o, %.preheader, %.noexc
  %.sroa.019.3.i.i.i.i.i = phi ptr [ null, %.noexc ], [ %.sroa.0.0.i.i.i.i.i, %.preheader ], [ %.sroa.0.0.i.i.i.i.i, %bb.o ]
  %.sroa.4.3.i.i.i.i.i = sext i32 %i.ah to i64
  %i.bc = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef %.sroa.019.3.i.i.i.i.i, i64 noundef %.sroa.4.3.i.i.i.i.i, ptr noundef nonnull %i.at)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %.body31.thread ; 0 uses

.body31.thread:                                   ; preds = %.loopexit.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %.body

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.047.058, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.u
  br i1 %.not, label %bb.f, label %bb.g

.body31:                                          ; preds = %_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEET_S8_RKS0_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.sroa.039.0, null
  br i1 %.not.i.i.i35, label %.body, label %bb.q

bb.q:                                             ; preds = %.body31
  %i.bg = ptrtoint ptr %.sroa.12.0 to i64
  %i.bh = ptrtoint ptr %.sroa.039.0 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.0, i64 noundef %i.bi) #39
  br label %.body

.invoke:                                          ; preds = %_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5clearEv.exit, %bb.f
  %i.bj = phi ptr [ @.str.33, %bb.f ], [ @.str.31, %_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5clearEv.exit ]
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull %i.bj)
          to label %bb.r unwind label %bb.e

bb.r:                                             ; preds = %.invoke, %bb.f
  call void @_ZN11llama_vocabD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret ptr %i.a

.body:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit.split-lp, %bb.i, %bb.q, %.body31, %.body31.thread, %bb.e, %bb.d
  %.pn27.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.z, %bb.e ], [ %i.ag, %bb.i ], [ %i.bf, %.body31 ], [ %i.bf, %bb.q ], [ %i.bd, %.body31.thread ], [ %lpad.loopexit, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.loopexit.split-lp ]
  call void @_ZN11llama_vocabD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %.pn27.pn
}

declare void @_ZN11llama_vocabC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11llama_vocabD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @llama_sampler_init_adaptive_p(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL12get_rng_seedj(i32 noundef %2) ; 2 uses
  %i.b = fcmp olt float %1, 0.000000e+00
  %i.c = select i1 %i.b, float 0.000000e+00, float %1 ; 2 uses
  %i.d = fcmp ogt float %i.c, 9.900000e-01
  %.sroa.speculated = select i1 %i.d, float 9.900000e-01, float %i.c ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(5056) ptr @_Znwm(i64 noundef 5056) #37 ; 11 uses
  store float %0, ptr %i.e, align 16, !tbaa !241
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %.sroa.speculated, ptr %i.f, align 4, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %2, ptr %i.g, align 8, !tbaa !243
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.a, ptr %i.h, align 4, !tbaa !244
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.j = zext i32 %i.a to i64                     ; 2 uses
  store i64 %i.j, ptr %i.i, align 16, !tbaa !111
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.j, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.x, %bb.c ] ; 4 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.l = lshr i64 %store_forwarded, 30
  %i.m = xor i64 %i.l, %store_forwarded
  %i.n = mul nuw nsw i64 %i.m, 1812433253
  %i.o = add nuw i64 %i.n, %.011.i.i              ; 2 uses
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !111
  %i.q = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, 624
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr [8 x i8], ptr %i.i, i64 %i.q
  %i.s = lshr i64 %i.p, 30
  %i.t = xor i64 %i.s, %i.o
  %i.u = mul i64 %i.t, 1812433253
  %i.v = add i64 %i.u, %i.q
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !111
  %i.x = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 5008
  store i64 624, ptr %i.y, align 16, !tbaa !128
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 5016
  %i.aa = fsub float 1.000000e+00, %.sroa.speculated
  %i.ab = insertelement <2 x float> <float poison, float 1.000000e+00>, float %0, i64 0
  %i.ac = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x float> %i.ab, %i.ad
  store <2 x float> %i.ae, ptr %i.z, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 5024
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 5048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ag, align 8, !tbaa !245
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 5052
  store i32 -1, ptr %i.ah, align 4, !tbaa !246
  %i.ai = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 3 uses
  store ptr @_ZL26llama_sampler_adaptive_p_i, ptr %i.ai, align 16, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !54
  ret ptr %i.ai
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @llama_sampler_init_logit_bias(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !0 ; 2 uses
  store ptr @.str.34, ptr %i.b, align 8, !tbaa !135
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #37 ; 9 uses
  invoke void @_ZN21llama_sampler_backendC2EPKc(ptr noundef nonnull align 8 dereferenceable(66) %i.c, ptr noundef nonnull @.str.35)
          to label %_ZNSt6vectorI16llama_logit_biasSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i unwind label %bb.g

_ZNSt6vectorI16llama_logit_biasSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %0, ptr %i.d, align 4, !tbaa !253
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.f = zext nneg i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %i.f, 3                 ; 3 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #37
          to label %.noexc4.i unwind label %bb.h  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt6vectorI16llama_logit_biasSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !254
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.h, ptr %i.i, align 8, !tbaa !255
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !225

bb.d:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %2, i64 %.idx, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.noexc4.i
  %i.j = load i64, ptr %2, align 4
  store i64 %i.j, ptr %i.g, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.h, ptr %i.k, align 8, !tbaa !256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorI16llama_logit_biasSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN21llama_sampler_backendD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %i.c) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.ph = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 136) #39
  resume { ptr, i32 } %.pn.ph

bb.j:                                             ; preds = %bb.f, %bb.b
  %_ZL26llama_sampler_logit_bias_i.sink = phi ptr [ @_ZL26llama_sampler_logit_bias_i, %bb.f ], [ @_ZL21llama_sampler_empty_i, %bb.b ]
  %.sink = phi ptr [ %i.c, %bb.f ], [ %i.b, %bb.b ]
  %i.o = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 3 uses
  store ptr %_ZL26llama_sampler_logit_bias_i.sink, ptr %i.o, align 16, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sink, ptr %i.p, align 8, !tbaa !54
  ret ptr %i.o
}

end_hunk_2
begin_hunk_3_@_ZL33llama_sampler_backend_probe_graphP13llama_samplerljb:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !281
  invoke void %i.ab(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef nonnull %6)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %6, align 8, !tbaa !285   ; 2 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !287 ; 2 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !288 ; 2 uses
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !286 ; 2 uses
  %.not44 = icmp eq ptr %i.ac, null
  br i1 %.not44, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @ggml_build_forward_expand(ptr noundef %i.n, ptr noundef nonnull %i.ac)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.s:                                             ; preds = %bb.q, %bb.p
  %.not44.1 = icmp eq ptr %i.ad, null
  br i1 %.not44.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @ggml_build_forward_expand(ptr noundef %i.n, ptr noundef nonnull %i.ad)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not44.2 = icmp eq ptr %i.ae, null
  br i1 %.not44.2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @ggml_build_forward_expand(ptr noundef %i.n, ptr noundef nonnull %i.ae)
          to label %bb.w unwind label %bb.r

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not44.3 = icmp eq ptr %i.af, null
  br i1 %.not44.3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @ggml_build_forward_expand(ptr noundef %i.n, ptr noundef nonnull %i.af)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ah = load ptr, ptr %1, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !282 ; 2 uses
  %.not43 = icmp eq ptr %i.aj, null
  br i1 %.not43, label %_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void %i.aj(ptr noundef nonnull %1)
          to label %_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit unwind label %bb.n

_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit: ; preds = %bb.y, %bb.z
  %i.ak = ptrtoint ptr %i.e to i64
  store i64 %i.ak, ptr %0, align 8, !tbaa !271
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.al, align 8, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.aa:                                            ; preds = %bb.r, %bb.n
  %.pn45 = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.y, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn52, %bb.f ], [ %.pn45, %bb.aa ], [ %i.x, %bb.m ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn45.pn.pn

bb.ac:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN27llama_sampler_backend_probeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ggml_free(ptr noundef nonnull %i.a)
          to label %_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #41
  unreachable

_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare i64 @ggml_tensor_overhead() local_unnamed_addr #7

declare i64 @ggml_graph_overhead_custom(i64 noundef, i1 noundef zeroext) local_unnamed_addr #7

declare ptr @ggml_init(ptr noundef byval(%struct.ggml_init_params) align 8) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_Z6formatB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #7

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare ptr @ggml_new_graph_custom(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #7

declare ptr @ggml_new_tensor_1d(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare void @ggml_build_forward_expand(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN20ggml_context_deleterclEP12ggml_context.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ggml_free(ptr noundef nonnull %i.a)
          to label %_ZN20ggml_context_deleterclEP12ggml_context.exit unwind label %bb.c

_ZN20ggml_context_deleterclEP12ggml_context.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #41
  unreachable
}

declare void @ggml_free(ptr noundef) local_unnamed_addr #7

declare ptr @ggml_get_first_tensor(ptr noundef) local_unnamed_addr #7

declare ptr @ggml_get_next_tensor(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ggml_graph_n_nodes(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI16llama_token_dataSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = load ptr, ptr %1, align 8, !tbaa !83     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = load ptr, ptr %0, align 8, !tbaa !83     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 12
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE11_M_allocateEm.exit.i, !prof !220

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 3 uses
  %i.q = icmp sgt i64 %i.f, 12
  br i1 %i.q, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split, label %bb.e, !prof !107

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE11_M_allocateEm.exit.i
  %i.r = icmp eq i64 %i.f, 12
  br i1 %i.r, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split: ; preds = %bb.e, %_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit: ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split, %bb.e
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #39
  br label %_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !99
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !82
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp sgt i64 %i.f, 12
  br i1 %i.x, label %bb.i, label %bb.j, !prof !107

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq i64 %i.f, 12
  br i1 %i.y, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !289
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.g
  %i.z = icmp sgt i64 %i.w, 12
  br i1 %i.z, label %bb.m, label %bb.n, !prof !107

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

bb.n:                                             ; preds = %bb.l
  %i.aa = icmp eq i64 %i.w, 12
  br i1 %i.aa, label %bb.o, label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !289
  br label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.ab = load ptr, ptr %1, align 8, !tbaa !83
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !82  ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !83
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp sgt i64 %i.al, 12
  br i1 %i.am, label %bb.p, label %bb.q, !prof !107

bb.p:                                             ; preds = %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ac, ptr align 4 %i.ah, i64 %i.al, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.q:                                             ; preds = %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit
  %i.an = icmp eq i64 %i.al, 12
  br i1 %i.an, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !289
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseI16llama_token_dataSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK16llama_token_dataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL25llama_sampler_greedy_namePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN21llama_sampler_backend8get_nameEv(ptr noundef nonnull align 8 dereferenceable(66) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL26llama_sampler_greedy_applyP13llama_samplerP22llama_token_data_array(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) initializes((16, 24)) %1) #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !92     ; 6 uses
  %i.f = add i64 %i.c, -1                         ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i64 %i.c, 2
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, -2
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %.09.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.09.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !290
  %i.k = getelementptr inbounds [12 x i8], ptr %i.e, i64 %.epil.init
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !290
  %i.n = fcmp ogt float %i.j, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.epil.preheader
  store i64 %.09.epil.init, ptr %i.a, align 8, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  ret void

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %i.o = phi i64 [ 0, %.lr.ph.new ], [ %i.af, %bb.g ] ; 2 uses
  %.09 = phi i64 [ 1, %.lr.ph.new ], [ %i.ag, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.09
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !290
  %i.s = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !290
  %i.v = fcmp ogt float %i.r, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %.09, ptr %i.a, align 8, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.o, %bb.c ], [ %.09, %bb.d ] ; 2 uses
  %i.x = add nuw i64 %.09, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !290
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !290
  %i.ae = fcmp ogt float %i.aa, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.x, ptr %i.a, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi i64 [ %i.w, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.ag = add nuw i64 %.09, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
end_hunk_3
