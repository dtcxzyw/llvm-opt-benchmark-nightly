Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VectorTransform?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5faiss9OPQMatrix5trainElPKf:bb.a
  %i.lp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.lm, i64 noundef %i.ln, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.80, i32 noundef %i.lo) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.lk)
          to label %bb.bu unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bn
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

bb.bt:                                            ; preds = %bb.bv, %bb.br, %bb.bq
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bu:                                            ; preds = %bb.br, %bb.bp
  %i.ls = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ls, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9OPQMatrix5trainElPKf, ptr noundef nonnull @.str.1, i32 noundef 1388)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_throw(ptr nonnull %i.ls, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.de unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bu
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ls) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.pn138 = phi { ptr, i32 } [ %i.lr, %bb.bt ], [ %i.lt, %bb.bw ]
  %i.lu = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lg
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.bx
  %i.lw = load i64, ptr %i.lg, align 8, !tbaa !16
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

bb.by:                                            ; preds = %bb.bo
  %i.ly = load float, ptr %i.n, align 4, !tbaa !33
  %i.lz = fptosi float %i.ly to i32               ; 4 uses
  store i32 %i.lz, ptr %i.l, align 4, !tbaa !44
  %i.ma = sext i32 %i.lz to i64                   ; 3 uses
  %i.mb = icmp slt i32 %i.lz, 0
  br i1 %i.mb, label %bb.bz, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc220 unwind label %.loopexit.split-lp

.noexc220:                                        ; preds = %bb.bz
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214: ; preds = %bb.by
  %.not.i.i.i.i215 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i.i.i215, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214
  %i.mc = shl nuw nsw i64 %i.ma, 2
  %i.md = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #28
          to label %.noexc221 unwind label %.loopexit ; 5 uses

.noexc221:                                        ; preds = %bb.ca
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ma ; 2 uses
  store float 0.000000e+00, ptr %i.md, align 4, !tbaa !33
  %i.mf = add nsw i64 %i.ma, -1                   ; 2 uses
  %i.mg = icmp eq i64 %i.mf, 0
  br i1 %i.mg, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216: ; preds = %.noexc221
  %i.mh = getelementptr i8, ptr %i.md, i64 4
  %.idx.i.i.i.i.i.i.i217 = shl nuw nsw i64 %i.mf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mh, i8 0, i64 %.idx.i.i.i.i.i.i.i217, i1 false), !tbaa !33
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216, %.noexc221, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214
  %.sroa.0256.0 = phi ptr [ %i.md, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216 ], [ %i.md, %.noexc221 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214 ] ; 7 uses
  %.sroa.10.0 = phi ptr [ %i.me, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i216 ], [ %i.me, %.noexc221 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i214 ] ; 2 uses
  %i.mi = invoke i32 @sgesvd_(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef %.sroa.0293.0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.jb, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.h, ptr noundef nonnull %.sroa.0284.0, ptr noundef nonnull %i.g, ptr noundef %.sroa.0256.0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m)
          to label %bb.cb unwind label %bb.ce     ; 0 uses

bb.cb:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222
  %i.mj = invoke i32 @sgemm_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %.sroa.0284.0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %.097, ptr noundef nonnull %i.g)
          to label %bb.cc unwind label %bb.ce     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i223 = icmp eq ptr %.sroa.0256.0, null
  br i1 %.not.i.i.i223, label %_ZNSt6vectorIfSaIfEED2Ev.exit224, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mk = ptrtoint ptr %.sroa.10.0 to i64
  %i.ml = ptrtoint ptr %.sroa.0256.0 to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0256.0, i64 noundef %i.mm) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit224

_ZNSt6vectorIfSaIfEED2Ev.exit224:                 ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  store i32 1, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !197
  %i.mn = add nuw nsw i32 %.096372, 1             ; 2 uses
  %i.mo = load i32, ptr %i.ix, align 8, !tbaa !186
  %i.mp = icmp slt i32 %i.mn, %i.mo
  br i1 %i.mp, label %bb.av, label %._crit_edge374, !llvm.loop !198

.loopexit:                                        ; preds = %bb.ca
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

bb.ce:                                            ; preds = %bb.cb, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit222
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %.sroa.0256.0, null
  br i1 %.not.i.i.i225, label %_ZNSt6vectorIfSaIfEED2Ev.exit226, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mr = ptrtoint ptr %.sroa.10.0 to i64
  %i.ms = ptrtoint ptr %.sroa.0256.0 to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0256.0, i64 noundef %i.mt) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit226

