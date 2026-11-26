Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/bailingmoe3?download=true
inline.NumInlined: 343
inline.NumDeleted: 218
begin_hunk_0_@_ZN23llama_model_bailingmoe317load_arch_tensorsER18llama_model_loader:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !103
  store ptr %i.b, ptr %5, align 8, !tbaa !396
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.cq, align 8, !tbaa !397
  %i.cr = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 36176
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ct = load i32, ptr %i.cj, align 8, !tbaa !393, !noalias !399
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.ct, i32 noundef 6, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %i.bt, ptr %i.c, align 8, !tbaa !103
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cc, ptr %i.cu, align 8, !tbaa !103
  store ptr %i.c, ptr %7, align 8, !tbaa !396
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.cv, align 8, !tbaa !397
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 36864 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !402
  %i.cy = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.cx) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 36200 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.da = icmp eq ptr %i.cy, null
  br i1 %i.da, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.db = load i32, ptr %i.cj, align 8, !tbaa !393, !noalias !403
  call void @_ZN11LLM_TN_IMPLC1E8llm_arch10llm_tensorPKcii(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %i.db, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 %i.bt, ptr %i.d, align 8, !tbaa !103
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.cc, ptr %i.dc, align 8, !tbaa !103
  store ptr %i.d, ptr %9, align 8, !tbaa !396
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 2, ptr %i.dd, align 8, !tbaa !397
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 36860
  %i.df = load i32, ptr %i.de, align 4, !tbaa !404
  %i.dg = call noundef ptr @_ZN16llama_model_base13create_tensorERK11LLM_TN_IMPLRKSt16initializer_listIlEi(ptr noundef nonnull align 8 dereferenceable(36884) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.df)
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16760
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !405
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, %i.bp            ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16736
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !406
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 10388
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !407
  %i.dq = zext i32 %i.dp to i64                   ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 10384
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !408 ; 3 uses
  %i.dt = zext i32 %i.ds to i64                   ; 6 uses
  %i.du = call noundef i32 @_ZNK13llama_hparams5n_rotEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.bj, i32 noundef 0)
  %i.dv = zext i32 %i.du to i64                   ; 4 uses
  %i.dw = call noundef i32 @_ZNK13llama_hparams17n_embd_head_k_mlaEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.bj)
  %i.dx = zext i32 %i.dw to i64                   ; 4 uses
  %i.dy = call noundef i32 @_ZNK13llama_hparams17n_embd_head_v_mlaEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.bj)
  %i.dz = zext i32 %i.dy to i64                   ; 4 uses
  %i.ea = load i32, ptr %i.bn, align 4, !tbaa !409
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.eb = call noundef ptr @_ZNK18llama_model_loader10get_weightEPKc(ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef nonnull @.str.5)
  %i.ec = icmp eq ptr %i.eb, null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ed = phi i1 [ false, %bb.c ], [ %i.ec, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.ee = call i32 @llvm.abs.i32(i32 %i.bk, i1 false) ; 5 uses
  %i.ef = icmp ult i32 %i.ee, 10
  br i1 %i.ef, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.k
  %.030.i.i = phi i32 [ %i.en, %bb.k ], [ 1, %bb.e ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.em, %bb.k ], [ %i.ee, %bb.e ] ; 5 uses
  %i.eg = icmp ult i32 %.02329.i.i, 100
  br i1 %i.eg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.eh = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ei = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.ei, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ej = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ek = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ek, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.el = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.em = udiv i32 %.02329.i.i, 10000
  %i.en = add i32 %.030.i.i, 4                    ; 2 uses
  %i.eo = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.eo, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !270

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e
  %.022.i.i = phi i32 [ %i.el, %bb.j ], [ %i.eh, %bb.f ], [ %i.ej, %bb.h ], [ 1, %bb.e ], [ %i.en, %bb.k ] ; 2 uses
  %.lobit.i = lshr i32 %i.bk, 31                  ; 2 uses
  %i.ep = add i32 %.022.i.i, %.lobit.i
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.er, ptr %12, align 8, !tbaa !411, !alias.scope !410
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.eq, i8 noundef signext 45)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.es = zext nneg i32 %.lobit.i to i64
  %i.et = load ptr, ptr %12, align 8, !tbaa !412, !alias.scope !410
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es ; 4 uses
  %i.ev = icmp ugt i32 %i.ee, 99
  br i1 %i.ev, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.ew = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ez, %.lr.ph.i11.i ], [ %i.ee, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.fk, %.lr.ph.i11.i ], [ %i.ew, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ex = urem i32 %.020.i.i, 100
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.fa = zext nneg i32 %i.ey to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !413, !noalias !410
  %i.fe = zext i32 %.01819.i.i to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !413
  %i.fg = load i8, ptr %i.fb, align 2, !tbaa !413, !noalias !410
  %i.fh = add i32 %.01819.i.i, -1
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !413
  %i.fk = add i32 %.01819.i.i, -2
  %i.fl = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.fl, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !271

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %bb.l
  %.0.lcssa.i.i = phi i32 [ %i.ee, %bb.l ], [ %i.ez, %.lr.ph.i11.i ] ; 3 uses
  %i.fm = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.fm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.fn = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !413, !noalias !410
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !413
  %i.ft = load i8, ptr %i.fp, align 2, !tbaa !413, !noalias !410
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.fu = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.fv = or disjoint i8 %i.fu, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #19
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.m, %bb.n
  %storemerge.i.i = phi i8 [ %i.fv, %bb.n ], [ %i.ft, %bb.m ]
  store i8 %storemerge.i.i, ptr %i.eu, align 1, !tbaa !413
  %i.fy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 4)
          to label %.noexc unwind label %bb.ac    ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.fz, ptr %11, align 8, !tbaa !411, !alias.scope !414
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !412 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 5 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.p:                                             ; preds = %.noexc
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !415 ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nuw nsw i64 %i.ge, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, ptr noundef nonnull align 8 dereferenceable(1) %i.gb, i64 %i.gg, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ga, ptr %11, align 8, !tbaa !412, !alias.scope !414
  %i.gh = load i64, ptr %i.gb, align 8, !tbaa !413
  store i64 %i.gh, ptr %i.fz, align 8, !tbaa !413, !alias.scope !414
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !415
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %i.gi = phi i64 [ %i.ge, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !415, !alias.scope !414
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !412
  store i64 0, ptr %i.gj, align 8, !tbaa !415
  store i8 0, ptr %i.gb, align 8, !tbaa !413
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !415, !noalias !416
  %i.gm = add i64 %i.gl, -4611686018427387883
  %i.gn = icmp ult i64 %i.gm, 21
  br i1 %i.gn, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #17
          to label %.noexc512 unwind label %bb.ad

.noexc512:                                        ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.q
  %i.go = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.7, i64 noundef 21)
          to label %.noexc513 unwind label %bb.ad ; 6 uses

