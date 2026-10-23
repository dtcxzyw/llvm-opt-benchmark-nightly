Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldInfo?download=true
inline.NumInlined: 6011
inline.NumDeleted: 1810
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4LIEF5MachO8DyldInfo27update_standard_bindings_v1ERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EERNS_15vector_iostreamE:bb.a

bb.cw:                                            ; preds = %_ZN4LIEF5MachO9to_stringENS0_8DyldInfo12BIND_OPCODESE.exit, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit164, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit161, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit158, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit155, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit152, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit149, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit146, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit143, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit140, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit137, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit134, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.0190.0306, i64 56 ; 2 uses
  %i.wd = load ptr, ptr %i.gu, align 8
  %i.we = icmp eq ptr %i.wc, %i.wd
  br i1 %i.we, label %.critedge4, label %bb.ax, !llvm.loop !1095

bb.cx:                                            ; preds = %.critedge4
  %i.wf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #26
  %i.wg = load i64, ptr %i.jm, align 8, !tbaa !108
  store i64 %i.wg, ptr %i.ah, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #26
  %i.wh = load ptr, ptr %i.ip, align 8, !tbaa !328 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !104
  %i.wk = load ptr, ptr %i.wh, align 8, !tbaa !95
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = sub i64 %i.wl, %i.wm
  store i64 %i.wn, ptr %i.ai, align 8, !tbaa !99
  %i.wo = load ptr, ptr %i.wf, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.wo, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 2, ptr nonnull @.str.71, i64 65, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #26
  %.pre318 = load ptr, ptr %i.ip, align 8, !tbaa !328 ; 2 uses
  %.pre319 = load ptr, ptr %.pre318, align 8, !tbaa !98
  %.phi.trans.insert320 = getelementptr inbounds nuw i8, ptr %.pre318, i64 8
  %.pre321 = load ptr, ptr %.phi.trans.insert320, align 8, !tbaa !98
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.critedge4
  %i.wp = phi ptr [ %.pre321, %bb.cx ], [ %i.jh, %.critedge4 ] ; 2 uses
  %i.wq = phi ptr [ %.pre319, %bb.cx ], [ %i.ji, %.critedge4 ] ; 3 uses
  %i.wr = icmp eq ptr %i.wq, %i.wp
  br i1 %i.wr, label %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ws = ptrtoint ptr %i.wp to i64
  %i.wt = ptrtoint ptr %i.wq to i64
  %i.wu = sub i64 %i.ws, %i.wt
  %i.wv = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef %i.wq, i64 noundef %i.wu) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit: ; preds = %bb.cy, %bb.cz
  %i.ww = load ptr, ptr %i.io, align 8, !tbaa !95 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ww, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.da

bb.da:                                            ; preds = %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit
  %i.wx = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !96
  %i.wz = ptrtoint ptr %i.wy to i64
  %i.xa = ptrtoint ptr %i.ww to i64
  %i.xb = sub i64 %i.wz, %i.xa
  call void @_ZdlPvm(ptr noundef nonnull %i.ww, i64 noundef %i.xb) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.da, %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit
  %i.xc = load ptr, ptr %9, align 8, !tbaa !331   ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !332 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.xc, %i.xe
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.xl, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.xc, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.xf = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !336
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.db, %.lr.ph.i.i.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.xl, %i.xe
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %9, align 8, !tbaa !331
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.xm = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.xc, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.xm, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !337
  %i.xp = ptrtoint ptr %i.xo to i64
  %i.xq = ptrtoint ptr %i.xm to i64
  %i.xr = sub i64 %i.xp, %i.xq
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef %i.xr) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.thread276

.thread276:                                       ; preds = %.thread, %bb.j, %_ZN4LIEF15vector_iostreamD2Ev.exit
  %i.xs = load ptr, ptr %8, align 8, !tbaa !175   ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.aj
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.thread276
  %i.xu = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.thread276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %i.xw = load ptr, ptr %7, align 8, !tbaa !364   ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !355 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.xw, %i.xy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.yf, %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !175 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.yc = icmp eq ptr %i.ya, %i.yb
  br i1 %i.yc, label %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.yd = load i64, ptr %i.yb, align 8, !tbaa !106
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.ye) #27
  br label %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.yf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.yf, %i.xy
  br i1 %.not.i.i.i166, label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !364
  br label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i

_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.yg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.yg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i
  %i.yh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !356
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = ptrtoint ptr %i.yg to i64
  %i.yl = sub i64 %i.yj, %i.yk
  call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef %i.yl) #27
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(240) ptr @_ZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EESt6vectorIPNS0_14RelocationDyldESaISE_EERNS_15vector_iostreamE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(73) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %i.o = alloca i8, align 1                       ; 5 uses
  %i.p = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"class.std::vector.276", align 8  ; 15 uses
  %13 = alloca %"class.std::vector.268", align 8  ; 24 uses
  %i.q = alloca i64, align 8                      ; 9 uses
  %i.r = alloca i8, align 1                       ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.s = alloca i64, align 8                      ; 7 uses
  %i.t = alloca i32, align 4                      ; 8 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i8, align 1                       ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i8, align 1                      ; 4 uses
  %i.ac = alloca i8, align 1                      ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i8, align 1                      ; 4 uses
  %i.af = alloca i64, align 8                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca i32, align 4                     ; 4 uses
  %i.ai = alloca i8, align 1                      ; 4 uses
  %i.aj = alloca i32, align 4                     ; 4 uses
  %15 = alloca %"class.LIEF::vector_iostream", align 8 ; 22 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !234 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not4.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not4.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EEC2ISt23_Rb_tree_const_iteratorIS3_EvEET_S9_RKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.an, %bb.a ]
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i) #30 ; 2 uses
  %i.aq = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIPN4LIEF5MachO15DyldBindingInfoEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1096

_ZSt10__distanceISt23_Rb_tree_const_iteratorIPN4LIEF5MachO15DyldBindingInfoEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = icmp samesign ugt i64 %.06.i.i.i, 1152921504606846974
  br i1 %i.ar, label %bb.b, label %_ZNSt12_Vector_baseIPN4LIEF5MachO15DyldBindingInfoESaIS3_EE11_M_allocateEm.exit.i.i

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIPN4LIEF5MachO15DyldBindingInfoEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #28
  unreachable

_ZNSt12_Vector_baseIPN4LIEF5MachO15DyldBindingInfoESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIPN4LIEF5MachO15DyldBindingInfoEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i
  %i.as = shl nuw nsw i64 %i.aq, 3
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #29 ; 4 uses
  store ptr %i.at, ptr %12, align 8, !tbaa !369
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !1103
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIPN4LIEF5MachO15DyldBindingInfoESaIS3_EE11_M_allocateEm.exit.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.at, %_ZNSt12_Vector_baseIPN4LIEF5MachO15DyldBindingInfoESaIS3_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %_ZNSt12_Vector_baseIPN4LIEF5MachO15DyldBindingInfoESaIS3_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88
  store ptr %i.ax, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EEC2ISt23_Rb_tree_const_iteratorIS3_EvEET_S9_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1097

