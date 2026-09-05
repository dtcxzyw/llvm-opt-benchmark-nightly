Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/fmu?download=true
inline.NumInlined: 3885
inline.NumDeleted: 746
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6casadi11FmuInternal4initEPKNS_18DaeBuilderInternalE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %bb.y
  %.3152 = phi i1 [ true, %bb.y ], [ %.2151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.2151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ] ; 2 uses
  %.pn187.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.y ], [ %.pn187.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.pn187.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ] ; 2 uses
  %i.et = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !28
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.x
  %.4153 = phi i1 [ true, %bb.x ], [ %.3152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %.3152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ] ; 2 uses
  %.pn187.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.x ], [ %.pn187.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %.pn187.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ey = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !28
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %bb.w
  %.5154 = phi i1 [ true, %bb.w ], [ %.4153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %.4153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ] ; 2 uses
  %.pn187.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.w ], [ %.pn187.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %.pn187.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ] ; 4 uses
  %i.fd = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !28
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  %i.fi = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread: ; preds = %bb.l
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !28
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.fr = load i64, ptr %i.fj, align 8, !tbaa !28
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fs) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.5154, label %bb.ac, label %.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.5154, label %bb.ac, label %.thread

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread
  %.pn187.pn.pn.pn.pn.pn.pn620.ph = phi { ptr, i32 } [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.thread ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.thread ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.pn187.pn.pn.pn.pn.pn.pn620 = phi { ptr, i32 } [ %.pn187.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.pn187.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn187.pn.pn.pn.pn.pn.pn620.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dm) #28
  br label %.thread

_ZNSt6vectorIbSaIbEE2atEm.exit228:                ; preds = %bb.j
  %i.ft = or i64 %i.dk, %i.dj
  store i64 %i.ft, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !32
  %i.fu = add i64 %.1105756, 1                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0576.0755, i64 8 ; 2 uses
  %.not672 = icmp eq ptr %i.fv, %i.da
  br i1 %.not672, label %._crit_edge, label %.lr.ph

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %.thread1134, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.c
  %i.fw = phi ptr [ %i.bo, %.thread1134 ], [ %i.by, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.c ] ; 3 uses
  %i.fx = phi ptr [ %i.bn, %.thread1134 ], [ %i.bw, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bw, %bb.c ] ; 12 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 8 uses
  %i.fz = ptrtoint ptr %.sroa.21599.0 to i64
  %i.ga = ptrtoint ptr %.sroa.0585.0 to i64       ; 13 uses
  %i.gb = sub i64 %i.fz, %i.ga                    ; 2 uses
  %i.gc = shl nsw i64 %i.gb, 3
  %i.gd = zext nneg i32 %.sroa.32.0 to i64
  %i.ge = add nsw i64 %i.gc, %i.gd                ; 12 uses
  %i.gf = icmp ugt i64 %i.ge, 1152921504606846975
  br i1 %i.gf, label %.invoke, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 9 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !203
  %i.gi = load ptr, ptr %i.fy, align 8, !tbaa !44
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = ashr exact i64 %i.gl, 3
  %i.gn = icmp ult i64 %i.gm, %i.ge
  br i1 %i.gn, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i229, label %_ZNSt6vectorImSaImEE7reserveEm.exit235

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i229: ; preds = %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !43
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.gk
  %i.gs = shl nuw nsw i64 %i.ge, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #26
          to label %.noexc234 unwind label %bb.ai ; 4 uses

.noexc234:                                        ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i229
  %i.gu = load ptr, ptr %i.fy, align 8, !tbaa !44 ; 4 uses
  %i.gv = load ptr, ptr %i.go, align 8, !tbaa !43
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gu to i64               ; 2 uses
  %i.gy = sub i64 %i.gw, %i.gx                    ; 2 uses
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i230

bb.ae:                                            ; preds = %.noexc234
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gu, i64 %i.gy, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i230

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i230: ; preds = %bb.ae, %.noexc234
  %.not.i8.i231 = icmp eq ptr %i.gu, null
  br i1 %.not.i8.i231, label %_ZNSt6vectorImSaImEE7reserveEm.exit235.thread, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i230
  %i.ha = load ptr, ptr %i.gg, align 8, !tbaa !203
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.hb, %i.gx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.hc) #27
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit235.thread

_ZNSt6vectorImSaImEE7reserveEm.exit235.thread:    ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i230, %bb.af
  store ptr %i.gt, ptr %i.fy, align 8, !tbaa !44
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gr
  store ptr %i.hd, ptr %i.go, align 8, !tbaa !43
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ge
  store ptr %i.he, ptr %i.gg, align 8, !tbaa !203
  br label %.lr.ph764

_ZNSt6vectorImSaImEE7reserveEm.exit235:           ; preds = %bb.ad
  %.not802 = icmp eq i64 %i.ge, 0
  br i1 %.not802, label %._crit_edge765, label %.lr.ph764

.lr.ph764:                                        ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit235.thread, %_ZNSt6vectorImSaImEE7reserveEm.exit235
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  br label %bb.aj

._crit_edge765:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit235
  %.not8021138 = phi i1 [ true, %_ZNSt6vectorImSaImEE7reserveEm.exit235 ], [ false, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.not.i.i.i238 = icmp eq ptr %.sroa.0585.0, %.sroa.21599.0
  br i1 %.not.i.i.i238, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge765
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sroa.0585.0, i8 0, i64 %i.gb, i1 false)
  %.not27.i.i.i = icmp eq i32 %.sroa.32.0, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split

bb.ah:                                            ; preds = %._crit_edge765
  %.not25.i.i.i = icmp eq i32 %.sroa.32.0, 0
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split