_ZNSt6vectorIfSaIfEED2Ev.exit226:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.ce, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %bb.bs
  %.pn140.pn = phi { ptr, i32 } [ %i.lq, %bb.bs ], [ %.pn138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.mq, %bb.cf ], [ %i.mq, %bb.ce ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit226, %bb.bl
  %.pn140.pn.pn = phi { ptr, i32 } [ %.pn140.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit226 ], [ %i.lb, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %bb.cv

._crit_edge377.loopexit:                          ; preds = %.lr.ph376
  %.pre412 = load i32, ptr %i.o, align 8, !tbaa !43
  br label %._crit_edge377

._crit_edge377:                                   ; preds = %._crit_edge377.loopexit, %.preheader
  %i.mu = phi i32 [ %i.jc, %.preheader ], [ %.pre412, %._crit_edge377.loopexit ]
  %.lcssa = phi i32 [ %i.je, %.preheader ], [ %i.nq, %._crit_edge377.loopexit ]
  %i.mv = mul nsw i32 %i.mu, %.lcssa
  %i.mw = sext i32 %i.mv to i64                   ; 4 uses
  %i.mx = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 2 uses
  %i.my = load ptr, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = ashr exact i64 %i.nb, 2                 ; 3 uses
  %i.nd = icmp ult i64 %i.nc, %i.mw
  br i1 %i.nd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge377
  %i.ne = sub nuw nsw i64 %i.mw, %i.nc
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 noundef %i.ne)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230 unwind label %bb.au

bb.ci:                                            ; preds = %._crit_edge377
  %i.nf = icmp ugt i64 %i.nc, %i.mw
  br i1 %i.nf, label %bb.cj, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230

bb.cj:                                            ; preds = %bb.ci
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mw ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.mx, %i.ng
  br i1 %.not.i.i227, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i228

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i228:     ; preds = %bb.cj
  store ptr %i.ng, ptr %i.ee, align 8, !tbaa !31
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit230

.lr.ph376:                                        ; preds = %.preheader, %.lr.ph376
  %.0375 = phi i64 [ %i.np, %.lr.ph376 ], [ 0, %.preheader ] ; 3 uses
  %i.nh = load i32, ptr %i.o, align 8, !tbaa !43
  %i.ni = sext i32 %i.nh to i64                   ; 2 uses
  %i.nj = mul nsw i64 %.0375, %i.ni
  %i.nk = load ptr, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = mul nuw nsw i64 %.0375, %i.aa
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.nm
  %i.no = shl nsw i64 %i.ni, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nl, ptr nonnull align 4 %i.nn, i64 %i.no, i1 false)
  %i.np = add nuw nsw i64 %.0375, 1               ; 2 uses
  %i.nq = load i32, ptr %i.x, align 4, !tbaa !30  ; 2 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = icmp slt i64 %i.np, %i.nr
  br i1 %i.ns, label %.lr.ph376, label %._crit_edge377.loopexit, !llvm.loop !199

_ZNSt6vectorIfSaIfEE6resizeEm.exit230:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i228, %bb.cj, %bb.ci, %bb.ch, %._crit_edge374
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.nt, align 8, !tbaa !18
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.nu, align 2, !tbaa !45
  %.not.i.i.i231 = icmp eq ptr %.sroa.0261.0, null
  br i1 %.not.i.i.i231, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit230
  %i.nv = ptrtoint ptr %.sroa.12.0 to i64
  %i.nw = ptrtoint ptr %.sroa.0261.0 to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.0, i64 noundef %i.nx) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit230, %bb.ck
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss16ProductQuantizerE, i64 16), ptr %4, align 8, !tbaa !47
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i232 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i232, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !49
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = ptrtoint ptr %i.nz to i64
  %i.oe = sub i64 %i.oc, %i.od
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.oe) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !49
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ol) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i:                 ; preds = %bb.cm, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !49
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = ptrtoint ptr %i.on to i64
  %i.os = sub i64 %i.oq, %i.or
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.os) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i

_ZNSt6vectorIfSaIfEED2Ev.exit4.i:                 ; preds = %bb.cn, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.ot = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i5.i, label %_ZN5faiss16ProductQuantizerD2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i
  %i.ov = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !49
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.ou to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.oz) #30
  br label %_ZN5faiss16ProductQuantizerD2Ev.exit

_ZN5faiss16ProductQuantizerD2Ev.exit:             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i.i.i233 = icmp eq ptr %.sroa.0284.0, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIfSaIfEED2Ev.exit234, label %bb.cp

bb.cp:                                            ; preds = %_ZN5faiss16ProductQuantizerD2Ev.exit
  %i.pa = ptrtoint ptr %.sroa.0284.0 to i64
  %i.pb = sub i64 %.sroa.12290.0, %i.pa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.0, i64 noundef %i.pb) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit234