_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EEC2ISt23_Rb_tree_const_iteratorIS3_EvEET_S9_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.ba = phi ptr [ null, %bb.a ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bb = phi ptr [ null, %bb.a ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  store i64 0, ptr %i.q, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  store i8 0, ptr %i.r, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.bd, ptr %14, align 8, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.be, align 8, !tbaa !118
  store i8 0, ptr %i.bd, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  store i64 0, ptr %i.s, align 8, !tbaa !99
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !318, !range !157, !noundef !158
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = select i1 %i.bj, i64 8, i64 4
  %.not394413 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not394413, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EEC2ISt23_Rb_tree_const_iteratorIS3_EvEET_S9_RKS4_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.aa
  %.0117418 = phi i64 [ -1, %.lr.ph ], [ %.2119, %bb.aa ] ; 4 uses
  %.0120417 = phi i32 [ -2147483648, %.lr.ph ], [ %.1121, %bb.aa ] ; 2 uses
  %.0124415 = phi i64 [ -1, %.lr.ph ], [ %.2126, %bb.aa ] ; 2 uses
  %.sroa.0316.0414 = phi ptr [ %i.ba, %.lr.ph ], [ %i.fs, %bb.aa ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.0316.0414, align 8, !tbaa !88 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !365 ; 7 uses
  store i32 %i.bp, ptr %i.t, align 4, !tbaa !97
  %.not = icmp ne i32 %.0120417, %i.bp            ; 3 uses
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #26
  store i8 48, ptr %i.u, align 1, !tbaa !106
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !355 ; 9 uses
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !356
  %.not.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  %i.bt = sext i32 %i.bp to i64
  store i8 48, ptr %i.br, align 8, !tbaa !358
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !359
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 0, ptr %i.bv, align 8, !tbaa !360
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !116
  store i8 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i64 0, ptr %i.by, align 8, !tbaa !118
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr %i.bz, ptr %i.bl, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRKiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.br, ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.ca = icmp samesign ult i32 %i.bp, 16
  br i1 %i.ca, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #26
  store i8 16, ptr %i.v, align 1, !tbaa !106
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !355 ; 9 uses
  %i.cc = load ptr, ptr %i.bm, align 8, !tbaa !356
  %.not.i158 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i158, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159: ; preds = %bb.h
  %i.cd = zext nneg i32 %i.bp to i64
  store i8 16, ptr %i.cb, align 8, !tbaa !358
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !359
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 0, ptr %i.cf, align 8, !tbaa !360
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !116
  store i8 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i64 0, ptr %i.ci, align 8, !tbaa !118
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %i.cj, ptr %i.bl, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit162

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRKiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit162

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #26
  store i8 32, ptr %i.w, align 1, !tbaa !106
  %i.ck = load ptr, ptr %i.bl, align 8, !tbaa !355 ; 9 uses
  %i.cl = load ptr, ptr %i.bm, align 8, !tbaa !356
  %.not.i163 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i163, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164: ; preds = %bb.j
  %i.cm = zext nneg i32 %i.bp to i64
  store i8 32, ptr %i.ck, align 8, !tbaa !358
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !359
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 0, ptr %i.co, align 8, !tbaa !360
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !116
  store i8 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 0, ptr %i.cr, align 8, !tbaa !118
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store ptr %i.cs, ptr %i.bl, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit167

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRKiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.ck, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit167

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit162, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit167, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRKiEEERS3_DpOT_.exit
  %i.ct = load i32, ptr %i.t, align 4, !tbaa !97
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.1121 = phi i32 [ %i.ct, %bb.l ], [ %.0120417, %bb.c ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !350 ; 3 uses
  %.not399 = icmp eq ptr %i.cv, null
  br i1 %.not399, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 4, ptr nonnull @.str.72, i64 39)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread368

bb.o:                                             ; preds = %bb.m
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !69
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr %i.da(ptr noundef nonnull align 8 dereferenceable(56) %i.cv) #26 ; 2 uses
  %i.dc = load i64, ptr %i.be, align 8, !tbaa !118 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !118
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.dg = icmp eq i64 %i.dc, 0
  br i1 %i.dg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread345, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.p
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !175
  %i.di = load ptr, ptr %14, align 8, !tbaa !175
  %bcmp.i.i = call i32 @bcmp(ptr %i.di, ptr %i.dh, i64 %i.dc)
  %.not400 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not400, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread345, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.o, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #26
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !366, !range !157, !noundef !158
  %i.dl = zext nneg i8 %i.dk to i64
  store i64 %i.dl, ptr %i.x, align 8, !tbaa !99
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !350 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef nonnull align 8 dereferenceable(32) ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(56) %i.dm) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.dq) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  store i8 64, ptr %i.y, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  store i32 0, ptr %i.z, align 4, !tbaa !97
  %i.dr = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #26
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread345

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread345: ; preds = %bb.p, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.1129 = phi i1 [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.not, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.not, %bb.p ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !352 ; 2 uses
  %i.du = load i8, ptr %i.r, align 1, !tbaa !106
  %i.dv = zext i8 %i.du to i64
  %.not143 = icmp eq i64 %i.dt, %i.dv
  br i1 %.not143, label %bb.u, label %bb.q

end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EESt6vectorIPNS0_14RelocationDyldESaISE_EERNS_15vector_iostreamE:bb.a

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRhEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.dy, ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %i.r)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i169, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread345
  %.2130 = phi i1 [ true, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRhEEERS3_DpOT_.exit ], [ %.1129, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread345 ]
  %i.eg = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call noundef i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(64) %i.bn) #26
  %.not145 = icmp eq i64 %.0117418, %i.ej
  br i1 %.not145, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call noundef i64 %i.em(ptr noundef nonnull align 8 dereferenceable(64) %i.bn) #26 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !361 ; 2 uses
  %.not146 = icmp eq ptr %i.ep, null
  br i1 %.not146, label %.thread, label %.thread348

.thread:                                          ; preds = %bb.v
  %i.eq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.er, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.74, i64 39)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread368

bb.w:                                             ; preds = %bb.u
  %i.es = load i64, ptr %i.s, align 8, !tbaa !99
  %i.et = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !362 ; 2 uses
  %.not147 = icmp eq i64 %i.es, %i.eu
  br i1 %.not147, label %bb.y, label %.critedge155