bb.ai:                                            ; preds = %.invoke, %bb.gj, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i463, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i456, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i449, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i386, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i376, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i369, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, %bb.db, %bb.cf, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i302, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i257, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i229, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %_ZNSt6vectorIdSaIdEE7reserveEm.exit462, %_ZNSt6vectorIdSaIdEE7reserveEm.exit382
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.aj:                                            ; preds = %.lr.ph764, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge763 = phi i64 [ 0, %.lr.ph764 ], [ %i.kh, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %31 = lshr i64 %storemerge763, 6
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0585.0, i64 %31
  %i.hj = and i64 %storemerge763, 63
  %i.hk = shl nuw i64 1, %i.hj
  %i.hl = load i64, ptr %i.hi, align 8, !tbaa !32
  %i.hm = and i64 %i.hl, %i.hk
  %.not671 = icmp eq i64 %i.hm, 0
  br i1 %.not671, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hn = load ptr, ptr %i.hf, align 8, !tbaa !43 ; 2 uses
  %i.ho = load ptr, ptr %i.fx, align 8, !tbaa !44
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3                 ; 2 uses
  %i.ht = load ptr, ptr %i.hg, align 8, !tbaa !43 ; 4 uses
  %i.hu = load ptr, ptr %i.gg, align 8, !tbaa !203
  %.not.i.i241 = icmp eq ptr %i.ht, %i.hu
  br i1 %.not.i.i241, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hv, ptr %i.hg, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.am:                                            ; preds = %bb.ak
  %i.hw = load ptr, ptr %i.fy, align 8, !tbaa !44 ; 4 uses
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.hz = sub i64 %i.hx, %i.hy                    ; 5 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775800
  br i1 %i.ia, label %bb.an, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.240) #29
          to label %.noexc242 unwind label %.loopexit.split-lp695

.noexc242:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.ib = ashr exact i64 %i.hz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ib, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ib ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ib
  %i.ie = tail call i64 @llvm.umin.i64(i64 %i.ic, i64 1152921504606846975)
  %i.if = select i1 %i.id, i64 1152921504606846975, i64 %i.ie ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.if, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ig = shl nuw nsw i64 %i.if, 3
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #26
          to label %.noexc243 unwind label %.loopexit694 ; 4 uses

.noexc243:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.hz ; 2 uses
  store i64 %i.hs, ptr %i.ii, align 8, !tbaa !32
  %i.ij = icmp sgt i64 %i.hz, 0
  br i1 %i.ij, label %bb.ao, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ao:                                            ; preds = %.noexc243
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr align 8 %i.hw, i64 %i.hz, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ao, %.noexc243
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.il = load ptr, ptr %i.gg, align 8, !tbaa !203
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %i.hy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.in) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ih, ptr %i.fy, align 8, !tbaa !44
  store ptr %i.ik, ptr %i.hg, align 8, !tbaa !43
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.if
  store ptr %i.io, ptr %i.gg, align 8, !tbaa !203
  %.pre = load ptr, ptr %i.hf, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.al
  %i.ip = phi ptr [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.hn, %bb.al ] ; 4 uses
  %i.iq = load ptr, ptr %i.fw, align 8, !tbaa !203
  %.not.i = icmp eq ptr %i.ip, %i.iq
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  store i64 %storemerge763, ptr %i.ip, align 8, !tbaa !32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.ir, ptr %i.hf, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ar:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.is = load ptr, ptr %i.fx, align 8, !tbaa !44 ; 4 uses
  %i.it = ptrtoint ptr %i.ip to i64
  %i.iu = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iv = sub i64 %i.it, %i.iu                    ; 5 uses
  %i.iw = icmp eq i64 %i.iv, 9223372036854775800
  br i1 %i.iw, label %bb.as, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.240) #29
          to label %.noexc245 unwind label %.loopexit.split-lp700

.noexc245:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.ix = ashr exact i64 %i.iv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ix, i64 1)
  %i.iy = add nsw i64 %.sroa.speculated.i.i.i, %i.ix ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.ix
  %i.ja = tail call i64 @llvm.umin.i64(i64 %i.iy, i64 1152921504606846975)
  %i.jb = select i1 %i.iz, i64 1152921504606846975, i64 %i.ja ; 3 uses
  %.not.i.i.i244 = icmp ne i64 %i.jb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i244)
  %i.jc = shl nuw nsw i64 %i.jb, 3
  %i.jd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #26
          to label %.noexc246 unwind label %.loopexit699 ; 4 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %i.iv ; 2 uses
  store i64 %storemerge763, ptr %i.je, align 8, !tbaa !32
  %i.jf = icmp sgt i64 %i.iv, 0
  br i1 %i.jf, label %bb.at, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.at:                                            ; preds = %.noexc246
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr align 8 %i.is, i64 %i.iv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.at, %.noexc246
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %.not.i17.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.jh = load ptr, ptr %i.fw, align 8, !tbaa !203
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = sub i64 %i.ji, %i.iu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.jj) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.jd, ptr %i.fx, align 8, !tbaa !44
  store ptr %i.jg, ptr %i.hf, align 8, !tbaa !43
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jb
  store ptr %i.jk, ptr %i.fw, align 8, !tbaa !203
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit694:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit696 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp695:                            ; preds = %bb.an
  %lpad.loopexit.split-lp697 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit699:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit701 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp700:                            ; preds = %bb.as
  %lpad.loopexit.split-lp702 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.av:                                            ; preds = %bb.aj
  %i.jl = load ptr, ptr %i.hg, align 8, !tbaa !43 ; 4 uses
  %i.jm = load ptr, ptr %i.gg, align 8, !tbaa !203
  %.not.i.i247 = icmp eq ptr %i.jl, %i.jm
  br i1 %.not.i.i247, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i64 -1, ptr %i.jl, align 8, !tbaa !32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %i.jn, ptr %i.hg, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ax:                                            ; preds = %bb.av
  %i.jo = load ptr, ptr %i.fy, align 8, !tbaa !44 ; 4 uses
  %i.jp = ptrtoint ptr %i.jl to i64
  %i.jq = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.jr = sub i64 %i.jp, %i.jq                    ; 5 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775800
  br i1 %i.js, label %bb.ay, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i248

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.240) #29
          to label %.noexc254 unwind label %.loopexit.split-lp705

