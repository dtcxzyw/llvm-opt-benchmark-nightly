Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DecimalFunctions?download=true
inline.NumInlined: 45069
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 676
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 692
begin_hunk_0_@_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 256, ptr %i.t, align 8, !tbaa !474
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail15counting_bufferIcE4growERNS1_6bufferIcEEm, ptr %i.u, align 8, !tbaa !475
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !477
  %i.w = call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %6, ptr %1, i64 %2) ; 0 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !477
  %i.y = load i64, ptr %i.s, align 8, !tbaa !473
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !478
  %.not30 = icmp eq i32 %i.ab, 0
  %.mux32 = select i1 %.not30, i64 0, i64 %i.z
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !478
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 0, ptr %i.d, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.d, ptr %4, align 8, !tbaa !351
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
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.h, !llvm.loop !2765

.loopexit.i.i:                                    ; preds = %bb.h, %bb.f
  %.2.i.i = phi ptr [ %1, %bb.f ], [ %.024.i.i, %bb.h ] ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.022 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 8 uses
  %i.am = icmp eq ptr %i.ai, %.2.i.i
  br i1 %i.am, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.al, 16
  %i.an = sub i64 %i.ak, %i.c
  %diff.check = icmp ugt i64 %i.an, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.al, 128
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.al, 112
  %n.vec = and i64 %i.al, -128                    ; 5 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.aq = getelementptr i8, ptr %.2.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep44 = getelementptr i8, ptr %.2.i.i, i64 %index ; 4 uses
  %i.ar = getelementptr i8, ptr %next.gep44, i64 32
  %i.as = getelementptr i8, ptr %next.gep44, i64 64
  %i.at = getelementptr i8, ptr %next.gep44, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep44, align 1, !tbaa !47
  %wide.load45 = load <32 x i8>, ptr %i.ar, align 1, !tbaa !47
  %wide.load46 = load <32 x i8>, ptr %i.as, align 1, !tbaa !47
  %wide.load47 = load <32 x i8>, ptr %i.at, align 1, !tbaa !47
  %i.au = getelementptr i8, ptr %next.gep, i64 32
  %i.av = getelementptr i8, ptr %next.gep, i64 64
  %i.aw = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !47
  store <32 x i8> %wide.load45, ptr %i.au, align 1, !tbaa !47
  store <32 x i8> %wide.load46, ptr %i.av, align 1, !tbaa !47
  store <32 x i8> %wide.load47, ptr %i.aw, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !2766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !479

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.al, -16                   ; 4 uses
  %i.ay = getelementptr i8, ptr %i.b, i64 %n.vec49
  %i.az = getelementptr i8, ptr %.2.i.i, i64 %n.vec49
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %next.gep51 = getelementptr i8, ptr %i.b, i64 %index50
  %next.gep52 = getelementptr i8, ptr %.2.i.i, i64 %index50
  %wide.load53 = load <16 x i8>, ptr %next.gep52, align 1, !tbaa !47
  store <16 x i8> %wide.load53, ptr %next.gep51, align 1, !tbaa !47
  %index.next54 = add nuw i64 %index50, 16        ; 2 uses
  %i.ba = icmp eq i64 %index.next54, %n.vec49
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2767

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.al, %n.vec49
  br i1 %cmp.n55, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %.2.i.i, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.022, %i.a                     ; 2 uses
  %.057.i.i.i.ph59 = ptrtoaddr ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.bc = sub i64 %i.bb, %.057.i.i.i.ph59
  %xtraiter = and i64 %i.bc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.be = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.be, ptr %.08.i.i.i.prol, align 1, !tbaa !47
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2768

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.prol ]
  %i.bg = sub i64 %.057.i.i.i.ph59, %i.bb
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.bj = load i8, ptr %.057.i.i.i, align 1, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.bj, ptr %.08.i.i.i, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !47
  %.not.i.i.i.7 = icmp eq ptr %i.cd, %i.ai
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i, !llvm.loop !2769

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i
  %.3.i.i = phi ptr [ %.4.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %.2.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 2 uses
  %.0.i.i = phi ptr [ %.1.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 3 uses
  %i.ch = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0.i.i, ptr noundef %.3.i.i) ; 3 uses
  %.not31.not.i.i = icmp ne ptr %i.ch, null       ; 3 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.0.i.i to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %.4.idx.i.i = select i1 %.not31.not.i.i, i64 %i.ck, i64 0
  %.4.i.i = getelementptr inbounds i8, ptr %.3.i.i, i64 %.4.idx.i.i
  %.1.i.i = select i1 %.not31.not.i.i, ptr %i.ch, ptr %.0.i.i ; 2 uses
  %i.cl = icmp ult ptr %.1.i.i, %i.cg
  %or.cond.i.i = select i1 %.not31.not.i.i, i1 %i.cl, i1 false
  br i1 %or.cond.i.i, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, label %bb.j, !llvm.loop !2770

bb.j:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit

_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit: ; preds = %bb.i, %.loopexit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.e, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit
  %.133 = phi i64 [ %.022, %bb.e ], [ %.022, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %i.z, %.thread ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %.mux32, %.thread ]
  %i.cn = zext i1 %i.q to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i8 %i.cn, ptr %7, align 8, !tbaa !482
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.co, align 8, !tbaa !52
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !125
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.cp, align 8, !tbaa !483
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.133, ptr %i.cq, align 8, !tbaa !484
  %i.cr = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS5_E_EET1_SF_SD_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %.133, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret ptr %i.cr
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !473  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !474
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !475
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !25
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !473 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !472
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !473
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.by, %bb.f ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bx, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %i.l, ptr %3, align 8, !tbaa !486, !alias.scope !2780
  store ptr null, ptr %i.m, align 8, !tbaa !487, !alias.scope !2780
  store i32 0, ptr %i.n, align 8, !tbaa !488, !alias.scope !2780
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !486    ; 3 uses
  %.not24.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.c
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.t, align 8, !tbaa !473
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0, %.lr.ph27.i.i ], [ %i.bg, %._crit_edge.i.i ] ; 9 uses
  %i.x = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.y = sub i64 %i.s, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !474 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !475
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.z), !inline_history !26
  %.pre30.i.i = load i64, ptr %i.u, align 8, !tbaa !474
  %.pre31.i.i = load i64, ptr %i.t, align 8, !tbaa !473
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %i.w, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ae = phi i64 [ %i.aa, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.af = sub i64 %i.ae, %i.ad
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y) ; 13 uses
  %i.ag = load ptr, ptr %.sroa.022.0, align 8, !tbaa !472 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %i.ad, %i.ah
  %i.ak = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %wide.load = load <32 x i8>, ptr %i.am, align 1, !tbaa !47
  %wide.load41 = load <32 x i8>, ptr %i.an, align 1, !tbaa !47
  %wide.load42 = load <32 x i8>, ptr %i.ao, align 1, !tbaa !47
  %wide.load43 = load <32 x i8>, ptr %i.ap, align 1, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store <32 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !47
  store <32 x i8> %wide.load41, ptr %i.ar, align 1, !tbaa !47
  store <32 x i8> %wide.load42, ptr %i.as, align 1, !tbaa !47
  store <32 x i8> %wide.load43, ptr %i.at, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !2775

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !489

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index45
  %wide.load46 = load <8 x i8>, ptr %i.av, align 1, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index45
  store <8 x i8> %wide.load46, ptr %i.aw, align 1, !tbaa !47
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next47, %n.vec44
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2776

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %spec.select.i.i, %n.vec44
  br i1 %cmp.n48, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i.prol
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !47
  %i.bb = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2777
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_:bb.a
  %next.gep56 = getelementptr i8, ptr %.2, i64 %index ; 4 uses
  %i.cb = getelementptr i8, ptr %next.gep56, i64 32
  %i.cc = getelementptr i8, ptr %next.gep56, i64 64
  %i.cd = getelementptr i8, ptr %next.gep56, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep56, align 1, !tbaa !47
  %wide.load57 = load <32 x i8>, ptr %i.cb, align 1, !tbaa !47
  %wide.load58 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !47
  %wide.load59 = load <32 x i8>, ptr %i.cd, align 1, !tbaa !47
  %i.ce = getelementptr i8, ptr %next.gep, i64 32
  %i.cf = getelementptr i8, ptr %next.gep, i64 64
  %i.cg = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !47
  store <32 x i8> %wide.load57, ptr %i.ce, align 1, !tbaa !47
  store <32 x i8> %wide.load58, ptr %i.cf, align 1, !tbaa !47
  store <32 x i8> %wide.load59, ptr %i.cg, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !2788

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !479

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.bv, -16                   ; 4 uses
  %i.ci = getelementptr i8, ptr %i.b, i64 %n.vec61
  %i.cj = getelementptr i8, ptr %.2, i64 %n.vec61
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 3 uses
  %next.gep63 = getelementptr i8, ptr %i.b, i64 %index62
  %next.gep64 = getelementptr i8, ptr %.2, i64 %index62
  %wide.load65 = load <16 x i8>, ptr %next.gep64, align 1, !tbaa !47
  store <16 x i8> %wide.load65, ptr %next.gep63, align 1, !tbaa !47
  %index.next66 = add nuw i64 %index62, 16        ; 2 uses
  %i.ck = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2789

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %i.bv, %n.vec61
  br i1 %cmp.n67, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 3 uses
  %i.cl = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph72 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.cm = sub i64 %i.cl, %.057.i.ph72
  %xtraiter = and i64 %i.cm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cp, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cn, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.co = load i8, ptr %.057.i.prol, align 1, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.co, ptr %.08.i.prol, align 1, !tbaa !47
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2790

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cp, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cn, %.lr.ph.i.prol ]
  %i.cq = sub i64 %.057.i.ph72, %i.cl
  %i.cr = icmp ugt i64 %i.cq, -8
  br i1 %i.cr, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dn, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.ct = load i8, ptr %.057.i, align 1, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.ct, ptr %.08.i, align 1, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !47
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !47
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.df = load i8, ptr %i.db, align 1, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.di = load i8, ptr %i.de, align 1, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !47
  %i.dk = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !47
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !47
  %.not.i33.7 = icmp eq ptr %i.dn, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !2791

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  %i.dr = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %.2, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 7 uses
  %i.ds = load i8, ptr %.0, align 1, !tbaa !47
  %i.dt = zext i8 %i.ds to i32                    ; 2 uses
  %i.du = lshr i32 %i.dt, 3                       ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str.97, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !47
  %i.dy = sext i8 %i.dx to i64                    ; 5 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !47  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !47  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !47  ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dy
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !53
  %i.ej = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dy
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !53
  %i.el = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dy
  %i.em = load i32, ptr %i.el, align 4, !tbaa !53
  %i.en = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !125 ; 2 uses
  %.not.i8.not.i34 = icmp ne i64 %i.en, 0         ; 4 uses
  br i1 %.not.i8.not.i34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.eo = add i64 %i.en, -1
  store i64 %i.eo, ptr %.sroa.5.0.copyload, align 8, !tbaa !125
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