.thread348:                                       ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !248
  %i.ex = sext i8 %i.ew to i64
  store i64 %i.ex, ptr %i.q, align 8, !tbaa !99
  %i.ey = load i64, ptr %i.s, align 8, !tbaa !99
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !362 ; 2 uses
  %.not147352 = icmp eq i64 %i.ey, %i.fa
  br i1 %.not147352, label %.thread360, label %.critedge155

.critedge155:                                     ; preds = %.thread348, %bb.w
  %i.fb = phi i64 [ %i.fa, %.thread348 ], [ %i.eu, %bb.w ] ; 2 uses
  %.1118355 = phi i64 [ %i.en, %.thread348 ], [ %.0117418, %bb.w ]
  store i64 %i.fb, ptr %i.s, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i8 96, ptr %i.ab, align 1, !tbaa !106
  %i.fc = load ptr, ptr %i.bl, align 8, !tbaa !355 ; 9 uses
  %i.fd = load ptr, ptr %i.bm, align 8, !tbaa !356
  %.not.i172 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not.i172, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173: ; preds = %.critedge155
  store i8 96, ptr %i.fc, align 8, !tbaa !358
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %i.fb, ptr %i.fe, align 8, !tbaa !359
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 0, ptr %i.ff, align 8, !tbaa !360
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 2 uses
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !116
  store i8 0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i64 0, ptr %i.fi, align 8, !tbaa !118
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  store ptr %i.fj, ptr %i.bl, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRlEEERS3_DpOT_.exit

bb.x:                                             ; preds = %.critedge155
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRlEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRlEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRlEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  br label %.thread360

bb.y:                                             ; preds = %bb.w
  br i1 %.2130, label %.thread360, label %bb.aa

.thread360:                                       ; preds = %.thread348, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRlEEERS3_DpOT_.exit, %bb.y
  %.1118354 = phi i64 [ %.1118355, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRlEEERS3_DpOT_.exit ], [ %.0117418, %bb.y ], [ %i.en, %.thread348 ]
  %i.fk = add i64 %.0124415, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #26
  store i8 -112, ptr %i.ac, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #26
  store i32 0, ptr %i.ad, align 4, !tbaa !97
  %i.fl = load ptr, ptr %i.bl, align 8, !tbaa !355 ; 8 uses
  %i.fm = load ptr, ptr %i.bm, align 8, !tbaa !356
  %.not.i176 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i176, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177: ; preds = %.thread360
  store i8 -112, ptr %i.fl, align 8, !tbaa !358
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !116
  store i8 0, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  store i64 0, ptr %i.fq, align 8, !tbaa !118
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  store ptr %i.fr, ptr %i.bl, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit

bb.z:                                             ; preds = %.thread360
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.fl, ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  br label %bb.aa

.thread368:                                       ; preds = %.thread, %bb.n, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit, %bb.y
  %.2126 = phi i64 [ %.0124415, %bb.y ], [ %i.fk, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit ] ; 3 uses
  %.2119 = phi i64 [ %.0117418, %bb.y ], [ %.1118354, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0316.0414, i64 8 ; 2 uses
  %.not394 = icmp eq ptr %i.fs, %i.bb
  br i1 %.not394, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.aa
  %i.ft = add i64 %.2126, -65536
  %or.cond = icmp ult i64 %i.ft, -65537
  br i1 %or.cond, label %bb.ab, label %._crit_edge.thread

bb.ab:                                            ; preds = %._crit_edge
  %i.fu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fv, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.75, i64 44)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EEC2ISt23_Rb_tree_const_iteratorIS3_EvEET_S9_RKS4_.exit, %._crit_edge
  %.0124.lcssa577 = phi i64 [ %.2126, %._crit_edge ], [ -1, %_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EEC2ISt23_Rb_tree_const_iteratorIS3_EvEET_S9_RKS4_.exit ]
  %i.fw = ptrtoint ptr %i.bb to i64
  %i.fx = ptrtoint ptr %i.ba to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 3                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !349 ; 2 uses
  %i.gc = load ptr, ptr %2, align 8, !tbaa !348   ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3                 ; 2 uses
  %i.gh = add nsw i64 %i.gg, %i.fz                ; 4 uses
  %i.gi = icmp ugt i64 %i.gh, 1152921504606846975
  br i1 %i.gi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.229) #28
  unreachable

bb.ad:                                            ; preds = %._crit_edge.thread
  %.not395 = icmp eq i64 %i.gh, 0
  br i1 %.not395, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.ad
  %i.gj = shl nuw nsw i64 %i.gh, 3
  %i.gk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #29 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gh
  %.pre = load ptr, ptr %i.ga, align 8, !tbaa !349 ; 2 uses
  %.pre452.a = load ptr, ptr %2, align 8, !tbaa !348 ; 2 uses
  %.pre460 = ptrtoint ptr %.pre to i64
  %.pre461.a = ptrtoint ptr %.pre452.a to i64
  %.pre463 = sub i64 %.pre460, %.pre461.a
  %.pre465 = ashr exact i64 %.pre463, 3
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.ad, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.pre-phi466 = phi i64 [ %i.gg, %bb.ad ], [ %.pre465, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ]
  %i.gm = phi ptr [ %i.gc, %bb.ad ], [ %.pre452.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ]
  %i.gn = phi ptr [ %i.gb, %bb.ad ], [ %.pre, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ]
  %.sroa.0297.2 = phi ptr [ null, %bb.ad ], [ %i.gk, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ] ; 4 uses
  %.sroa.24.2 = phi ptr [ null, %bb.ad ], [ %i.gl, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ] ; 2 uses
  %.not148419 = icmp eq ptr %i.gn, %i.gm
  br i1 %.not148419, label %._crit_edge425, label %.lr.ph424

._crit_edge425.loopexit:                          ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.pre453 = load ptr, ptr %i.bc, align 8, !tbaa !1104 ; 2 uses
  %.pre454 = load ptr, ptr %12, align 8, !tbaa !369 ; 2 uses
  %.pre467 = ptrtoint ptr %.pre453 to i64
  %.pre469 = ptrtoint ptr %.pre454 to i64
  %.pre471 = sub i64 %.pre467, %.pre469
  %.pre473 = ashr exact i64 %.pre471, 3
  br label %._crit_edge425