.noexc254:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i248: ; preds = %bb.ax
  %i.jt = ashr exact i64 %i.jr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i249 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i.i249, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 1152921504606846975)
  %i.jx = select i1 %i.jv, i64 1152921504606846975, i64 %i.jw ; 3 uses
  %.not.i.i.i.i250 = icmp ne i64 %i.jx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i250)
  %i.jy = shl nuw nsw i64 %i.jx, 3
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #26
          to label %.noexc255 unwind label %.loopexit704 ; 4 uses

.noexc255:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i248
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.jr ; 2 uses
  store i64 -1, ptr %i.ka, align 8, !tbaa !32
  %i.kb = icmp sgt i64 %i.jr, 0
  br i1 %i.kb, label %bb.az, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i251

bb.az:                                            ; preds = %.noexc255
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr align 8 %i.jo, i64 %i.jr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i251

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i251: ; preds = %bb.az, %.noexc255
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.not.i17.i.i.i252 = icmp eq ptr %i.jo, null
  br i1 %.not.i17.i.i.i252, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i253, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i251
  %i.kd = load ptr, ptr %i.gg, align 8, !tbaa !203
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = sub i64 %i.ke, %i.jq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.kf) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i253

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i253: ; preds = %bb.ba, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i251
  store ptr %i.jz, ptr %i.fy, align 8, !tbaa !44
  store ptr %i.kc, ptr %i.hg, align 8, !tbaa !43
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.kg, ptr %i.gg, align 8, !tbaa !203
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit704:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i248
  %lpad.loopexit706 = landingpad { ptr, i32 }
          cleanup
  br label %..thread_crit_edge

.loopexit.split-lp705:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp707 = landingpad { ptr, i32 }
          cleanup
  br label %..thread_crit_edge

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.aw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i253, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.aq
  %i.kh = add nuw nsw i64 %storemerge763, 1       ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.ge
  br i1 %i.ki, label %bb.aj, label %._crit_edge765, !llvm.loop !283

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split: ; preds = %bb.ah, %bb.ag
  %.sroa.0585.0.sink1202 = phi ptr [ %.sroa.21599.0, %bb.ag ], [ %.sroa.0585.0, %bb.ah ] ; 2 uses
  %i.kj = sub nuw nsw i32 64, %.sroa.32.0
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = lshr i64 -1, %i.kk
  %i.km = xor i64 %i.kl, -1
  %i.kn = load i64, ptr %.sroa.0585.0.sink1202, align 8, !tbaa !32
  %i.ko = and i64 %i.kn, %i.km
  store i64 %i.ko, ptr %.sroa.0585.0.sink1202, align 8, !tbaa !32
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split, %bb.ah, %bb.ag
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !34 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !34 ; 2 uses
  %.not665773 = icmp eq ptr %i.kq, %i.ks
  br i1 %.not665773, label %.thread1141, label %.lr.ph776

.thread1141:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.cc

.lr.ph776:                                        ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.be

._crit_edge777:                                   ; preds = %._crit_edge771
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.kx = icmp ugt i64 %.3107.lcssa, 1152921504606846975
  br i1 %i.kx, label %.invoke, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge777
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !203
  %i.la = load ptr, ptr %i.kw, align 8, !tbaa !44
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64               ; 2 uses
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = ashr exact i64 %i.ld, 3
  %i.lf = icmp ult i64 %i.le, %.3107.lcssa
  br i1 %i.lf, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i257, label %bb.cc

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i257: ; preds = %bb.bb
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !43
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = sub i64 %i.li, %i.lc
  %i.lk = shl nuw nsw i64 %.3107.lcssa, 3
  %i.ll = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #26
          to label %.noexc262 unwind label %bb.ai ; 4 uses

.noexc262:                                        ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i257
  %i.lm = load ptr, ptr %i.kw, align 8, !tbaa !44 ; 4 uses
  %i.ln = load ptr, ptr %i.lg, align 8, !tbaa !43
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.lm to i64               ; 2 uses
  %i.lq = sub i64 %i.lo, %i.lp                    ; 2 uses
  %i.lr = icmp sgt i64 %i.lq, 0
  br i1 %i.lr, label %bb.bc, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i258

bb.bc:                                            ; preds = %.noexc262
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr align 8 %i.lm, i64 %i.lq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i258

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i258: ; preds = %bb.bc, %.noexc262
  %.not.i8.i259 = icmp eq ptr %i.lm, null
  br i1 %.not.i8.i259, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i260, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i258
  %i.ls = load ptr, ptr %i.ky, align 8, !tbaa !203
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = sub i64 %i.lt, %i.lp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lu) #27
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i260

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i260: ; preds = %bb.bd, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i258
  store ptr %i.ll, ptr %i.kw, align 8, !tbaa !44
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lj
  store ptr %i.lv, ptr %i.lg, align 8, !tbaa !43
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.3107.lcssa
  store ptr %i.lw, ptr %i.ky, align 8, !tbaa !203
  br label %bb.cc

bb.be:                                            ; preds = %.lr.ph776, %._crit_edge771
  %.2106775 = phi i64 [ 0, %.lr.ph776 ], [ %.3107.lcssa, %._crit_edge771 ] ; 2 uses
  %.sroa.0555.0774 = phi ptr [ %i.kq, %.lr.ph776 ], [ %i.mb, %._crit_edge771 ] ; 2 uses
  %i.lx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorImSaImEESt4lessIS5_ESaISt4pairIKS5_S8_EEE2atERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0555.0774)
          to label %bb.bf unwind label %bb.bg     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !56 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !56 ; 2 uses
  %.not669766 = icmp eq ptr %i.ly, %i.ma
  br i1 %.not669766, label %._crit_edge771, label %.lr.ph770