bb.h:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.ep = ptrtoint ptr %.3 to i64
  %i.eq = sub i64 %i.ep, %i.dr
  store i64 %i.eq, ptr %.sroa.7.0.copyload, align 8, !tbaa !125
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38: ; preds = %bb.g, %bb.h
  %i.er = and i8 %i.ee, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 6
  %i.eu = and i8 %i.ec, 63
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 12
  %i.ex = and i32 %i.ea, %i.dt
  %i.ey = shl nuw nsw i32 %i.ex, 18
  %i.ez = or disjoint i32 %i.ew, %i.ey
  %i.fa = or disjoint i32 %i.et, %i.ez
  %i.fb = and i8 %i.eg, 63
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = lshr i32 %i.fd, %i.ei                   ; 3 uses
  %i.ff = icmp ult i32 %i.fe, %i.ek
  %i.fg = select i1 %i.ff, i32 64, i32 0
  %i.fh = lshr i8 %i.ee, 4
  %i.fi = and i8 %i.fh, 12
  %i.fj = lshr i8 %i.ec, 2
  %i.fk = and i8 %i.fj, 48
  %i.fl = or disjoint i8 %i.fi, %i.fk
  %i.fm = lshr i8 %i.eg, 6
  %i.fn = or disjoint i8 %i.fl, %i.fm
  %i.fo = zext nneg i8 %i.fn to i32
  %i.fp = or disjoint i32 %i.fg, %i.fo
  %i.fq = icmp samesign ugt i32 %i.fe, 1114111
  %i.fr = select i1 %i.fq, i32 256, i32 0
  %i.fs = or disjoint i32 %i.fp, %i.fr
  %.mask.i.i35 = and i32 %i.fe, 2147481600
  %i.ft = icmp eq i32 %.mask.i.i35, 55296
  %i.fu = select i1 %i.ft, i32 128, i32 0
  %i.fv = or disjoint i32 %i.fs, %i.fu
  %i.fw = xor i32 %i.fv, 42
  %i.fx = lshr i32 %i.fw, %i.em
  %.not.i36 = icmp eq i32 %i.fx, 0
  %i.fy = getelementptr inbounds i8, ptr %.0, i64 %i.dy
  %.not.i.i37 = lshr i32 -2130771968, %i.du
  %i.fz = and i32 %.not.i.i37, 1
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  %i.gc = select i1 %.not.i36, ptr %i.gb, ptr %i.eb ; 2 uses
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %.0 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %.4.idx = select i1 %.not.i8.not.i34, i64 %i.gf, i64 0
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %.4.idx
  %.1 = select i1 %.not.i8.not.i34, ptr %i.gc, ptr %.0 ; 2 uses
  %i.gg = icmp ult ptr %.1, %i.dq
  %or.cond = select i1 %.not.i8.not.i34, i1 %i.gg, i1 false
  br i1 %or.cond, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, label %bb.i, !llvm.loop !2792

