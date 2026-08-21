Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VectorTransform?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5faiss9OPQMatrix5trainElPKf:bb.a
  %i.lh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.le, i64 noundef %i.lf, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.80, i32 noundef %i.lg) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.lc)
          to label %bb.bs unwind label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

bb.br:                                            ; preds = %bb.bt, %bb.bp, %bb.bo
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bp, %bb.bn
  %i.lk = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.lk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9OPQMatrix5trainElPKf, ptr noundef nonnull @.str.1, i32 noundef 1388)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @__cxa_throw(ptr nonnull %i.lk, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.dc unwind label %bb.br

bb.bu:                                            ; preds = %bb.bs
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lk) #22
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br
  %.pn138 = phi { ptr, i32 } [ %i.lj, %bb.br ], [ %i.ll, %bb.bu ]
  %i.lm = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.ky
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.bv
  %i.lo = load i64, ptr %i.ky, align 8, !tbaa !15
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

bb.bw:                                            ; preds = %bb.bm
  %i.lq = load float, ptr %i.n, align 4, !tbaa !33
  %i.lr = fptosi float %i.lq to i32               ; 4 uses
  store i32 %i.lr, ptr %i.l, align 4, !tbaa !44
  %i.ls = sext i32 %i.lr to i64                   ; 3 uses
  %i.lt = icmp slt i32 %i.lr, 0
  br i1 %i.lt, label %bb.bx, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc220 unwind label %.loopexit.split-lp

.noexc220:                                        ; preds = %bb.bx
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214: ; preds = %bb.bw
  %.not.i.i.i.i215 = icmp eq i32 %i.lr, 0
  br i1 %.not.i.i.i.i215, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214
  %i.lu = shl nuw nsw i64 %i.ls, 2
  %i.lv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lu) #28
          to label %.noexc221 unwind label %.loopexit ; 5 uses

.noexc221:                                        ; preds = %bb.by
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ls ; 2 uses
  store float 0.000000e+00, ptr %i.lv, align 4, !tbaa !33
  %i.lx = add nsw i64 %i.ls, -1                   ; 2 uses
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216: ; preds = %.noexc221
  %i.lz = getelementptr i8, ptr %i.lv, i64 4
  %.idx.i.i.i.i.i.i.i217 = shl nuw nsw i64 %i.lx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.lz, i8 0, i64 %.idx.i.i.i.i.i.i.i217, i1 false), !tbaa !33
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216, %.noexc221, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214
  %.sroa.0256.0 = phi ptr [ %i.lv, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216 ], [ %i.lv, %.noexc221 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214 ] ; 7 uses
  %.sroa.10.0 = phi ptr [ %i.lw, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216 ], [ %i.lw, %.noexc221 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214 ] ; 2 uses
  %i.ma = invoke i32 @sgesvd_(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef %.sroa.0293.0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.it, ptr noundef nonnull %i.is, ptr noundef nonnull %i.h, ptr noundef nonnull %.sroa.0284.0, ptr noundef nonnull %i.g, ptr noundef %.sroa.0256.0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m)
          to label %bb.bz unwind label %bb.cc     ; 0 uses

bb.bz:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222
  %i.mb = invoke i32 @sgemm_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %.sroa.0284.0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.is, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %.097, ptr noundef nonnull %i.g)
          to label %bb.ca unwind label %bb.cc     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %.not.i.i.i223 = icmp eq ptr %.sroa.0256.0, null
  br i1 %.not.i.i.i223, label %_ZNSt6vectorIfSaIfEED2Ev.exit224, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mc = ptrtoint ptr %.sroa.10.0 to i64
  %i.md = ptrtoint ptr %.sroa.0256.0 to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0256.0, i64 noundef %i.me) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit224

_ZNSt6vectorIfSaIfEED2Ev.exit224:                 ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  store i32 1, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !197
  %i.mf = add nuw nsw i32 %.096388, 1             ; 2 uses
  %i.mg = load i32, ptr %i.ip, align 8, !tbaa !186
  %i.mh = icmp slt i32 %i.mf, %i.mg
  br i1 %i.mh, label %bb.at, label %._crit_edge390, !llvm.loop !198

.loopexit:                                        ; preds = %bb.by
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

.loopexit.split-lp:                               ; preds = %bb.bx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

bb.cc:                                            ; preds = %bb.bz, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %.sroa.0256.0, null
  br i1 %.not.i.i.i225, label %_ZNSt6vectorIfSaIfEED2Ev.exit226, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mj = ptrtoint ptr %.sroa.10.0 to i64
  %i.mk = ptrtoint ptr %.sroa.0256.0 to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0256.0, i64 noundef %i.ml) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

