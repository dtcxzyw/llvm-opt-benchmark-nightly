Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TextStub?download=true
inline.NumInlined: 5040
inline.NumDeleted: 2212
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm4yaml13MappingTraitsIPKNS_5MachO13InterfaceFileEE17mapKeysToValuesV4ERNS0_2IOERS5_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %i.an, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 5, ptr %i.ao, align 4, !tbaa !185
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 168
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 200
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ap, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.aq, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, i8 0, i64 96, i1 false)
  br label %_ZN4llvm4yaml20MappingNormalizationINS0_13MappingTraitsIPKNS_5MachO13InterfaceFileEE16NormalizedTBD_V4ES6_EC2ERNS0_2IOERS6_.exit

_ZN4llvm4yaml20MappingNormalizationINS0_13MappingTraitsIPKNS_5MachO13InterfaceFileEE16NormalizedTBD_V4ES6_EC2ERNS0_2IOERS6_.exit: ; preds = %bb.b, %bb.c
  store ptr %12, ptr %i.ae, align 8, !tbaa !177
  %i.as = load ptr, ptr %0, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.14, i64 9, i1 noundef zeroext true) #19 ; 0 uses
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #19
  %i.ax = load ptr, ptr %0, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.17, i64 11, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #19, !inline_history !186
  br i1 %i.ba, label %bb.d, label %_ZN4llvm4yaml2IO11mapRequiredIjEEvNS_9StringRefERT_.exit

bb.d:                                             ; preds = %_ZN4llvm4yaml20MappingNormalizationINS0_13MappingTraitsIPKNS_5MachO13InterfaceFileEE16NormalizedTBD_V4ES6_EC2ERNS0_2IOERS6_.exit
  call void @_ZN4llvm4yaml7yamlizeIjEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS3_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %11)
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.bc = load ptr, ptr %0, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bb) #19, !inline_history !186
  br label %_ZN4llvm4yaml2IO11mapRequiredIjEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredIjEEvNS_9StringRefERT_.exit: ; preds = %_ZN4llvm4yaml20MappingNormalizationINS0_13MappingTraitsIPKNS_5MachO13InterfaceFileEE16NormalizedTBD_V4ES6_EC2ERNS0_2IOERS6_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #19
  %i.bg = load ptr, ptr %0, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.18, i64 7, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #19, !inline_history !187
  br i1 %i.bj, label %bb.e, label %_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit

bb.e:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredIjEEvNS_9StringRefERT_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  call void @_ZN4llvm4yaml7yamlizeINS_11SmallVectorINS_5MachO6TargetELj5EEENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.bk, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.bm = load ptr, ptr %0, align 8, !tbaa !58
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bl) #19, !inline_history !187
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit: ; preds = %_ZN4llvm4yaml2IO11mapRequiredIjEEvNS_9StringRefERT_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.bp = load ptr, ptr %0, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br i1 %i.bs, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit
  %i.bt = load ptr, ptr %i.ae, align 8, !tbaa !177 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !122 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !123
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.by ; 4 uses
  %i.ca = call noundef ptr @_ZSt9__find_ifIPN4llvm5MachO6TargetEN9__gnu_cxx5__ops10_Iter_predIZNS0_4yaml13MappingTraitsIPKNS1_13InterfaceFileEE17mapKeysToValuesV4ERNS7_2IOERSB_EUlRKS2_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef %i.bv, ptr noundef %i.bz) ; 5 uses
  %i.cb = icmp eq ptr %i.ca, %i.bz
  %.01721.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %.01721.i.i.i.i, %i.bz
  %or.cond.i.i.i.i = select i1 %i.cb, i1 true, i1 %.not22.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm8erase_ifINS_11SmallVectorINS_5MachO6TargetELj5EEEZNS_4yaml13MappingTraitsIPKNS2_13InterfaceFileEE17mapKeysToValuesV4ERNS5_2IOERS9_EUlRKS3_E_EEvRT_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.h
  %.01725.i.i.i.i = phi ptr [ %.017.i.i.i.i, %bb.h ], [ %.01721.i.i.i.i, %bb.f ] ; 4 uses
  %.024.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.h ], [ %i.ca, %bb.f ] ; 3 uses
  %.pn23.i.i.i.i = phi ptr [ %.01725.i.i.i.i, %bb.h ], [ %i.ca, %bb.f ]
  %i.cc = load i8, ptr %.01725.i.i.i.i, align 4, !tbaa !188
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 19
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn23.i.i.i.i, i64 28
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp eq i32 %i.ce, 0
  %.not1.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.cf
  br i1 %.not1.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.024.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.01725.i.i.i.i, i64 24, i1 false), !tbaa.struct !193
  %i.cg = getelementptr inbounds nuw i8, ptr %.024.i.i.i.i, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %.024.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cg, %bb.g ] ; 2 uses
  %.017.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01725.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.017.i.i.i.i, %i.bz
  br i1 %.not.i.i.i.i, label %_ZN4llvm8erase_ifINS_11SmallVectorINS_5MachO6TargetELj5EEEZNS_4yaml13MappingTraitsIPKNS2_13InterfaceFileEE17mapKeysToValuesV4ERNS5_2IOERS9_EUlRKS3_E_EEvRT_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !196

_ZN4llvm8erase_ifINS_11SmallVectorINS_5MachO6TargetELj5EEEZNS_4yaml13MappingTraitsIPKNS2_13InterfaceFileEE17mapKeysToValuesV4ERNS5_2IOERS9_EUlRKS3_E_EEvRT_T0_.exit: ; preds = %bb.h, %bb.f
  %.016.i.i.i.i = phi ptr [ %i.ca, %bb.f ], [ %.1.i.i.i.i, %bb.h ]
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !122
  %i.ci = ptrtoint ptr %.016.i.i.i.i to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 24
  %i.cm = trunc i64 %i.cl to i32
  store i32 %i.cm, ptr %i.bw, align 8, !tbaa !123
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8erase_ifINS_11SmallVectorINS_5MachO6TargetELj5EEEZNS_4yaml13MappingTraitsIPKNS2_13InterfaceFileEE17mapKeysToValuesV4ERNS5_2IOERS9_EUlRKS3_E_EEvRT_T0_.exit, %_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit
  %i.cn = load ptr, ptr %0, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !197
  br i1 %i.cq, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EEEEvNS_9StringRefERT_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #19
  %i.cr = load ptr, ptr %0, align 8, !tbaa !58
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.19, i64 5, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.x) #19, !inline_history !198
  br i1 %i.cu, label %bb.j, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