.noexc513:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.gp, ptr %10, align 8, !tbaa !411, !alias.scope !416
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !412 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 5 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

bb.s:                                             ; preds = %.noexc513
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !415 ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 16
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nuw nsw i64 %i.gu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gp, ptr noundef nonnull align 8 dereferenceable(1) %i.gr, i64 %i.gw, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %.noexc513
  store ptr %i.gq, ptr %10, align 8, !tbaa !412, !alias.scope !416
  %i.gx = load i64, ptr %i.gr, align 8, !tbaa !413
  store i64 %i.gx, ptr %i.gp, align 8, !tbaa !413, !alias.scope !416
  %.phi.trans.insert.i510 = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.pre.i511 = load i64, ptr %.phi.trans.insert.i510, align 8, !tbaa !415
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509, %bb.s
  %i.gy = phi i64 [ %i.gu, %bb.s ], [ %.pre.i511, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.gy, ptr %i.ha, align 8, !tbaa !415, !alias.scope !416
  store ptr %i.gr, ptr %i.go, align 8, !tbaa !412
  store i64 0, ptr %i.gz, align 8, !tbaa !415
  store i8 0, ptr %i.gr, align 8, !tbaa !413
  %i.hb = load ptr, ptr %11, align 8, !tbaa !412  ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.fz
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514: ; preds = %bb.t
  %i.hd = load i64, ptr %i.fz, align 8, !tbaa !413
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514
  %i.hf = load ptr, ptr %12, align 8, !tbaa !412  ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.er
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hh = load i64, ptr %i.er, align 8, !tbaa !413
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.hj = load i32, ptr %i.bn, align 4, !tbaa !409
  %.not387 = icmp eq i32 %i.hj, 0
  br i1 %.not387, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517
  %i.hk = load ptr, ptr %10, align 8, !tbaa !412
  %i.hl = invoke noundef ptr @_ZNK18llama_model_loader10get_weightEPKc(ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef %i.hk)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.hm = icmp eq ptr %i.hl, null
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517
  %i.hn = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517 ], [ %i.hm, %bb.v ]
  br i1 %i.ed, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ho = load i32, ptr %i.cw, align 8, !tbaa !402
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.hp = phi i32 [ %i.ho, %bb.x ], [ 0, %bb.w ]  ; 34 uses
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hq = load i32, ptr %i.cw, align 8, !tbaa !402
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.hr = phi i32 [ %i.hq, %bb.z ], [ 0, %bb.y ]  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ht = load i8, ptr %i.hs, align 4, !tbaa !472, !range !98, !noundef !99
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 36868
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !473
  %i.hx = or i32 %i.hw, %i.hr
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.r
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %11, align 8, !tbaa !412  ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.fz
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518: ; preds = %bb.ad
  %i.ic = load i64, ptr %i.fz, align 8, !tbaa !413
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.ac ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518 ], [ %i.hz, %bb.ad ]
  %i.ie = load ptr, ptr %12, align 8, !tbaa !412  ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.er
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520
  %i.ig = load i64, ptr %i.er, align 8, !tbaa !413
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %.0318 = phi i32 [ %i.hr, %bb.aa ], [ %i.hx, %bb.ab ] ; 24 uses
  %i.ii = icmp sgt i32 %i.bk, 0
  br i1 %i.ii, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.ae
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 36512
  %i.ik = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.not440 = icmp eq i32 %i.ds, 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ip = mul nuw nsw i64 %i.dx, %i.bp            ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.iu = add nuw nsw i64 %i.dv, %i.dq
  %i.iv = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ix = sub nsw i64 %i.dx, %i.dv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.jg = mul nuw nsw i64 %i.dz, %i.bp
  %i.jh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 10380
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %68, i64 8
end_hunk_0
begin_hunk_1_@_ZL25bailingmoe3_causal_conv1dP11ggml_cgraphP12ggml_contextP11ggml_tensorS4_lS4_S4_S4_llllllljj:bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %11)
  %.not = icmp eq i64 %11, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = zext i32 %15 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %7, i64 noundef %8, i64 noundef %i.a)
  %i.y = tail call ptr @ggml_ssm_conv(ptr noundef %1, ptr noundef %i.p, ptr noundef %i.x)
  %i.z = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.y, i64 noundef %i.a, i64 noundef %13)
  %i.aa = tail call ptr @ggml_silu(ptr noundef %1, ptr noundef %i.z)
  %i.ab = tail call ptr @ggml_reshape_4d(ptr noundef %1, ptr noundef %i.aa, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12)
  ret ptr %i.ab

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.084 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.b ] ; 3 uses
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !103
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !103
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !103
  %i.af = add nuw nsw i64 %8, %.084
  %reass.sub = sub i64 %i.ae, %i.af
  %i.ag = add i64 %reass.sub, 1
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !103
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = tail call ptr @ggml_view_3d(ptr noundef %1, ptr noundef %i.p, i64 noundef %i.b, i64 noundef %i.a, i64 noundef %12, i64 noundef %i.ac, i64 noundef %i.ad, i64 noundef %i.ai)
  %i.ak = tail call i64 @ggml_element_size(ptr noundef %2)
  %i.al = mul i64 %i.ak, %i.b
  %i.am = tail call i64 @ggml_element_size(ptr noundef %2)
  %i.an = mul i64 %i.am, %i.d
  %i.ao = mul nuw nsw i64 %.084, %i.w
  %i.ap = add nuw nsw i64 %i.ao, %14
  %i.aq = mul nsw i64 %i.ap, %i.d
  %i.ar = add nsw i64 %i.aq, %i.i
  %i.as = tail call i64 @ggml_element_size(ptr noundef %2)
  %i.at = mul i64 %i.as, %i.ar
  %i.au = tail call ptr @ggml_view_3d(ptr noundef %1, ptr noundef %2, i64 noundef %i.b, i64 noundef %i.a, i64 noundef %12, i64 noundef %i.al, i64 noundef %i.an, i64 noundef %i.at)
  %i.av = tail call ptr @ggml_cpy(ptr noundef %1, ptr noundef %i.aj, ptr noundef %i.au)
  tail call void @ggml_build_forward_expand(ptr noundef %0, ptr noundef %i.av)
  %i.aw = add nuw nsw i64 %.084, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !569
}