._crit_edge425:                                   ; preds = %._crit_edge425.loopexit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %.pre-phi474 = phi i64 [ %.pre473, %._crit_edge425.loopexit ], [ %i.fz, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %16 = phi ptr [ %.pre454, %._crit_edge425.loopexit ], [ %i.ba, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %17 = phi ptr [ %.pre453, %._crit_edge425.loopexit ], [ %i.bb, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %.sroa.0297.0.lcssa = phi ptr [ %.sroa.0297.3, %._crit_edge425.loopexit ], [ %.sroa.0297.2, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.13.3, %._crit_edge425.loopexit ], [ %.sroa.0297.2, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.24.0.lcssa = phi ptr [ %.sroa.24.3, %._crit_edge425.loopexit ], [ %.sroa.24.2, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.not149429 = icmp eq ptr %17, %16
  br i1 %.not149429, label %._crit_edge436, label %.lr.ph435

.lr.ph424:                                        ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.0123423 = phi i64 [ %i.hd, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 2 uses
  %.sroa.24.0422 = phi ptr [ %.sroa.24.3, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.24.2, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %.sroa.13.0421 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.0297.2, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %.sroa.0297.0420 = phi ptr [ %.sroa.0297.3, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.0297.2, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 5 uses
  %i.go = sub nsw i64 0, %.0123423                ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0421, %.sroa.24.0422
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph424
  store i64 %i.go, ptr %.sroa.13.0421, align 8, !tbaa !99
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.af:                                            ; preds = %.lr.ph424
  %i.gp = ptrtoint ptr %.sroa.24.0422 to i64
  %i.gq = ptrtoint ptr %.sroa.0297.0420 to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.ag, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.gt = ashr exact i64 %i.gr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 1152921504606846975)
  %i.gx = select i1 %i.gv, i64 1152921504606846975, i64 %i.gw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #29 ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gr ; 2 uses
  store i64 %i.go, ptr %i.ha, align 8, !tbaa !99
  %i.hb = icmp sgt i64 %i.gr, 0
  br i1 %i.hb, label %bb.ah, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr align 8 %.sroa.0297.0420, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0297.0420, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0297.0420, i64 noundef %i.gr) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.0297.3 = phi ptr [ %i.gz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0297.0420, %bb.ae ] ; 2 uses
  %.pn = phi ptr [ %i.ha, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0421, %bb.ae ]
  %.sroa.24.3 = phi ptr [ %i.hc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.24.0422, %bb.ae ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.hd = add nuw nsw i64 %.0123423, 1            ; 2 uses
  %.not148 = icmp eq i64 %i.hd, %.pre-phi466
  br i1 %.not148, label %._crit_edge425.loopexit, label %.lr.ph424, !llvm.loop !1098

._crit_edge436:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit189, %._crit_edge425
  %.sroa.0297.1.lcssa = phi ptr [ %.sroa.0297.0.lcssa, %._crit_edge425 ], [ %.sroa.0297.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit189 ] ; 10 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0.lcssa, %._crit_edge425 ], [ %.sroa.13.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit189 ] ; 7 uses
  %.sroa.24.1.lcssa = phi ptr [ %.sroa.24.0.lcssa, %._crit_edge425 ], [ %.sroa.24.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit189 ]
  %.not.i.i180 = icmp eq ptr %.sroa.0297.1.lcssa, %.sroa.13.1.lcssa
  br i1 %.not.i.i180, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS8_15DyldBindingInfoESt8functionIFbSC_SC_EESaISC_EES3_IPNS8_14RelocationDyldESaISL_EERNS7_15vector_iostreamEE3$_0EvT_SR_T0_.exit.thread578", label %bb.aj

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS8_15DyldBindingInfoESt8functionIFbSC_SC_EESaISC_EES3_IPNS8_14RelocationDyldESaISL_EERNS7_15vector_iostreamEE3$_0EvT_SR_T0_.exit.thread578": ; preds = %._crit_edge436
  store i64 0, ptr %i.q, align 8, !tbaa !99
  br label %._crit_edge446

bb.aj:                                            ; preds = %._crit_edge436
  %i.he = ptrtoint ptr %.sroa.13.1.lcssa to i64
  %i.hf = ptrtoint ptr %.sroa.0297.1.lcssa to i64
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = ashr exact i64 %i.hg, 3
  %i.hi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hh, i1 true)
  %i.hj = shl nuw nsw i64 %i.hi, 1
  %i.hk = xor i64 %i.hj, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_SU_T0_T1_"(ptr %.sroa.0297.1.lcssa, ptr %.sroa.13.1.lcssa, i64 noundef %i.hk, ptr nonnull readonly %12, ptr nonnull readonly %2)
  %i.hl = icmp sgt i64 %i.hg, 128
  br i1 %i.hl, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0297.1.lcssa, i64 128 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_SU_T0_"(ptr %.sroa.0297.1.lcssa, ptr nonnull %i.hm, ptr nonnull readonly %12, ptr nonnull readonly %2)
  %.not11.i.i.i.i = icmp eq ptr %i.hm, %.sroa.13.1.lcssa
  br i1 %.not11.i.i.i.i, label %.lr.ph445, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ak
  %18 = load ptr, ptr %12, align 8                ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.012.i.i.i.i = phi ptr [ %i.ji, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.hm, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %i.hn = load i64, ptr %.sroa.0.012.i.i.i.i, align 8, !tbaa !99 ; 7 uses
  %.sroa.0.011.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i, i64 -8 ; 3 uses
  %i.ho = load i64, ptr %.sroa.0.011.i.i.i.i.i, align 8, !tbaa !99 ; 3 uses
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.hq = icmp slt i64 %i.hn, 1
  %i.hr = sub nsw i64 0, %i.hn
  br i1 %i.hq, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.hs = getelementptr [8 x i8], ptr %18, i64 %i.hn
  %i.ht = getelementptr i8, ptr %i.hs, i64 -8
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %19 = load ptr, ptr %12, align 8
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.an
  %i.hu = phi i64 [ %i.in, %bb.an ], [ %i.ho, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.013.us.i.i.i.i.i = phi ptr [ %.sroa.0.0.us.i.i.i.i.i, %bb.an ], [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.07.012.us.i.i.i.i.i = phi ptr [ %.sroa.0.013.us.i.i.i.i.i, %bb.an ], [ %.sroa.0.012.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %i.hv = load ptr, ptr %2, align 8, !tbaa !348
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hr
  %.sink18.i.i.us.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !tbaa !102 ; 2 uses
  %i.hx = load ptr, ptr %.sink18.i.i.us.i.i.i.i.i, align 8, !tbaa !69
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = call noundef i64 %i.hz(ptr noundef nonnull align 8 dereferenceable(17) %.sink18.i.i.us.i.i.i.i.i) #26, !inline_history !1099
  %i.ib = icmp slt i64 %i.hu, 1
  br i1 %i.ib, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.ic = getelementptr [8 x i8], ptr %19, i64 %i.hu
  %i.id = getelementptr i8, ptr %i.ic, i64 -8
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.us.i.i.i.i.i"

bb.am:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.ie = sub nsw i64 0, %i.hu
  %i.if = load ptr, ptr %2, align 8, !tbaa !348
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ie
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.us.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.us.i.i.i.i.i": ; preds = %bb.am, %bb.al
  %.sink23.in.i.i.us.i.i.i.i.i = phi ptr [ %i.id, %bb.al ], [ %i.ig, %bb.am ]
  %.sink23.i.i.us.i.i.i.i.i = load ptr, ptr %.sink23.in.i.i.us.i.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.ih = load ptr, ptr %.sink23.i.i.us.i.i.i.i.i, align 8, !tbaa !69
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call noundef i64 %i.ij(ptr noundef nonnull align 8 dereferenceable(17) %.sink23.i.i.us.i.i.i.i.i) #26, !inline_history !1099
  %i.il = icmp ult i64 %i.ia, %i.ik
  br i1 %i.il, label %bb.an, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.an:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.us.i.i.i.i.i"
  %i.im = load i64, ptr %.sroa.0.013.us.i.i.i.i.i, align 8, !tbaa !99
  store i64 %i.im, ptr %.sroa.07.012.us.i.i.i.i.i, align 8, !tbaa !99
  %.sroa.0.0.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.us.i.i.i.i.i, i64 -8 ; 2 uses
  %i.in = load i64, ptr %.sroa.0.0.us.i.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.io = icmp eq i64 %i.hn, %i.in
  br i1 %i.io, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i", label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !9

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %bb.aq
  %i.ip = phi i64 [ %i.jg, %bb.aq ], [ %i.ho, %.lr.ph.split.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.aq ], [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i.i.i.i, %bb.aq ], [ %.sroa.0.012.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %.sink18.i.i.i.i.i.i.i = load ptr, ptr %i.ht, align 8, !tbaa !102 ; 2 uses
  %i.iq = load ptr, ptr %.sink18.i.i.i.i.i.i.i, align 8, !tbaa !69
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef i64 %i.is(ptr noundef nonnull align 8 dereferenceable(17) %.sink18.i.i.i.i.i.i.i) #26, !inline_history !1099
  %i.iu = icmp slt i64 %i.ip, 1
  br i1 %i.iu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.iv = sub nsw i64 0, %i.ip
  %i.iw = load ptr, ptr %2, align 8, !tbaa !348
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iv
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.i.i.i.i.i"

bb.ap:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.iy = getelementptr [8 x i8], ptr %18, i64 %i.ip
  %i.iz = getelementptr i8, ptr %i.iy, i64 -8
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %bb.ap, %bb.ao
  %.sink23.in.i.i.i.i.i.i.i = phi ptr [ %i.iz, %bb.ap ], [ %i.ix, %bb.ao ]
  %.sink23.i.i.i.i.i.i.i = load ptr, ptr %.sink23.in.i.i.i.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.ja = load ptr, ptr %.sink23.i.i.i.i.i.i.i, align 8, !tbaa !69
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call noundef i64 %i.jc(ptr noundef nonnull align 8 dereferenceable(17) %.sink23.i.i.i.i.i.i.i) #26, !inline_history !1099
  %i.je = icmp ult i64 %i.it, %i.jd
  br i1 %i.je, label %bb.aq, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.aq:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.i.i.i.i.i"
  %i.jf = load i64, ptr %.sroa.0.013.i.i.i.i.i, align 8, !tbaa !99
  store i64 %i.jf, ptr %.sroa.07.012.i.i.i.i.i, align 8, !tbaa !99
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -8 ; 2 uses
  %i.jg = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.jh = icmp eq i64 %i.hn, %i.jg
  br i1 %i.jh, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i", label %.lr.ph.split.i.i.i.i.i, !llvm.loop !9

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %bb.aq, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.i.i.i.i.i", %bb.an, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.us.i.i.i.i.i", %.lr.ph.i.i.i.i
  %.sroa.07.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.013.us.i.i.i.i.i, %bb.an ], [ %.sroa.07.012.us.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.us.i.i.i.i.i" ], [ %.sroa.07.012.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS3_15DyldBindingInfoESt8functionIFbS7_S7_EESaIS7_EESt6vectorIPNS3_14RelocationDyldESaISH_EERNS2_15vector_iostreamEE3$_0EclImNS_17__normal_iteratorIPmSF_ImSaImEEEEEEbRT_T0_.exit.i.i.i.i.i" ], [ %.sroa.0.013.i.i.i.i.i, %bb.aq ]
  store i64 %i.hn, ptr %.sroa.07.0.lcssa.i.i.i.i.i, align 8, !tbaa !99
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i181 = icmp eq ptr %i.ji, %.sroa.13.1.lcssa
  br i1 %.not.i.i.i.i181, label %.lr.ph445, label %.lr.ph.i.i.i.i, !llvm.loop !1100

bb.ar:                                            ; preds = %bb.aj
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_SU_T0_"(ptr %.sroa.0297.1.lcssa, ptr %.sroa.13.1.lcssa, ptr nonnull readonly %12, ptr nonnull readonly %2)
  br label %.lr.ph445

.lr.ph445:                                        ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNSA_15DyldBindingInfoESt8functionIFbSE_SE_EESaISE_EES3_IPNSA_14RelocationDyldESaISN_EERNS9_15vector_iostreamEE3$_0EEEvT_T0_.exit.i.i.i.i", %bb.ar, %bb.ak
  store i64 0, ptr %i.q, align 8, !tbaa !99
  %20 = load ptr, ptr %12, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.ax

.lr.ph435:                                        ; preds = %._crit_edge425, %_ZNSt6vectorImSaImEE9push_backEOm.exit189
  %.0122433 = phi i64 [ %i.jl, %_ZNSt6vectorImSaImEE9push_backEOm.exit189 ], [ 0, %._crit_edge425 ]
  %.sroa.24.1432 = phi ptr [ %.sroa.24.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit189 ], [ %.sroa.24.0.lcssa, %._crit_edge425 ] ; 3 uses
  %.sroa.13.1431 = phi ptr [ %.sroa.13.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit189 ], [ %.sroa.13.0.lcssa, %._crit_edge425 ] ; 3 uses
  %.sroa.0297.1430 = phi ptr [ %.sroa.0297.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit189 ], [ %.sroa.0297.0.lcssa, %._crit_edge425 ] ; 5 uses
  %i.jl = add nuw nsw i64 %.0122433, 1            ; 4 uses
  %.not.i.i182 = icmp eq ptr %.sroa.13.1431, %.sroa.24.1432
  br i1 %.not.i.i182, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph435
  store i64 %i.jl, ptr %.sroa.13.1431, align 8, !tbaa !99
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit189

bb.at:                                            ; preds = %.lr.ph435
  %i.jm = ptrtoint ptr %.sroa.24.1432 to i64
  %i.jn = ptrtoint ptr %.sroa.0297.1430 to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 6 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %bb.au, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i183

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i183: ; preds = %bb.at
  %i.jq = ashr exact i64 %i.jo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i184 = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i.i184, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 1152921504606846975)
  %i.ju = select i1 %i.js, i64 1152921504606846975, i64 %i.jt ; 3 uses
  %.not.i.i.i.i185 = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %.not.i.i.i.i185)
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #29 ; 4 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.jo ; 2 uses
  store i64 %i.jl, ptr %i.jx, align 8, !tbaa !99
  %i.jy = icmp sgt i64 %i.jo, 0
  br i1 %i.jy, label %bb.av, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i186

bb.av:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i183
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jw, ptr align 8 %.sroa.0297.1430, i64 %i.jo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i186

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i186: ; preds = %bb.av, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i183
  %.not.i17.i.i.i187 = icmp eq ptr %.sroa.0297.1430, null
  br i1 %.not.i17.i.i.i187, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i188, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0297.1430, i64 noundef %i.jo) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i188

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i188: ; preds = %bb.aw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i186
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.ju
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit189

_ZNSt6vectorImSaImEE9push_backEOm.exit189:        ; preds = %bb.as, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i188
  %.sroa.0297.4 = phi ptr [ %i.jw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i188 ], [ %.sroa.0297.1430, %bb.as ] ; 2 uses
  %.pn396 = phi ptr [ %i.jx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i188 ], [ %.sroa.13.1431, %bb.as ]
  %.sroa.24.4 = phi ptr [ %i.jz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i188 ], [ %.sroa.24.1432, %bb.as ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn396, i64 8 ; 2 uses
  %.not149 = icmp eq i64 %i.jl, %.pre-phi474
  br i1 %.not149, label %._crit_edge436, label %.lr.ph435, !llvm.loop !1101

bb.ax:                                            ; preds = %.lr.ph445, %bb.bi
  %.0109444 = phi i64 [ 0, %.lr.ph445 ], [ %.1110.ph, %bb.bi ] ; 2 uses
  %.0111443 = phi i64 [ 0, %.lr.ph445 ], [ %.2113.ph, %bb.bi ] ; 4 uses
  %.0114442 = phi i64 [ 0, %.lr.ph445 ], [ %.2116.ph, %bb.bi ] ; 3 uses
  %.sroa.0290.0441 = phi ptr [ %.sroa.0297.1.lcssa, %.lr.ph445 ], [ %i.md, %bb.bi ] ; 2 uses
  %i.ka = load i64, ptr %.sroa.0290.0441, align 8, !tbaa !99 ; 3 uses
  %i.kb = icmp slt i64 %i.ka, 1
  br i1 %i.kb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kc = sub nsw i64 0, %i.ka
  %i.kd = load ptr, ptr %2, align 8, !tbaa !348
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kc
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !245 ; 3 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !69
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = call noundef i64 %i.ki(ptr noundef nonnull align 8 dereferenceable(17) %i.kf) #26
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.kl = getelementptr [8 x i8], ptr %20, i64 %i.ka
  %i.km = getelementptr i8, ptr %i.kl, i64 -8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !88 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !69
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = call noundef i64 %i.kq(ptr noundef nonnull align 8 dereferenceable(64) %i.kn) #26
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0108 = phi i64 [ %i.kj, %bb.ay ], [ %i.kr, %bb.az ] ; 5 uses
  %.0107.in = phi ptr [ %i.kk, %bb.ay ], [ %i.ks, %bb.az ]
  %.0107 = load ptr, ptr %.0107.in, align 8, !tbaa !174 ; 4 uses
  %.not153 = icmp eq ptr %.0107, null
  br i1 %.not153, label %.thread389, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kt = and i64 %.0108, 7
  %.not150 = icmp eq i64 %i.kt, 0
  br i1 %.not150, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ku = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.kv, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 3, ptr nonnull @.str.77, i64 19)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kw = icmp uge i64 %.0108, %.0111443
  %.not151 = icmp ult i64 %.0108, %.0114442
  %or.cond156 = select i1 %i.kw, i1 %.not151, i1 false
  br i1 %or.cond156, label %bb.be, label %.thread370

.thread370:                                       ; preds = %bb.bd
  %i.kx = getelementptr inbounds nuw i8, ptr %.0107, i64 136
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !248
  %i.kz = sext i8 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %.0107, i64 88
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !222 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.0107, i64 96
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !226
  %i.le = add i64 %i.ld, %i.lb
  store i64 %i.kz, ptr %i.q, align 8, !tbaa !99
  %i.lf = sub i64 %.0108, %i.lb                   ; 2 uses
  %i.lg = lshr i64 %i.lf, 12
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lh = sub nuw i64 %.0108, %.0111443           ; 2 uses
  %i.li = lshr i64 %i.lh, 12                      ; 2 uses
  %.not152 = icmp eq i64 %i.li, %.0109444
  br i1 %.not152, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %.thread370, %bb.be
  %i.lj = phi i64 [ %i.lg, %.thread370 ], [ %i.li, %bb.be ]
  %i.lk = phi i64 [ %i.lf, %.thread370 ], [ %i.lh, %bb.be ] ; 2 uses
  %.1112378 = phi i64 [ %i.lb, %.thread370 ], [ %.0111443, %bb.be ]
  %.1115377 = phi i64 [ %i.le, %.thread370 ], [ %.0114442, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #26
  store i8 112, ptr %i.ae, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #26
  store i64 %i.lk, ptr %i.af, align 8, !tbaa !99
  %i.ll = load ptr, ptr %i.jj, align 8, !tbaa !355 ; 9 uses
  %i.lm = load ptr, ptr %i.jk, align 8, !tbaa !356 ; 2 uses
  %.not.i190 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not.i190, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191: ; preds = %bb.bf
  %i.ln = load i64, ptr %i.q, align 8, !tbaa !99
  store i8 112, ptr %i.ll, align 8, !tbaa !358
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !359
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i64 %i.lk, ptr %i.lp, align 8, !tbaa !360
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 40 ; 2 uses
  store ptr %i.lr, ptr %i.lq, align 8, !tbaa !116
  store i8 0, ptr %i.lr, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store i64 0, ptr %i.ls, align 8, !tbaa !118
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 56 ; 2 uses
  store ptr %i.lt, ptr %i.jj, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmmEEERS3_DpOT_.exit

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhRmmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.ll, ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre455.a = load ptr, ptr %i.jj, align 8, !tbaa !355
  %.pre456 = load ptr, ptr %i.jk, align 8, !tbaa !356
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmmEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmmEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191, %bb.bg
  %i.lu = phi ptr [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191 ], [ %.pre456, %bb.bg ]
  %i.lv = phi ptr [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191 ], [ %.pre455.a, %bb.bg ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #26
  store i32 209, ptr %i.ag, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #26
  store i32 0, ptr %i.ah, align 4, !tbaa !97
  %.not.i193 = icmp eq ptr %i.lv, %i.lu
  br i1 %.not.i193, label %bb.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194: ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmmEEERS3_DpOT_.exit
  store i8 -47, ptr %i.lv, align 8, !tbaa !358
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, i8 0, i64 16, i1 false)
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !116
  store i8 0, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  store i64 0, ptr %i.lz, align 8, !tbaa !118
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 56
  store ptr %i.ma, ptr %i.jj, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJiiEEERS3_DpOT_.exit

bb.bh:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhRmmEEERS3_DpOT_.exit
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.lv, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ah)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJiiEEERS3_DpOT_.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJiiEEERS3_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #26
  br label %bb.bi

.thread389:                                       ; preds = %bb.ba
  %i.mb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.mc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.76, i64 39)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.eb

bb.bi:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJiiEEERS3_DpOT_.exit, %bb.be
  %.2116.ph = phi i64 [ %.1115377, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJiiEEERS3_DpOT_.exit ], [ %.0114442, %bb.be ]
  %.2113.ph = phi i64 [ %.1112378, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJiiEEERS3_DpOT_.exit ], [ %.0111443, %bb.be ]
  %.1110.ph = phi i64 [ %i.lj, %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJiiEEERS3_DpOT_.exit ], [ %.0109444, %bb.be ]
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0290.0441, i64 8 ; 2 uses
  %.not397 = icmp eq ptr %i.md, %.sroa.13.1.lcssa
  br i1 %.not397, label %._crit_edge446, label %bb.ax

._crit_edge446:                                   ; preds = %bb.bi, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS8_15DyldBindingInfoESt8functionIFbSC_SC_EESaISC_EES3_IPNS8_14RelocationDyldESaISL_EERNS7_15vector_iostreamEE3$_0EvT_SR_T0_.exit.thread578"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #26
  store i8 0, ptr %i.ai, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #26
  store i32 0, ptr %i.aj, align 4, !tbaa !97
  %i.me = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !355 ; 8 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !356
  %.not.i197 = icmp eq ptr %i.mf, %i.mh
  br i1 %.not.i197, label %bb.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198: ; preds = %._crit_edge446
  store i8 0, ptr %i.mf, align 8, !tbaa !358
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mi, i8 0, i64 16, i1 false)
  store ptr %i.mk, ptr %i.mj, align 8, !tbaa !116
  store i8 0, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  store i64 0, ptr %i.ml, align 8, !tbaa !118
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  store ptr %i.mm, ptr %i.me, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit201

bb.bj:                                            ; preds = %._crit_edge446
  call void @_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJhiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.mf, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.aj)
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit201

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.mn = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 51 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %15, i8 0, i64 64, i1 false)
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !328
  %i.mp = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 17 uses
  store i8 0, ptr %i.mp, align 8, !tbaa !329
  %i.mq = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 47 uses
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, i64 noundef 1)
  %i.mr = load i8, ptr %i.mp, align 8, !tbaa !329, !range !157, !noundef !158
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE12emplace_backIJhiEEERS3_DpOT_.exit201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  store i8 -48, ptr %i.p, align 1, !tbaa !106
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.p) #26
  %i.mt = load ptr, ptr %i.mo, align 8, !tbaa !328
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !95
  %i.mv = load i8, ptr %i.p, align 1
  store i8 %i.mv, ptr %i.mu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO8DyldInfo27update_standard_bindings_v2ERKSt3setIPNS0_15DyldBindingInfoESt8functionIFbS4_S4_EESaIS4_EESt6vectorIPNS0_14RelocationDyldESaISE_EERNS_15vector_iostreamE:bb.a
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 %.sroa.0.0.copyload.i.i244
  store i8 -47, ptr %i.abu, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit246

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit246: ; preds = %bb.dr, %bb.ds
  %i.abv = load i64, ptr %i.mq, align 8, !tbaa !330
  %i.abw = add nsw i64 %i.abv, 1
  store i64 %i.abw, ptr %i.mq, align 8, !tbaa !330
  br label %bb.du

