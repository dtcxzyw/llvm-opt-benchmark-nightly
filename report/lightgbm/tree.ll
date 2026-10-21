Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE:bb.a
  %i.q = icmp eq i64 %i.p, 1                      ; 2 uses
  br i1 %i.q, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.r, ptr %6, align 8, !tbaa !269
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !270
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 256, ptr %i.t, align 8, !tbaa !271
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail15counting_bufferIcE4growERNS1_6bufferIcEEm, ptr %i.u, align 8, !tbaa !272
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !407
  %i.w = call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %6, ptr %1, i64 %2) ; 0 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !407
  %i.y = load i64, ptr %i.s, align 8, !tbaa !270
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !315
  %.not30 = icmp eq i32 %i.ab, 0
  %.mux32 = select i1 %.not30, i64 0, i64 %i.z
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !315
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 0, ptr %i.d, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.d, ptr %4, align 8, !tbaa !359
  %i.ae = icmp ugt i64 %.022, 3
  br i1 %i.ae, label %bb.g, label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.022
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -3
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.024.i.i = phi ptr [ %1, %bb.g ], [ %i.ah, %bb.i ] ; 4 uses
  %.not30.i.i = icmp ult ptr %.024.i.i, %i.ag
  br i1 %.not30.i.i, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.024.i.i, ptr noundef %.024.i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.h, !llvm.loop !1150

.loopexit.i.i:                                    ; preds = %bb.h, %bb.f
  %.2.i.i = phi ptr [ %1, %bb.f ], [ %.024.i.i, %bb.h ] ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.022 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 8 uses
  %i.am = icmp eq ptr %i.ai, %.2.i.i
  br i1 %i.am, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.al, 8
  %i.an = sub i64 %i.ak, %i.c
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.al, 24
  %n.vec = and i64 %i.al, -32                     ; 5 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.aq = getelementptr i8, ptr %.2.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep44 = getelementptr i8, ptr %.2.i.i, i64 %index ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep44, align 1, !tbaa !202
  %wide.load45 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !202
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !202
  store <16 x i8> %wide.load45, ptr %i.as, align 1, !tbaa !202
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !408

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.al, -8                    ; 4 uses
  %i.au = getelementptr i8, ptr %i.b, i64 %n.vec47
  %i.av = getelementptr i8, ptr %.2.i.i, i64 %n.vec47
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.b, i64 %index48
  %next.gep50 = getelementptr i8, ptr %.2.i.i, i64 %index48
  %wide.load51 = load <8 x i8>, ptr %next.gep50, align 1, !tbaa !202
  store <8 x i8> %wide.load51, ptr %next.gep49, align 1, !tbaa !202
  %index.next52 = add nuw i64 %index48, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %i.al, %n.vec47
  br i1 %cmp.n53, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %.2.i.i, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add i64 %.022, %i.a                     ; 2 uses
  %.057.i.i.i.ph57 = ptrtoaddr ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.ay = sub i64 %i.ax, %.057.i.i.i.ph57
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !202
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ba, ptr %.08.i.i.i.prol, align 1, !tbaa !202
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1153

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.prol ]
  %i.bc = sub i64 %.057.i.i.i.ph57, %i.ax
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.bf = load i8, ptr %.057.i.i.i, align 1, !tbaa !202
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.bf, ptr %.08.i.i.i, align 1, !tbaa !202
  %i.bh = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !202
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !202
  %i.bk = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !202
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !202
  %i.bn = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !202
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !202
  %i.bq = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !202
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !202
  %i.bt = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !202
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !202
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !202
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !202
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !202
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !202
  %.not.i.i.i.7 = icmp eq ptr %i.bz, %i.ai
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i, !llvm.loop !1154

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i
  %.3.i.i = phi ptr [ %.4.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %.2.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.cd, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 2 uses
  %i.cd = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.0.i.i, ptr noundef %.3.i.i) ; 4 uses
  %.not31.not.i.i = icmp ne ptr %i.cd, null       ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.0.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %.4.idx.i.i = select i1 %.not31.not.i.i, i64 %i.cg, i64 0
  %.4.i.i = getelementptr inbounds i8, ptr %.3.i.i, i64 %.4.idx.i.i
  %i.ch = icmp ult ptr %i.cd, %i.cc
  %or.cond.i.i = select i1 %.not31.not.i.i, i1 %i.ch, i1 false
  br i1 %or.cond.i.i, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, label %bb.j, !llvm.loop !1155

bb.j:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit

_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit: ; preds = %bb.i, %.loopexit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.e, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit
  %.133 = phi i64 [ %.022, %bb.e ], [ %.022, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %i.z, %.thread ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.ci, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %.mux32, %.thread ]
  %i.cj = zext i1 %i.q to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i8 %i.cj, ptr %7, align 8, !tbaa !410
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.ck, align 8, !tbaa !275
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !276
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.cl, align 8, !tbaa !411
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.133, ptr %i.cm, align 8, !tbaa !412
  %i.cn = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS5_E_EET1_SF_SD_mmOT2_(ptr %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 noundef %.133, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret ptr %i.cn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !271
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !272
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !9
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !269
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !270
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !202
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bu, %bb.f ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bt, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.l, ptr %3, align 8, !tbaa !335, !alias.scope !1165
  store ptr null, ptr %i.m, align 8, !tbaa !336, !alias.scope !1165
  store i32 0, ptr %i.n, align 8, !tbaa !337, !alias.scope !1165
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !335    ; 3 uses
  %.not24.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.c
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.t, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i ], [ %i.bb, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0, %.lr.ph27.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 9 uses
  %i.x = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.y = sub i64 %i.s, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !271 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !272
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.z), !inline_history !16
  %.pre30.i.i = load i64, ptr %i.u, align 8, !tbaa !271
  %.pre31.i.i = load i64, ptr %i.t, align 8, !tbaa !270
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %i.w, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ae = phi i64 [ %i.aa, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.af = sub i64 %i.ae, %i.ad
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y) ; 13 uses
  %i.ag = load ptr, ptr %.sroa.022.0, align 8, !tbaa !269 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %i.ad, %i.ah
  %i.ak = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !202
  %wide.load41 = load <16 x i8>, ptr %i.an, align 1, !tbaa !202
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %wide.load, ptr %i.ao, align 1, !tbaa !202
  store <16 x i8> %wide.load41, ptr %i.ap, align 1, !tbaa !202
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !303

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !202
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.as, align 1, !tbaa !202
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1161

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %spec.select.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ax, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.av = load i8, ptr %i.au, align 1, !tbaa !202
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !202
  %i.ax = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1162

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_:bb.a
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.024 to i64
  %i.af = sub i64 %i.ae, %i.g
  store i64 %i.af, ptr %.sroa.7.0.copyload, align 8, !tbaa !276
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit: ; preds = %bb.e, %bb.f
  %i.ag = and i8 %i.t, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i8 %i.r, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = and i32 %i.p, %i.i
  %i.an = shl nuw nsw i32 %i.am, 18
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ai, %i.ao
  %i.aq = and i8 %i.v, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, %i.x                    ; 3 uses
  %i.au = icmp ult i32 %i.at, %i.z
  %i.av = select i1 %i.au, i32 64, i32 0
  %i.aw = lshr i8 %i.t, 4
  %i.ax = and i8 %i.aw, 12
  %i.ay = lshr i8 %i.r, 2
  %i.az = and i8 %i.ay, 48
  %i.ba = or disjoint i8 %i.ax, %i.az
  %i.bb = lshr i8 %i.v, 6
  %i.bc = or disjoint i8 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.av, %i.bd
  %i.bf = icmp samesign ugt i32 %i.at, 1114111
  %i.bg = select i1 %i.bf, i32 256, i32 0
  %i.bh = or disjoint i32 %i.be, %i.bg
  %.mask.i.i = and i32 %i.at, 2147481600
  %i.bi = icmp eq i32 %.mask.i.i, 55296
  %i.bj = select i1 %i.bi, i32 128, i32 0
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = xor i32 %i.bk, 42
  %i.bm = lshr i32 %i.bl, %i.ab
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds i8, ptr %.024, i64 %i.n
  %.not.i.i = lshr i32 -2130771968, %i.j
  %i.bo = and i32 %.not.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = select i1 %.not.i, ptr %i.bq, ptr %i.q
  br i1 %.not.i8.not.i, label %.thread, label %bb.c, !llvm.loop !1171

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.024, %bb.c ]   ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq ptr %i.bs, %.2
  br i1 %i.bw, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %i.bx = sub i64 %i.bu, %i.c
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond69 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond69, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check56 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep57, align 1, !tbaa !202
  %wide.load58 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !202
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !202
  store <16 x i8> %wide.load58, ptr %i.cc, align 1, !tbaa !202
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !408

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.bv, -8                    ; 4 uses
  %i.ce = getelementptr i8, ptr %i.b, i64 %n.vec60
  %i.cf = getelementptr i8, ptr %.2, i64 %n.vec60
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %next.gep62 = getelementptr i8, ptr %i.b, i64 %index61
  %next.gep63 = getelementptr i8, ptr %.2, i64 %index61
  %wide.load64 = load <8 x i8>, ptr %next.gep63, align 1, !tbaa !202
  store <8 x i8> %wide.load64, ptr %next.gep62, align 1, !tbaa !202
  %index.next65 = add nuw i64 %index61, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %i.bv, %n.vec60
  br i1 %cmp.n66, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 3 uses
  %i.ch = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph71 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.ci = sub i64 %i.ch, %.057.i.ph71
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.057.i.prol, align 1, !tbaa !202
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.08.i.prol, align 1, !tbaa !202
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1174

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cm = sub i64 %.057.i.ph71, %i.ch
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cp = load i8, ptr %.057.i, align 1, !tbaa !202
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cp, ptr %.08.i, align 1, !tbaa !202
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !202
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !202
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !202
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !202
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !202
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !202
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !202
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !202
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !202
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !202
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !202
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !202
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !202
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !202
  %.not.i33.7 = icmp eq ptr %i.dj, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1175

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  %i.dn = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.pre49 = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !276
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38
  %i.do = phi i64 [ %i.en, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %.pre49, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 2 uses
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %.2, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.fz, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %i.dp = load i8, ptr %.0, align 1, !tbaa !202
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  %i.dr = lshr i32 %i.dq, 3                       ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @.str.70, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !202
  %i.dv = sext i8 %i.du to i64                    ; 5 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !88
  %i.dy = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !202 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !202 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !202 ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dv
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !88
  %i.eg = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dv
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !88
  %i.ei = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dv
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !88
  %.not.i8.not.i34 = icmp ne i64 %i.do, 0         ; 3 uses
  br i1 %.not.i8.not.i34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.ek = add i64 %i.do, -1                       ; 2 uses
  store i64 %i.ek, ptr %.sroa.5.0.copyload, align 8, !tbaa !276
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

bb.h:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.el = ptrtoint ptr %.3 to i64
  %i.em = sub i64 %i.el, %i.dn
  store i64 %i.em, ptr %.sroa.7.0.copyload, align 8, !tbaa !276
  %.pre = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !276
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38: ; preds = %bb.g, %bb.h
  %i.en = phi i64 [ %i.ek, %bb.g ], [ %.pre, %bb.h ]
  %i.eo = and i8 %i.eb, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 6
  %i.er = and i8 %i.dz, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 12
  %i.eu = and i32 %i.dx, %i.dq
  %i.ev = shl nuw nsw i32 %i.eu, 18
  %i.ew = or disjoint i32 %i.et, %i.ev
  %i.ex = or disjoint i32 %i.eq, %i.ew
  %i.ey = and i8 %i.ed, 63
  %i.ez = zext nneg i8 %i.ey to i32
  %i.fa = or disjoint i32 %i.ex, %i.ez
  %i.fb = lshr i32 %i.fa, %i.ef                   ; 3 uses
  %i.fc = icmp ult i32 %i.fb, %i.eh
  %i.fd = select i1 %i.fc, i32 64, i32 0
  %i.fe = lshr i8 %i.eb, 4
  %i.ff = and i8 %i.fe, 12
  %i.fg = lshr i8 %i.dz, 2
  %i.fh = and i8 %i.fg, 48
  %i.fi = or disjoint i8 %i.ff, %i.fh
  %i.fj = lshr i8 %i.ed, 6
  %i.fk = or disjoint i8 %i.fi, %i.fj
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fd, %i.fl
  %i.fn = icmp samesign ugt i32 %i.fb, 1114111
  %i.fo = select i1 %i.fn, i32 256, i32 0
  %i.fp = or disjoint i32 %i.fm, %i.fo
  %.mask.i.i35 = and i32 %i.fb, 2147481600
  %i.fq = icmp eq i32 %.mask.i.i35, 55296
  %i.fr = select i1 %i.fq, i32 128, i32 0
  %i.fs = or disjoint i32 %i.fp, %i.fr
  %i.ft = xor i32 %i.fs, 42
  %i.fu = lshr i32 %i.ft, %i.ej
  %.not.i36 = icmp eq i32 %i.fu, 0
  %i.fv = getelementptr inbounds i8, ptr %.0, i64 %i.dv
  %.not.i.i37 = lshr i32 -2130771968, %i.dr
  %i.fw = and i32 %.not.i.i37, 1
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx
  %i.fz = select i1 %.not.i36, ptr %i.fy, ptr %i.dy ; 3 uses
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %.0 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %.4.idx = select i1 %.not.i8.not.i34, i64 %i.gc, i64 0
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %.4.idx
  %i.gd = icmp ult ptr %i.fz, %i.dm
  %or.cond = select i1 %.not.i8.not.i34, i1 %i.gd, i1 false
  br i1 %or.cond, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, label %bb.i, !llvm.loop !1176

bb.i:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %bb.i, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3fmt3v116detail15counting_bufferIcE4growERNS1_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !270
  %.not = icmp eq i64 %i.b, 256
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !407
  %i.e = add i64 %i.d, 256
  store i64 %i.e, ptr %i.c, align 8, !tbaa !407
  store i64 0, ptr %i.a, align 8, !tbaa !270
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02455, align 1, !tbaa !202
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.70, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !202
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02455, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !88
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !202   ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !202 ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !202 ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !88
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !88
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bq
  store ptr %.02455, ptr %2, align 8, !tbaa !275
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !275
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !88
  br label %.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1177

.loopexit:                                        ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.cb = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !202
  %wide.load109 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !202
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !202
  store <16 x i8> %wide.load109, ptr %i.cd, align 1, !tbaa !202
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !408

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.bw, -8                   ; 4 uses
  %i.cf = getelementptr i8, ptr %i.b, i64 %n.vec111
  %i.cg = getelementptr i8, ptr %.2, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
end_hunk_1