._crit_edge771:                                   ; preds = %_ZNSt6vectorIbSaIbEE2atEm.exit301, %bb.bf
  %.3107.lcssa = phi i64 [ %.2106775, %bb.bf ], [ %i.os, %_ZNSt6vectorIbSaIbEE2atEm.exit301 ] ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0555.0774, i64 32 ; 2 uses
  %.not665 = icmp eq ptr %i.mb, %i.ks
  br i1 %.not665, label %._crit_edge777, label %bb.be

bb.bg:                                            ; preds = %bb.be
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

.lr.ph770:                                        ; preds = %bb.bf, %_ZNSt6vectorIbSaIbEE2atEm.exit301
  %.3107768 = phi i64 [ %i.os, %_ZNSt6vectorIbSaIbEE2atEm.exit301 ], [ %.2106775, %bb.bf ]
  %.sroa.0551.0767 = phi ptr [ %i.ot, %_ZNSt6vectorIbSaIbEE2atEm.exit301 ], [ %i.ly, %bb.bf ] ; 2 uses
  %i.md = load i64, ptr %.sroa.0551.0767, align 8, !tbaa !32 ; 7 uses
  %.not.i.i264 = icmp ult i64 %i.md, %i.ge
  br i1 %.not.i.i264, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph770
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.238, i64 noundef %i.md, i64 noundef %i.ge) #29
          to label %.noexc269 unwind label %bb.bu

.noexc269:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %.lr.ph770
  %i.me = lshr i64 %i.md, 6
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0585.0, i64 %i.me ; 2 uses
  %i.mg = and i64 %i.md, 63
  %i.mh = shl nuw i64 1, %i.mg                    ; 2 uses
  %i.mi = load i64, ptr %i.mf, align 8, !tbaa !32 ; 2 uses
  %i.mj = and i64 %i.mi, %i.mh
  %.not670 = icmp eq i64 %i.mj, 0
  br i1 %.not670, label %_ZNSt6vectorIbSaIbEE2atEm.exit301, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mk = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294.thread

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.1)
          to label %bb.bm unwind label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.ml = load ptr, ptr %i.aq, align 8, !tbaa !327
  %i.mm = load ptr, ptr %i.ap, align 8, !tbaa !328 ; 2 uses
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = ashr exact i64 %i.mp, 3                 ; 2 uses
  %.not.i.i.i271 = icmp ult i64 %i.md, %i.mq
  br i1 %.not.i.i.i271, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.233, i64 noundef %i.md, i64 noundef %i.mq) #29
          to label %.noexc272 unwind label %bb.bw

.noexc272:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.md
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !330
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.84, ptr noundef nonnull align 8 dereferenceable(32) %i.mt)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.83, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bq unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !alias.scope !332
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.bs unwind label %bb.bz

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.mk, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %bb.bs
end_hunk_0
begin_hunk_1_@_ZN6casadi11FmuInternal4initEPKNS_18DaeBuilderInternalE:bb.a
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  %i.og = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread: ; preds = %bb.bk
  %i.oj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ok = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %.sink.split1204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !28
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #27
  br label %.sink.split1204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %i.op = load i64, ptr %i.oh, align 8, !tbaa !28
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oq) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %.5102, label %bb.cb, label %.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %.5102, label %bb.cb, label %.thread

.sink.split1204:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.thread
  %.pn175.pn.pn.pn.pn.pn.pn632.ph = phi { ptr, i32 } [ %i.oj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.thread ], [ %i.mv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294.thread ], [ %i.oj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split1204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %.pn175.pn.pn.pn.pn.pn.pn632 = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.pn175.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ], [ %.pn175.pn.pn.pn.pn.pn.pn632.ph, %.sink.split1204 ]
  call void @__cxa_free_exception(ptr %i.mk) #28
  br label %.thread

_ZNSt6vectorIbSaIbEE2atEm.exit301:                ; preds = %bb.bi
  %i.or = or i64 %i.mi, %i.mh
  store i64 %i.or, ptr %i.mf, align 8, !tbaa !32
  %i.os = add i64 %.3107768, 1                    ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0551.0767, i64 8 ; 2 uses
  %.not669 = icmp eq ptr %i.ot, %i.ma
  br i1 %.not669, label %._crit_edge771, label %.lr.ph770

bb.cc:                                            ; preds = %.thread1141, %bb.bb, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i260
  %i.ou = phi ptr [ %i.ku, %.thread1141 ], [ %i.ky, %bb.bb ], [ %i.ky, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i260 ] ; 3 uses
  %i.ov = phi ptr [ %i.kt, %.thread1141 ], [ %i.kw, %bb.bb ], [ %i.kw, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i260 ] ; 11 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 9 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !203
  %i.oz = load ptr, ptr %i.ow, align 8, !tbaa !44
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64               ; 2 uses
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = ashr exact i64 %i.pc, 3
  %i.pe = icmp ult i64 %i.pd, %i.ge
  br i1 %i.pe, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i302, label %_ZNSt6vectorImSaImEE7reserveEm.exit308

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i302: ; preds = %bb.cc
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !43
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = sub i64 %i.ph, %i.pb
  %i.pj = shl nuw nsw i64 %i.ge, 3
  %i.pk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #26
          to label %.noexc307 unwind label %bb.ai ; 4 uses

.noexc307:                                        ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i302
  %i.pl = load ptr, ptr %i.ow, align 8, !tbaa !44 ; 4 uses
  %i.pm = load ptr, ptr %i.pf, align 8, !tbaa !43
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = ptrtoint ptr %i.pl to i64               ; 2 uses
  %i.pp = sub i64 %i.pn, %i.po                    ; 2 uses
  %i.pq = icmp sgt i64 %i.pp, 0
  br i1 %i.pq, label %bb.cd, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i303