bb.j:                                             ; preds = %.critedge.i.i
  %i.cv = load ptr, ptr %0, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !199 ; 2 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !58
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !199
  %.not.i.i.i.i19 = icmp eq i32 %i.cy, 0
  %or.cond = or i1 %.not.i.i.i.i19, %i.dc
  br i1 %or.cond, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %bb.j
  %wide.trip.count.i.i.i.i = zext i32 %i.cy to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i20
  %.sroa.16.1 = phi ptr [ null, %.lr.ph.i.i.i.i20 ], [ %.sroa.16.2, %bb.r ] ; 5 uses
  %.sroa.10.1 = phi ptr [ null, %.lr.ph.i.i.i.i20 ], [ %.sroa.10.2, %bb.r ] ; 7 uses
  %.sroa.093.1 = phi ptr [ null, %.lr.ph.i.i.i.i20 ], [ %.sroa.093.2, %bb.r ] ; 9 uses
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i20 ], [ %indvars.iv.next.i.i.i.i, %bb.r ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #19
  %i.dd = load ptr, ptr %0, align 8, !tbaa !58
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.dh = call noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #19, !inline_history !199
  br i1 %i.dh, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.di = ptrtoint ptr %.sroa.10.1 to i64         ; 2 uses
  %i.dj = ptrtoint ptr %.sroa.093.1 to i64        ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = sdiv exact i64 %i.dk, 56                ; 7 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.dl, %indvars.iv.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %i.dn = sub nuw i64 %i.dm, %i.dl                ; 9 uses
  %i.do = ptrtoint ptr %.sroa.16.1 to i64         ; 2 uses
  %i.dp = sub i64 %i.do, %i.di
  %i.dq = sdiv exact i64 %i.dp, 56                ; 2 uses
  %i.dr = sub nuw nsw i64 164703072086692425, %i.dl
  %i.ds = icmp ule i64 %i.dq, %i.dr
  call void @llvm.assume(i1 %i.ds)
  %.not23.i.i.i.i.i.i.i = icmp ult i64 %i.dq, %i.dn
  br i1 %.not23.i.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.m
  %i.dt = sub i64 %indvars.iv.i.i.i.i, %i.dl
  %xtraiter = and i64 %i.dn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.10.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.prol, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i.i.i.i.i.i.i.i.prol, i8 0, i64 56, i1 false)
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !23
  %i.dw = add i64 %.057.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !200

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa149.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.10.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dy = icmp ult i64 %i.dt, 7
  br i1 %i.dy, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i.i.i.i.i.i.i.i, i8 0, i64 56, i1 false)
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 80
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, i8 0, i64 56, i1 false)
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 112
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 136
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ee, i8 0, i64 56, i1 false)
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 168
  %i.ei = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 192
  %i.ej = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eh, i8 0, i64 56, i1 false)
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 224
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 248
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ek, i8 0, i64 56, i1 false)
  store ptr %i.em, ptr %i.el, align 8, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 280
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 304
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.en, i8 0, i64 56, i1 false)
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !23
  %i.eq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 336
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 360
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, i8 0, i64 56, i1 false)
  store ptr %i.es, ptr %i.er, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 392
  %i.eu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 416
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.et, i8 0, i64 56, i1 false)
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !23
  %i.ew = add i64 %.057.i.i.i.i.i.i.i.i.i.i, -8   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 448 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.7, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !202

_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 range(i64 -164703072086692424, 164703076381659722) %i.dn)
  %i.ey = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.dl ; 2 uses
  %i.ez = mul nuw nsw i64 %i.ey, 56
  %i.fa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #23 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.dk ; 3 uses
  %i.fc = sub i64 %indvars.iv.i.i.i.i, %i.dl
  %xtraiter150 = and i64 %i.dn, 7                 ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol:                ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol
  %.08.i.i.i29.i.i.i.i.i.i.i.prol = phi ptr [ %i.fg, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ], [ %i.fb, %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.057.i.i.i30.i.i.i.i.i.i.i.prol = phi i64 [ %i.ff, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ], [ %i.dn, %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %prol.iter152 = phi i64 [ %prol.iter152.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.prol, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i29.i.i.i.i.i.i.i.prol, i8 0, i64 56, i1 false)
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !23
  %i.ff = add i64 %.057.i.i.i30.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i.prol, i64 56 ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol, !llvm.loop !203

.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i.unr = phi ptr [ %i.fb, %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.fg, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i.unr = phi i64 [ %i.dn, %_ZNKSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.ff, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol ]
  %i.fh = icmp ult i64 %i.fc, 7
  br i1 %i.fh, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16UUIDv4EmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i

.lr.ph.i.i.i28.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i28.i.i.i.i.i.i.i ], [ %.08.i.i.i29.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i30.i.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i28.i.i.i.i.i.i.i ], [ %.057.i.i.i30.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i29.i.i.i.i.i.i.i, i8 0, i64 56, i1 false)
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !23
  %i.fk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 80
  %i.fm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fk, i8 0, i64 56, i1 false)
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !23
  %i.fn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 112
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 136
  %i.fp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fn, i8 0, i64 56, i1 false)
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 168
  %i.fr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 192
  %i.fs = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fq, i8 0, i64 56, i1 false)
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !23
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 224
  %i.fu = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 248
  %i.fv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ft, i8 0, i64 56, i1 false)
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !23
  %i.fw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 280
  %i.fx = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 304
  %i.fy = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fw, i8 0, i64 56, i1 false)
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !23
  %i.fz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 336
  %i.ga = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 360
  %i.gb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fz, i8 0, i64 56, i1 false)
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !23
  %i.gc = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 392
  %i.gd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 416
  %i.ge = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gc, i8 0, i64 56, i1 false)
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !23
  %i.gf = add i64 %.057.i.i.i30.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i, i64 448
  %.not.i.i.i31.i.i.i.i.i.i.i.7 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16UUIDv4EmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i, !llvm.loop !202

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16UUIDv4EmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.093.1, %.sroa.10.1
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i.i:                     ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16UUIDv4EmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_16UUIDv4ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZSt19__relocate_object_aIN12_GLOBAL__N_16UUIDv4ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.fa, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16UUIDv4EmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 5 uses
  %.092.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %_ZSt19__relocate_object_aIN12_GLOBAL__N_16UUIDv4ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.093.1, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16UUIDv4EmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.03.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.092.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !193, !alias.scope !209
  %i.gh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i, i64 40 ; 3 uses
  store ptr %i.gj, ptr %i.gh, align 8, !tbaa !23, !alias.scope !204, !noalias !207
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !25, !alias.scope !207, !noalias !204 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 40 ; 5 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !28, !alias.scope !207, !noalias !204 ; 3 uses
  %i.gp = icmp ult i64 %i.go, 16
  call void @llvm.assume(i1 %i.gp)
  %i.gq = add nuw nsw i64 %i.go, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(1) %i.gl, i64 %i.gq, i1 false), !alias.scope !209
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_16UUIDv4ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !25, !alias.scope !204, !noalias !207
  %i.gr = load i64, ptr %i.gl, align 8, !tbaa !27, !alias.scope !207, !noalias !204
  store i64 %i.gr, ptr %i.gj, align 8, !tbaa !27, !alias.scope !204, !noalias !207
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 32
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !28, !alias.scope !207, !noalias !204
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_16UUIDv4ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_16UUIDv4ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n
  %i.gs = phi i64 [ %i.go, %bb.n ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i, i64 32
  store i64 %i.gs, ptr %i.gu, align 8, !tbaa !28, !alias.scope !204, !noalias !207
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !25, !alias.scope !207, !noalias !204
  store i64 0, ptr %i.gt, align 8, !tbaa !28, !alias.scope !207, !noalias !204
  store i8 0, ptr %i.gl, align 8, !tbaa !27, !alias.scope !207, !noalias !204
  %i.gv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i, i64 56
  %.not.i.i.i35.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %.sroa.10.1
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i, !llvm.loop !210

_ZNSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_16UUIDv4ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_16UUIDv4EmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i = icmp eq ptr %.sroa.093.1, null
  br i1 %.not.i37.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_16UUIDv4ESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  %i.gx = sub i64 %i.do, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.093.1, i64 noundef %i.gx) #21
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_16UUIDv4ESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_16UUIDv4ESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw [56 x i8], ptr %i.fb, i64 %i.dn
  %i.gz = getelementptr inbounds nuw [56 x i8], ptr %i.fa, i64 %i.ey
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_16UUIDv4ESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, %bb.l
  %.sroa.16.4 = phi ptr [ %.sroa.16.1, %bb.l ], [ %i.gz, %_ZNSt12_Vector_baseIN12_GLOBAL__N_16UUIDv4ESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i ], [ %.sroa.16.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.16.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.10.4 = phi ptr [ %.sroa.10.1, %bb.l ], [ %i.gy, %_ZNSt12_Vector_baseIN12_GLOBAL__N_16UUIDv4ESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i ], [ %.lcssa149.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.093.4 = phi ptr [ %.sroa.093.1, %bb.l ], [ %i.fa, %_ZNSt12_Vector_baseIN12_GLOBAL__N_16UUIDv4ESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i ], [ %.sroa.093.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.093.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [56 x i8], ptr %.sroa.093.4, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.hb = load ptr, ptr %0, align 8, !tbaa !58
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !211
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #19
  %i.he = load ptr, ptr %0, align 8, !tbaa !58
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 120
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call noundef zeroext i1 %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.50, i64 6, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.u) #19, !inline_history !212
  br i1 %i.hh, label %bb.p, label %_ZN4llvm4yaml2IO11mapRequiredINS_5MachO6TargetEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_5MachO6TargetEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ha, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %i.hi = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.hj = load ptr, ptr %0, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 128
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.hi) #19, !inline_history !212
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_5MachO6TargetEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_5MachO6TargetEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #19
  %i.hm = load ptr, ptr %0, align 8, !tbaa !58
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call noundef zeroext i1 %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.51, i64 5, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s) #19, !inline_history !213
  br i1 %i.hp, label %bb.q, label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_16UUIDv4ENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