bb.i:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %bb.i, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail15counting_bufferIcE4growERNS1_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !473
  %.not = icmp eq i64 %i.b, 256
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !477
  %i.e = add i64 %i.d, 256
  store i64 %i.e, ptr %i.c, align 8, !tbaa !477
  store i64 0, ptr %i.a, align 8, !tbaa !473
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !488  ; 8 uses
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 13, label %bb.d
    i32 9, label %bb.f
    i32 34, label %bb.h
    i32 39, label %bb.h
    i32 92, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !473  ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !474
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !475
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !25
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !473 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !472
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !473
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 92, ptr %i.m, align 1, !tbaa !47
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !473  ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !474
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !475
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !25
  %.pre.i.i28 = load i64, ptr %i.n, align 8, !tbaa !473 ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30

_ZN3fmt3v1114basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !472
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8, !tbaa !473
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1, !tbaa !47
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !473  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !474
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !475
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa), !inline_history !25
  %.pre.i.i33 = load i64, ptr %i.y, align 8, !tbaa !473 ; 2 uses
  %.pre2.i.i34 = add i64 %.pre.i.i33, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35

_ZN3fmt3v1114basic_appenderIcEaSEc.exit35:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i32 = phi i64 [ %i.aa, %bb.f ], [ %.pre2.i.i34, %bb.g ]
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %.pre.i.i33, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !472
  store i64 %.pre-phi.i.i32, ptr %i.y, align 8, !tbaa !473
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 92, ptr %i.ai, align 1, !tbaa !47
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = trunc nuw nsw i32 %i.b to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !473 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !474
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !475
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am), !inline_history !25
  %.pre.i.i38 = load i64, ptr %i.ak, align 8, !tbaa !473 ; 2 uses
  %.pre2.i.i39 = add i64 %.pre.i.i38, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40

_ZN3fmt3v1114basic_appenderIcEaSEc.exit40:        ; preds = %bb.h, %bb.i
  %.pre-phi.i.i37 = phi i64 [ %i.am, %bb.h ], [ %.pre2.i.i39, %bb.i ]
  %i.as = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i38, %bb.i ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !472
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !473
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !47
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v116detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v116detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !486   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !487 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !47
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !473 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !474
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45
end_hunk_1