bb.dt:                                            ; preds = %.lr.ph448
  %i.abx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aby, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.78, i64 18)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.critedge

bb.du:                                            ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit246, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit243, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit240, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit237, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit234, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit231, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit228, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit225, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit222, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit219, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit216, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit213, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit210, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit207
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.0283.0447, i64 56 ; 2 uses
  %i.aca = load ptr, ptr %i.me, align 8
  %i.acb = icmp eq ptr %i.abz, %i.aca
  br i1 %i.acb, label %.critedge, label %.lr.ph448, !llvm.loop !1102

bb.dv:                                            ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit204
  %i.acc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #26
  %i.acd = load i64, ptr %i.oi, align 8, !tbaa !108
  store i64 %i.acd, ptr %i.ak, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #26
  %i.ace = load ptr, ptr %i.mo, align 8, !tbaa !328 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !104
  %i.ach = load ptr, ptr %i.ace, align 8, !tbaa !95
  %i.aci = ptrtoint ptr %i.acg to i64
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = sub i64 %i.aci, %i.acj
  store i64 %i.ack, ptr %i.al, align 8, !tbaa !99
  %i.acl = load ptr, ptr %i.acc, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.acl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 2, ptr nonnull @.str.79, i64 68, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #26
  %.pre457 = load ptr, ptr %i.mo, align 8, !tbaa !328 ; 2 uses
  %.pre458 = load ptr, ptr %.pre457, align 8, !tbaa !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre457, i64 8
  %.pre459 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !98
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit204
  %i.acm = phi ptr [ %.pre459, %bb.dv ], [ %i.od, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit204 ] ; 2 uses
  %i.acn = phi ptr [ %.pre458, %bb.dv ], [ %i.oe, %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit204 ] ; 3 uses
  %i.aco = icmp eq ptr %i.acn, %i.acm
  br i1 %i.aco, label %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.acp = ptrtoint ptr %i.acm to i64
  %i.acq = ptrtoint ptr %i.acn to i64
  %i.acr = sub i64 %i.acp, %i.acq
  %i.acs = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.acn, i64 noundef %i.acr) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit: ; preds = %bb.dw, %bb.dx
  %i.act = load ptr, ptr %i.mn, align 8, !tbaa !95 ; 3 uses
  %.not.i.i.i.i247 = icmp eq ptr %i.act, null
  br i1 %.not.i.i.i.i247, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit
  %i.acu = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !96
  %i.acw = ptrtoint ptr %i.acv to i64
  %i.acx = ptrtoint ptr %i.act to i64
  %i.acy = sub i64 %i.acw, %i.acx
  call void @_ZdlPvm(ptr noundef nonnull %i.act, i64 noundef %i.acy) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.dy, %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit
  %i.acz = load ptr, ptr %15, align 8, !tbaa !331 ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !332 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.acz, %i.adb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i248