bb.cd:                                            ; preds = %.noexc307
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pk, ptr align 8 %i.pl, i64 %i.pp, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i303

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i303: ; preds = %bb.cd, %.noexc307
  %.not.i8.i304 = icmp eq ptr %i.pl, null
  br i1 %.not.i8.i304, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i305, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i303
  %i.pr = load ptr, ptr %i.ox, align 8, !tbaa !203
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.ps, %i.po
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.pt) #27
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i305

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i305: ; preds = %bb.ce, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i303
  store ptr %i.pk, ptr %i.ow, align 8, !tbaa !44
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pi
  store ptr %i.pu, ptr %i.pf, align 8, !tbaa !43
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.ge
  store ptr %i.pv, ptr %i.ox, align 8, !tbaa !203
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit308

_ZNSt6vectorImSaImEE7reserveEm.exit308:           ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i305, %bb.cc
  br i1 %.not8021138, label %._crit_edge781, label %.lr.ph780

.lr.ph780:                                        ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit308
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  br label %bb.cj

._crit_edge781:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit335, %_ZNSt6vectorImSaImEE7reserveEm.exit308
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 6 uses
  %i.pz = load ptr, ptr %i.bl, align 8, !tbaa !37
  %i.qa = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc
  %i.qe = ashr exact i64 %i.qd, 5                 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !47 ; 5 uses
  %i.qh = load ptr, ptr %i.py, align 8, !tbaa !48 ; 2 uses
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = sub i64 %i.qi, %i.qj
  %i.ql = sdiv exact i64 %i.qk, 24                ; 3 uses
  %i.qm = icmp ugt i64 %i.qe, %i.ql
  br i1 %i.qm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %._crit_edge781
  %i.qn = sub nuw nsw i64 %i.qe, %i.ql
  invoke void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i64 noundef %i.qn)
          to label %._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit_crit_edge unwind label %bb.ai

._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.cf
  %.pre854 = load ptr, ptr %i.qf, align 8, !tbaa !47
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

bb.cg:                                            ; preds = %._crit_edge781
  %i.qo = icmp ult i64 %i.qe, %i.ql
  br i1 %i.qo, label %bb.ch, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

bb.ch:                                            ; preds = %bb.cg
  %i.qp = getelementptr inbounds nuw [24 x i8], ptr %i.qh, i64 %i.qe ; 4 uses
  %.not.i.i309 = icmp eq ptr %i.qg, %i.qp
  br i1 %.not.i.i309, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ch, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.qw, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.qp, %bb.ch ] ; 3 uses
  %i.qq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !203
  %i.qt = ptrtoint ptr %i.qs to i64
  %i.qu = ptrtoint ptr %i.qq to i64
  %i.qv = sub i64 %i.qt, %i.qu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qv) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.ci, %.lr.ph.i.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i310 = icmp eq ptr %i.qw, %i.qg
  br i1 %.not.i.i.i.i310, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  store ptr %i.qp, ptr %i.qf, align 8, !tbaa !47
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit:    ; preds = %._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit_crit_edge, %bb.cg, %bb.ch, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.qx = phi ptr [ %.pre854, %._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.qg, %bb.cg ], [ %i.qg, %bb.ch ], [ %i.qp, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.qy = load ptr, ptr %i.py, align 8, !tbaa !48
  %.not804 = icmp eq ptr %i.qx, %i.qy
  br i1 %.not804, label %._crit_edge787, label %.lr.ph786

.lr.ph786:                                        ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.df

bb.cj:                                            ; preds = %.lr.ph780, %_ZNSt6vectorImSaImEE9push_backERKm.exit335
  %storemerge157779 = phi i64 [ 0, %.lr.ph780 ], [ %i.ua, %_ZNSt6vectorImSaImEE9push_backERKm.exit335 ] ; 5 uses
  %32 = lshr i64 %storemerge157779, 6
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0585.0, i64 %32
  %i.rc = and i64 %storemerge157779, 63
  %i.rd = shl nuw i64 1, %i.rc
  %i.re = load i64, ptr %i.rb, align 8, !tbaa !32
  %i.rf = and i64 %i.re, %i.rd
  %.not668 = icmp eq i64 %i.rf, 0
  br i1 %.not668, label %bb.cv, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rg = load ptr, ptr %i.pw, align 8, !tbaa !43 ; 2 uses
  %i.rh = load ptr, ptr %i.ov, align 8, !tbaa !44
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = ashr exact i64 %i.rk, 3                 ; 2 uses
  %i.rm = load ptr, ptr %i.px, align 8, !tbaa !43 ; 4 uses
  %i.rn = load ptr, ptr %i.ox, align 8, !tbaa !203
  %.not.i.i316 = icmp eq ptr %i.rm, %i.rn
  br i1 %.not.i.i316, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i64 %i.rl, ptr %i.rm, align 8, !tbaa !32
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store ptr %i.ro, ptr %i.px, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit325

bb.cm:                                            ; preds = %bb.ck
  %i.rp = load ptr, ptr %i.ow, align 8, !tbaa !44 ; 4 uses
  %i.rq = ptrtoint ptr %i.rm to i64
  %i.rr = ptrtoint ptr %i.rp to i64               ; 2 uses
  %i.rs = sub i64 %i.rq, %i.rr                    ; 5 uses
  %i.rt = icmp eq i64 %i.rs, 9223372036854775800
  br i1 %i.rt, label %bb.cn, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i317

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.240) #29
          to label %.noexc323 unwind label %.loopexit.split-lp680

.noexc323:                                        ; preds = %bb.cn
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i317: ; preds = %bb.cm
  %i.ru = ashr exact i64 %i.rs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i318 = tail call i64 @llvm.umax.i64(i64 %i.ru, i64 1)
  %i.rv = add nsw i64 %.sroa.speculated.i.i.i.i318, %i.ru ; 2 uses
  %i.rw = icmp ult i64 %i.rv, %i.ru
  %i.rx = tail call i64 @llvm.umin.i64(i64 %i.rv, i64 1152921504606846975)
  %i.ry = select i1 %i.rw, i64 1152921504606846975, i64 %i.rx ; 3 uses
  %.not.i.i.i.i319 = icmp ne i64 %i.ry, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i319)
  %i.rz = shl nuw nsw i64 %i.ry, 3
  %i.sa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rz) #26
          to label %.noexc324 unwind label %.loopexit679 ; 4 uses