_ZNSt6vectorIfSaIfEED2Ev.exit226:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.cc, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %bb.bq
  %.pn140.pn = phi { ptr, i32 } [ %i.li, %bb.bq ], [ %.pn138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.mi, %bb.cd ], [ %i.mi, %bb.cc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit226, %bb.bj
  %.pn140.pn.pn = phi { ptr, i32 } [ %.pn140.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit226 ], [ %i.kt, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %bb.ct

._crit_edge393.loopexit:                          ; preds = %.lr.ph392
  %.pre428 = load i32, ptr %i.o, align 8, !tbaa !43
  br label %._crit_edge393

._crit_edge393:                                   ; preds = %._crit_edge393.loopexit, %.preheader
  %i.mm = phi i32 [ %i.iu, %.preheader ], [ %.pre428, %._crit_edge393.loopexit ]
  %.lcssa = phi i32 [ %i.iw, %.preheader ], [ %i.ni, %._crit_edge393.loopexit ]
  %i.mn = mul nsw i32 %i.mm, %.lcssa
  %i.mo = sext i32 %i.mn to i64                   ; 4 uses
  %i.mp = load ptr, ptr %i.ed, align 8, !tbaa !31 ; 2 uses
  %i.mq = load ptr, ptr %i.ec, align 8, !tbaa !32 ; 2 uses
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = ashr exact i64 %i.mt, 2                 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %i.mo
  br i1 %i.mv, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %._crit_edge393
  %i.mw = sub nuw nsw i64 %i.mo, %i.mu
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 noundef %i.mw)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230 unwind label %bb.as

bb.cg:                                            ; preds = %._crit_edge393
  %i.mx = icmp ugt i64 %i.mu, %i.mo
  br i1 %i.mx, label %bb.ch, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230

bb.ch:                                            ; preds = %bb.cg
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mo ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.mp, %i.my
  br i1 %.not.i.i227, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i228

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i228:     ; preds = %bb.ch
  store ptr %i.my, ptr %i.ed, align 8, !tbaa !31
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230

.lr.ph392:                                        ; preds = %.preheader, %.lr.ph392
  %.0391 = phi i64 [ %i.nh, %.lr.ph392 ], [ 0, %.preheader ] ; 3 uses
  %i.mz = load i32, ptr %i.o, align 8, !tbaa !43
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %i.nb = mul nsw i64 %.0391, %i.na
  %i.nc = load ptr, ptr %i.ec, align 8, !tbaa !32 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nb
  %i.ne = mul nuw nsw i64 %.0391, %i.aa
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ne
  %i.ng = shl nsw i64 %i.na, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nd, ptr nonnull align 4 %i.nf, i64 %i.ng, i1 false)
  %i.nh = add nuw nsw i64 %.0391, 1               ; 2 uses
  %i.ni = load i32, ptr %i.x, align 4, !tbaa !30  ; 2 uses
  %i.nj = sext i32 %i.ni to i64
  %i.nk = icmp slt i64 %i.nh, %i.nj
  br i1 %i.nk, label %.lr.ph392, label %._crit_edge393.loopexit, !llvm.loop !199

_ZNSt6vectorIfSaIfEE6resizeEm.exit230:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i228, %bb.ch, %bb.cg, %bb.cf, %._crit_edge390
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.nl, align 8, !tbaa !17
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.nm, align 2, !tbaa !45
  %.not.i.i.i231 = icmp eq ptr %.sroa.0261.0, null
  br i1 %.not.i.i.i231, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit230
  %i.nn = ptrtoint ptr %.sroa.12.0 to i64
  %i.no = ptrtoint ptr %.sroa.0261.0 to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.0, i64 noundef %i.np) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit230, %bb.ci
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss16ProductQuantizerE, i64 16), ptr %4, align 8, !tbaa !47
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i232 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i232, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !49
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nw) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.cj, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !49
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.ny to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.od) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i:                 ; preds = %bb.ck, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.oe = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !49
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = ptrtoint ptr %i.of to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.ok) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i

_ZNSt6vectorIfSaIfEED2Ev.exit4.i:                 ; preds = %bb.cl, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i5.i, label %_ZN5faiss16ProductQuantizerD2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i
  %i.on = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !49
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = ptrtoint ptr %i.om to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef %i.or) #30
  br label %_ZN5faiss16ProductQuantizerD2Ev.exit

_ZN5faiss16ProductQuantizerD2Ev.exit:             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i.i.i233 = icmp eq ptr %.sroa.0284.0, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIfSaIfEED2Ev.exit234, label %bb.cn

bb.cn:                                            ; preds = %_ZN5faiss16ProductQuantizerD2Ev.exit
  %i.os = ptrtoint ptr %.sroa.0284.0 to i64
  %i.ot = sub i64 %.sroa.12290.0, %i.os
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.0, i64 noundef %i.ot) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit234