.lr.ph.i.i.i.i248:                                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.adi, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.acz, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.adc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.adc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i248
  %i.add = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !336
  %i.adf = ptrtoint ptr %i.ade to i64
  %i.adg = ptrtoint ptr %i.adc to i64
  %i.adh = sub i64 %i.adf, %i.adg
  call void @_ZdlPvm(ptr noundef nonnull %i.adc, i64 noundef %i.adh) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.dz, %.lr.ph.i.i.i.i248
  %i.adi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.adi, %i.adb
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i248, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %15, align 8, !tbaa !331
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.adj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.acz, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.adj, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.adk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !337
  %i.adm = ptrtoint ptr %i.adl to i64
  %i.adn = ptrtoint ptr %i.adj to i64
  %i.ado = sub i64 %i.adm, %i.adn
  call void @_ZdlPvm(ptr noundef nonnull %i.adj, i64 noundef %i.ado) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.eb

bb.eb:                                            ; preds = %.thread389, %_ZN4LIEF15vector_iostreamD2Ev.exit
  %.not.i.i.i249 = icmp eq ptr %.sroa.0297.1.lcssa, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.adp = ptrtoint ptr %.sroa.24.1.lcssa to i64
  %i.adq = ptrtoint ptr %.sroa.0297.1.lcssa to i64
  %i.adr = sub i64 %i.adp, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0297.1.lcssa, i64 noundef %i.adr) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ec, %bb.eb, %.thread368, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  %i.ads = load ptr, ptr %14, align 8, !tbaa !175 ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %i.bd
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.adu = load i64, ptr %i.bd, align 8, !tbaa !106
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.ads, i64 noundef %i.adv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  %i.adw = load ptr, ptr %13, align 8, !tbaa !364 ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !355 ; 2 uses
  %.not4.i.i.i250 = icmp eq ptr %i.adw, %i.ady
  br i1 %.not4.i.i.i250, label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i, label %.lr.ph.i.i.i251