.noexc324:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i317
  %i.sb = getelementptr inbounds i8, ptr %i.sa, i64 %i.rs ; 2 uses
  store i64 %i.rl, ptr %i.sb, align 8, !tbaa !32
  %i.sc = icmp sgt i64 %i.rs, 0
  br i1 %i.sc, label %bb.co, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i320

bb.co:                                            ; preds = %.noexc324
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sa, ptr align 8 %i.rp, i64 %i.rs, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i320

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i320: ; preds = %bb.co, %.noexc324
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %.not.i17.i.i.i321 = icmp eq ptr %i.rp, null
  br i1 %.not.i17.i.i.i321, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i322, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i320
  %i.se = load ptr, ptr %i.ox, align 8, !tbaa !203
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = sub i64 %i.sf, %i.rr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef %i.sg) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i322

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i322: ; preds = %bb.cp, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i320
  store ptr %i.sa, ptr %i.ow, align 8, !tbaa !44
  store ptr %i.sd, ptr %i.px, align 8, !tbaa !43
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.ry
  store ptr %i.sh, ptr %i.ox, align 8, !tbaa !203
  %.pre853 = load ptr, ptr %i.pw, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit325

_ZNSt6vectorImSaImEE9push_backEOm.exit325:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i322, %bb.cl
  %i.si = phi ptr [ %.pre853, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i322 ], [ %i.rg, %bb.cl ] ; 4 uses
  %i.sj = load ptr, ptr %i.ou, align 8, !tbaa !203
  %.not.i326 = icmp eq ptr %i.si, %i.sj
  br i1 %.not.i326, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit325
  store i64 %storemerge157779, ptr %i.si, align 8, !tbaa !32
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store ptr %i.sk, ptr %i.pw, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit335

bb.cr:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit325
  %i.sl = load ptr, ptr %i.ov, align 8, !tbaa !44 ; 4 uses
  %i.sm = ptrtoint ptr %i.si to i64
  %i.sn = ptrtoint ptr %i.sl to i64               ; 2 uses
  %i.so = sub i64 %i.sm, %i.sn                    ; 5 uses
  %i.sp = icmp eq i64 %i.so, 9223372036854775800
  br i1 %i.sp, label %bb.cs, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i327

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.240) #29
          to label %.noexc333 unwind label %.loopexit.split-lp685

.noexc333:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i327: ; preds = %bb.cr
  %i.sq = ashr exact i64 %i.so, 3                 ; 3 uses
  %.sroa.speculated.i.i.i328 = tail call i64 @llvm.umax.i64(i64 %i.sq, i64 1)
  %i.sr = add nsw i64 %.sroa.speculated.i.i.i328, %i.sq ; 2 uses
  %i.ss = icmp ult i64 %i.sr, %i.sq
  %i.st = tail call i64 @llvm.umin.i64(i64 %i.sr, i64 1152921504606846975)
  %i.su = select i1 %i.ss, i64 1152921504606846975, i64 %i.st ; 3 uses
  %.not.i.i.i329 = icmp ne i64 %i.su, 0
  tail call void @llvm.assume(i1 %.not.i.i.i329)
  %i.sv = shl nuw nsw i64 %i.su, 3
  %i.sw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sv) #26
          to label %.noexc334 unwind label %.loopexit684 ; 4 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i327
  %i.sx = getelementptr inbounds i8, ptr %i.sw, i64 %i.so ; 2 uses
  store i64 %storemerge157779, ptr %i.sx, align 8, !tbaa !32
  %i.sy = icmp sgt i64 %i.so, 0
  br i1 %i.sy, label %bb.ct, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i330

bb.ct:                                            ; preds = %.noexc334
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sw, ptr align 8 %i.sl, i64 %i.so, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i330

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i330: ; preds = %bb.ct, %.noexc334
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %.not.i17.i.i331 = icmp eq ptr %i.sl, null
  br i1 %.not.i17.i.i331, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i332, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i330
  %i.ta = load ptr, ptr %i.ou, align 8, !tbaa !203
  %i.tb = ptrtoint ptr %i.ta to i64
  %i.tc = sub i64 %i.tb, %i.sn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef %i.tc) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i332

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i332: ; preds = %bb.cu, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i330
  store ptr %i.sw, ptr %i.ov, align 8, !tbaa !44
  store ptr %i.sz, ptr %i.pw, align 8, !tbaa !43
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.su
  store ptr %i.td, ptr %i.ou, align 8, !tbaa !203
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit335

.loopexit679:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i317
  %lpad.loopexit681 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp680:                            ; preds = %bb.cn
  %lpad.loopexit.split-lp682 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit684:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i327
  %lpad.loopexit686 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp685:                            ; preds = %bb.cs
  %lpad.loopexit.split-lp687 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.cv:                                            ; preds = %bb.cj
  %i.te = load ptr, ptr %i.px, align 8, !tbaa !43 ; 4 uses
  %i.tf = load ptr, ptr %i.ox, align 8, !tbaa !203
  %.not.i.i336 = icmp eq ptr %i.te, %i.tf
  br i1 %.not.i.i336, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i64 -1, ptr %i.te, align 8, !tbaa !32
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  store ptr %i.tg, ptr %i.px, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit335

bb.cx:                                            ; preds = %bb.cv
  %i.th = load ptr, ptr %i.ow, align 8, !tbaa !44 ; 4 uses
  %i.ti = ptrtoint ptr %i.te to i64
  %i.tj = ptrtoint ptr %i.th to i64               ; 2 uses
  %i.tk = sub i64 %i.ti, %i.tj                    ; 5 uses
  %i.tl = icmp eq i64 %i.tk, 9223372036854775800
  br i1 %i.tl, label %bb.cy, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i337

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.240) #29
          to label %.noexc343 unwind label %.loopexit.split-lp690