declare ptr @ggml_mul_mat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_reshape_3d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ggml_scale(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare ptr @ggml_sigmoid(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ggml_reshape_4d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ggml_l2_norm(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK30llama_memory_recurrent_context7get_s_lEi(ptr noundef nonnull align 8 dereferenceable(57), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK13llama_hparams8n_embd_sEv(ptr noundef nonnull align 8 dereferenceable(36056)) local_unnamed_addr #1

declare ptr @ggml_cont(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN24llm_build_delta_net_base20build_recurrent_attnEP18llm_graph_input_rsP11ggml_tensorS3_S3_S3_S3_S3_S3_i(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ggml_cont_2d(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ggml_view_3d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ggml_row_size(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ggml_view_2d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ggml_rope_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @ggml_permute(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ggml_concat(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context10build_attnEP22llm_graph_input_attn_kP11ggml_tensorS3_S3_S3_S3_S3_S3_S3_S3_fi(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context9build_ffnEP11ggml_tensorS1_S1_S1_S1_S1_S1_S1_S1_S1_S1_15llm_ffn_op_type17llm_ffn_gate_typei(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context13build_moe_ffnEP11ggml_tensorS1_S1_S1_S1_S1_ll15llm_ffn_op_typebf29llama_expert_gating_func_typeiS1_S1_S1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, float noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK17llm_graph_context10build_cvecEP11ggml_tensori(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ggml_build_forward_expand(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN23llama_model_bailingmoe39graph_mtpC2ERK11llama_modelRK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.217", align 8 ; 4 uses
  tail call void @_ZN17llm_graph_contextC2ERK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(36496) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN23llama_model_bailingmoe39graph_mtpE, i64 16), ptr %0, align 8, !tbaa !188
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196, !nonnull !99, !align !197 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !575
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %.invoke

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef i32 @_ZNK13llama_hparams7n_layerEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.b)
          to label %bb.c unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !208, !nonnull !99, !align !197
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !576  ; 3 uses
  %i.k = add i32 %i.j, %i.f                       ; 14 uses
  %i.l = icmp sgt i32 %i.j, -1
  br i1 %i.l, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !196, !nonnull !99, !align !197 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !575
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36512
  %i.r = sext i32 %i.k to i64
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw [2552 x i8], ptr %i.s, i64 %i.r ; 24 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2360 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !151
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.d, %bb.a
  %i.w = phi i32 [ 419, %bb.c ], [ 422, %bb.e ], [ 423, %bb.f ], [ 424, %bb.g ], [ 414, %bb.a ], [ 419, %bb.d ], [ 425, %bb.h ]
  %i.x = phi ptr [ @.str.25, %bb.c ], [ @.str.26, %bb.e ], [ @.str.27, %bb.f ], [ @.str.28, %bb.g ], [ @.str.24, %bb.a ], [ @.str.25, %bb.d ], [ @.str.29, %bb.h ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef %i.w, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.x) #17
          to label %.cont unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2392 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152
  %.not179 = icmp eq ptr %i.z, null
  br i1 %.not179, label %.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2400 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !153
  %.not180 = icmp eq ptr %i.ab, null
  br i1 %.not180, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 2432 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154
  %.not181 = icmp eq ptr %i.ad, null
  br i1 %.not181, label %.invoke, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke noundef i32 @_ZNK13llama_hparams6n_headEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.m, i32 noundef 0)
          to label %bb.j unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.j:                                             ; preds = %bb.i
  %i.af = zext i32 %i.ae to i64                   ; 7 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !196, !nonnull !99, !align !197
  %i.ah = invoke noundef i32 @_ZNK13llama_hparams17n_embd_head_k_mlaEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.ag)
          to label %bb.k unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ai = zext i32 %i.ah to i64                   ; 5 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !196, !nonnull !99, !align !197
  %i.ak = invoke noundef i32 @_ZNK13llama_hparams17n_embd_head_v_mlaEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.aj)
          to label %bb.l unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.l:                                             ; preds = %bb.k
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !196, !nonnull !99, !align !197
  %i.an = invoke noundef i32 @_ZNK13llama_hparams5n_rotEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.am, i32 noundef 0)
          to label %bb.m unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.m:                                             ; preds = %bb.l
  %i.ao = zext i32 %i.an to i64                   ; 4 uses
  %i.ap = sub nsw i64 %i.ai, %i.ao                ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !196, !nonnull !99, !align !197 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10340
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !198
  %i.at = zext i32 %i.as to i64                   ; 4 uses
  %i.au = uitofp i32 %i.ah to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.au)
  %i.av = fdiv float 1.000000e+00, %sqrt
  %i.aw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232 ; 8 uses

.noexc:                                           ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !97, !noalias !577
  %i.az = tail call ptr @getenv(ptr noundef nonnull @.str.35) #18, !noalias !577 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.ba = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.az, ptr noundef null, i32 noundef 10) #18, !noalias !577, !inline_history !572
  %i.bb = trunc i64 %i.ba to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc
  %i.bc = phi i32 [ %i.bb, %bb.n ], [ 0, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = zext i32 %i.ay to i64
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !578, !noalias !577
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV20llm_graph_input_embd, i64 16), ptr %i.aw, align 8, !tbaa !188, !noalias !577
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false), !noalias !577
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !580, !noalias !577
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 29 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !206
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !207
  %i.bl = invoke ptr @ggml_new_tensor_1d(ptr noundef %i.bi, i32 noundef 26, i64 noundef %i.bk)
          to label %bb.p unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216 ; 2 uses

bb.p:                                             ; preds = %bb.o
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !581
  invoke void @ggml_set_input(ptr noundef %i.bl)
          to label %bb.q unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216

bb.q:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !206
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !196, !nonnull !99, !align !197
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !582
  %i.bq = zext i32 %i.bp to i64
  %i.br = load i64, ptr %i.bj, align 8, !tbaa !207
  %i.bs = invoke ptr @ggml_new_tensor_2d(ptr noundef %i.bm, i32 noundef 0, i64 noundef %i.bq, i64 noundef %i.br)
          to label %bb.r unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !583
  invoke void @ggml_set_input(ptr noundef %i.bs)
          to label %bb.s unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !583
  %i.bv = invoke ptr @ggml_set_name(ptr noundef %i.bu, ptr noundef nonnull @.str.30)
          to label %bb.t unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !206
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 36136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !105
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !581
  %i.ca = invoke ptr @ggml_get_rows(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.bz)
          to label %bb.u unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !583
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !153
  %i.cd = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cb, ptr noundef %i.cc, ptr noundef null, i32 noundef 1, i32 noundef %i.k)
          to label %bb.v unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !152
  %i.cf = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ca, ptr noundef %i.ce, ptr noundef null, i32 noundef 1, i32 noundef %i.k)
          to label %bb.w unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !206 ; 2 uses
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.ci = invoke ptr @ggml_concat(ptr noundef %i.cg, ptr noundef %i.cf, ptr noundef %i.cd, i32 noundef 0)
          to label %bb.x unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216

bb.x:                                             ; preds = %bb.w
  %i.cj = invoke ptr @ggml_mul_mat(ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci)
          to label %bb.y unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216 ; 3 uses

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cj, ptr noundef nonnull @.str.31, i32 noundef %i.k)
          to label %bb.z unwind label %_ZNKSt14default_deleteI20llm_graph_input_embdEclEPS0_.exit.i216

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !199
  store ptr %i.aw, ptr %3, align 8, !tbaa !586
  %i.cm = invoke noundef ptr @_ZN16llm_graph_result9add_inputESt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(36772) %i.cl, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.aa unwind label %bb.al     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.cn = load ptr, ptr %3, align 8, !tbaa !587   ; 3 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i

_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i: ; preds = %bb.aa
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !188
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(12) %i.cn) #18, !inline_history !573
  br label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aa, %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i
  %i.cr = invoke noundef ptr @_ZNK17llm_graph_context13build_inp_posEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.ab unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232 ; 2 uses

bb.ab:                                            ; preds = %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit
  %i.cs = invoke noundef ptr @_ZNK17llm_graph_context17build_inp_out_idsEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.ac unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.ac:                                            ; preds = %bb.ab
  %i.ct = invoke noundef ptr @_ZNK17llm_graph_context16build_attn_inp_kEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.ad unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load ptr, ptr %i.t, align 8, !tbaa !119
  %i.cv = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cj, ptr noundef %i.cu, ptr noundef null, i32 noundef 1, i32 noundef %i.k)
          to label %bb.ae unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232 ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !130 ; 2 uses
  %.not182 = icmp eq ptr %i.cx, null
  %i.cy = load ptr, ptr %i.bh, align 8, !tbaa !206 ; 2 uses
  br i1 %.not182, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = invoke ptr @ggml_mul_mat(ptr noundef %i.cy, ptr noundef nonnull %i.cx, ptr noundef %i.cv)
          to label %bb.ag unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cz, ptr noundef nonnull @.str.16, i32 noundef %i.k)
          to label %bb.ah unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !131
  %i.dc = invoke noundef ptr @_ZNK17llm_graph_context10build_normEP11ggml_tensorS1_S1_13llm_norm_typei(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cz, ptr noundef %i.db, ptr noundef null, i32 noundef 1, i32 noundef %i.k)
          to label %bb.ai unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.dc, ptr noundef nonnull @.str.17, i32 noundef %i.k)
          to label %bb.aj unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.aj:                                            ; preds = %bb.ai
  %i.dd = load ptr, ptr %i.bh, align 8, !tbaa !206
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !132
  %i.dg = invoke ptr @ggml_mul_mat(ptr noundef %i.dd, ptr noundef %i.df, ptr noundef %i.dc)
          to label %bb.ak unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK17llm_graph_context2cbEP11ggml_tensorPKci(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.dg, ptr noundef nonnull @.str.18, i32 noundef %i.k)
          to label %bb.an unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.al:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !587   ; 3 uses
  %.not.i211 = icmp eq ptr %i.di, null
  br i1 %.not.i211, label %_ZNSt10unique_ptrI20llm_graph_input_embdSt14default_deleteIS0_EED2Ev.exit217, label %_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i212