bb.q:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_5MachO6TargetEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  call void @_ZN4llvm4yaml7yamlizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.hq, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.hr = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.hs = load ptr, ptr %0, align 8, !tbaa !58
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 128
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.hr) #19, !inline_history !213
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_16UUIDv4ENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_16UUIDv4ENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i: ; preds = %bb.q, %_ZN4llvm4yaml2IO11mapRequiredINS_5MachO6TargetEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.hv = load ptr, ptr %0, align 8, !tbaa !58
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 112
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !211
  %i.hy = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.hz = load ptr, ptr %0, align 8, !tbaa !58
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.hy) #19, !inline_history !199
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_16UUIDv4ENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i, %bb.k
  %.sroa.16.2 = phi ptr [ %.sroa.16.4, %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_16UUIDv4ENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i ], [ %.sroa.16.1, %bb.k ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.4, %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_16UUIDv4ENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i ], [ %.sroa.10.1, %bb.k ] ; 2 uses
  %.sroa.093.2 = phi ptr [ %.sroa.093.4, %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_16UUIDv4ENS0_12EmptyContextEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i.i.i ], [ %.sroa.093.1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #19
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.loopexit, label %bb.k, !llvm.loop !214

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.loopexit: ; preds = %bb.r
  %i.ic = ptrtoint ptr %.sroa.16.2 to i64
  br label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.loopexit, %bb.j
  %.sroa.16.3 = phi i64 [ 0, %bb.j ], [ %i.ic, %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.loopexit ]
  %.sroa.10.3 = phi ptr [ null, %bb.j ], [ %.sroa.10.2, %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.loopexit ]
  %.sroa.093.3 = phi ptr [ null, %bb.j ], [ %.sroa.093.2, %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i.loopexit ]
  %i.id = load ptr, ptr %0, align 8, !tbaa !58
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !199
  %i.ig = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.ih = load ptr, ptr %0, align 8, !tbaa !58
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 128
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ig) #19, !inline_history !198
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i: ; preds = %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, %.critedge.i.i
  %.sroa.16.0 = phi i64 [ %.sroa.16.3, %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i ], [ 0, %.critedge.i.i ]
  %.sroa.10.0 = phi ptr [ %.sroa.10.3, %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i ], [ null, %.critedge.i.i ]
  %.sroa.093.0 = phi ptr [ %.sroa.093.3, %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i ], [ null, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #19
  br label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EEEEvNS_9StringRefERT_.exit: ; preds = %bb.i, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i
  %.sroa.16.5 = phi i64 [ %.sroa.16.0, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i ], [ 0, %bb.i ]
  %.sroa.10.5 = phi ptr [ %.sroa.10.0, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i ], [ null, %bb.i ] ; 2 uses
  %.sroa.093.5 = phi ptr [ %.sroa.093.0, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i ], [ null, %bb.i ] ; 5 uses
  %i.ik = load ptr, ptr %i.ae, align 8, !tbaa !177
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 248 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #19
  %i.im = load ptr, ptr %0, align 8, !tbaa !58
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = call noundef zeroext i1 %i.io(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !215
  br i1 %i.ip, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EEEEvNS_9StringRefERT_.exit
  %i.iq = load i32, ptr %i.il, align 4, !tbaa !216
  %i.ir = icmp eq i32 %i.iq, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EEEEvNS_9StringRefERT_.exit
  %i.is = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_16UUIDv4ESaIS5_EEEEvNS_9StringRefERT_.exit ], [ %i.ir, %bb.s ]
  %i.it = load ptr, ptr %0, align 8, !tbaa !58
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 120
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call noundef zeroext i1 %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.20, i64 5, i1 noundef zeroext false, i1 noundef zeroext %i.is, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.q) #19, !inline_history !215
  br i1 %i.iw, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  %i.ix = load ptr, ptr %0, align 8, !tbaa !58
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 192
  %i.iz = load ptr, ptr %i.iy, align 8
end_hunk_0
begin_hunk_1_@_ZN4llvm4yaml13MappingTraitsIPKNS_5MachO13InterfaceFileEE17mapKeysToValuesV4ERNS0_2IOERS5_:bb.a
_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.kp = load ptr, ptr %i.ae, align 8, !tbaa !177
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 188 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.kr = load ptr, ptr %0, align 8, !tbaa !58
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = call noundef zeroext i1 %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !223
  br i1 %i.ku, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit
  %i.kv = load i32, ptr %i.kq, align 4, !tbaa !224
  %i.kw = icmp eq i32 %i.kv, 65536
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit
  %i.kx = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit ], [ %i.kw, %bb.ag ]
  %i.ky = load ptr, ptr %0, align 8, !tbaa !58
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 120
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = call noundef zeroext i1 %i.la(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.23, i64 21, i1 noundef zeroext false, i1 noundef zeroext %i.kx, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19, !inline_history !223
  br i1 %i.lb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm4yaml7yamlizeINS_5MachO13PackedVersionEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS5_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.kq, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.lc = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.ld = load ptr, ptr %0, align 8, !tbaa !58
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 128
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.lc) #19, !inline_history !223
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit21

bb.aj:                                            ; preds = %bb.ah
  %i.lg = load i8, ptr %i.k, align 1, !tbaa !219, !range !220, !noundef !221
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.ak, label %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit21

bb.ak:                                            ; preds = %bb.aj
  store i32 65536, ptr %i.kq, align 4, !tbaa !75
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit21

_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit21: ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.li = load ptr, ptr %i.ae, align 8, !tbaa !177
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.lk = load ptr, ptr %0, align 8, !tbaa !58
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = call noundef zeroext i1 %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !225
  br i1 %i.ln, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit21
  %i.lo = load i8, ptr %i.lj, align 1, !tbaa !226
  %i.lp = icmp eq i8 %i.lo, 0
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit21
  %i.lq = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_5MachO13PackedVersionES4_EEvNS_9StringRefERT_RKT0_.exit21 ], [ %i.lp, %bb.al ]
  %i.lr = load ptr, ptr %0, align 8, !tbaa !58
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 120
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = call noundef zeroext i1 %i.lt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.24, i64 17, i1 noundef zeroext false, i1 noundef zeroext %i.lq, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #19, !inline_history !225
  br i1 %i.lu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm4yaml7yamlizeI12SwiftVersionEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.lj, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.lv = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.lw = load ptr, ptr %0, align 8, !tbaa !58
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 128
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.lv) #19, !inline_history !225
  br label %_ZN4llvm4yaml2IO11mapOptionalI12SwiftVersionS3_EEvNS_9StringRefERT_RKT0_.exit

bb.ao:                                            ; preds = %bb.am
  %i.lz = load i8, ptr %i.i, align 1, !tbaa !219, !range !220, !noundef !221
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.ap, label %_ZN4llvm4yaml2IO11mapOptionalI12SwiftVersionS3_EEvNS_9StringRefERT_RKT0_.exit

bb.ap:                                            ; preds = %bb.ao
  store i8 0, ptr %i.lj, align 1, !tbaa !27
  br label %_ZN4llvm4yaml2IO11mapOptionalI12SwiftVersionS3_EEvNS_9StringRefERT_RKT0_.exit