.noexc343:                                        ; preds = %bb.cy
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i337: ; preds = %bb.cx
  %i.tm = ashr exact i64 %i.tk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i338 = tail call i64 @llvm.umax.i64(i64 %i.tm, i64 1)
  %i.tn = add nsw i64 %.sroa.speculated.i.i.i.i338, %i.tm ; 2 uses
  %i.to = icmp ult i64 %i.tn, %i.tm
  %i.tp = tail call i64 @llvm.umin.i64(i64 %i.tn, i64 1152921504606846975)
  %i.tq = select i1 %i.to, i64 1152921504606846975, i64 %i.tp ; 3 uses
  %.not.i.i.i.i339 = icmp ne i64 %i.tq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i339)
  %i.tr = shl nuw nsw i64 %i.tq, 3
  %i.ts = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tr) #26
          to label %.noexc344 unwind label %.loopexit689 ; 4 uses

.noexc344:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i337
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 %i.tk ; 2 uses
  store i64 -1, ptr %i.tt, align 8, !tbaa !32
  %i.tu = icmp sgt i64 %i.tk, 0
  br i1 %i.tu, label %bb.cz, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i340

bb.cz:                                            ; preds = %.noexc344
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ts, ptr align 8 %i.th, i64 %i.tk, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i340

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i340: ; preds = %bb.cz, %.noexc344
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %.not.i17.i.i.i341 = icmp eq ptr %i.th, null
  br i1 %.not.i17.i.i.i341, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i342, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i340
  %i.tw = load ptr, ptr %i.ox, align 8, !tbaa !203
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = sub i64 %i.tx, %i.tj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %i.ty) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i342

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i342: ; preds = %bb.da, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i340
  store ptr %i.ts, ptr %i.ow, align 8, !tbaa !44
  store ptr %i.tv, ptr %i.px, align 8, !tbaa !43
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tq
  store ptr %i.tz, ptr %i.ox, align 8, !tbaa !203
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit335

.loopexit689:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i337
  %lpad.loopexit691 = landingpad { ptr, i32 }
          cleanup
  br label %..thread_crit_edge

.loopexit.split-lp690:                            ; preds = %bb.cy
  %lpad.loopexit.split-lp692 = landingpad { ptr, i32 }
          cleanup
  br label %..thread_crit_edge

_ZNSt6vectorImSaImEE9push_backERKm.exit335:       ; preds = %bb.cw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i342, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i332, %bb.cq
  %i.ua = add nuw nsw i64 %storemerge157779, 1    ; 2 uses
  %i.ub = icmp ult i64 %i.ua, %i.ge
  br i1 %i.ub, label %bb.cj, label %._crit_edge781, !llvm.loop !286

._crit_edge787:                                   ; preds = %._crit_edge784, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 6 uses
  %i.ud = load ptr, ptr %i.kr, align 8, !tbaa !37
  %i.ue = load ptr, ptr %i.kp, align 8, !tbaa !36
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %i.ui = ashr exact i64 %i.uh, 5                 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !47 ; 5 uses
  %i.ul = load ptr, ptr %i.uc, align 8, !tbaa !48 ; 2 uses
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = ptrtoint ptr %i.ul to i64
  %i.uo = sub i64 %i.um, %i.un
  %i.up = sdiv exact i64 %i.uo, 24                ; 3 uses
  %i.uq = icmp ugt i64 %i.ui, %i.up
  br i1 %i.uq, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %._crit_edge787
  %i.ur = sub nuw nsw i64 %i.ui, %i.up
  invoke void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, i64 noundef %i.ur)
          to label %._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354_crit_edge unwind label %bb.ai

._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354_crit_edge: ; preds = %bb.db
  %.pre857 = load ptr, ptr %i.uj, align 8, !tbaa !47
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354

bb.dc:                                            ; preds = %._crit_edge787
  %i.us = icmp ult i64 %i.ui, %i.up
  br i1 %i.us, label %bb.dd, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354

bb.dd:                                            ; preds = %bb.dc
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %i.ul, i64 %i.ui ; 4 uses
  %.not.i.i346 = icmp eq ptr %i.uk, %i.ut
  br i1 %.not.i.i346, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354, label %.lr.ph.i.i.i.i347

.lr.ph.i.i.i.i347:                                ; preds = %bb.dd, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i350
  %.05.i.i.i.i348 = phi ptr [ %i.va, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i350 ], [ %i.ut, %bb.dd ] ; 3 uses
  %i.uu = load ptr, ptr %.05.i.i.i.i348, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i.i349 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i.i.i.i.i.i349, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i350, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i.i.i347
  %i.uv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i348, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !203
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %i.uu to i64
  %i.uz = sub i64 %i.ux, %i.uy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uz) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i350

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i350: ; preds = %bb.de, %.lr.ph.i.i.i.i347
  %i.va = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i348, i64 24 ; 2 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.va, %i.uk
  br i1 %.not.i.i.i.i351, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i352, label %.lr.ph.i.i.i.i347, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i352: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i350
  store ptr %i.ut, ptr %i.uj, align 8, !tbaa !47
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354

_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354: ; preds = %._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354_crit_edge, %bb.dc, %bb.dd, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i352
  %i.vb = phi ptr [ %.pre857, %._ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354_crit_edge ], [ %i.uk, %bb.dc ], [ %i.uk, %bb.dd ], [ %i.ut, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i352 ]
  %i.vc = load ptr, ptr %i.uc, align 8, !tbaa !48
  %.not806 = icmp eq ptr %i.vb, %i.vc
  br i1 %.not806, label %._crit_edge793, label %.lr.ph792