_ZNSt6vectorIfSaIfEED2Ev.exit234:                 ; preds = %_ZN5faiss16ProductQuantizerD2Ev.exit, %bb.cn
  %.not.i.i.i235 = icmp eq ptr %.sroa.0293.0, null
  br i1 %.not.i.i.i235, label %_ZNSt6vectorIfSaIfEED2Ev.exit236, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit234
  %i.ou = ptrtoint ptr %.sroa.12299.0 to i64
  %i.ov = ptrtoint ptr %.sroa.0293.0 to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0293.0, i64 noundef %i.ow) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit236

_ZNSt6vectorIfSaIfEED2Ev.exit236:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit234, %bb.co
  %.not.i.i.i237 = icmp eq ptr %.sroa.0302.0, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIfSaIfEED2Ev.exit238, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit236
  %i.ox = ptrtoint ptr %.sroa.12308.0 to i64
  %i.oy = ptrtoint ptr %.sroa.0302.0 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0302.0, i64 noundef %i.oz) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit238

_ZNSt6vectorIfSaIfEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit236, %bb.cp
  %.not.i.i.i239 = icmp eq ptr %.sroa.0311.0342, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIfSaIfEED2Ev.exit240, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit238
  %i.pa = ptrtoint ptr %.sroa.14.0346 to i64
  %i.pb = ptrtoint ptr %.sroa.0311.0342 to i64
  %i.pc = sub i64 %i.pa, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0311.0342, i64 noundef %i.pc) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit240

_ZNSt6vectorIfSaIfEED2Ev.exit240:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit238, %bb.cq
  %.not.i.i.i241 = icmp eq ptr %.sroa.0327.0, null
  br i1 %.not.i.i.i241, label %_ZNSt6vectorIfSaIfEED2Ev.exit242, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit240
  %i.pd = ptrtoint ptr %.sroa.12333.0 to i64
  %i.pe = ptrtoint ptr %.sroa.0327.0 to i64
  %i.pf = sub i64 %i.pd, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0327.0, i64 noundef %i.pf) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit242

_ZNSt6vectorIfSaIfEED2Ev.exit242:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit240, %bb.cr
  %i.pg = icmp eq ptr %i.w, null
  %or.cond = or i1 %.not360, %i.pg
  br i1 %or.cond, label %_ZN5faiss18TransformedVectorsD2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit242
  call void @_ZdaPv(ptr noundef nonnull %i.w) #30
  br label %_ZN5faiss18TransformedVectorsD2Ev.exit

_ZN5faiss18TransformedVectorsD2Ev.exit:           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit242, %bb.cs
  ret void

bb.ct:                                            ; preds = %bb.ax, %bb.ay, %bb.ce, %bb.bg, %bb.as
  %.pn140.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.je, %bb.as ], [ %i.jq, %bb.ax ], [ %i.jr, %bb.ay ], [ %.pn140.pn.pn, %bb.ce ], [ %i.km, %bb.bg ] ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %.sroa.0261.0, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIhSaIhEED2Ev.exit244, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ph = ptrtoint ptr %.sroa.12.0 to i64
  %i.pi = ptrtoint ptr %.sroa.0261.0 to i64
  %i.pj = sub i64 %i.ph, %i.pi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.0, i64 noundef %i.pj) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit244

_ZNSt6vectorIhSaIhEED2Ev.exit244:                 ; preds = %bb.cu, %bb.ct, %bb.ar
  %.pn140.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jd, %bb.ar ], [ %.pn140.pn.pn.pn.pn.pn, %bb.ct ], [ %.pn140.pn.pn.pn.pn.pn, %bb.cu ]
  call void @_ZN5faiss16ProductQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %4) #22
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit244, %bb.aq
  %.pn140.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %i.jc, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i.i.i245 = icmp eq ptr %.sroa.0284.0, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorIfSaIfEED2Ev.exit246, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pk = ptrtoint ptr %.sroa.0284.0 to i64
  %i.pl = sub i64 %.sroa.12290.0, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.0, i64 noundef %i.pl) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit246

_ZNSt6vectorIfSaIfEED2Ev.exit246:                 ; preds = %bb.cw, %bb.cv, %bb.ap
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jb, %bb.ap ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn, %bb.cw ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %.sroa.0293.0, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIfSaIfEED2Ev.exit248, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit246
  %i.pm = ptrtoint ptr %.sroa.12299.0 to i64
  %i.pn = ptrtoint ptr %.sroa.0293.0 to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0293.0, i64 noundef %i.po) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit248

_ZNSt6vectorIfSaIfEED2Ev.exit248:                 ; preds = %bb.cx, %_ZNSt6vectorIfSaIfEED2Ev.exit246, %bb.ao
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ja, %bb.ao ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cx ] ; 2 uses
  %.not.i.i.i249 = icmp eq ptr %.sroa.0302.0, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorIfSaIfEED2Ev.exit250, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit248
  %i.pp = ptrtoint ptr %.sroa.12308.0 to i64
end_hunk_0