_ZN4llvm4yaml2IO11mapOptionalI12SwiftVersionS3_EEvNS_9StringRefERT_RKT0_.exit: ; preds = %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.mb = load ptr, ptr %i.ae, align 8, !tbaa !177 ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 256 ; 5 uses
  %i.md = load ptr, ptr %0, align 8, !tbaa !58
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = call noundef zeroext i1 %i.mf(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !228
  br i1 %i.mg, label %bb.aq, label %.critedge.i.i22

bb.aq:                                            ; preds = %_ZN4llvm4yaml2IO11mapOptionalI12SwiftVersionS3_EEvNS_9StringRefERT_RKT0_.exit
  %.val7.i.i55 = load ptr, ptr %i.mc, align 8, !tbaa !229
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 264
  %.val.i.i56 = load ptr, ptr %i.mh, align 8, !tbaa !229
  %i.mi = icmp eq ptr %.val7.i.i55, %.val.i.i56
  br i1 %i.mi, label %_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS5_EEEEvNS_9StringRefERT_.exit, label %.critedge.i.i22

.critedge.i.i22:                                  ; preds = %bb.aq, %_ZN4llvm4yaml2IO11mapOptionalI12SwiftVersionS3_EEvNS_9StringRefERT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.mj = load ptr, ptr %0, align 8, !tbaa !58
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 120
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = call noundef zeroext i1 %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.25, i64 15, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #19, !inline_history !231
  br i1 %i.mm, label %bb.ar, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.i22
  %i.mn = load ptr, ptr %0, align 8, !tbaa !58
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = call noundef i32 %i.mp(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !232
  %i.mr = load ptr, ptr %0, align 8, !tbaa !58
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = call noundef zeroext i1 %i.mt(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !232
  br i1 %i.mu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.val.i.i.i.i53 = load ptr, ptr %i.mc, align 8, !tbaa !233
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mb, i64 264
  %.val16.i.i.i.i54 = load ptr, ptr %i.mv, align 8, !tbaa !235
  %i.mw = ptrtoint ptr %.val16.i.i.i.i54 to i64
  %i.mx = ptrtoint ptr %.val.i.i.i.i53 to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = sdiv exact i64 %i.my, 56
  %i.na = trunc i64 %i.mz to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.nb = phi i32 [ %i.na, %bb.as ], [ %i.mq, %bb.ar ] ; 2 uses
  %.not.i.i.i.i23 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i.i.i23, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i.i, label %.lr.ph.i.i.i.i24

.lr.ph.i.i.i.i24:                                 ; preds = %bb.at
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mb, i64 264 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mb, i64 272 ; 3 uses
  %wide.trip.count.i.i.i.i25 = zext i32 %i.nb to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.bn, %.lr.ph.i.i.i.i24
  %indvars.iv.i.i.i.i26 = phi i64 [ 0, %.lr.ph.i.i.i.i24 ], [ %indvars.iv.next.i.i.i.i27, %bb.bn ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.ne = load ptr, ptr %0, align 8, !tbaa !58
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = trunc nuw i64 %indvars.iv.i.i.i.i26 to i32
  %i.ni = call noundef zeroext i1 %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.nh, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #19, !inline_history !232
  br i1 %i.ni, label %bb.av, label %bb.bn

bb.av:                                            ; preds = %bb.au
  %.val.i.i.i.i.i29 = load ptr, ptr %i.mc, align 8, !tbaa !233 ; 6 uses
  %.val5.i.i.i.i.i30 = load ptr, ptr %i.nc, align 8, !tbaa !235 ; 5 uses
  %i.nj = ptrtoint ptr %.val5.i.i.i.i.i30 to i64  ; 2 uses
  %i.nk = ptrtoint ptr %.val.i.i.i.i.i29 to i64   ; 2 uses
  %i.nl = sub i64 %i.nj, %i.nk                    ; 2 uses
  %i.nm = sdiv exact i64 %i.nl, 56                ; 7 uses
  %.not.i.i.i.i.i31 = icmp ugt i64 %i.nm, %indvars.iv.i.i.i.i26
  br i1 %.not.i.i.i.i.i31, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nn = add nuw nsw i64 %indvars.iv.i.i.i.i26, 1
  %i.no = sub nuw i64 %i.nn, %i.nm                ; 9 uses
  %i.np = load ptr, ptr %i.nd, align 8, !tbaa !236
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = sub i64 %i.nq, %i.nj
  %i.ns = sdiv exact i64 %i.nr, 56                ; 2 uses
  %i.nt = sub nuw nsw i64 164703072086692425, %i.nm
  %i.nu = icmp ule i64 %i.ns, %i.nt
  call void @llvm.assume(i1 %i.nu)
  %.not23.i.i.i.i.i.i.i32 = icmp ult i64 %i.ns, %i.no
  br i1 %.not23.i.i.i.i.i.i.i32, label %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader:           ; preds = %bb.aw
  %i.nv = sub i64 %indvars.iv.i.i.i.i26, %i.nm
  %xtraiter153 = and i64 %i.no, 7                 ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol
  %.08.i.i.i.i.i.i.i.i.i.i34.prol = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol ], [ %.val5.i.i.i.i.i30, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader ] ; 4 uses
  %.057.i.i.i.i.i.i.i.i.i.i35.prol = phi i64 [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol ], [ %i.no, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader ]
  %prol.iter155 = phi i64 [ %prol.iter155.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34.prol, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i.i.i.i.i.i.i.i34.prol, i8 0, i64 56, i1 false)
  store ptr %i.nx, ptr %i.nw, align 8, !tbaa !23
  %i.ny = add i64 %.057.i.i.i.i.i.i.i.i.i.i35.prol, -1 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34.prol, i64 56 ; 3 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol, !llvm.loop !237

.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader ], [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i34.unr = phi ptr [ %.val5.i.i.i.i.i30, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader ], [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol ]
  %.057.i.i.i.i.i.i.i.i.i.i35.unr = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.preheader ], [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol ]
  %i.oa = icmp ult i64 %i.nv, 7
  br i1 %i.oa, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i.i.i.i33:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i33
  %.08.i.i.i.i.i.i.i.i.i.i34 = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i.i.i.i.i.i33 ], [ %.08.i.i.i.i.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i.i.i.i.i.i35 = phi i64 [ %i.oy, %.lr.ph.i.i.i.i.i.i.i.i.i.i33 ], [ %.057.i.i.i.i.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 24
  %i.oc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i.i.i.i.i.i.i.i34, i8 0, i64 56, i1 false)
  store ptr %i.oc, ptr %i.ob, align 8, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 56
  %i.oe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 80
  %i.of = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.od, i8 0, i64 56, i1 false)
  store ptr %i.of, ptr %i.oe, align 8, !tbaa !23
  %i.og = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 112
  %i.oh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 136
  %i.oi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.og, i8 0, i64 56, i1 false)
  store ptr %i.oi, ptr %i.oh, align 8, !tbaa !23
  %i.oj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 168
  %i.ok = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 192
  %i.ol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.oj, i8 0, i64 56, i1 false)
  store ptr %i.ol, ptr %i.ok, align 8, !tbaa !23
  %i.om = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 224
  %i.on = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 248
  %i.oo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.om, i8 0, i64 56, i1 false)
  store ptr %i.oo, ptr %i.on, align 8, !tbaa !23
  %i.op = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 280
  %i.oq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 304
  %i.or = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.op, i8 0, i64 56, i1 false)
  store ptr %i.or, ptr %i.oq, align 8, !tbaa !23
  %i.os = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 336
  %i.ot = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 360
  %i.ou = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.os, i8 0, i64 56, i1 false)
  store ptr %i.ou, ptr %i.ot, align 8, !tbaa !23
  %i.ov = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 392
  %i.ow = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 416
  %i.ox = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ov, i8 0, i64 56, i1 false)
  store ptr %i.ox, ptr %i.ow, align 8, !tbaa !23
  %i.oy = add i64 %.057.i.i.i.i.i.i.i.i.i.i35, -8 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i34, i64 448 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i36.7 = icmp eq i64 %i.oy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i36.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33, !llvm.loop !238

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i33.prol.loopexit ], [ %i.oz, %.lr.ph.i.i.i.i.i.i.i.i.i.i33 ]
  store ptr %.lcssa, ptr %i.nc, align 8, !tbaa !235
  %.val6.pre.i.i.i.i.i37 = load ptr, ptr %i.mc, align 8, !tbaa !233
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.aw
  %.sroa.speculated.i.i.i.i.i.i.i.i39 = call i64 @llvm.umax.i64(i64 %i.nm, i64 range(i64 -164703072086692424, 164703076381659722) %i.no)
  %i.pa = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i39, %i.nm ; 2 uses
  %i.pb = mul nuw nsw i64 %i.pa, 56
  %i.pc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pb) #23 ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.nl ; 3 uses
  %i.pe = sub i64 %indvars.iv.i.i.i.i26, %i.nm
  %xtraiter156 = and i64 %i.no, 7                 ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol

.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol:              ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol
  %.08.i.i.i29.i.i.i.i.i.i.i41.prol = phi ptr [ %i.pi, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol ], [ %i.pd, %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.057.i.i.i30.i.i.i.i.i.i.i42.prol = phi i64 [ %i.ph, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol ], [ %i.no, %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %prol.iter158 = phi i64 [ %prol.iter158.next, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ]
  %i.pf = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41.prol, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i29.i.i.i.i.i.i.i41.prol, i8 0, i64 56, i1 false)
  store ptr %i.pg, ptr %i.pf, align 8, !tbaa !23
  %i.ph = add i64 %.057.i.i.i30.i.i.i.i.i.i.i42.prol, -1 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41.prol, i64 56 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol, !llvm.loop !239

.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol.loopexit:     ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol, %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %.08.i.i.i29.i.i.i.i.i.i.i41.unr = phi ptr [ %i.pd, %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.pi, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol ]
  %.057.i.i.i30.i.i.i.i.i.i.i42.unr = phi i64 [ %i.no, %_ZNKSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.ph, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol ]
  %i.pj = icmp ult i64 %i.pe, 7
  br i1 %i.pj, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i40

.lr.ph.i.i.i28.i.i.i.i.i.i.i40:                   ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol.loopexit, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40
  %.08.i.i.i29.i.i.i.i.i.i.i41 = phi ptr [ %i.qi, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40 ], [ %.08.i.i.i29.i.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol.loopexit ] ; 25 uses
  %.057.i.i.i30.i.i.i.i.i.i.i42 = phi i64 [ %i.qh, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40 ], [ %.057.i.i.i30.i.i.i.i.i.i.i42.unr, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol.loopexit ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 24
  %i.pl = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i29.i.i.i.i.i.i.i41, i8 0, i64 56, i1 false)
  store ptr %i.pl, ptr %i.pk, align 8, !tbaa !23
  %i.pm = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 56
  %i.pn = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 80
  %i.po = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pm, i8 0, i64 56, i1 false)
  store ptr %i.po, ptr %i.pn, align 8, !tbaa !23
  %i.pp = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 112
  %i.pq = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 136
  %i.pr = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pp, i8 0, i64 56, i1 false)
  store ptr %i.pr, ptr %i.pq, align 8, !tbaa !23
  %i.ps = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 168
  %i.pt = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 192
  %i.pu = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ps, i8 0, i64 56, i1 false)
  store ptr %i.pu, ptr %i.pt, align 8, !tbaa !23
  %i.pv = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 224
  %i.pw = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 248
  %i.px = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pv, i8 0, i64 56, i1 false)
  store ptr %i.px, ptr %i.pw, align 8, !tbaa !23
  %i.py = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 280
  %i.pz = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 304
  %i.qa = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.py, i8 0, i64 56, i1 false)
  store ptr %i.qa, ptr %i.pz, align 8, !tbaa !23
  %i.qb = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 336
  %i.qc = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 360
  %i.qd = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.qb, i8 0, i64 56, i1 false)
  store ptr %i.qd, ptr %i.qc, align 8, !tbaa !23
  %i.qe = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 392
  %i.qf = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 416
  %i.qg = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.qe, i8 0, i64 56, i1 false)
  store ptr %i.qg, ptr %i.qf, align 8, !tbaa !23
  %i.qh = add i64 %.057.i.i.i30.i.i.i.i.i.i.i42, -8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.08.i.i.i29.i.i.i.i.i.i.i41, i64 448
  %.not.i.i.i31.i.i.i.i.i.i.i43.7 = icmp eq i64 %i.qh, 0
  br i1 %.not.i.i.i31.i.i.i.i.i.i.i43.7, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, label %.lr.ph.i.i.i28.i.i.i.i.i.i.i40, !llvm.loop !238

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i28.i.i.i.i.i.i.i40, %.lr.ph.i.i.i28.i.i.i.i.i.i.i40.prol.loopexit
  %.not1.i.i.i.i.i.i.i.i.i.i44 = icmp eq ptr %.val.i.i.i.i.i29, %.val5.i.i.i.i.i30
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i44, label %_ZNSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i45

.lr.ph.i.i.i34.i.i.i.i.i.i.i45:                   ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_115UmbrellaSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i46 = phi ptr [ %i.rc, %_ZSt19__relocate_object_aIN12_GLOBAL__N_115UmbrellaSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.pc, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 6 uses
  %.092.i.i.i.i.i.i.i.i.i.i47 = phi ptr [ %i.rb, %_ZSt19__relocate_object_aIN12_GLOBAL__N_115UmbrellaSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i29, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.qj = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i.i.i.i47, align 8, !tbaa !245, !alias.scope !243, !noalias !240
  store <2 x ptr> %i.qj, ptr %.03.i.i.i.i.i.i.i.i.i.i46, align 8, !tbaa !245, !alias.scope !240, !noalias !243
  %i.qk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i46, i64 16
  %i.ql = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i47, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !247, !alias.scope !243, !noalias !240
  store ptr %i.qm, ptr %i.qk, align 8, !tbaa !247, !alias.scope !240, !noalias !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.092.i.i.i.i.i.i.i.i.i.i47, i8 0, i64 24, i1 false), !alias.scope !243, !noalias !240
  %i.qn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i46, i64 24 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i47, i64 24 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i46, i64 40 ; 3 uses
  store ptr %i.qp, ptr %i.qn, align 8, !tbaa !23, !alias.scope !240, !noalias !243
  %i.qq = load ptr, ptr %i.qo, align 8, !tbaa !25, !alias.scope !243, !noalias !240 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i47, i64 40 ; 5 uses
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48

bb.ax:                                            ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i45
  %i.qt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i47, i64 32
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !28, !alias.scope !243, !noalias !240 ; 3 uses
  %i.qv = icmp ult i64 %i.qu, 16
  call void @llvm.assume(i1 %i.qv)
  %i.qw = add nuw nsw i64 %i.qu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qp, ptr noundef nonnull align 8 dereferenceable(1) %i.qr, i64 %i.qw, i1 false), !alias.scope !249
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_115UmbrellaSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48: ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i45
  store ptr %i.qq, ptr %i.qn, align 8, !tbaa !25, !alias.scope !240, !noalias !243
  %i.qx = load i64, ptr %i.qr, align 8, !tbaa !27, !alias.scope !243, !noalias !240
  store i64 %i.qx, ptr %i.qp, align 8, !tbaa !27, !alias.scope !240, !noalias !243
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i47, i64 32
  %.pre.i.i.i.i.i.i.i.i.i.i.i50 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i49, align 8, !tbaa !28, !alias.scope !243, !noalias !240
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_115UmbrellaSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_115UmbrellaSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48, %bb.ax
  %i.qy = phi i64 [ %i.qu, %bb.ax ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48 ]
  %i.qz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i47, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i46, i64 32
  store i64 %i.qy, ptr %i.ra, align 8, !tbaa !28, !alias.scope !240, !noalias !243
  store ptr %i.qr, ptr %i.qo, align 8, !tbaa !25, !alias.scope !243, !noalias !240
  store i64 0, ptr %i.qz, align 8, !tbaa !28, !alias.scope !243, !noalias !240
  store i8 0, ptr %i.qr, align 8, !tbaa !27, !alias.scope !243, !noalias !240
  %i.rb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i47, i64 56 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i46, i64 56
  %.not.i.i.i35.i.i.i.i.i.i.i51 = icmp eq ptr %i.rb, %.val5.i.i.i.i.i30
  br i1 %.not.i.i.i35.i.i.i.i.i.i.i51, label %_ZNSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i45, !llvm.loop !250

_ZNSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_115UmbrellaSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit33.i.i.i.i.i.i.i
  %.not.i37.i.i.i.i.i.i.i52 = icmp eq ptr %.val.i.i.i.i.i29, null
  br i1 %.not.i37.i.i.i.i.i.i.i52, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  %i.rd = load ptr, ptr %i.nd, align 8, !tbaa !236
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = sub i64 %i.re, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i29, i64 noundef %i.rf) #21
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i: ; preds = %bb.ay, %_ZNSt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.i.i.i.i
  store ptr %i.pc, ptr %i.mc, align 8, !tbaa !233
  %i.rg = getelementptr inbounds nuw [56 x i8], ptr %i.pd, i64 %i.no
  store ptr %i.rg, ptr %i.nc, align 8, !tbaa !235
  %i.rh = getelementptr inbounds nuw [56 x i8], ptr %i.pc, i64 %i.pa
  store ptr %i.rh, ptr %i.nd, align 8, !tbaa !236
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i, %bb.av
  %.val6.i.i.i.i.i38 = phi ptr [ %i.pc, %_ZNSt12_Vector_baseIN12_GLOBAL__N_115UmbrellaSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_115UmbrellaSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i29, %bb.av ]
  %i.ri = getelementptr inbounds nuw [56 x i8], ptr %.val6.i.i.i.i.i38, i64 %indvars.iv.i.i.i.i26 ; 5 uses
  %i.rj = load ptr, ptr %0, align 8, !tbaa !58
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 104
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !251
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.rm = load ptr, ptr %0, align 8, !tbaa !58
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 120
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = call noundef zeroext i1 %i.ro(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.18, i64 7, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #19, !inline_history !252
  br i1 %i.rp, label %bb.az, label %_ZN4llvm4yaml2IO11mapRequiredISt6vectorINS_5MachO6TargetESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i

bb.az:                                            ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @_ZN4llvm4yaml7yamlizeISt6vectorINS_5MachO6TargetESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ri, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.rq = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.rr = load ptr, ptr %0, align 8, !tbaa !58
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 128
  %i.rt = load ptr, ptr %i.rs, align 8
  call void %i.rt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.rq) #19, !inline_history !252
  br label %_ZN4llvm4yaml2IO11mapRequiredISt6vectorINS_5MachO6TargetESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredISt6vectorINS_5MachO6TargetESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_115UmbrellaSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ru = load ptr, ptr %0, align 8, !tbaa !58
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = call noundef zeroext i1 %i.rw(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !253
  br i1 %i.rx, label %_ZN4llvm8erase_ifISt6vectorINS_5MachO6TargetESaIS3_EEZNS_4yaml13MappingTraitsIN12_GLOBAL__N_115UmbrellaSectionEE7mappingERNS6_2IOERS9_EUlRKS3_E_EEvRT_T0_.exit.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm4yaml2IO11mapRequiredISt6vectorINS_5MachO6TargetESaIS5_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ri, align 8, !tbaa !245 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.ry, align 8, !tbaa !245 ; 6 uses
  %i.rz = ptrtoint ptr %.val3.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.sa = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.sb = sub i64 %i.rz, %i.sa                    ; 2 uses
  %i.sc = sdiv exact i64 %i.sb, 24
  %i.sd = ashr i64 %i.sc, 2                       ; 3 uses
  %i.se = icmp sgt i64 %i.sd, 0
  br i1 %i.se, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.ba
  %i.sf = mul nuw nsw i64 %i.sd, 96
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.sf ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.be, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.069.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ss, %bb.be ], [ %i.sd, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.sr, %bb.be ], [ %.val.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 13 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !188
  %i.sg = getelementptr i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.sg, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 19
  %i.sh = icmp eq i32 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.sh
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm5MachO6TargetESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_4yaml13MappingTraitsIN12_GLOBAL__N_115UmbrellaSectionEE7mappingERNSC_2IOERSF_EUlRKS4_E_EEET_SO_SO_T0_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val.i16.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.si, align 4, !tbaa !188
  %i.sj = getelementptr i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 28
  %.val1.i17.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.sj, align 4
  %.not.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i16.i.i.i.i.i.i.i.i.i.i.i.i.i, 19
  %i.sk = icmp eq i32 %.val1.i17.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not1.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.sk
  br i1 %.not1.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm5MachO6TargetESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_4yaml13MappingTraitsIN12_GLOBAL__N_115UmbrellaSectionEE7mappingERNSC_2IOERSF_EUlRKS4_E_EEET_SO_SO_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %.val.i20.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.sl, align 4, !tbaa !188
  %i.sm = getelementptr i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 52
  %.val1.i21.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.sm, align 4
  %.not.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i20.i.i.i.i.i.i.i.i.i.i.i.i.i, 19
  %i.sn = icmp eq i32 %.val1.i21.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not1.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.sn
  br i1 %.not1.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm5MachO6TargetESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_4yaml13MappingTraitsIN12_GLOBAL__N_115UmbrellaSectionEE7mappingERNSC_2IOERSF_EUlRKS4_E_EEET_SO_SO_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit132, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  %.val.i24.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.so, align 4, !tbaa !188
  %i.sp = getelementptr i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 76
  %.val1.i25.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.sp, align 4
  %.not.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, 19
  %i.sq = icmp eq i32 %.val1.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not1.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.sq
  br i1 %.not1.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm5MachO6TargetESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_4yaml13MappingTraitsIN12_GLOBAL__N_115UmbrellaSectionEE7mappingERNSC_2IOERSF_EUlRKS4_E_EEET_SO_SO_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit134, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.049.068.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 96
  %i.ss = add nsw i64 %.069.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.st = icmp sgt i64 %.069.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.st, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !254

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.be
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.pre74.i.i.i.i.i.i.i.i.i.i.i.i.i = sub i64 %i.rz, %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba
  %.pre-phi75.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre74.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sb, %bb.ba ]
  %.sroa.049.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i, %bb.ba ] ; 6 uses
  %i.su = sdiv exact i64 %.pre-phi75.i.i.i.i.i.i.i.i.i.i.i.i.i, 24
  switch i64 %i.su, label %_ZN4llvm8erase_ifISt6vectorINS_5MachO6TargetESaIS3_EEZNS_4yaml13MappingTraitsIN12_GLOBAL__N_115UmbrellaSectionEE7mappingERNS6_2IOERS9_EUlRKS3_E_EEvRT_T0_.exit.i.i.i.i.i.i.i [
    i64 3, label %bb.bf
    i64 2, label %bb.bh
    i64 1, label %bb.bj
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i28.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.049.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !188
  %i.sv = getelementptr i8, ptr %.sroa.049.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.val1.i29.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.sv, align 4
  %.not.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i28.i.i.i.i.i.i.i.i.i.i.i.i.i, 19
  %i.sw = icmp eq i32 %.val1.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not1.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.sw
  br i1 %.not1.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm5MachO6TargetESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_4yaml13MappingTraitsIN12_GLOBAL__N_115UmbrellaSectionEE7mappingERNSC_2IOERSF_EUlRKS4_E_EEET_SO_SO_T0_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg
end_hunk_1
begin_hunk_2_@_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_115MetadataSectionESaIS5_EENS5_6OptionEEEvNS_9StringRefERT_RT0_:bb.a

bb.y:                                             ; preds = %_ZN4llvm8erase_ifISt6vectorINS_5MachO6TargetESaIS3_EEZNS_4yaml20MappingContextTraitsIN12_GLOBAL__N_115MetadataSectionENS9_6OptionEE7mappingERNS6_2IOERS9_RSA_EUlRKS3_E_EEvRT_T0_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.eq = load ptr, ptr %0, align 8, !tbaa !58
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = call noundef zeroext i1 %i.es(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.85, i64 9, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19, !inline_history !363
  br i1 %i.et, label %bb.z, label %_ZN4llvm4yaml2IO11mapRequiredISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit9.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  call void @_ZN4llvm4yaml7yamlizeISt6vectorI13FlowStringRefSaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.ew = load ptr, ptr %0, align 8, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ev) #19, !inline_history !363
  br label %_ZN4llvm4yaml2IO11mapRequiredISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit9.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit9.i.i.i.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_115MetadataSectionENS3_6OptionEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i

_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_115MetadataSectionENS3_6OptionEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i: ; preds = %_ZN4llvm4yaml2IO11mapRequiredISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit9.i.i.i.i.i, %_ZN4llvm4yaml2IO11mapRequiredISt6vectorI13FlowStringRefSaIS4_EEEEvNS_9StringRefERT_.exit.i.i.i.i.i
  %i.ez = load ptr, ptr %0, align 8, !tbaa !58
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !358
  %i.fc = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.fd = load ptr, ptr %0, align 8, !tbaa !58
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.fc) #19, !inline_history !347
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm4yaml7yamlizeIN12_GLOBAL__N_115MetadataSectionENS3_6OptionEEENSt9enable_ifIXsr24unvalidatedMappingTraitsIT_T0_EE5valueEvE4typeERNS0_2IOERS6_bRS7_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_115MetadataSectionESaIS4_EENS4_6OptionEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i, label %bb.f, !llvm.loop !364