.lr.ph.i.i.i251:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aef, %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i ], [ %i.adw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !175 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.aec = icmp eq ptr %i.aea, %i.aeb
  br i1 %i.aec, label %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i251
  %i.aed = load i64, ptr %i.aeb, align 8, !tbaa !106
  %i.aee = add i64 %i.aed, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aee) #27
  br label %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aef = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %i.aef, %i.ady
  br i1 %.not.i.i.i252, label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i251, !llvm.loop !8

_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !364
  br label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i

_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aeg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exitthread-pre-split.i ], [ %i.adw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !356
  %i.aej = ptrtoint ptr %i.aei to i64
  %i.aek = ptrtoint ptr %i.aeg to i64
  %i.ael = sub i64 %i.aej, %i.aek
  call void @_ZdlPvm(ptr noundef nonnull %i.aeg, i64 noundef %i.ael) #27
  br label %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %21 = load ptr, ptr %12, align 8, !tbaa !369    ; 3 uses
  %.not.i.i.i253 = icmp eq ptr %21, null
  br i1 %.not.i.i.i253, label %_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EED2Ev.exit, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !1103
  %24 = ptrtoint ptr %23 to i64
  %i.aem = ptrtoint ptr %21 to i64
  %i.aen = sub i64 %24, %i.aem
  call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %i.aen) #27
  br label %_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF5MachO15DyldBindingInfoESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EED2Ev.exit, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(240) ptr @_ZN4LIEF5MachO8DyldInfo18update_export_trieERNS_15vector_iostreamE(ptr noundef nonnull returned align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"class.std::vector.38", align 8    ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !318, !range !157, !noundef !158
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.h, i64 8, i64 4
  call void @_ZN4LIEF5MachO11create_trieERKSt6vectorISt10unique_ptrINS0_10ExportInfoESt14default_deleteIS3_EESaIS6_EEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.38") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !95     ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !108
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.222) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.t = load i64, ptr %i.p, align 8, !tbaa !108
  store i64 %i.t, ptr %i.a, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.v = load ptr, ptr %3, align 8, !tbaa !95
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  store i64 %i.y, ptr %i.b, align 8, !tbaa !99
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.z, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 2, ptr nonnull @.str.80, i64 57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre = load ptr, ptr %3, align 8, !tbaa !98
  %.pre2 = load ptr, ptr %i.j, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi ptr [ %.pre2, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.l, %bb.a ] ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %i.aa
  br i1 %i.ac, label %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef %i.ab, i64 noundef %i.af) #26 ; 0 uses
  %.pr = load ptr, ptr %3, align 8, !tbaa !95
  br label %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit: ; preds = %bb.c, %bb.d
  %i.ah = phi ptr [ %i.ab, %bb.c ], [ %.pr, %bb.d ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeERKSt6vectorIhSaIhEE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %0
}