.lr.ph792:                                        ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.ds

bb.df:                                            ; preds = %.lr.ph786, %._crit_edge784
  %.096785 = phi i64 [ 0, %.lr.ph786 ], [ %i.wo, %._crit_edge784 ] ; 4 uses
  %i.vf = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.vg = getelementptr inbounds nuw [32 x i8], ptr %i.vf, i64 %.096785
  %i.vh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorImSaImEESt4lessIS5_ESaISt4pairIKS5_S8_EEE2atERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.qz, ptr noundef nonnull align 8 dereferenceable(32) %i.vg)
          to label %bb.dg unwind label %bb.dk     ; 3 uses

bb.dg:                                            ; preds = %bb.df
  %i.vi = load ptr, ptr %i.py, align 8, !tbaa !48
  %i.vj = getelementptr inbounds nuw [24 x i8], ptr %i.vi, i64 %.096785 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 8 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !43
  %i.vm = load ptr, ptr %i.vh, align 8, !tbaa !44 ; 4 uses
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = ptrtoint ptr %i.vm to i64               ; 4 uses
  %i.vp = sub i64 %i.vn, %i.vo                    ; 2 uses
  %i.vq = ashr exact i64 %i.vp, 3                 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 8 ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !43 ; 2 uses
  %i.vt = load ptr, ptr %i.vj, align 8, !tbaa !44 ; 2 uses
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = ashr exact i64 %i.vw, 3                 ; 3 uses
  %i.vy = icmp ugt i64 %i.vq, %i.vx
  br i1 %i.vy, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.vz = sub nuw nsw i64 %i.vq, %i.vx
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vj, i64 noundef %i.vz)
          to label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge unwind label %bb.dk

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge:    ; preds = %bb.dh
  %.pre855 = load ptr, ptr %i.vh, align 8, !tbaa !44 ; 2 uses
  %.pre913 = ptrtoint ptr %.pre855 to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.di:                                            ; preds = %bb.dg
  %i.wa = icmp ult i64 %i.vq, %i.vx
  br i1 %i.wa, label %bb.dj, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.dj:                                            ; preds = %bb.di
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vp ; 2 uses
  %.not.i.i355 = icmp eq ptr %i.vs, %i.wb
  br i1 %.not.i.i355, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.dj
  store ptr %i.wb, ptr %i.vr, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge, %bb.di, %bb.dj, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi914 = phi i64 [ %.pre913, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.vo, %bb.di ], [ %i.vo, %bb.dj ], [ %i.vo, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ]
  %i.wc = phi ptr [ %.pre855, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.vm, %bb.di ], [ %i.vm, %bb.dj ], [ %i.vm, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.wd = load ptr, ptr %i.vk, align 8, !tbaa !43 ; 2 uses
  %.not805 = icmp eq ptr %i.wd, %i.wc
  br i1 %.not805, label %_ZNSt6vectorImSaImEE6resizeEm.exit.._crit_edge784_crit_edge, label %.lr.ph783

_ZNSt6vectorImSaImEE6resizeEm.exit.._crit_edge784_crit_edge: ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %.pre856 = load ptr, ptr %i.py, align 8, !tbaa !48
  br label %._crit_edge784

.lr.ph783:                                        ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = sub i64 %i.we, %.pre-phi914
  %i.wg = ashr exact i64 %i.wf, 3
  %i.wh = load ptr, ptr %i.ra, align 8, !tbaa !43
  %i.wi = load ptr, ptr %i.fy, align 8, !tbaa !44 ; 2 uses
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = sub i64 %i.wj, %i.wk
  %i.wm = ashr exact i64 %i.wl, 3                 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.wg, i64 1)
  br label %bb.dl

._crit_edge784:                                   ; preds = %bb.dn, %_ZNSt6vectorImSaImEE6resizeEm.exit.._crit_edge784_crit_edge
  %i.wn = phi ptr [ %.pre856, %_ZNSt6vectorImSaImEE6resizeEm.exit.._crit_edge784_crit_edge ], [ %i.xa, %bb.dn ]
  %i.wo = add nuw i64 %.096785, 1                 ; 2 uses
  %i.wp = load ptr, ptr %i.qf, align 8, !tbaa !47
  %i.wq = ptrtoint ptr %i.wp to i64
  %i.wr = ptrtoint ptr %i.wn to i64
  %i.ws = sub i64 %i.wq, %i.wr
  %i.wt = sdiv exact i64 %i.ws, 24
  %i.wu = icmp ult i64 %i.wo, %i.wt
  br i1 %i.wu, label %bb.df, label %._crit_edge787, !llvm.loop !287

bb.dk:                                            ; preds = %bb.dh, %bb.df
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.dl:                                            ; preds = %.lr.ph783, %bb.dn
  %.095782 = phi i64 [ 0, %.lr.ph783 ], [ %i.xe, %bb.dn ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %.095782
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !32 ; 3 uses
  %.not.i.i357 = icmp ult i64 %i.wx, %i.wm
  br i1 %.not.i.i357, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.233, i64 noundef %i.wx, i64 noundef %i.wm) #29
          to label %.noexc358 unwind label %bb.do

.noexc358:                                        ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.wx
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !32
  %i.xa = load ptr, ptr %i.py, align 8, !tbaa !48 ; 2 uses
  %i.xb = getelementptr inbounds nuw [24 x i8], ptr %i.xa, i64 %.096785
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !44
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %.095782
  store i64 %i.wz, ptr %i.xd, align 8, !tbaa !32
  %i.xe = add nuw i64 %.095782, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.xe, %umax
  br i1 %exitcond.not, label %._crit_edge784, label %bb.dl, !llvm.loop !288

bb.do:                                            ; preds = %bb.dm
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

._crit_edge793:                                   ; preds = %._crit_edge790, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit354
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store i8 0, ptr %i.xg, align 8, !tbaa !333
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 7 uses
end_hunk_1