_ZNKSt14default_deleteI17llm_graph_input_iEclEPS0_.exit.i212: ; preds = %bb.al
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !188
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(12) %i.di) #18, !inline_history !573
  br label %_ZNSt10unique_ptrI20llm_graph_input_embdSt14default_deleteIS0_EED2Ev.exit217

bb.am:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !133
  %i.do = invoke ptr @ggml_mul_mat(ptr noundef %i.cy, ptr noundef %i.dn, ptr noundef %i.cv)
          to label %bb.an unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.0 = phi ptr [ %i.dg, %bb.ak ], [ %i.do, %bb.am ] ; 7 uses
  %i.dp = load ptr, ptr %i.bh, align 8, !tbaa !206
  %i.dq = load i64, ptr %i.bj, align 8, !tbaa !207
  %i.dr = load i32, ptr %.0, align 8, !tbaa !213
  %i.ds = invoke i64 @ggml_row_size(i32 noundef %i.dr, i64 noundef %i.ai)
          to label %bb.ao unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.ao:                                            ; preds = %bb.an
  %i.dt = load i32, ptr %.0, align 8, !tbaa !213
  %i.du = invoke i64 @ggml_row_size(i32 noundef %i.dt, i64 noundef %i.ai)
          to label %bb.ap unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.ap:                                            ; preds = %bb.ao
  %i.dv = mul i64 %i.du, %i.af
  %i.dw = invoke ptr @ggml_view_3d(ptr noundef %i.dp, ptr noundef nonnull %.0, i64 noundef %i.ap, i64 noundef %i.af, i64 noundef %i.dq, i64 noundef %i.ds, i64 noundef %i.dv, i64 noundef 0)
          to label %bb.aq unwind label %_ZNSt10unique_ptrI17llm_graph_input_iSt14default_deleteIS0_EED2Ev.exit213.thread232

bb.aq:                                            ; preds = %bb.ap
end_hunk_1