_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_115MetadataSectionESaIS4_EENS4_6OptionEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i: ; preds = %bb.aa, %bb.e
  %i.fg = load ptr, ptr %0, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !347
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.fk = load ptr, ptr %0, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.fj) #19, !inline_history !346
  br label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_115MetadataSectionESaIS5_EENS5_6OptionEEEvNS_9StringRefERT_bRT0_.exit

_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_115MetadataSectionESaIS5_EENS5_6OptionEEEvNS_9StringRefERT_bRT0_.exit: ; preds = %.critedge, %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_115MetadataSectionESaIS4_EENS4_6OptionEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_115MetadataSectionESaIS5_EENS5_6OptionEEEvNS_9StringRefERT_bRT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm4yaml2IO11mapOptionalISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EEEEvNS_9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %4 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %6 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %7 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 3 uses
  %8 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  %9 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i8, align 1                       ; 3 uses
  %10 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i8, align 1                       ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !365
  br i1 %i.u, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %3, align 8, !tbaa !366
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !366
  %i.w = icmp eq ptr %.val7.i, %.val.i
  br i1 %i.w, label %_ZN4llvm4yaml2IO22mapOptionalWithContextISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_RT0_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  %i.x = load ptr, ptr %0, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.p) #19, !inline_history !368
  br i1 %i.aa, label %bb.c, label %_ZN4llvm4yaml2IO10processKeyISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS5_EENS0_12EmptyContextEEEvNS_9StringRefERT_bRT0_.exit.i

bb.c:                                             ; preds = %.critedge.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !369
  %i.af = load ptr, ptr %0, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !369
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !370
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val16.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !372
  %i.ak = ptrtoint ptr %.val16.i.i.i to i64
  %i.al = ptrtoint ptr %.val.i.i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 280
  %i.ao = trunc i64 %i.an to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ap = phi i32 [ %i.ao, %bb.d ], [ %i.ae, %bb.c ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZN4llvm4yaml7yamlizeISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS9_bRT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.ap to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.aq, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aq ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  %i.as = load ptr, ptr %0, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.aw = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #19, !inline_history !369
  br i1 %i.aw, label %bb.g, label %bb.aq

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !370 ; 7 uses
  %.val5.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !372 ; 6 uses
  %i.ax = ptrtoint ptr %.val5.i.i.i.i to i64      ; 2 uses
  %i.ay = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = sdiv exact i64 %i.az, 280               ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ba, %indvars.iv.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.bc = sub nuw i64 %i.bb, %i.ba                ; 9 uses
  %i.bd = load ptr, ptr %i.ar, align 8, !tbaa !373
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ax
  %i.bg = sdiv exact i64 %i.bf, 280               ; 2 uses
  %i.bh = sub nuw nsw i64 32940614417338485, %i.ba
  %i.bi = icmp ule i64 %i.bg, %i.bh
  call void @llvm.assume(i1 %i.bi)
  %.not27.i.i.i.i.i.i = icmp ult i64 %i.bg, %i.bc
  br i1 %.not27.i.i.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.h
  %i.bj = sub i64 %indvars.iv.i.i.i, %i.ba
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bk, i8 0, i64 120, i1 false)
  store ptr %i.bk, ptr %.08.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !123
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 12
  store i32 5, ptr %i.bm, align 4, !tbaa !185
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bn, i8 0, i64 144, i1 false)
  %i.bo = add i64 %.057.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.prol, i64 280 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !374

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val5.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bq = icmp ult i64 %i.bj, 3
  br i1 %i.bq, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.br, i8 0, i64 120, i1 false)
  store ptr %i.br, ptr %.08.i.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !123
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 12
  store i32 5, ptr %i.bt, align 4, !tbaa !185
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bu, i8 0, i64 144, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 280
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 296 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i8 0, i64 120, i1 false)
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !122
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 288
  store i32 0, ptr %i.bx, align 8, !tbaa !123
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 292
  store i32 5, ptr %i.by, align 4, !tbaa !185
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bz, i8 0, i64 144, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 560
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 576 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i8 0, i64 120, i1 false)
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !122
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 568
  store i32 0, ptr %i.cc, align 8, !tbaa !123
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 572
  store i32 5, ptr %i.cd, align 4, !tbaa !185
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ce, i8 0, i64 144, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 840
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 856 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, i8 0, i64 120, i1 false)
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !122
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 848
  store i32 0, ptr %i.ch, align 8, !tbaa !123
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 852
  store i32 5, ptr %i.ci, align 4, !tbaa !185
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 976
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cj, i8 0, i64 144, i1 false)
  %i.ck = add i64 %.057.i.i.i.i.i.i.i.i.i, -4     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 1120 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !375

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.aq, align 8, !tbaa !372
  %.val6.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !370
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 range(i64 -32940614417338484, 32940618712305782) %i.bc)
  %i.cm = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.ba ; 2 uses
  %i.cn = mul nuw nsw i64 %i.cm, 280
  %i.co = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #23 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.az ; 3 uses
  %i.cq = sub i64 %indvars.iv.i.i.i, %i.ba
  %xtraiter44 = and i64 %i.bc, 3                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i32.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i32.i.i.i.i.i.i.prol

.lr.ph.i.i.i32.i.i.i.i.i.i.prol:                  ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol
  %.08.i.i.i33.i.i.i.i.i.i.prol = phi ptr [ %i.cw, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol ], [ %i.cp, %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 6 uses
  %.057.i.i.i34.i.i.i.i.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol ], [ %i.bc, %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cr, i8 0, i64 120, i1 false)
  store ptr %i.cr, ptr %.08.i.i.i33.i.i.i.i.i.i.prol, align 8, !tbaa !122
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.cs, align 8, !tbaa !123
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i.prol, i64 12
  store i32 5, ptr %i.ct, align 4, !tbaa !185
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i.prol, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cu, i8 0, i64 144, i1 false)
  %i.cv = add i64 %.057.i.i.i34.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i32.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i32.i.i.i.i.i.i.prol, !llvm.loop !376