declare void @_ZN4LIEF5MachO11create_trieERKSt6vectorISt10unique_ptrINS0_10ExportInfoESt14default_deleteIS3_EESaIS6_EEm(ptr dead_on_unwind writable sret(%"class.std::vector.38") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN4LIEF5MachO8DyldInfo3addESt10unique_ptrINS0_10ExportInfoESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef align 8 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !93
  store i64 %i.e, ptr %i.b, align 8, !tbaa !93
  store ptr null, ptr %1, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !91
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %bb.b ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4LIEF5MachO8DyldInfo5printERSo(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"class.fmt::v12::basic_memory_buffer.734", align 8 ; 10 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.fmt::v12::detail::format_arg_store.1420", align 16 ; 4 uses
  %19 = alloca %"struct.fmt::v12::detail::format_arg_store.1420", align 16 ; 4 uses
  %20 = alloca %"struct.fmt::v12::detail::format_arg_store.1455", align 16 ; 6 uses
  %21 = alloca %"struct.fmt::v12::detail::format_arg_store.1455", align 16 ; 6 uses
  %22 = alloca %"struct.fmt::v12::detail::format_arg_store.1455", align 16 ; 6 uses
  %23 = alloca %"struct.fmt::v12::detail::format_arg_store.1455", align 16 ; 6 uses
  %24 = alloca %"struct.fmt::v12::detail::format_arg_store.1455", align 16 ; 6 uses
  %25 = alloca %"struct.fmt::v12::detail::format_arg_store.1454", align 16 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4LIEF5MachO11LoadCommand5printERSo(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 10, ptr %i.s, align 1, !tbaa !106
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !164
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.s, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
end_hunk_2