_ZNSt6vectorIfSaIfEED2Ev.exit234:                 ; preds = %_ZN5faiss16ProductQuantizerD2Ev.exit, %bb.cp
  %.not.i.i.i235 = icmp eq ptr %.sroa.0293.0, null
  br i1 %.not.i.i.i235, label %_ZNSt6vectorIfSaIfEED2Ev.exit236, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit234
  %i.pc = ptrtoint ptr %.sroa.12299.0 to i64
  %i.pd = ptrtoint ptr %.sroa.0293.0 to i64
  %i.pe = sub i64 %i.pc, %i.pd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0293.0, i64 noundef %i.pe) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit236

_ZNSt6vectorIfSaIfEED2Ev.exit236:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit234, %bb.cq
  %.not.i.i.i237 = icmp eq ptr %.sroa.0302.0, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIfSaIfEED2Ev.exit238, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit236
  %i.pf = ptrtoint ptr %.sroa.12308.0 to i64
  %i.pg = ptrtoint ptr %.sroa.0302.0 to i64
  %i.ph = sub i64 %i.pf, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0302.0, i64 noundef %i.ph) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit238

_ZNSt6vectorIfSaIfEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit236, %bb.cr
  %.not.i.i.i239 = icmp eq ptr %.sroa.0311.0, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIfSaIfEED2Ev.exit240, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit238
  %i.pi = ptrtoint ptr %.sroa.14.0 to i64
  %i.pj = ptrtoint ptr %.sroa.0311.0 to i64
  %i.pk = sub i64 %i.pi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0311.0, i64 noundef %i.pk) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit240

_ZNSt6vectorIfSaIfEED2Ev.exit240:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit238, %bb.cs
  %.not.i.i.i241 = icmp eq ptr %.sroa.0327.0, null
  br i1 %.not.i.i.i241, label %_ZNSt6vectorIfSaIfEED2Ev.exit242, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit240
  %i.pl = ptrtoint ptr %.sroa.12333.0 to i64
  %i.pm = ptrtoint ptr %.sroa.0327.0 to i64
  %i.pn = sub i64 %i.pl, %i.pm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0327.0, i64 noundef %i.pn) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit242

_ZNSt6vectorIfSaIfEED2Ev.exit242:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit240, %bb.ct
  %i.po = icmp eq ptr %i.w, null
  %or.cond = or i1 %.not342, %i.po
  br i1 %or.cond, label %_ZN5faiss18TransformedVectorsD2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit242
  call void @_ZdaPv(ptr noundef nonnull %i.w) #30
  br label %_ZN5faiss18TransformedVectorsD2Ev.exit

_ZN5faiss18TransformedVectorsD2Ev.exit:           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit242, %bb.cu
  ret void

bb.cv:                                            ; preds = %bb.az, %bb.ba, %bb.cg, %bb.bi, %bb.au
  %.pn140.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jm, %bb.au ], [ %i.jy, %bb.az ], [ %i.jz, %bb.ba ], [ %.pn140.pn.pn, %bb.cg ], [ %i.ku, %bb.bi ] ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %.sroa.0261.0, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIhSaIhEED2Ev.exit244, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pp = ptrtoint ptr %.sroa.12.0 to i64
  %i.pq = ptrtoint ptr %.sroa.0261.0 to i64
  %i.pr = sub i64 %i.pp, %i.pq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.0, i64 noundef %i.pr) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit244

_ZNSt6vectorIhSaIhEED2Ev.exit244:                 ; preds = %bb.cw, %bb.cv, %bb.at
  %.pn140.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jl, %bb.at ], [ %.pn140.pn.pn.pn.pn.pn, %bb.cv ], [ %.pn140.pn.pn.pn.pn.pn, %bb.cw ]
  call void @_ZN5faiss16ProductQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %4) #22
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit244, %bb.as
  %.pn140.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %i.jk, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i.i.i245 = icmp eq ptr %.sroa.0284.0, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorIfSaIfEED2Ev.exit246, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ps = ptrtoint ptr %.sroa.0284.0 to i64
  %i.pt = sub i64 %.sroa.12290.0, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.0, i64 noundef %i.pt) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit246

_ZNSt6vectorIfSaIfEED2Ev.exit246:                 ; preds = %bb.cy, %bb.cx, %bb.ar
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.ar ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn, %bb.cx ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn, %bb.cy ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %.sroa.0293.0, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIfSaIfEED2Ev.exit248, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit246
  %i.pu = ptrtoint ptr %.sroa.12299.0 to i64
  %i.pv = ptrtoint ptr %.sroa.0293.0 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0293.0, i64 noundef %i.pw) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit248

_ZNSt6vectorIfSaIfEED2Ev.exit248:                 ; preds = %bb.cz, %_ZNSt6vectorIfSaIfEED2Ev.exit246, %bb.aq
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ji, %bb.aq ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit246 ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cz ] ; 2 uses
  %.not.i.i.i249 = icmp eq ptr %.sroa.0302.0, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorIfSaIfEED2Ev.exit250, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit248
  %i.px = ptrtoint ptr %.sroa.12308.0 to i64
end_hunk_0