.lr.ph.i.i.i32.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i32.i.i.i.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.08.i.i.i33.i.i.i.i.i.i.unr = phi ptr [ %i.cp, %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.cw, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol ]
  %.057.i.i.i34.i.i.i.i.i.i.unr = phi i64 [ %i.bc, %_ZNKSt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.cv, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol ]
  %i.cx = icmp ult i64 %i.cq, 3
  br i1 %i.cx, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i.i.i.i, label %.lr.ph.i.i.i32.i.i.i.i.i.i

.lr.ph.i.i.i32.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i32.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i32.i.i.i.i.i.i
  %.08.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i32.i.i.i.i.i.i ], [ %.08.i.i.i33.i.i.i.i.i.i.unr, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i34.i.i.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i32.i.i.i.i.i.i ], [ %.057.i.i.i34.i.i.i.i.i.i.unr, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol.loopexit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, i8 0, i64 120, i1 false)
  store ptr %i.cy, ptr %.08.i.i.i33.i.i.i.i.i.i, align 8, !tbaa !122
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.cz, align 8, !tbaa !123
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 12
  store i32 5, ptr %i.da, align 4, !tbaa !185
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.db, i8 0, i64 144, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 280
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 296 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dd, i8 0, i64 120, i1 false)
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !122
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 288
  store i32 0, ptr %i.de, align 8, !tbaa !123
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 292
  store i32 5, ptr %i.df, align 4, !tbaa !185
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dg, i8 0, i64 144, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 560
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 576 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.di, i8 0, i64 120, i1 false)
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !122
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 568
  store i32 0, ptr %i.dj, align 8, !tbaa !123
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 572
  store i32 5, ptr %i.dk, align 4, !tbaa !185
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dl, i8 0, i64 144, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 840
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 856 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dn, i8 0, i64 120, i1 false)
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !122
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 848
  store i32 0, ptr %i.do, align 8, !tbaa !123
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 852
  store i32 5, ptr %i.dp, align 4, !tbaa !185
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 976
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dq, i8 0, i64 144, i1 false)
  %i.dr = add i64 %.057.i.i.i34.i.i.i.i.i.i, -4   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.i.i.i, i64 1120
  %.not.i.i.i35.i.i.i.i.i.i.3 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i35.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i.i.i.i, label %.lr.ph.i.i.i32.i.i.i.i.i.i, !llvm.loop !375

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i32.i.i.i.i.i.i, %.lr.ph.i.i.i32.i.i.i.i.i.i.prol.loopexit
  %i.dt = call fastcc noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_113SymbolSectionES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %.val.i.i.i.i, ptr noundef %.val5.i.i.i.i, ptr noundef nonnull %i.co) ; 0 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_113SymbolSectionEEvT_S3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i.i.i.i, %_ZN12_GLOBAL__N_113SymbolSectionD2Ev.exit.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.fn, %_ZN12_GLOBAL__N_113SymbolSectionD2Ev.exit.i.i.i ], [ %.val.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i.i.i.i ] ; 15 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 256
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 272
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !329
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #21
  br label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit.i.i.i.i

_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 232
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit2.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 248
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !329
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #21
  br label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit2.i.i.i.i

_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit2.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 208
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i3.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i3.i.i.i.i, label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit4.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit2.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 224
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !329
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #21
  br label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit4.i.i.i.i

_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit4.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit2.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 184
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i5.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i5.i.i.i.i, label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit6.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit4.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 200
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !329
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #21
  br label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit6.i.i.i.i

_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit6.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit4.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i7.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i7.i.i.i.i, label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit8.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit6.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 176
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !329
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #21
  br label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit8.i.i.i.i

_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit8.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit6.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i9.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i9.i.i.i.i, label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit10.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit8.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !329
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #21
  br label %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit10.i.i.i.i

_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit10.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit8.i.i.i.i
  %i.fk = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZN12_GLOBAL__N_113SymbolSectionD2Ev.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit10.i.i.i.i
  call void @free(ptr noundef %i.fk) #19
  br label %_ZN12_GLOBAL__N_113SymbolSectionD2Ev.exit.i.i.i

_ZN12_GLOBAL__N_113SymbolSectionD2Ev.exit.i.i.i:  ; preds = %bb.o, %_ZNSt6vectorI13FlowStringRefSaIS0_EED2Ev.exit10.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 280 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fn, %.val5.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_113SymbolSectionEEvT_S3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !378

_ZSt8_DestroyIPN12_GLOBAL__N_113SymbolSectionEEvT_S3_.exit.i.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_113SymbolSectionD2Ev.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i.i.i.i
  %.not.i38.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i38.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_113SymbolSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_113SymbolSectionEEvT_S3_.exit.i.i.i.i.i.i
  %i.fo = load ptr, ptr %i.ar, align 8, !tbaa !373
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.fp, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.fq) #21
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_113SymbolSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_113SymbolSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZSt8_DestroyIPN12_GLOBAL__N_113SymbolSectionEEvT_S3_.exit.i.i.i.i.i.i
  store ptr %i.co, ptr %3, align 8, !tbaa !370
  %i.fr = getelementptr inbounds nuw [280 x i8], ptr %i.cp, i64 %i.bc
  store ptr %i.fr, ptr %i.aq, align 8, !tbaa !372
  %i.fs = getelementptr inbounds nuw [280 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.fs, ptr %i.ar, align 8, !tbaa !373
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_113SymbolSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i, %bb.g
  %.val6.i.i.i.i = phi ptr [ %i.co, %_ZNSt12_Vector_baseIN12_GLOBAL__N_113SymbolSectionESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i.i ], [ %.val6.pre.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_113SymbolSectionEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.g ]
  %i.ft = getelementptr inbounds nuw [280 x i8], ptr %.val6.i.i.i.i, i64 %indvars.iv.i.i.i ; 16 uses
  %i.fu = load ptr, ptr %0, align 8, !tbaa !58
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 104
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !379
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  %i.fx = load ptr, ptr %0, align 8, !tbaa !58
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 120
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef zeroext i1 %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.18, i64 7, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.m) #19, !inline_history !380
  br i1 %i.ga, label %bb.q, label %_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @_ZN4llvm4yaml7yamlizeINS_11SmallVectorINS_5MachO6TargetELj5EEENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.ft, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %i.gb = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.gc = load ptr, ptr %0, align 8, !tbaa !58
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gb) #19, !inline_history !380
  br label %_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i

_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i: ; preds = %bb.q, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_113SymbolSectionESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.gf = load ptr, ptr %0, align 8, !tbaa !58
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call noundef zeroext i1 %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !381
  br i1 %i.gi, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS_11SmallVectorINS_5MachO6TargetELj5EEEEEvNS_9StringRefERT_.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ft, align 8, !tbaa !122 ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.gj, align 8, !tbaa !123
  %i.gk = zext i32 %.val3.i.i.i.i.i.i.i to i64    ; 3 uses
  %.idx1.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.gk, 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.idx1.i.i.i.i.i.i.i.i ; 5 uses
  %i.gm = lshr i64 %i.gk, 2                       ; 3 uses
  %.not.i.i.i.i.i17.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i.i.i.i17.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.r
  %i.gn = mul nuw nsw i64 %i.gm, 96               ; 2 uses
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.gn
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.v, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.063.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ha, %bb.v ], [ %i.gm, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02962.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gz, %bb.v ], [ %.val.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 13 uses
  %.029.val38.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.02962.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !188
  %i.go = getelementptr i8, ptr %.02962.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.029.val39.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.go, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.029.val38.i.i.i.i.i.i.i.i.i.i.i.i, 19
  %i.gp = icmp eq i32 %.029.val39.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gp
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__find_ifIPN4llvm5MachO6TargetEN9__gnu_cxx5__ops10_Iter_predIZNS0_4yaml13MappingTraitsIN12_GLOBAL__N_113SymbolSectionEE7mappingERNS7_2IOERSA_EUlRKS2_E_EEET_SJ_SJ_T0_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val36.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gq, align 4, !tbaa !188
  %i.gr = getelementptr i8, ptr %.02962.i.i.i.i.i.i.i.i.i.i.i.i, i64 28
end_hunk_2
