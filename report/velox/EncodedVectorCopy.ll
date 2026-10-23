Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EncodedVectorCopy?download=true
inline.NumInlined: 11502
inline.NumDeleted: 2542
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a

bb.f:                                             ; preds = %bb.d
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %1, align 8, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %bb.n, !prof !90

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #30, !noalias !790
  store i32 %i.ap, ptr %125, align 16, !tbaa !100, !noalias !790
  %i.ar = getelementptr inbounds nuw i8, ptr %125, i64 16
  store i32 0, ptr %i.ar, align 16, !tbaa !100, !noalias !790
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %127, ptr nonnull @.str.8, i64 11, i64 17, ptr nonnull %125)
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #30, !noalias !790
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_bE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %127, ptr nonnull @.str.8) #33
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %127, align 8, !tbaa !107 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %127, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !100
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #30
  br label %bb.acw

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #30
  store i32 0, ptr %128, align 8, !tbaa !791
  %i.ay = getelementptr inbounds nuw i8, ptr %128, i64 8 ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %128, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.az, align 8, !tbaa !792
  %i.ba = getelementptr inbounds nuw i8, ptr %128, i64 48 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %128, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ba, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.bb, align 1, !tbaa !793
  %i.bc = getelementptr inbounds nuw i8, ptr %128, i64 64 ; 8 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !122
  %i.bd = getelementptr inbounds nuw i8, ptr %128, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #30
  invoke void @_ZN8facebook5velox13DecodedVector16decodeAndGetBaseERKSt10shared_ptrINS0_10BaseVectorEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %129, ptr noundef nonnull align 8 dereferenceable(120) %128, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.vd

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %3, align 8, !tbaa !67
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.ve, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #30
  store i32 0, ptr %120, align 8, !tbaa !791
  %i.bf = getelementptr inbounds nuw i8, ptr %120, i64 8 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %120, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.bg, align 8, !tbaa !792
  %i.bh = getelementptr inbounds nuw i8, ptr %120, i64 48 ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %120, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bh, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.bi, align 1, !tbaa !793
  %i.bj = getelementptr inbounds nuw i8, ptr %120, i64 64 ; 4 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !122
  %i.bk = getelementptr inbounds nuw i8, ptr %120, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #30
  invoke void @_ZN8facebook5velox13DecodedVector16decodeAndGetBaseERKSt10shared_ptrINS0_10BaseVectorEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %121, ptr noundef nonnull align 8 dereferenceable(120) %120, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.dz, !inline_history !575

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %120, i64 59 ; 5 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !123, !range !61, !noundef !62
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.r, label %bb.ea

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  %i.bo = load ptr, ptr %3, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !102 ; 4 uses
  %.val.i245 = load ptr, ptr %2, align 8, !tbaa !94 ; 10 uses
  %.val66.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 3 uses
  %.not6.i.i246 = icmp eq ptr %.val.i245, %.val66.i
  br i1 %.not6.i.i246, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i252, label %iter.check2014

iter.check2014:                                   ; preds = %bb.r
  %.val66.i1975 = ptrtoaddr ptr %.val66.i to i64
  %.val.i2451976 = ptrtoaddr ptr %.val.i245 to i64
  %i.br = add i64 %.val66.i1975, -12
  %i.bs = sub i64 %i.br, %.val.i2451976           ; 3 uses
  %i.bt = udiv i64 %i.bs, 12
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 4 uses
  %min.iters.check1977 = icmp ult i64 %i.bs, 96
  br i1 %min.iters.check1977, label %.lr.ph.i.i247.preheader, label %vector.main.loop.iter.check1978

vector.main.loop.iter.check1978:                  ; preds = %iter.check2014
  %min.iters.check1979 = icmp ult i64 %i.bs, 384
  br i1 %min.iters.check1979, label %vec.epilog.ph2018, label %vector.ph1980

vector.ph1980:                                    ; preds = %vector.main.loop.iter.check1978
  %i.bv = and i64 %i.bu, 31                       ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = select i1 %i.bw, i64 32, i64 %i.bv      ; 2 uses
  %n.vec1981 = sub nsw i64 %i.bu, %i.bx           ; 3 uses
  %i.by = mul i64 %n.vec1981, 12
  %i.bz = getelementptr i8, ptr %.val.i245, i64 %i.by
  %broadcast.splatinsert1982 = insertelement <8 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat1983 = shufflevector <8 x i32> %broadcast.splatinsert1982, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1984

vector.body1984:                                  ; preds = %vector.ph1980, %vector.body1984
  %index1985 = phi i64 [ 0, %vector.ph1980 ], [ %index.next2006, %vector.body1984 ] ; 2 uses
  %vec.phi1986 = phi <8 x i32> [ %broadcast.splat1983, %vector.ph1980 ], [ %i.cm, %vector.body1984 ]
  %vec.phi1987 = phi <8 x i32> [ %broadcast.splat1983, %vector.ph1980 ], [ %i.cn, %vector.body1984 ]
  %vec.phi1988 = phi <8 x i32> [ %broadcast.splat1983, %vector.ph1980 ], [ %i.co, %vector.body1984 ]
  %vec.phi1989 = phi <8 x i32> [ %broadcast.splat1983, %vector.ph1980 ], [ %i.cp, %vector.body1984 ]
  %i.ca = mul i64 %index1985, 12                  ; 4 uses
  %next.gep1990 = getelementptr i8, ptr %.val.i245, i64 %i.ca
  %i.cb = getelementptr i8, ptr %.val.i245, i64 %i.ca
  %i.cc = getelementptr i8, ptr %.val.i245, i64 %i.ca
  %i.cd = getelementptr i8, ptr %.val.i245, i64 %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep1990, i64 4
  %i.cf = getelementptr i8, ptr %i.cb, i64 100
  %i.cg = getelementptr i8, ptr %i.cc, i64 196
  %i.ch = getelementptr i8, ptr %i.cd, i64 292
  %wide.vec1994 = load <24 x i32>, ptr %i.ce, align 4, !tbaa !101 ; 2 uses
  %strided.vec1995 = shufflevector <24 x i32> %wide.vec1994, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1996.a = shufflevector <24 x i32> %wide.vec1994, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1997 = load <24 x i32>, ptr %i.cf, align 4, !tbaa !101 ; 2 uses
  %strided.vec1998 = shufflevector <24 x i32> %wide.vec1997, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1999 = shufflevector <24 x i32> %wide.vec1997, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2000 = load <24 x i32>, ptr %i.cg, align 4, !tbaa !101 ; 2 uses
  %strided.vec2001 = shufflevector <24 x i32> %wide.vec2000, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec2002 = shufflevector <24 x i32> %wide.vec2000, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2003 = load <24 x i32>, ptr %i.ch, align 4, !tbaa !101 ; 2 uses
  %strided.vec2004 = shufflevector <24 x i32> %wide.vec2003, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec2005 = shufflevector <24 x i32> %wide.vec2003, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ci = add nsw <8 x i32> %strided.vec1996.a, %strided.vec1995
  %i.cj = add nsw <8 x i32> %strided.vec1999, %strided.vec1998
  %i.ck = add nsw <8 x i32> %strided.vec2002, %strided.vec2001
  %i.cl = add nsw <8 x i32> %strided.vec2005, %strided.vec2004
  %i.cm = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1986, <8 x i32> %i.ci) ; 2 uses
  %i.cn = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1987, <8 x i32> %i.cj) ; 2 uses
  %i.co = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1988, <8 x i32> %i.ck) ; 2 uses
  %i.cp = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1989, <8 x i32> %i.cl) ; 2 uses
  %index.next2006 = add nuw i64 %index1985, 32    ; 2 uses
  %i.cq = icmp eq i64 %index.next2006, %n.vec1981
  br i1 %i.cq, label %vec.epilog.iter.check2016, label %vector.body1984, !llvm.loop !576

vec.epilog.iter.check2016:                        ; preds = %vector.body1984
  %rdx.minmax2008 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cm, <8 x i32> %i.cn)
  %rdx.minmax2009 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax2008, <8 x i32> %i.co)
  %rdx.minmax2010 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax2009, <8 x i32> %i.cp)
  %i.cr = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax2010) ; 2 uses
  %min.epilog.iters.check2017 = icmp samesign ult i64 %i.bx, 9
  br i1 %min.epilog.iters.check2017, label %.lr.ph.i.i247.preheader, label %vec.epilog.ph2018, !prof !126

vec.epilog.ph2018:                                ; preds = %vector.main.loop.iter.check1978, %vec.epilog.iter.check2016
  %vec.epilog.resume.val2011 = phi i64 [ %n.vec1981, %vec.epilog.iter.check2016 ], [ 0, %vector.main.loop.iter.check1978 ]
  %bc.merge.rdx2013 = phi i32 [ %i.cr, %vec.epilog.iter.check2016 ], [ %i.bq, %vector.main.loop.iter.check1978 ]
  %broadcast.splatinsert2013 = insertelement <8 x i32> poison, i32 %bc.merge.rdx2013, i64 0
  %broadcast.splat2014 = shufflevector <8 x i32> %broadcast.splatinsert2013, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cs = and i64 %i.bu, 7                        ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = select i1 %i.ct, i64 8, i64 %i.cs
  %n.vec2019 = sub nsw i64 %i.bu, %i.cu           ; 2 uses
  %i.cv = mul i64 %n.vec2019, 12
  %i.cw = getelementptr i8, ptr %.val.i245, i64 %i.cv
  br label %vec.epilog.vector.body2022

vec.epilog.vector.body2022:                       ; preds = %vec.epilog.vector.body2022, %vec.epilog.ph2018
  %index2023 = phi i64 [ %vec.epilog.resume.val2011, %vec.epilog.ph2018 ], [ %index.next2029, %vec.epilog.vector.body2022 ] ; 2 uses
  %vec.phi2024 = phi <8 x i32> [ %broadcast.splat2014, %vec.epilog.ph2018 ], [ %i.da, %vec.epilog.vector.body2022 ]
  %i.cx = mul i64 %index2023, 12
  %next.gep2025 = getelementptr i8, ptr %.val.i245, i64 %i.cx
  %i.cy = getelementptr inbounds nuw i8, ptr %next.gep2025, i64 4
  %wide.vec2026 = load <24 x i32>, ptr %i.cy, align 4, !tbaa !101 ; 2 uses
  %strided.vec2027 = shufflevector <24 x i32> %wide.vec2026, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec2028 = shufflevector <24 x i32> %wide.vec2026, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cz = add nsw <8 x i32> %strided.vec2028, %strided.vec2027
  %i.da = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2024, <8 x i32> %i.cz) ; 2 uses
  %index.next2029 = add nuw i64 %index2023, 8     ; 2 uses
  %i.db = icmp eq i64 %index.next2029, %n.vec2019
  br i1 %i.db, label %vec.epilog.middle.block2030, label %vec.epilog.vector.body2022, !llvm.loop !577

vec.epilog.middle.block2030:                      ; preds = %vec.epilog.vector.body2022
  %i.dc = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.da)
  br label %.lr.ph.i.i247.preheader

.lr.ph.i.i247.preheader:                          ; preds = %iter.check2014, %vec.epilog.iter.check2016, %vec.epilog.middle.block2030
  %.08.i.i248.ph = phi ptr [ %.val.i245, %iter.check2014 ], [ %i.bz, %vec.epilog.iter.check2016 ], [ %i.cw, %vec.epilog.middle.block2030 ]
  %.057.i.i249.ph = phi i32 [ %i.bq, %iter.check2014 ], [ %i.cr, %vec.epilog.iter.check2016 ], [ %i.dc, %vec.epilog.middle.block2030 ]
  br label %.lr.ph.i.i247

.lr.ph.i.i247:                                    ; preds = %.lr.ph.i.i247.preheader, %.lr.ph.i.i247
  %.08.i.i248 = phi ptr [ %i.di, %.lr.ph.i.i247 ], [ %.08.i.i248.ph, %.lr.ph.i.i247.preheader ] ; 3 uses
  %.057.i.i249 = phi i32 [ %.sroa.speculated.i.i250, %.lr.ph.i.i247 ], [ %.057.i.i249.ph, %.lr.ph.i.i247.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i248, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !128
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i248, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !129
  %i.dh = add nsw i32 %i.dg, %i.de
  %.sroa.speculated.i.i250 = call i32 @llvm.smax.i32(i32 %.057.i.i249, i32 %i.dh) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i248, i64 12 ; 2 uses
  %.not.i.i251 = icmp eq ptr %i.di, %.val66.i
  br i1 %.not.i.i251, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i252, label %.lr.ph.i.i247, !llvm.loop !578

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i252: ; preds = %.lr.ph.i.i247, %bb.r
  %.05.lcssa.i.i253 = phi i32 [ %i.bq, %bb.r ], [ %.sroa.speculated.i.i250, %.lr.ph.i.i247 ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %128, i64 59 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !123, !range !61, !noundef !62
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i289, label %bb.at

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i289: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i252
  %i.dm = load ptr, ptr %i.ba, align 8, !tbaa !130 ; 2 uses
  %i.dn = load ptr, ptr %i.bh, align 8, !tbaa !130
  %i.do = getelementptr inbounds nuw i8, ptr %128, i64 58
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !131, !range !61, !noundef !62
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = load i32, ptr %i.bc, align 8
  %spec.select = select i1 %i.dq, i32 0, i32 %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %120, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !131, !range !61, !noundef !62
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = load i32, ptr %i.bj, align 8
  %.0.i70.i = select i1 %i.du, i32 0, i32 %i.dv
  %i.dw = load ptr, ptr %i.dm, align 8, !tbaa !88
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef zeroext i1 %i.dy(ptr noundef nonnull align 8 dereferenceable(94) %i.dm, ptr noundef %i.dn, i32 noundef %spec.select, i32 noundef %.0.i70.i)
          to label %.noexc303 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !579

.noexc303:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i289
  br i1 %i.dz, label %bb.s, label %bb.at

bb.s:                                             ; preds = %.noexc303
  %i.ea = load ptr, ptr %3, align 8, !tbaa !67    ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !102
  %.not.i291 = icmp eq i32 %i.ec, %.05.lcssa.i.i253
  br i1 %.not.i291, label %_ZN8facebook5velox12_GLOBAL__N_116copyIntoConstantERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERKSt10shared_ptrIS7_ERNS0_13DecodedVectorESH_SJ_RSF_b.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !88
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 192
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(94) %i.ea, i32 noundef %.05.lcssa.i.i253, i1 noundef zeroext true)
          to label %.noexc304 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !579

.noexc304:                                        ; preds = %bb.u
  %i.eg = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 360
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(94) %i.eg, ptr noundef null)
          to label %_ZN8facebook5velox12_GLOBAL__N_116copyIntoConstantERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERKSt10shared_ptrIS7_ERNS0_13DecodedVectorESH_SJ_RSF_b.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !579

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  store ptr %i.ea, ptr %30, align 8, !tbaa !67
  %i.ek = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !91 ; 3 uses
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !91
  %.not.i.i.i.i292 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i292, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i294, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i293 = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i.i.i293, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !101
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !101
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i294

bb.y:                                             ; preds = %bb.w
  %i.er = atomicrmw volatile add ptr %i.en, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i294

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i294: ; preds = %bb.y, %bb.x, %bb.v
  invoke void @_ZN8facebook5velox10BaseVector14wrapInConstantEiiSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %29, i32 noundef %.05.lcssa.i.i253, i32 noundef 0, ptr noundef nonnull align 8 %30)
          to label %bb.z unwind label %bb.as, !inline_history !579

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i294
  %i.es = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.et = load <2 x ptr>, ptr %29, align 16, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !91 ; 8 uses
  store <2 x ptr> %i.et, ptr %3, align 8, !tbaa !96
  %.not.i.i.i.i72.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i72.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i302, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4294967297
  %i.ey = trunc i64 %i.ew to i32                  ; 2 uses
  br i1 %i.ex, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ev, align 8, !tbaa !98
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !99
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #30, !inline_history !580
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !88
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #30, !inline_history !580
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i298

bb.ac:                                            ; preds = %bb.aa
  %i.fg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i295 = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i295, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = add nsw i32 %i.ey, -1
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296

bb.ae:                                            ; preds = %bb.ac
  %i.fi = atomicrmw volatile add ptr %i.ev, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i297 = phi i32 [ %i.ey, %bb.ad ], [ %i.fi, %bb.ae ]
  %i.fj = icmp eq i32 %.0.i.i.i.i.i.i.i297, 1
  br i1 %i.fj, label %bb.af, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i298, !prof !90

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #30, !inline_history !579
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i298

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i298: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296, %bb.ab
  %.pr = load ptr, ptr %i.es, align 8, !tbaa !91  ; 8 uses
  %.not.i.i.i299 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i299, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i302, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i298
  %i.fk = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.fk, align 8, !tbaa !98
  %i.fo = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !99
  %i.fp = load ptr, ptr %.pr, align 8, !tbaa !88
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #30, !inline_history !581
  %i.fs = load ptr, ptr %.pr, align 8, !tbaa !88
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #30, !inline_history !581
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i302

bb.ai:                                            ; preds = %bb.ag
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i73.i = icmp eq i8 %i.fv, 0
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
          catch ptr null
  %i.sb = extractvalue { ptr, i32 } %i.sa, 0
  call void @__clang_call_terminate(ptr %i.sb) #35, !inline_history !579
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit167.i: ; preds = %.noexc.i164.i, %bb.dt, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %_ZN8facebook5velox12_GLOBAL__N_116copyIntoConstantERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERKSt10shared_ptrIS7_ERNS0_13DecodedVectorESH_SJ_RSF_b.exit

bb.dv:                                            ; preds = %bb.cn
  %i.sc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #30, !inline_history !579
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #30, !inline_history !579
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #30, !inline_history !579
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit123.i, %.body.i259, %bb.bn
  %.pn60.i = phi { ptr, i32 } [ %i.sc, %bb.dv ], [ %eh.lpad-body.i260, %.body.i259 ], [ %i.km, %bb.bn ], [ %.pn.pn.i265, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit123.i ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #30, !inline_history !579
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.bm
  %.pn60.pn.i = phi { ptr, i32 } [ %.pn60.i, %bb.dw ], [ %i.kl, %bb.bm ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #30, !inline_history !579
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.bl
  %.pn60.pn.pn.i = phi { ptr, i32 } [ %.pn60.pn.i, %bb.dx ], [ %i.kk, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #30, !inline_history !579
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %.body149

_ZN8facebook5velox12_GLOBAL__N_116copyIntoConstantERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERKSt10shared_ptrIS7_ERNS0_13DecodedVectorESH_SJ_RSF_b.exit: ; preds = %bb.av, %.noexc304, %bb.s, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit167.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  br label %_ZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_b.exit

bb.dz:                                            ; preds = %bb.p
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.uu

bb.ea:                                            ; preds = %bb.q
  %i.se = getelementptr inbounds nuw i8, ptr %120, i64 58 ; 3 uses
  %i.sf = load i8, ptr %i.se, align 2, !tbaa !131, !range !61, !noundef !62
  %i.sg = trunc nuw i8 %i.sf to i1
  br i1 %i.sg, label %bb.lh, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.val.i = load ptr, ptr %i.bh, align 8, !tbaa !130
  %i.sh = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !86 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !88
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 112
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = invoke noundef zeroext i1 %i.sl(ptr noundef nonnull align 8 dereferenceable(18) %i.si)
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !604

.noexc242:                                        ; preds = %bb.eb
  br i1 %i.sm, label %bb.ec, label %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244.thread

bb.ec:                                            ; preds = %.noexc242
  %i.sn = load ptr, ptr %i.sh, align 8, !tbaa !86 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !88
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 104
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = invoke noundef i64 %i.sq(ptr noundef nonnull align 8 dereferenceable(18) %i.sn)
          to label %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !604

_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244: ; preds = %bb.ec
  %i.ss = icmp ult i64 %i.sr, 5
  br i1 %i.ss, label %bb.ed, label %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244.thread

bb.ed:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #30
  %i.st = load ptr, ptr %3, align 8, !tbaa !67    ; 4 uses
  %i.su = load ptr, ptr %0, align 8, !tbaa !84    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 56 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !102, !noalias !803
  %.not.i238 = icmp eq ptr %i.su, null
  %i.sy = getelementptr inbounds nuw i8, ptr %i.st, i64 48
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !803
  %i.ta = select i1 %.not.i238, ptr %i.sz, ptr %i.su
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30, !noalias !805
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %i.sv, i32 noundef %i.sx, ptr noundef %i.ta)
          to label %.noexc239 unwind label %bb.es

.noexc239:                                        ; preds = %bb.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.tb = getelementptr inbounds nuw i8, ptr %122, i64 8
  %i.tc = load <2 x ptr>, ptr %41, align 16, !tbaa !96, !noalias !807
  %i.td = load ptr, ptr %41, align 16, !tbaa !67, !noalias !807 ; 2 uses
  store <2 x ptr> %i.tc, ptr %122, align 16, !tbaa !96, !alias.scope !807
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30, !noalias !805
  %i.te = load i32, ptr %i.sw, align 8, !tbaa !102, !noalias !803
  %i.tf = load ptr, ptr %i.td, align 8, !tbaa !88, !noalias !803
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 208
  %i.th = load ptr, ptr %i.tg, align 8, !noalias !803
  invoke void %i.th(ptr noundef nonnull align 8 dereferenceable(94) %i.td, ptr noundef nonnull align 8 dereferenceable(94) %i.st, i32 noundef 0, i32 noundef 0, i32 noundef %i.te)
          to label %_ZN8facebook5velox10BaseVector4copyERKS1_PNS0_6memory10MemoryPoolE.exit unwind label %bb.ee, !noalias !803

bb.ee:                                            ; preds = %.noexc239
  %i.ti = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #30
  br label %.body240

_ZN8facebook5velox10BaseVector4copyERKS1_PNS0_6memory10MemoryPoolE.exit: ; preds = %.noexc239
  %i.tj = load ptr, ptr %122, align 16, !tbaa !67 ; 5 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !102 ; 4 uses
  %.val.i225 = load ptr, ptr %2, align 8, !tbaa !94 ; 10 uses
  %.val33.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 3 uses
  %.not6.i.i226 = icmp eq ptr %.val.i225, %.val33.i
  br i1 %.not6.i.i226, label %.noexc234, label %iter.check1656

iter.check1656:                                   ; preds = %_ZN8facebook5velox10BaseVector4copyERKS1_PNS0_6memory10MemoryPoolE.exit
  %.val33.i1617 = ptrtoaddr ptr %.val33.i to i64
  %.val.i2251618 = ptrtoaddr ptr %.val.i225 to i64
  %i.tm = add i64 %.val33.i1617, -12
  %i.tn = sub i64 %i.tm, %.val.i2251618           ; 3 uses
  %i.to = udiv i64 %i.tn, 12
  %i.tp = add nuw nsw i64 %i.to, 1                ; 4 uses
  %min.iters.check1619 = icmp ult i64 %i.tn, 96
  br i1 %min.iters.check1619, label %.lr.ph.i.i227.preheader, label %vector.main.loop.iter.check1620

vector.main.loop.iter.check1620:                  ; preds = %iter.check1656
  %min.iters.check1621 = icmp ult i64 %i.tn, 384
  br i1 %min.iters.check1621, label %vec.epilog.ph1660, label %vector.ph1622

vector.ph1622:                                    ; preds = %vector.main.loop.iter.check1620
  %i.tq = and i64 %i.tp, 31                       ; 2 uses
  %i.tr = icmp eq i64 %i.tq, 0
  %i.ts = select i1 %i.tr, i64 32, i64 %i.tq      ; 2 uses
  %n.vec1623 = sub nsw i64 %i.tp, %i.ts           ; 3 uses
  %i.tt = mul i64 %n.vec1623, 12
  %i.tu = getelementptr i8, ptr %.val.i225, i64 %i.tt
  %broadcast.splatinsert1624 = insertelement <8 x i32> poison, i32 %i.tl, i64 0
  %broadcast.splat1625 = shufflevector <8 x i32> %broadcast.splatinsert1624, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1626

vector.body1626:                                  ; preds = %vector.ph1622, %vector.body1626
  %index1627 = phi i64 [ 0, %vector.ph1622 ], [ %index.next1648, %vector.body1626 ] ; 2 uses
  %vec.phi1628.a = phi <8 x i32> [ %broadcast.splat1625, %vector.ph1622 ], [ %i.uh, %vector.body1626 ]
  %vec.phi1629.a = phi <8 x i32> [ %broadcast.splat1625, %vector.ph1622 ], [ %i.ui, %vector.body1626 ]
  %vec.phi1630.a = phi <8 x i32> [ %broadcast.splat1625, %vector.ph1622 ], [ %i.uj, %vector.body1626 ]
  %vec.phi1631 = phi <8 x i32> [ %broadcast.splat1625, %vector.ph1622 ], [ %i.uk, %vector.body1626 ]
  %i.tv = mul i64 %index1627, 12                  ; 4 uses
  %next.gep1632 = getelementptr i8, ptr %.val.i225, i64 %i.tv
  %i.tw = getelementptr i8, ptr %.val.i225, i64 %i.tv
  %i.tx = getelementptr i8, ptr %.val.i225, i64 %i.tv
  %i.ty = getelementptr i8, ptr %.val.i225, i64 %i.tv
  %i.tz = getelementptr inbounds nuw i8, ptr %next.gep1632, i64 4
  %i.ua = getelementptr i8, ptr %i.tw, i64 100
  %i.ub = getelementptr i8, ptr %i.tx, i64 196
  %i.uc = getelementptr i8, ptr %i.ty, i64 292
  %wide.vec1636 = load <24 x i32>, ptr %i.tz, align 4, !tbaa !101 ; 2 uses
  %strided.vec1637.a = shufflevector <24 x i32> %wide.vec1636, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1638 = shufflevector <24 x i32> %wide.vec1636, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1639 = load <24 x i32>, ptr %i.ua, align 4, !tbaa !101 ; 2 uses
  %strided.vec1640.a = shufflevector <24 x i32> %wide.vec1639, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1641 = shufflevector <24 x i32> %wide.vec1639, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1642 = load <24 x i32>, ptr %i.ub, align 4, !tbaa !101 ; 2 uses
  %strided.vec1643.a = shufflevector <24 x i32> %wide.vec1642, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1644 = shufflevector <24 x i32> %wide.vec1642, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1645 = load <24 x i32>, ptr %i.uc, align 4, !tbaa !101 ; 2 uses
  %strided.vec1646.a = shufflevector <24 x i32> %wide.vec1645, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1647 = shufflevector <24 x i32> %wide.vec1645, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ud = add nsw <8 x i32> %strided.vec1638, %strided.vec1637.a
  %i.ue = add nsw <8 x i32> %strided.vec1641, %strided.vec1640.a
  %i.uf = add nsw <8 x i32> %strided.vec1644, %strided.vec1643.a
  %i.ug = add nsw <8 x i32> %strided.vec1647, %strided.vec1646.a
  %i.uh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1628.a, <8 x i32> %i.ud) ; 2 uses
  %i.ui = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1629.a, <8 x i32> %i.ue) ; 2 uses
  %i.uj = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1630.a, <8 x i32> %i.uf) ; 2 uses
  %i.uk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1631, <8 x i32> %i.ug) ; 2 uses
  %index.next1648 = add nuw i64 %index1627, 32    ; 2 uses
  %i.ul = icmp eq i64 %index.next1648, %n.vec1623
  br i1 %i.ul, label %vec.epilog.iter.check1658, label %vector.body1626, !llvm.loop !611

vec.epilog.iter.check1658:                        ; preds = %vector.body1626
  %rdx.minmax1650.a = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.uh, <8 x i32> %i.ui)
  %rdx.minmax1651.a = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1650.a, <8 x i32> %i.uj)
  %rdx.minmax1652 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1651.a, <8 x i32> %i.uk)
  %i.um = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1652) ; 2 uses
  %min.epilog.iters.check1659 = icmp samesign ult i64 %i.ts, 9
  br i1 %min.epilog.iters.check1659, label %.lr.ph.i.i227.preheader, label %vec.epilog.ph1660, !prof !126

vec.epilog.ph1660:                                ; preds = %vector.main.loop.iter.check1620, %vec.epilog.iter.check1658
  %vec.epilog.resume.val1653 = phi i64 [ %n.vec1623, %vec.epilog.iter.check1658 ], [ 0, %vector.main.loop.iter.check1620 ]
  %bc.merge.rdx1655 = phi i32 [ %i.um, %vec.epilog.iter.check1658 ], [ %i.tl, %vector.main.loop.iter.check1620 ]
  %broadcast.splatinsert1662 = insertelement <8 x i32> poison, i32 %bc.merge.rdx1655, i64 0
  %broadcast.splat1663 = shufflevector <8 x i32> %broadcast.splatinsert1662, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.un = and i64 %i.tp, 7                        ; 2 uses
  %i.uo = icmp eq i64 %i.un, 0
  %i.up = select i1 %i.uo, i64 8, i64 %i.un
  %n.vec1661 = sub nsw i64 %i.tp, %i.up           ; 2 uses
  %i.uq = mul i64 %n.vec1661, 12
  %i.ur = getelementptr i8, ptr %.val.i225, i64 %i.uq
  br label %vec.epilog.vector.body1664

vec.epilog.vector.body1664:                       ; preds = %vec.epilog.vector.body1664, %vec.epilog.ph1660
  %index1665 = phi i64 [ %vec.epilog.resume.val1653, %vec.epilog.ph1660 ], [ %index.next1671, %vec.epilog.vector.body1664 ] ; 2 uses
  %vec.phi1666 = phi <8 x i32> [ %broadcast.splat1663, %vec.epilog.ph1660 ], [ %i.uv, %vec.epilog.vector.body1664 ]
  %i.us = mul i64 %index1665, 12
  %next.gep1667 = getelementptr i8, ptr %.val.i225, i64 %i.us
  %i.ut = getelementptr inbounds nuw i8, ptr %next.gep1667, i64 4
  %wide.vec1668 = load <24 x i32>, ptr %i.ut, align 4, !tbaa !101 ; 2 uses
  %strided.vec1669 = shufflevector <24 x i32> %wide.vec1668, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1670 = shufflevector <24 x i32> %wide.vec1668, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.uu = add nsw <8 x i32> %strided.vec1670, %strided.vec1669
  %i.uv = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1666, <8 x i32> %i.uu) ; 2 uses
  %index.next1671 = add nuw i64 %index1665, 8     ; 2 uses
  %i.uw = icmp eq i64 %index.next1671, %n.vec1661
  br i1 %i.uw, label %vec.epilog.middle.block1672, label %vec.epilog.vector.body1664, !llvm.loop !612

vec.epilog.middle.block1672:                      ; preds = %vec.epilog.vector.body1664
  %i.ux = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.uv)
  br label %.lr.ph.i.i227.preheader

.lr.ph.i.i227.preheader:                          ; preds = %iter.check1656, %vec.epilog.iter.check1658, %vec.epilog.middle.block1672
  %.08.i.i228.ph = phi ptr [ %.val.i225, %iter.check1656 ], [ %i.tu, %vec.epilog.iter.check1658 ], [ %i.ur, %vec.epilog.middle.block1672 ]
  %.057.i.i229.ph = phi i32 [ %i.tl, %iter.check1656 ], [ %i.um, %vec.epilog.iter.check1658 ], [ %i.ux, %vec.epilog.middle.block1672 ]
  br label %.lr.ph.i.i227

.lr.ph.i.i227:                                    ; preds = %.lr.ph.i.i227.preheader, %.lr.ph.i.i227
  %.08.i.i228 = phi ptr [ %i.vd, %.lr.ph.i.i227 ], [ %.08.i.i228.ph, %.lr.ph.i.i227.preheader ] ; 3 uses
  %.057.i.i229 = phi i32 [ %.sroa.speculated.i.i230, %.lr.ph.i.i227 ], [ %.057.i.i229.ph, %.lr.ph.i.i227.preheader ]
  %i.uy = getelementptr inbounds nuw i8, ptr %.08.i.i228, i64 4
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !128
  %i.va = getelementptr inbounds nuw i8, ptr %.08.i.i228, i64 8
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !129
  %i.vc = add nsw i32 %i.vb, %i.uz
  %.sroa.speculated.i.i230 = call i32 @llvm.smax.i32(i32 %.057.i.i229, i32 %i.vc) ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.08.i.i228, i64 12 ; 2 uses
  %.not.i.i231 = icmp eq ptr %i.vd, %.val33.i
  br i1 %.not.i.i231, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i232, label %.lr.ph.i.i227, !llvm.loop !613

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i232: ; preds = %.lr.ph.i.i227
  %.not32.i = icmp eq i32 %i.tl, %.sroa.speculated.i.i230
  br i1 %.not32.i, label %.noexc234, label %bb.ef

bb.ef:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i232
  %i.ve = load ptr, ptr %i.tj, align 8, !tbaa !88
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 192
  %i.vg = load ptr, ptr %i.vf, align 8
  invoke void %i.vg(ptr noundef nonnull align 8 dereferenceable(94) %i.tj, i32 noundef %.sroa.speculated.i.i230, i1 noundef zeroext true)
          to label %..noexc234_crit_edge unwind label %bb.et, !inline_history !614

..noexc234_crit_edge:                             ; preds = %bb.ef
  %.pre787 = load ptr, ptr %122, align 16, !tbaa !67
  br label %.noexc234

.noexc234:                                        ; preds = %..noexc234_crit_edge, %_ZN8facebook5velox10BaseVector4copyERKS1_PNS0_6memory10MemoryPoolE.exit, %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i232
  %i.vh = phi ptr [ %.pre787, %..noexc234_crit_edge ], [ %i.tj, %_ZN8facebook5velox10BaseVector4copyERKS1_PNS0_6memory10MemoryPoolE.exit ], [ %i.tj, %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i232 ] ; 2 uses
  %i.vi = invoke noundef nonnull align 8 dereferenceable(38) ptr @_ZN8facebook5velox17SelectivityVector5emptyEv()
          to label %.noexc235 unwind label %bb.et

.noexc235:                                        ; preds = %.noexc234
  %i.vj = load ptr, ptr %i.vh, align 8, !tbaa !88
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 248
  %i.vl = load ptr, ptr %i.vk, align 8
  invoke void %i.vl(ptr noundef nonnull align 8 dereferenceable(94) %i.vh, ptr noundef nonnull align 8 dereferenceable(38) %i.vi)
          to label %.noexc236 unwind label %bb.et, !inline_history !614

.noexc236:                                        ; preds = %.noexc235
  %i.vm = load ptr, ptr %122, align 16, !tbaa !67 ; 2 uses
  %i.vn = load ptr, ptr %1, align 8, !tbaa !67
  %i.vo = load ptr, ptr %i.vm, align 8, !tbaa !88
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 216
  %i.vq = load ptr, ptr %i.vp, align 8
  invoke void %i.vq(ptr noundef nonnull align 8 dereferenceable(94) %i.vm, ptr noundef %i.vn, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b.exit unwind label %bb.et, !inline_history !614

_ZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b.exit: ; preds = %.noexc236
  %i.vr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vs = load <2 x ptr>, ptr %122, align 16, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %122, i8 0, i64 16, i1 false)
  %i.vt = load ptr, ptr %i.vr, align 8, !tbaa !91 ; 8 uses
  store <2 x ptr> %i.vs, ptr %3, align 8, !tbaa !96
  %.not.i.i.i.i220 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i.i220, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit224, label %bb.eg

bb.eg:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b.exit
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 4 uses
  %i.vv = load atomic i64, ptr %i.vu acquire, align 8 ; 2 uses
  %i.vw = icmp eq i64 %i.vv, 4294967297
  %i.vx = trunc i64 %i.vv to i32                  ; 2 uses
  br i1 %i.vw, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.vu, align 8, !tbaa !98
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  store i32 0, ptr %i.vy, align 4, !tbaa !99
  %i.vz = load ptr, ptr %i.vt, align 8, !tbaa !88
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8
  call void %i.wb(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #30, !inline_history !615
  %i.wc = load ptr, ptr %i.vt, align 8, !tbaa !88
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #30, !inline_history !615
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit224

bb.ei:                                            ; preds = %bb.eg
  %i.wf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i221 = icmp eq i8 %i.wf, 0
  br i1 %.not.i.i.i.i.i221, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wg = add nsw i32 %i.vx, -1
  store i32 %i.wg, ptr %i.vu, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i222

bb.ek:                                            ; preds = %bb.ei
  %i.wh = atomicrmw volatile add ptr %i.vu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i222

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i222: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i.i223 = phi i32 [ %i.vx, %bb.ej ], [ %i.wh, %bb.ek ]
  %i.wi = icmp eq i32 %.0.i.i.i.i.i.i223, 1
  br i1 %i.wi, label %bb.el, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit224, !prof !90

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i222
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #30
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit224

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit224: ; preds = %_ZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b.exit, %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i222, %bb.el
  %i.wj = load ptr, ptr %i.tb, align 8, !tbaa !91 ; 8 uses
  %.not.i.i215 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i215, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, label %bb.em

bb.em:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit224
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8 ; 4 uses
  %i.wl = load atomic i64, ptr %i.wk acquire, align 8 ; 2 uses
  %i.wm = icmp eq i64 %i.wl, 4294967297
  %i.wn = trunc i64 %i.wl to i32                  ; 2 uses
  br i1 %i.wm, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.wk, align 8, !tbaa !98
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 12
  store i32 0, ptr %i.wo, align 4, !tbaa !99
  %i.wp = load ptr, ptr %i.wj, align 8, !tbaa !88
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #30, !inline_history !616
  %i.ws = load ptr, ptr %i.wj, align 8, !tbaa !88
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #30, !inline_history !616
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

bb.eo:                                            ; preds = %bb.em
  %i.wv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i216 = icmp eq i8 %i.wv, 0
  br i1 %.not.i.i.i216, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ww = add nsw i32 %i.wn, -1
  store i32 %i.ww, ptr %i.wk, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

bb.eq:                                            ; preds = %bb.eo
  %i.wx = atomicrmw volatile add ptr %i.wk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i218 = phi i32 [ %i.wn, %bb.ep ], [ %i.wx, %bb.eq ]
  %i.wy = icmp eq i32 %.0.i.i.i.i218, 1
  br i1 %i.wy, label %bb.er, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, !prof !90

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219: ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit224, %bb.en, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #30
  br label %_ZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_b.exit

bb.es:                                            ; preds = %bb.ed
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %.body240

bb.et:                                            ; preds = %.noexc236, %.noexc235, %.noexc234, %bb.ef
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #30, !inline_history !575
  br label %.body240

.body240:                                         ; preds = %bb.es, %bb.ee, %bb.et
  %.pn.i = phi { ptr, i32 } [ %i.xa, %bb.et ], [ %i.wz, %bb.es ], [ %i.ti, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #30
  br label %.body149

_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244.thread: ; preds = %.noexc242, %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  br i1 %4, label %bb.eu, label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i

bb.eu:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244.thread
  %i.xb = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.xc, null
  br i1 %.not.i.i.i210, label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xe = load atomic i32, ptr %i.xd monotonic, align 8
  %i.xf = icmp slt i32 %i.xe, 3
  br label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i

_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i: ; preds = %bb.eu, %bb.ev, %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244.thread
  %i.xg = phi i1 [ false, %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit244.thread ], [ %i.xf, %bb.ev ], [ true, %bb.eu ] ; 3 uses
  %i.xh = load ptr, ptr %3, align 8, !tbaa !67
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 56
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !102 ; 4 uses
  %.val.i164 = load ptr, ptr %2, align 8, !tbaa !94 ; 10 uses
  %.val71.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 3 uses
  %.not6.i.i165 = icmp eq ptr %.val.i164, %.val71.i
  br i1 %.not6.i.i165, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171, label %iter.check

iter.check:                                       ; preds = %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i
  %.val71.i1460 = ptrtoaddr ptr %.val71.i to i64
  %.val.i1641461 = ptrtoaddr ptr %.val.i164 to i64
  %i.xk = add i64 %.val71.i1460, -12
  %i.xl = sub i64 %i.xk, %.val.i1641461           ; 3 uses
  %i.xm = udiv i64 %i.xl, 12
  %i.xn = add nuw nsw i64 %i.xm, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.xl, 96
  br i1 %min.iters.check, label %.lr.ph.i.i166.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1462 = icmp ult i64 %i.xl, 384
  br i1 %min.iters.check1462, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xo = and i64 %i.xn, 31                       ; 2 uses
  %i.xp = icmp eq i64 %i.xo, 0
  %i.xq = select i1 %i.xp, i64 32, i64 %i.xo      ; 2 uses
  %n.vec = sub nsw i64 %i.xn, %i.xq               ; 3 uses
  %i.xr = mul i64 %n.vec, 12
  %i.xs = getelementptr i8, ptr %.val.i164, i64 %i.xr
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.xj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.yf, %vector.body ]
  %vec.phi1463 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.yg, %vector.body ]
  %vec.phi1464 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.yh, %vector.body ]
  %vec.phi1465 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.yi, %vector.body ]
  %i.xt = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %.val.i164, i64 %i.xt
  %i.xu = getelementptr i8, ptr %.val.i164, i64 %i.xt
  %i.xv = getelementptr i8, ptr %.val.i164, i64 %i.xt
  %i.xw = getelementptr i8, ptr %.val.i164, i64 %i.xt
  %i.xx = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.xy = getelementptr i8, ptr %i.xu, i64 100
  %i.xz = getelementptr i8, ptr %i.xv, i64 196
  %i.ya = getelementptr i8, ptr %i.xw, i64 292
  %wide.vec = load <24 x i32>, ptr %i.xx, align 4, !tbaa !101 ; 2 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1469 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1470 = load <24 x i32>, ptr %i.xy, align 4, !tbaa !101 ; 2 uses
  %strided.vec1471 = shufflevector <24 x i32> %wide.vec1470, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1472 = shufflevector <24 x i32> %wide.vec1470, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1473 = load <24 x i32>, ptr %i.xz, align 4, !tbaa !101 ; 2 uses
  %strided.vec1474 = shufflevector <24 x i32> %wide.vec1473, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1475 = shufflevector <24 x i32> %wide.vec1473, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1476 = load <24 x i32>, ptr %i.ya, align 4, !tbaa !101 ; 2 uses
  %strided.vec1477 = shufflevector <24 x i32> %wide.vec1476, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1478 = shufflevector <24 x i32> %wide.vec1476, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.yb = add nsw <8 x i32> %strided.vec1469, %strided.vec
  %i.yc = add nsw <8 x i32> %strided.vec1472, %strided.vec1471
  %i.yd = add nsw <8 x i32> %strided.vec1475, %strided.vec1474
  %i.ye = add nsw <8 x i32> %strided.vec1478, %strided.vec1477
  %i.yf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.yb) ; 2 uses
  %i.yg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1463, <8 x i32> %i.yc) ; 2 uses
  %i.yh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1464, <8 x i32> %i.yd) ; 2 uses
  %i.yi = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1465, <8 x i32> %i.ye) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.yj = icmp eq i64 %index.next, %n.vec
  br i1 %i.yj, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !617

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.yf, <8 x i32> %i.yg)
  %rdx.minmax1479 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.yh)
  %rdx.minmax1480 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1479, <8 x i32> %i.yi)
  %i.yk = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1480) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.xq, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i166.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.yk, %vec.epilog.iter.check ], [ %i.xj, %vector.main.loop.iter.check ]
  %broadcast.splatinsert1483 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat1484 = shufflevector <8 x i32> %broadcast.splatinsert1483, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.yl = and i64 %i.xn, 7                        ; 2 uses
  %i.ym = icmp eq i64 %i.yl, 0
  %i.yn = select i1 %i.ym, i64 8, i64 %i.yl
  %n.vec1481 = sub nsw i64 %i.xn, %i.yn           ; 2 uses
  %i.yo = mul i64 %n.vec1481, 12
  %i.yp = getelementptr i8, ptr %.val.i164, i64 %i.yo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1484 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1490, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1485 = phi <8 x i32> [ %broadcast.splat1484, %vec.epilog.ph ], [ %i.yt, %vec.epilog.vector.body ]
  %i.yq = mul i64 %index1484, 12
  %next.gep1486 = getelementptr i8, ptr %.val.i164, i64 %i.yq
  %i.yr = getelementptr inbounds nuw i8, ptr %next.gep1486, i64 4
  %wide.vec1487 = load <24 x i32>, ptr %i.yr, align 4, !tbaa !101 ; 2 uses
  %strided.vec1488 = shufflevector <24 x i32> %wide.vec1487, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1489 = shufflevector <24 x i32> %wide.vec1487, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ys = add nsw <8 x i32> %strided.vec1489, %strided.vec1488
  %i.yt = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1485, <8 x i32> %i.ys) ; 2 uses
  %index.next1490 = add nuw i64 %index1484, 8     ; 2 uses
  %i.yu = icmp eq i64 %index.next1490, %n.vec1481
  br i1 %i.yu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !618

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.yv = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.yt)
  br label %.lr.ph.i.i166.preheader

.lr.ph.i.i166.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i167.ph = phi ptr [ %.val.i164, %iter.check ], [ %i.xs, %vec.epilog.iter.check ], [ %i.yp, %vec.epilog.middle.block ]
  %.057.i.i168.ph = phi i32 [ %i.xj, %iter.check ], [ %i.yk, %vec.epilog.iter.check ], [ %i.yv, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.preheader, %.lr.ph.i.i166
  %.08.i.i167 = phi ptr [ %i.zb, %.lr.ph.i.i166 ], [ %.08.i.i167.ph, %.lr.ph.i.i166.preheader ] ; 3 uses
  %.057.i.i168 = phi i32 [ %.sroa.speculated.i.i169, %.lr.ph.i.i166 ], [ %.057.i.i168.ph, %.lr.ph.i.i166.preheader ]
  %i.yw = getelementptr inbounds nuw i8, ptr %.08.i.i167, i64 4
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !128
  %i.yy = getelementptr inbounds nuw i8, ptr %.08.i.i167, i64 8
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !129
  %i.za = add nsw i32 %i.yz, %i.yx
  %.sroa.speculated.i.i169 = call i32 @llvm.smax.i32(i32 %.057.i.i168, i32 %i.za) ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.08.i.i167, i64 12 ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.zb, %.val71.i
  br i1 %.not.i.i170, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171, label %.lr.ph.i.i166, !llvm.loop !619

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171: ; preds = %.lr.ph.i.i166, %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i
  %.05.lcssa.i.i172 = phi i32 [ %i.xj, %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i ], [ %.sroa.speculated.i.i169, %.lr.ph.i.i166 ] ; 5 uses
  br i1 %i.xg, label %bb.ew, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i

bb.ew:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171
  %i.zc = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %120, ptr noundef null)
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !620 ; 7 uses

.noexc211:                                        ; preds = %bb.ew
  %i.zd = load ptr, ptr %i.bf, align 8, !tbaa !141 ; 2 uses
  %.not.i.i72.i = icmp eq ptr %i.zd, null
  br i1 %.not.i.i72.i, label %bb.ex, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit.i.i

bb.ex:                                            ; preds = %.noexc211
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %120)
          to label %.noexc212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !620

.noexc212:                                        ; preds = %bb.ex
  %.pre.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !141
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit.i.i

_ZNK8facebook5velox13DecodedVector7indicesEv.exit.i.i: ; preds = %.noexc212, %.noexc211
  %i.ze = phi ptr [ %.pre.i.i.i, %.noexc212 ], [ %i.zd, %.noexc211 ] ; 6 uses
  %.not.i73.i206 = icmp eq ptr %i.zc, null
  %i.zf = load i32, ptr %120, align 8, !tbaa !791 ; 7 uses
  %i.zg = icmp sgt i32 %i.zf, 0                   ; 2 uses
  br i1 %.not.i73.i206, label %.preheader.i.i209, label %.preheader29.i.i

.preheader29.i.i:                                 ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit.i.i
  br i1 %i.zg, label %iter.check1525, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i

iter.check1525:                                   ; preds = %.preheader29.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.zf to i64 ; 6 uses
  %min.iters.check1493 = icmp ult i32 %i.zf, 4
  br i1 %min.iters.check1493, label %.lr.ph.i74.i.preheader, label %vector.main.loop.iter.check1494

vector.main.loop.iter.check1494:                  ; preds = %iter.check1525
  %min.iters.check1495 = icmp ult i32 %i.zf, 16
  br i1 %min.iters.check1495, label %vec.epilog.ph1529, label %vector.ph1496

vector.ph1496:                                    ; preds = %vector.main.loop.iter.check1494
  %i.zh = and i64 %wide.trip.count.i.i, 12
  %n.vec1497 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  br label %vector.body1498

vector.body1498:                                  ; preds = %vector.ph1496, %vector.body1498
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1518, %vector.body1498 ] ; 6 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1496 ], [ %vec.ind.next, %vector.body1498 ] ; 5 uses
  %vec.phi1500.a = phi <4 x i32> [ zeroinitializer, %vector.ph1496 ], [ %predphi, %vector.body1498 ] ; 2 uses
  %vec.phi1501.a = phi <4 x i32> [ zeroinitializer, %vector.ph1496 ], [ %predphi1515.a, %vector.body1498 ] ; 2 uses
  %vec.phi1502.a = phi <4 x i32> [ zeroinitializer, %vector.ph1496 ], [ %predphi1516.a, %vector.body1498 ] ; 2 uses
  %vec.phi1503 = phi <4 x i32> [ zeroinitializer, %vector.ph1496 ], [ %predphi1517, %vector.body1498 ] ; 2 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.zi = lshr i64 %index1499, 6
  %i.zj = lshr i64 %index1499, 6
  %i.zk = lshr i64 %index1499, 6
  %i.zl = lshr i64 %index1499, 6
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.zi
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.zj
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.zk
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.zl
  %i.zq = load i64, ptr %i.zm, align 8, !tbaa !149
  %broadcast.splatinsert1504 = insertelement <4 x i64> poison, i64 %i.zq, i64 0
  %broadcast.splat1505 = shufflevector <4 x i64> %broadcast.splatinsert1504, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zr = load i64, ptr %i.zn, align 8, !tbaa !149
  %broadcast.splatinsert1506 = insertelement <4 x i64> poison, i64 %i.zr, i64 0
  %broadcast.splat1507 = shufflevector <4 x i64> %broadcast.splatinsert1506, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zs = load i64, ptr %i.zo, align 8, !tbaa !149
  %broadcast.splatinsert1508 = insertelement <4 x i64> poison, i64 %i.zs, i64 0
  %broadcast.splat1509 = shufflevector <4 x i64> %broadcast.splatinsert1508, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zt = load i64, ptr %i.zp, align 8, !tbaa !149
  %broadcast.splatinsert1510 = insertelement <4 x i64> poison, i64 %i.zt, i64 0
  %broadcast.splat1511 = shufflevector <4 x i64> %broadcast.splatinsert1510, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zu = and <4 x i64> %vec.ind, splat (i64 63)
  %i.zv = and <4 x i64> %step.add, splat (i64 63)
  %i.zw = and <4 x i64> %step.add.2, splat (i64 63)
  %i.zx = and <4 x i64> %step.add.3, splat (i64 63)
  %i.zy = shl nuw <4 x i64> splat (i64 1), %i.zu
  %i.zz = shl nuw <4 x i64> splat (i64 1), %i.zv
  %i.aaa = shl nuw <4 x i64> splat (i64 1), %i.zw
  %i.aab = shl nuw <4 x i64> splat (i64 1), %i.zx
  %i.aac = and <4 x i64> %broadcast.splat1505, %i.zy
  %i.aad = and <4 x i64> %broadcast.splat1507, %i.zz
  %i.aae = and <4 x i64> %broadcast.splat1509, %i.aaa
  %i.aaf = and <4 x i64> %broadcast.splat1511, %i.aab
  %i.aag = icmp ne <4 x i64> %i.aac, zeroinitializer ; 2 uses
  %i.aah = icmp ne <4 x i64> %i.aad, zeroinitializer ; 2 uses
  %i.aai = icmp ne <4 x i64> %i.aae, zeroinitializer ; 2 uses
  %i.aaj = icmp ne <4 x i64> %i.aaf, zeroinitializer ; 2 uses
  %i.aak = getelementptr [4 x i8], ptr %i.ze, i64 %index1499 ; 4 uses
  %i.aal = getelementptr i8, ptr %i.aak, i64 16
  %i.aam = getelementptr i8, ptr %i.aak, i64 32
  %i.aan = getelementptr i8, ptr %i.aak, i64 48
  %wide.masked.load = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.aak, <4 x i1> %i.aag, <4 x i32> poison), !tbaa !101
  %wide.masked.load1512.a = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.aal, <4 x i1> %i.aah, <4 x i32> poison), !tbaa !101
  %wide.masked.load1513.a = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.aam, <4 x i1> %i.aai, <4 x i32> poison), !tbaa !101
  %wide.masked.load1514 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.aan, <4 x i1> %i.aaj, <4 x i32> poison), !tbaa !101
  %i.aao = add nsw <4 x i32> %wide.masked.load, splat (i32 1)
  %i.aap = add nsw <4 x i32> %wide.masked.load1512.a, splat (i32 1)
  %i.aaq = add nsw <4 x i32> %wide.masked.load1513.a, splat (i32 1)
  %i.aar = add nsw <4 x i32> %wide.masked.load1514, splat (i32 1)
  %i.aas = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1500.a, <4 x i32> %i.aao)
  %i.aat = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1501.a, <4 x i32> %i.aap)
  %i.aau = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1502.a, <4 x i32> %i.aaq)
  %i.aav = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1503, <4 x i32> %i.aar)
  %predphi = select <4 x i1> %i.aag, <4 x i32> %i.aas, <4 x i32> %vec.phi1500.a ; 2 uses
  %predphi1515.a = select <4 x i1> %i.aah, <4 x i32> %i.aat, <4 x i32> %vec.phi1501.a ; 2 uses
  %predphi1516.a = select <4 x i1> %i.aai, <4 x i32> %i.aau, <4 x i32> %vec.phi1502.a ; 2 uses
  %predphi1517 = select <4 x i1> %i.aaj, <4 x i32> %i.aav, <4 x i32> %vec.phi1503 ; 2 uses
  %index.next1518 = add nuw i64 %index1499, 16    ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.aaw = icmp eq i64 %index.next1518, %n.vec1497
  br i1 %i.aaw, label %middle.block1519, label %vector.body1498, !llvm.loop !621

middle.block1519:                                 ; preds = %vector.body1498
  %rdx.minmax1520.a = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi, <4 x i32> %predphi1515.a)
  %rdx.minmax1521.a = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax1520.a, <4 x i32> %predphi1516.a)
  %rdx.minmax1522 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax1521.a, <4 x i32> %predphi1517)
  %i.aax = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax1522) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec1497, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %vec.epilog.iter.check1527

vec.epilog.iter.check1527:                        ; preds = %middle.block1519
  %min.epilog.iters.check1528 = icmp eq i64 %i.zh, 0
  br i1 %min.epilog.iters.check1528, label %.lr.ph.i74.i.preheader, label %vec.epilog.ph1529, !prof !150

vec.epilog.ph1529:                                ; preds = %vector.main.loop.iter.check1494, %vec.epilog.iter.check1527
  %vec.epilog.resume.val1523 = phi i64 [ %n.vec1497, %vec.epilog.iter.check1527 ], [ 0, %vector.main.loop.iter.check1494 ] ; 2 uses
  %bc.merge.rdx1524 = phi i32 [ %i.aax, %vec.epilog.iter.check1527 ], [ 0, %vector.main.loop.iter.check1494 ]
  %broadcast.splatinsert1535 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1524, i64 0
  %broadcast.splat1536 = shufflevector <4 x i32> %broadcast.splatinsert1535, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1529 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert1533 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1523, i64 0
  %broadcast.splat1534 = shufflevector <4 x i64> %broadcast.splatinsert1533, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat1534, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1535

vec.epilog.vector.body1535:                       ; preds = %vec.epilog.vector.body1535, %vec.epilog.ph1529
  %index1536 = phi i64 [ %vec.epilog.resume.val1523, %vec.epilog.ph1529 ], [ %index.next1543, %vec.epilog.vector.body1535 ] ; 3 uses
  %vec.ind1537 = phi <4 x i64> [ %induction, %vec.epilog.ph1529 ], [ %vec.ind.next1544, %vec.epilog.vector.body1535 ] ; 2 uses
  %vec.phi1538 = phi <4 x i32> [ %broadcast.splat1536, %vec.epilog.ph1529 ], [ %predphi1542, %vec.epilog.vector.body1535 ] ; 2 uses
  %i.aay = lshr i64 %index1536, 6
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.aay
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !149
  %broadcast.splatinsert1539 = insertelement <4 x i64> poison, i64 %i.aba, i64 0
  %broadcast.splat1540 = shufflevector <4 x i64> %broadcast.splatinsert1539, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.abb = and <4 x i64> %vec.ind1537, splat (i64 63)
  %i.abc = shl nuw <4 x i64> splat (i64 1), %i.abb
  %i.abd = and <4 x i64> %broadcast.splat1540, %i.abc
  %i.abe = icmp ne <4 x i64> %i.abd, zeroinitializer ; 2 uses
  %i.abf = getelementptr [4 x i8], ptr %i.ze, i64 %index1536
  %wide.masked.load1541 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abf, <4 x i1> %i.abe, <4 x i32> poison), !tbaa !101
  %i.abg = add nsw <4 x i32> %wide.masked.load1541, splat (i32 1)
  %i.abh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1538, <4 x i32> %i.abg)
  %predphi1542 = select <4 x i1> %i.abe, <4 x i32> %i.abh, <4 x i32> %vec.phi1538 ; 2 uses
  %index.next1543 = add nuw i64 %index1536, 4     ; 2 uses
  %vec.ind.next1544 = add nuw nsw <4 x i64> %vec.ind1537, splat (i64 4)
  %i.abi = icmp eq i64 %index.next1543, %n.vec1529
  br i1 %i.abi, label %vec.epilog.middle.block1545, label %vec.epilog.vector.body1535, !llvm.loop !622

vec.epilog.middle.block1545:                      ; preds = %vec.epilog.vector.body1535
  %i.abj = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %predphi1542) ; 2 uses
  %cmp.n1546 = icmp eq i64 %n.vec1529, %wide.trip.count.i.i
  br i1 %cmp.n1546, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph.i74.i.preheader

.lr.ph.i74.i.preheader:                           ; preds = %iter.check1525, %vec.epilog.iter.check1527, %vec.epilog.middle.block1545
  %indvars.iv.i.i207.ph = phi i64 [ 0, %iter.check1525 ], [ %n.vec1497, %vec.epilog.iter.check1527 ], [ %n.vec1529, %vec.epilog.middle.block1545 ]
  %.02831.i.i.ph = phi i32 [ 0, %iter.check1525 ], [ %i.aax, %vec.epilog.iter.check1527 ], [ %i.abj, %vec.epilog.middle.block1545 ]
  br label %.lr.ph.i74.i

.preheader.i.i209:                                ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit.i.i
  br i1 %i.zg, label %iter.check1570, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i

iter.check1570:                                   ; preds = %.preheader.i.i209
  %wide.trip.count42.i.i = zext nneg i32 %i.zf to i64 ; 6 uses
  %min.iters.check1548 = icmp ult i32 %i.zf, 4
  br i1 %min.iters.check1548, label %.lr.ph35.i.i.preheader, label %vector.main.loop.iter.check1549

vector.main.loop.iter.check1549:                  ; preds = %iter.check1570
  %min.iters.check1550 = icmp ult i32 %i.zf, 32
  br i1 %min.iters.check1550, label %vec.epilog.ph1574, label %vector.ph1551

vector.ph1551:                                    ; preds = %vector.main.loop.iter.check1549
  %i.abk = and i64 %wide.trip.count42.i.i, 28
  %n.vec1552 = and i64 %wide.trip.count42.i.i, 2147483616 ; 4 uses
  br label %vector.body1553

vector.body1553:                                  ; preds = %vector.ph1551, %vector.body1553
  %index1554 = phi i64 [ 0, %vector.ph1551 ], [ %index.next1562, %vector.body1553 ] ; 2 uses
  %vec.phi1555 = phi <8 x i32> [ zeroinitializer, %vector.ph1551 ], [ %i.abt, %vector.body1553 ]
  %vec.phi1556 = phi <8 x i32> [ zeroinitializer, %vector.ph1551 ], [ %i.abu, %vector.body1553 ]
  %vec.phi1557 = phi <8 x i32> [ zeroinitializer, %vector.ph1551 ], [ %i.abv, %vector.body1553 ]
  %vec.phi1558 = phi <8 x i32> [ zeroinitializer, %vector.ph1551 ], [ %i.abw, %vector.body1553 ]
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %index1554 ; 4 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 32
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 64
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 96
  %wide.load = load <8 x i32>, ptr %i.abl, align 4, !tbaa !101
  %wide.load1559 = load <8 x i32>, ptr %i.abm, align 4, !tbaa !101
  %wide.load1560 = load <8 x i32>, ptr %i.abn, align 4, !tbaa !101
  %wide.load1561 = load <8 x i32>, ptr %i.abo, align 4, !tbaa !101
  %i.abp = add nsw <8 x i32> %wide.load, splat (i32 1)
  %i.abq = add nsw <8 x i32> %wide.load1559, splat (i32 1)
  %i.abr = add nsw <8 x i32> %wide.load1560, splat (i32 1)
  %i.abs = add nsw <8 x i32> %wide.load1561, splat (i32 1)
  %i.abt = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1555, <8 x i32> %i.abp) ; 2 uses
  %i.abu = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1556, <8 x i32> %i.abq) ; 2 uses
  %i.abv = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1557, <8 x i32> %i.abr) ; 2 uses
  %i.abw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1558, <8 x i32> %i.abs) ; 2 uses
  %index.next1562 = add nuw i64 %index1554, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next1562, %n.vec1552
  br i1 %i.abx, label %middle.block1563, label %vector.body1553, !llvm.loop !623

middle.block1563:                                 ; preds = %vector.body1553
  %rdx.minmax1564 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.abt, <8 x i32> %i.abu)
  %rdx.minmax1565 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1564, <8 x i32> %i.abv)
  %rdx.minmax1566 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1565, <8 x i32> %i.abw)
  %i.aby = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1566) ; 3 uses
  %cmp.n1567 = icmp eq i64 %n.vec1552, %wide.trip.count42.i.i
  br i1 %cmp.n1567, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %vec.epilog.iter.check1572

vec.epilog.iter.check1572:                        ; preds = %middle.block1563
  %min.epilog.iters.check1573 = icmp eq i64 %i.abk, 0
  br i1 %min.epilog.iters.check1573, label %.lr.ph35.i.i.preheader, label %vec.epilog.ph1574, !prof !808

vec.epilog.ph1574:                                ; preds = %vector.main.loop.iter.check1549, %vec.epilog.iter.check1572
  %vec.epilog.resume.val1568 = phi i64 [ %n.vec1552, %vec.epilog.iter.check1572 ], [ 0, %vector.main.loop.iter.check1549 ]
  %bc.merge.rdx1569 = phi i32 [ %i.aby, %vec.epilog.iter.check1572 ], [ 0, %vector.main.loop.iter.check1549 ]
  %broadcast.splatinsert1578 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1569, i64 0
  %broadcast.splat1579 = shufflevector <4 x i32> %broadcast.splatinsert1578, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1575 = and i64 %wide.trip.count42.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1578

vec.epilog.vector.body1578:                       ; preds = %vec.epilog.vector.body1578, %vec.epilog.ph1574
  %index1579 = phi i64 [ %vec.epilog.resume.val1568, %vec.epilog.ph1574 ], [ %index.next1582, %vec.epilog.vector.body1578 ] ; 2 uses
  %vec.phi1580 = phi <4 x i32> [ %broadcast.splat1579, %vec.epilog.ph1574 ], [ %i.acb, %vec.epilog.vector.body1578 ]
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %index1579
  %wide.load1581 = load <4 x i32>, ptr %i.abz, align 4, !tbaa !101
  %i.aca = add nsw <4 x i32> %wide.load1581, splat (i32 1)
  %i.acb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1580, <4 x i32> %i.aca) ; 2 uses
  %index.next1582 = add nuw i64 %index1579, 4     ; 2 uses
  %i.acc = icmp eq i64 %index.next1582, %n.vec1575
  br i1 %i.acc, label %vec.epilog.middle.block1583, label %vec.epilog.vector.body1578, !llvm.loop !624

vec.epilog.middle.block1583:                      ; preds = %vec.epilog.vector.body1578
  %i.acd = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.acb) ; 2 uses
  %cmp.n1584 = icmp eq i64 %n.vec1575, %wide.trip.count42.i.i
  br i1 %cmp.n1584, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph35.i.i.preheader

.lr.ph35.i.i.preheader:                           ; preds = %iter.check1570, %vec.epilog.iter.check1572, %vec.epilog.middle.block1583
  %indvars.iv39.i.i.ph = phi i64 [ 0, %iter.check1570 ], [ %n.vec1552, %vec.epilog.iter.check1572 ], [ %n.vec1575, %vec.epilog.middle.block1583 ]
  %.233.i.i.ph = phi i32 [ 0, %iter.check1570 ], [ %i.aby, %vec.epilog.iter.check1572 ], [ %i.acd, %vec.epilog.middle.block1583 ]
  br label %.lr.ph35.i.i

.lr.ph.i74.i:                                     ; preds = %.lr.ph.i74.i.preheader, %bb.ez
  %indvars.iv.i.i207 = phi i64 [ %indvars.iv.next.i.i208, %bb.ez ], [ %indvars.iv.i.i207.ph, %.lr.ph.i74.i.preheader ] ; 4 uses
  %.02831.i.i = phi i32 [ %.1.i.i, %bb.ez ], [ %.02831.i.i.ph, %.lr.ph.i74.i.preheader ] ; 2 uses
  %i.ace = lshr i64 %indvars.iv.i.i207, 6
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.ace
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !149
  %i.ach = and i64 %indvars.iv.i.i207, 63
  %i.aci = shl nuw i64 1, %i.ach
  %i.acj = and i64 %i.acg, %i.aci
  %.not.i16.i.i = icmp eq i64 %i.acj, 0
  br i1 %.not.i16.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i74.i
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv.i.i207
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !101
  %i.acm = add nsw i32 %i.acl, 1
  %.sroa.speculated20.i.i = call i32 @llvm.smax.i32(i32 %.02831.i.i, i32 %i.acm)
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.lr.ph.i74.i
  %.1.i.i = phi i32 [ %.02831.i.i, %.lr.ph.i74.i ], [ %.sroa.speculated20.i.i, %bb.ey ] ; 2 uses
  %indvars.iv.next.i.i208 = add nuw nsw i64 %indvars.iv.i.i207, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i208, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph.i74.i, !llvm.loop !625

.lr.ph35.i.i:                                     ; preds = %.lr.ph35.i.i.preheader, %.lr.ph35.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i, %.lr.ph35.i.i ], [ %indvars.iv39.i.i.ph, %.lr.ph35.i.i.preheader ] ; 2 uses
  %.233.i.i = phi i32 [ %.sroa.speculated.i75.i, %.lr.ph35.i.i ], [ %.233.i.i.ph, %.lr.ph35.i.i.preheader ]
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv39.i.i
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !101
  %i.acp = add nsw i32 %i.aco, 1
  %.sroa.speculated.i75.i = call i32 @llvm.smax.i32(i32 %.233.i.i, i32 %i.acp) ; 2 uses
  %indvars.iv.next40.i.i = add nuw nsw i64 %indvars.iv39.i.i, 1 ; 2 uses
  %exitcond43.not.i.i = icmp eq i64 %indvars.iv.next40.i.i, %wide.trip.count42.i.i
  br i1 %exitcond43.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph35.i.i, !llvm.loop !626

_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i: ; preds = %bb.ez, %.lr.ph35.i.i, %middle.block1519, %vec.epilog.middle.block1545, %middle.block1563, %vec.epilog.middle.block1583, %.preheader29.i.i, %.preheader.i.i209, %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171
  %i.acq = phi i32 [ -1, %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171 ], [ %.sroa.speculated.i75.i, %.lr.ph35.i.i ], [ 0, %.preheader.i.i209 ], [ 0, %.preheader29.i.i ], [ %i.acd, %vec.epilog.middle.block1583 ], [ %i.aby, %middle.block1563 ], [ %i.abj, %vec.epilog.middle.block1545 ], [ %i.aax, %middle.block1519 ], [ %.1.i.i, %bb.ez ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  store ptr null, ptr %44, align 8, !tbaa !132
  %i.acr = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %120, ptr noundef null)
          to label %bb.fa unwind label %bb.fp, !inline_history !620 ; 3 uses

bb.fa:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i
  %i.acs = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %128, ptr noundef null)
          to label %bb.fb unwind label %bb.fp, !inline_history !620 ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.act = icmp ne ptr %i.acr, null               ; 3 uses
  %i.acu = icmp ne ptr %i.acs, null               ; 2 uses
  %or.cond.i = or i1 %i.act, %i.acu
  br i1 %or.cond.i, label %bb.fc, label %_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmS3_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPm.exit.i

bb.fc:                                            ; preds = %bb.fb
  br i1 %4, label %bb.fd, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split

bb.fd:                                            ; preds = %bb.fc
  %i.acv = load ptr, ptr %3, align 8, !tbaa !67
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 32 ; 3 uses
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !132 ; 3 uses
  %.not702 = icmp eq ptr %i.acx, null
  br i1 %.not702, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.acy = sext i32 %.05.lcssa.i.i172 to i64
  %i.acz = add nsw i64 %i.acy, 63
  %i.ada = ashr i64 %i.acz, 3
  %i.adb = and i64 %i.ada, -8                     ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acx, i64 44
  %i.add = load i8, ptr %i.adc, align 4, !tbaa !138, !noalias !809
  %i.ade = and i8 %i.add, 2
  %.not.i.i76.i = icmp eq i8 %i.ade, 0
  br i1 %.not.i.i76.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i

_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i:  ; preds = %bb.fe
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acx, i64 40
  %i.adg = load atomic i32, ptr %i.adf acquire, align 4, !noalias !809
  %i.adh = icmp eq i32 %i.adg, 1
  br i1 %i.adh, label %bb.ff, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i

bb.ff:                                            ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i
  %i.adi = load ptr, ptr %i.acw, align 8, !tbaa !132, !noalias !809 ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 32
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !151, !noalias !809
  %.not.i77.i = icmp ugt i64 %i.adb, %i.adk
  br i1 %.not.i77.i, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.adl = load ptr, ptr %i.adi, align 8, !tbaa !88, !noalias !809
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8, !noalias !809
  invoke void %i.adn(ptr noundef nonnull align 8 dereferenceable(64) %i.adi, i64 noundef %i.adb)
          to label %.noexc.i205 unwind label %bb.fp, !inline_history !629

.noexc.i205:                                      ; preds = %bb.fg
  %i.ado = load ptr, ptr %i.acw, align 8, !tbaa !132, !noalias !809 ; 3 uses
  %.not.i6.i.i = icmp eq ptr %i.ado, null
  br i1 %.not.i6.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i, label %bb.fh

bb.fh:                                            ; preds = %.noexc.i205
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 40
  %i.adq = atomicrmw add ptr %i.adp, i32 1 acq_rel, align 4, !noalias !809 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i

_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i: ; preds = %bb.fe, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i, %bb.ff, %bb.fh, %.noexc.i205
  %.sroa.0603.0 = phi ptr [ %i.ado, %bb.fh ], [ null, %.noexc.i205 ], [ null, %bb.ff ], [ null, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i ], [ null, %bb.fe ] ; 2 uses
  %i.adr = load ptr, ptr %44, align 8, !tbaa !132 ; 7 uses
  store ptr %.sroa.0603.0, ptr %44, align 8, !tbaa !132
  %.not.i.i78.i = icmp eq ptr %i.adr, null
  br i1 %.not.i.i78.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196, label %bb.fi

bb.fi:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 40
  %i.adt = atomicrmw add ptr %i.ads, i32 -1 acq_rel, align 4
  %i.adu = icmp eq i32 %i.adt, 1
  br i1 %i.adu, label %.sink.split.i.i.i.i201, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split

.sink.split.i.i.i.i201:                           ; preds = %bb.fi
  %i.adv = load ptr, ptr %i.adr, align 8, !tbaa !88
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 64
  %i.adx = load ptr, ptr %i.adw, align 8
  invoke void %i.adx(ptr noundef nonnull align 8 dereferenceable(64) %i.adr)
          to label %.noexc.i.i.i202 unwind label %bb.fj, !inline_history !630

.noexc.i.i.i202:                                  ; preds = %.sink.split.i.i.i.i201
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !148
  %.not.i.i.i.i203 = icmp eq ptr %i.adz, null
  %i.aea = load ptr, ptr %i.adr, align 8, !tbaa !88
  %..i.i.i.i204 = select i1 %.not.i.i.i.i203, i64 8, i64 48
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 %..i.i.i.i204
  %i.aec = load ptr, ptr %i.aeb, align 8
  invoke void %i.aec(ptr noundef nonnull align 8 dereferenceable(64) %i.adr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split unwind label %bb.fj, !inline_history !630

bb.fj:                                            ; preds = %.noexc.i.i.i202, %.sink.split.i.i.i.i201
  %i.aed = landingpad { ptr, i32 }
          catch ptr null
  %i.aee = extractvalue { ptr, i32 } %i.aed, 0
  call void @__clang_call_terminate(ptr %i.aee) #35, !inline_history !620
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split: ; preds = %bb.fc, %bb.fd, %bb.fi, %.noexc.i.i.i202
  %.pr692 = load ptr, ptr %44, align 8, !tbaa !132
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split, %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i
  %i.aef = phi ptr [ %.pr692, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split ], [ %.sroa.0603.0, %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i ] ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, null
  br i1 %i.aeg, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  %i.aeh = load ptr, ptr %0, align 8, !tbaa !84
  %i.aei = sext i32 %.05.lcssa.i.i172 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #30, !noalias !810
  store i8 -1, ptr %43, align 1, !tbaa !100, !noalias !810
  %i.aej = getelementptr inbounds nuw i8, ptr %43, i64 1
  store i8 1, ptr %i.aej, align 1, !tbaa !143, !noalias !810
  %i.aek = add nsw i64 %i.aei, 7
  %i.ael = lshr i64 %i.aek, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %45, i64 noundef %i.ael, ptr noundef %i.aeh, ptr noundef nonnull align 1 dereferenceable(2) %43, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i unwind label %bb.fl, !inline_history !620

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i: ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #30, !noalias !810
  %i.aem = load ptr, ptr %45, align 8, !tbaa !132 ; 2 uses
  store ptr %i.aem, ptr %44, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aen = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  br label %bb.lg

bb.fm:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196
  %i.aeo = phi ptr [ %i.aem, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i ], [ %i.aef, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196 ] ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 44
  %i.aeq = load i8, ptr %i.aep, align 4, !tbaa !138
  %i.aer = and i8 %i.aeq, 2
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #30, !inline_history !620
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  br label %bb.lg

bb.lg:                                            ; preds = %.body.i176, %bb.fp, %bb.fl
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aen, %bb.fl ], [ %.pn.pn.pn.pn.i, %.body.i176 ], [ %i.aey, %bb.fp ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #30, !inline_history !620
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  br label %.body149

_ZN8facebook5velox12_GLOBAL__N_118copyIntoDictionaryERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERNS0_13DecodedVectorERKSt10shared_ptrIS7_ESF_OSH_RSH_b.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit179.i, %bb.la, %.noexc.i182.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  br label %_ZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_b.exit

bb.lh:                                            ; preds = %bb.ea
  %i.bsd = load ptr, ptr %3, align 8, !tbaa !67   ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 28
  %i.bsf = load i32, ptr %i.bse, align 4, !tbaa !152 ; 2 uses
  switch i32 %i.bsf, label %bb.up [
    i32 3, label %bb.li
    i32 6, label %bb.lj
    i32 5, label %bb.lp
    i32 8, label %bb.lp
    i32 7, label %bb.um
    i32 9, label %bb.uo
  ]

bb.li:                                            ; preds = %bb.lh
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4)
          to label %_ZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_b.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !575

bb.lj:                                            ; preds = %bb.lh
  %i.bsg = load ptr, ptr %129, align 8, !tbaa !67
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 28
  %i.bsi = load i32, ptr %i.bsh, align 4, !tbaa !152
  %.not.i = icmp eq i32 %i.bsi, 7
  br i1 %.not.i, label %bb.lk, label %bb.lp, !prof !90

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i32 7, ptr %i.j, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i32 7, ptr %i.k, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #30, !noalias !815
  store ptr %i.j, ptr %53, align 16, !tbaa !100, !noalias !815
  %i.bsj = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.bsj, align 8, !tbaa !100, !noalias !815
  %i.bsk = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %i.k, ptr %i.bsk, align 16, !tbaa !100, !noalias !815
  %i.bsl = getelementptr inbounds nuw i8, ptr %53, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.bsl, align 8, !tbaa !100, !noalias !815
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %123, ptr nonnull @.str.14, i64 53, i64 255, ptr nonnull %53)
          to label %bb.ll unwind label %bb.ln

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_bE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %123, ptr nonnull @.str.14) #33
          to label %bb.lm unwind label %bb.lo, !inline_history !575

bb.lm:                                            ; preds = %bb.ll
  unreachable

bb.ln:                                            ; preds = %bb.lk
  %i.bsm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.lo:                                            ; preds = %bb.ll
  %i.bsn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bso = load ptr, ptr %123, align 8, !tbaa !107 ; 2 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 2 uses
  %i.bsq = icmp eq ptr %i.bso, %i.bsp
  br i1 %i.bsq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.lo
  %i.bsr = load i64, ptr %i.bsp, align 8, !tbaa !100
  %i.bss = add i64 %i.bsr, 1
  call void @_ZdlPvm(ptr noundef %i.bso, i64 noundef %i.bss) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.ln
  %.pn48.i = phi { ptr, i32 } [ %i.bsn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.bsm, %bb.ln ], [ %i.bsn, %bb.lo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #30
  br label %.body149

bb.lp:                                            ; preds = %bb.lj, %bb.lh, %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %106)
  call void @llvm.lifetime.start.p0(ptr nonnull %107)
  call void @llvm.lifetime.start.p0(ptr nonnull %108)
  %i.bst = getelementptr inbounds nuw i8, ptr %128, i64 58 ; 2 uses
  %i.bsu = load i8, ptr %i.bst, align 2, !tbaa !131, !range !61, !noundef !62
  %i.bsv = trunc nuw i8 %i.bsu to i1
  br i1 %i.bsv, label %bb.lq, label %bb.sn

bb.lq:                                            ; preds = %bb.lp
  switch i32 %i.bsf, label %bb.sm [
    i32 5, label %bb.lr
    i32 6, label %bb.mj
    i32 8, label %bb.ps
  ]

bb.lr:                                            ; preds = %bb.lq
  %i.bsw = load ptr, ptr %129, align 8, !tbaa !67
  %i.bsx = invoke noundef ptr @_ZN8facebook5velox10BaseVector9asCheckedINS0_9RowVectorEEEPT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.bsw)
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661 ; 3 uses

.noexc140:                                        ; preds = %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.bsy = load ptr, ptr %3, align 8, !tbaa !67   ; 9 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 56
  %i.bta = load i32, ptr %i.bsz, align 8, !tbaa !102 ; 7 uses
  %.val.i.i = load ptr, ptr %2, align 8, !tbaa !94 ; 10 uses
  %.val59.i.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 3 uses
  %.not6.i539 = icmp eq ptr %.val.i.i, %.val59.i.i
  br i1 %.not6.i539, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit547, label %iter.check1956

iter.check1956:                                   ; preds = %.noexc140
  %.val59.i.i1917 = ptrtoaddr ptr %.val59.i.i to i64
  %.val.i.i1918 = ptrtoaddr ptr %.val.i.i to i64
  %i.btb = add i64 %.val59.i.i1917, -12
  %i.btc = sub i64 %i.btb, %.val.i.i1918          ; 3 uses
  %i.btd = udiv i64 %i.btc, 12
  %i.bte = add nuw nsw i64 %i.btd, 1              ; 4 uses
  %min.iters.check1919 = icmp ult i64 %i.btc, 96
  br i1 %min.iters.check1919, label %.lr.ph.i540.preheader, label %vector.main.loop.iter.check1920

vector.main.loop.iter.check1920:                  ; preds = %iter.check1956
  %min.iters.check1921 = icmp ult i64 %i.btc, 384
  br i1 %min.iters.check1921, label %vec.epilog.ph1960, label %vector.ph1922

vector.ph1922:                                    ; preds = %vector.main.loop.iter.check1920
  %i.btf = and i64 %i.bte, 31                     ; 2 uses
  %i.btg = icmp eq i64 %i.btf, 0
  %i.bth = select i1 %i.btg, i64 32, i64 %i.btf   ; 2 uses
  %n.vec1923 = sub nsw i64 %i.bte, %i.bth         ; 3 uses
  %i.bti = mul i64 %n.vec1923, 12
  %i.btj = getelementptr i8, ptr %.val.i.i, i64 %i.bti
  %broadcast.splatinsert1924 = insertelement <8 x i32> poison, i32 %i.bta, i64 0
  %broadcast.splat1925 = shufflevector <8 x i32> %broadcast.splatinsert1924, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1926

vector.body1926:                                  ; preds = %vector.ph1922, %vector.body1926
  %index1927 = phi i64 [ 0, %vector.ph1922 ], [ %index.next1948, %vector.body1926 ] ; 2 uses
  %vec.phi1928 = phi <8 x i32> [ %broadcast.splat1925, %vector.ph1922 ], [ %i.btw, %vector.body1926 ]
  %vec.phi1929 = phi <8 x i32> [ %broadcast.splat1925, %vector.ph1922 ], [ %i.btx, %vector.body1926 ]
  %vec.phi1930 = phi <8 x i32> [ %broadcast.splat1925, %vector.ph1922 ], [ %i.bty, %vector.body1926 ]
  %vec.phi1931 = phi <8 x i32> [ %broadcast.splat1925, %vector.ph1922 ], [ %i.btz, %vector.body1926 ]
  %i.btk = mul i64 %index1927, 12                 ; 4 uses
  %next.gep1932 = getelementptr i8, ptr %.val.i.i, i64 %i.btk
  %i.btl = getelementptr i8, ptr %.val.i.i, i64 %i.btk
  %i.btm = getelementptr i8, ptr %.val.i.i, i64 %i.btk
  %i.btn = getelementptr i8, ptr %.val.i.i, i64 %i.btk
  %i.bto = getelementptr inbounds nuw i8, ptr %next.gep1932, i64 4
  %i.btp = getelementptr i8, ptr %i.btl, i64 100
  %i.btq = getelementptr i8, ptr %i.btm, i64 196
  %i.btr = getelementptr i8, ptr %i.btn, i64 292
  %wide.vec1936 = load <24 x i32>, ptr %i.bto, align 4, !tbaa !101 ; 2 uses
  %strided.vec1937.a = shufflevector <24 x i32> %wide.vec1936, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1938 = shufflevector <24 x i32> %wide.vec1936, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1939 = load <24 x i32>, ptr %i.btp, align 4, !tbaa !101 ; 2 uses
  %strided.vec1940.a = shufflevector <24 x i32> %wide.vec1939, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1941 = shufflevector <24 x i32> %wide.vec1939, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1942 = load <24 x i32>, ptr %i.btq, align 4, !tbaa !101 ; 2 uses
  %strided.vec1943 = shufflevector <24 x i32> %wide.vec1942, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1944 = shufflevector <24 x i32> %wide.vec1942, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1945 = load <24 x i32>, ptr %i.btr, align 4, !tbaa !101 ; 2 uses
  %strided.vec1946 = shufflevector <24 x i32> %wide.vec1945, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1947 = shufflevector <24 x i32> %wide.vec1945, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.bts = add nsw <8 x i32> %strided.vec1938, %strided.vec1937.a
  %i.btt = add nsw <8 x i32> %strided.vec1941, %strided.vec1940.a
  %i.btu = add nsw <8 x i32> %strided.vec1944, %strided.vec1943
  %i.btv = add nsw <8 x i32> %strided.vec1947, %strided.vec1946
  %i.btw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1928, <8 x i32> %i.bts) ; 2 uses
  %i.btx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1929, <8 x i32> %i.btt) ; 2 uses
  %i.bty = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1930, <8 x i32> %i.btu) ; 2 uses
  %i.btz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1931, <8 x i32> %i.btv) ; 2 uses
  %index.next1948 = add nuw i64 %index1927, 32    ; 2 uses
  %i.bua = icmp eq i64 %index.next1948, %n.vec1923
  br i1 %i.bua, label %vec.epilog.iter.check1958, label %vector.body1926, !llvm.loop !662

vec.epilog.iter.check1958:                        ; preds = %vector.body1926
  %rdx.minmax1950 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.btw, <8 x i32> %i.btx)
  %rdx.minmax1951 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1950, <8 x i32> %i.bty)
  %rdx.minmax1952 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1951, <8 x i32> %i.btz)
  %i.bub = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1952) ; 2 uses
  %min.epilog.iters.check1959 = icmp samesign ult i64 %i.bth, 9
  br i1 %min.epilog.iters.check1959, label %.lr.ph.i540.preheader, label %vec.epilog.ph1960, !prof !126

vec.epilog.ph1960:                                ; preds = %vector.main.loop.iter.check1920, %vec.epilog.iter.check1958
  %vec.epilog.resume.val1953 = phi i64 [ %n.vec1923, %vec.epilog.iter.check1958 ], [ 0, %vector.main.loop.iter.check1920 ]
  %bc.merge.rdx1955 = phi i32 [ %i.bub, %vec.epilog.iter.check1958 ], [ %i.bta, %vector.main.loop.iter.check1920 ]
  %broadcast.splatinsert1956 = insertelement <8 x i32> poison, i32 %bc.merge.rdx1955, i64 0
  %broadcast.splat1957 = shufflevector <8 x i32> %broadcast.splatinsert1956, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.buc = and i64 %i.bte, 7                      ; 2 uses
  %i.bud = icmp eq i64 %i.buc, 0
  %i.bue = select i1 %i.bud, i64 8, i64 %i.buc
  %n.vec1961 = sub nsw i64 %i.bte, %i.bue         ; 2 uses
  %i.buf = mul i64 %n.vec1961, 12
  %i.bug = getelementptr i8, ptr %.val.i.i, i64 %i.buf
  br label %vec.epilog.vector.body1964

vec.epilog.vector.body1964:                       ; preds = %vec.epilog.vector.body1964, %vec.epilog.ph1960
  %index1965 = phi i64 [ %vec.epilog.resume.val1953, %vec.epilog.ph1960 ], [ %index.next1971, %vec.epilog.vector.body1964 ] ; 2 uses
  %vec.phi1966 = phi <8 x i32> [ %broadcast.splat1957, %vec.epilog.ph1960 ], [ %i.buk, %vec.epilog.vector.body1964 ]
  %i.buh = mul i64 %index1965, 12
  %next.gep1967 = getelementptr i8, ptr %.val.i.i, i64 %i.buh
  %i.bui = getelementptr inbounds nuw i8, ptr %next.gep1967, i64 4
  %wide.vec1968 = load <24 x i32>, ptr %i.bui, align 4, !tbaa !101 ; 2 uses
  %strided.vec1969 = shufflevector <24 x i32> %wide.vec1968, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1970 = shufflevector <24 x i32> %wide.vec1968, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.buj = add nsw <8 x i32> %strided.vec1970, %strided.vec1969
  %i.buk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1966, <8 x i32> %i.buj) ; 2 uses
  %index.next1971 = add nuw i64 %index1965, 8     ; 2 uses
  %i.bul = icmp eq i64 %index.next1971, %n.vec1961
  br i1 %i.bul, label %vec.epilog.middle.block1972, label %vec.epilog.vector.body1964, !llvm.loop !663

vec.epilog.middle.block1972:                      ; preds = %vec.epilog.vector.body1964
  %i.bum = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.buk)
  br label %.lr.ph.i540.preheader

.lr.ph.i540.preheader:                            ; preds = %iter.check1956, %vec.epilog.iter.check1958, %vec.epilog.middle.block1972
  %.08.i541.ph = phi ptr [ %.val.i.i, %iter.check1956 ], [ %i.btj, %vec.epilog.iter.check1958 ], [ %i.bug, %vec.epilog.middle.block1972 ]
  %.057.i542.ph = phi i32 [ %i.bta, %iter.check1956 ], [ %i.bub, %vec.epilog.iter.check1958 ], [ %i.bum, %vec.epilog.middle.block1972 ]
  br label %.lr.ph.i540

.lr.ph.i540:                                      ; preds = %.lr.ph.i540.preheader, %.lr.ph.i540
  %.08.i541 = phi ptr [ %i.bus, %.lr.ph.i540 ], [ %.08.i541.ph, %.lr.ph.i540.preheader ] ; 3 uses
  %.057.i542 = phi i32 [ %.sroa.speculated.i543, %.lr.ph.i540 ], [ %.057.i542.ph, %.lr.ph.i540.preheader ]
  %i.bun = getelementptr inbounds nuw i8, ptr %.08.i541, i64 4
  %i.buo = load i32, ptr %i.bun, align 4, !tbaa !128
  %i.bup = getelementptr inbounds nuw i8, ptr %.08.i541, i64 8
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !129
  %i.bur = add nsw i32 %i.buq, %i.buo
  %.sroa.speculated.i543 = call i32 @llvm.smax.i32(i32 %.057.i542, i32 %i.bur) ; 2 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %.08.i541, i64 12 ; 2 uses
  %.not.i544 = icmp eq ptr %i.bus, %.val59.i.i
  br i1 %.not.i544, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit547, label %.lr.ph.i540, !llvm.loop !664

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit547: ; preds = %.lr.ph.i540, %.noexc140
  %.05.lcssa.i546 = phi i32 [ %i.bta, %.noexc140 ], [ %.sroa.speculated.i543, %.lr.ph.i540 ] ; 3 uses
  store i32 %.05.lcssa.i546, ptr %i.i, align 4, !tbaa !101
  %i.but = getelementptr inbounds nuw i8, ptr %i.bsx, i64 40
  %i.buu = load ptr, ptr %i.but, align 8, !tbaa !156 ; 3 uses
  br i1 %4, label %bb.ls, label %bb.lv

bb.ls:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit547
  invoke void @_ZN8facebook5velox9RowVector12unsafeResizeEib(ptr noundef nonnull align 8 dereferenceable(152) %i.bsy, i32 noundef %.05.lcssa.i546, i1 noundef zeroext true)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc141:                                        ; preds = %bb.ls
  %i.buv = load ptr, ptr %i.bsy, align 8, !tbaa !88
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 360
  %i.bux = load ptr, ptr %i.buw, align 8
  invoke void %i.bux(ptr noundef nonnull align 8 dereferenceable(94) %i.bsy, ptr noundef null)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc142:                                        ; preds = %.noexc141
  %i.buy = load ptr, ptr %3, align 8, !tbaa !67
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmRNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE(ptr noundef %i.buu, ptr noundef nonnull align 8 dereferenceable(94) %i.buy, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc143.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc143.preheader:                              ; preds = %.noexc142
  %i.buz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 96 ; 2 uses
  %i.bva = load i64, ptr %i.buz, align 8, !tbaa !164
  %.not745 = icmp eq i64 %i.bva, 0
  br i1 %.not745, label %.noexc143._crit_edge, label %.lr.ph743

.noexc143._crit_edge:                             ; preds = %.noexc148, %.noexc143.preheader
  invoke void @_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bsy)
          to label %_ZN8facebook5velox12_GLOBAL__N_111copyIntoRowERKNS0_24EncodedVectorCopyOptionsERKNS0_9RowVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERSt10shared_ptrISA_Eb.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.lr.ph743:                                        ; preds = %.noexc143.preheader, %.noexc148
  %.053.i.i742 = phi i32 [ %i.bvq, %.noexc148 ], [ 0, %.noexc143.preheader ] ; 3 uses
  %i.bvb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.bsy, i32 noundef %.053.i.i742)
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661 ; 3 uses

.noexc145:                                        ; preds = %.lr.ph743
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 8
  %i.bvd = load ptr, ptr %i.bvc, align 8, !tbaa !91 ; 2 uses
  %.not.i.i537 = icmp eq ptr %i.bvd, null
  br i1 %.not.i.i537, label %.noexc146, label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit538

_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit538: ; preds = %.noexc145
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 8
  %i.bvf = load atomic i32, ptr %i.bve monotonic, align 8
  %i.bvg = icmp eq i32 %i.bvf, 1
  br i1 %i.bvg, label %bb.lt, label %.noexc146

bb.lt:                                            ; preds = %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit538
  %i.bvh = load ptr, ptr %i.bvb, align 8, !tbaa !67 ; 3 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 56
  %i.bvj = load i32, ptr %i.bvi, align 8, !tbaa !102
  %i.bvk = icmp sgt i32 %i.bvj, %i.bta
  br i1 %i.bvk, label %bb.lu, label %.noexc146

bb.lu:                                            ; preds = %bb.lt
  %i.bvl = load ptr, ptr %i.bvh, align 8, !tbaa !88
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 192
  %i.bvn = load ptr, ptr %i.bvm, align 8
  invoke void %i.bvn(ptr noundef nonnull align 8 dereferenceable(94) %i.bvh, i32 noundef %i.bta, i1 noundef zeroext true)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc146:                                        ; preds = %.noexc145, %bb.lu, %bb.lt, %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit538
  %i.bvo = phi i1 [ true, %bb.lu ], [ false, %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit538 ], [ true, %bb.lt ], [ false, %.noexc145 ]
  %i.bvp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.bsx, i32 noundef %.053.i.i742)
          to label %.noexc147 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc147:                                        ; preds = %.noexc146
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bvp, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bvb, i1 noundef zeroext %i.bvo)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc148:                                        ; preds = %.noexc147
  %i.bvq = add i32 %.053.i.i742, 1                ; 2 uses
  %i.bvr = zext i32 %i.bvq to i64
  %i.bvs = load i64, ptr %i.buz, align 8, !tbaa !164
  %i.bvt = icmp ugt i64 %i.bvs, %i.bvr
  br i1 %i.bvt, label %.lr.ph743, label %.noexc143._crit_edge, !llvm.loop !665

bb.lv:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit547
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #30
  store ptr null, ptr %96, align 8, !tbaa !132
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bsy, i64 40
  %i.bvv = load ptr, ptr %i.bvu, align 8, !tbaa !156 ; 2 uses
  %i.bvw = icmp ne ptr %i.bvv, null
  %i.bvx = icmp ne ptr %i.buu, null
  %or.cond.i.i = or i1 %i.bvx, %i.bvw
  br i1 %or.cond.i.i, label %bb.lw, label %bb.lz

bb.lw:                                            ; preds = %bb.lv
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #30
  %i.bvy = load ptr, ptr %0, align 8, !tbaa !84
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_112combineNullsEiPNS0_6memory10MemoryPoolEPKmiS6_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE(ptr dead_on_unwind noalias writable align 8 %97, i32 noundef %.05.lcssa.i546, ptr noundef %i.bvy, ptr noundef %i.bvv, i32 noundef %i.bta, ptr noundef %i.buu, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.lx unwind label %bb.ly, !inline_history !666

bb.lx:                                            ; preds = %bb.lw
  %i.bvz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull align 8 dereferenceable(8) %97) #30, !inline_history !666 ; 0 uses
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %97) #30, !inline_history !666
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #30
  br label %bb.lz

bb.ly:                                            ; preds = %bb.lw
  %i.bwa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #30
  br label %bb.mi

bb.lz:                                            ; preds = %bb.lx, %bb.lv
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #30
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bsy, i64 104
  invoke void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %98, ptr noundef nonnull align 8 dereferenceable(24) %i.bwb)
          to label %.preheader unwind label %bb.ma, !inline_history !666

.preheader:                                       ; preds = %bb.lz
  %i.bwc = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  %i.bwd = load ptr, ptr %i.bwc, align 8, !tbaa !165
  %i.bwe = load ptr, ptr %98, align 8, !tbaa !166
  %.not744 = icmp eq ptr %i.bwd, %i.bwe
  br i1 %.not744, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.mc, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #30
  %i.bwf = load ptr, ptr %3, align 8, !tbaa !67
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 8
  invoke void @_ZSt11make_sharedIN8facebook5velox9RowVectorEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERKiSt6vectorIS8_INS1_10BaseVectorEESaISM_EEEES8_IT_EDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.142") align 8 %99, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bwg, ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %98)
          to label %bb.me unwind label %bb.mf, !inline_history !666

bb.ma:                                            ; preds = %bb.lz
  %i.bwh = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

.lr.ph:                                           ; preds = %.preheader, %bb.mc
  %i.bwi = phi i64 [ %i.bwn, %bb.mc ], [ 0, %.preheader ]
  %.0.i.i741 = phi i32 [ %i.bwm, %bb.mc ], [ 0, %.preheader ] ; 2 uses
  %i.bwj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.bsx, i32 noundef %.0.i.i741)
          to label %bb.mb unwind label %bb.md, !inline_history !666

bb.mb:                                            ; preds = %.lr.ph
  %i.bwk = load ptr, ptr %98, align 8, !tbaa !166
  %i.bwl = getelementptr inbounds nuw [16 x i8], ptr %i.bwk, i64 %i.bwi
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bwj, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bwl, i1 noundef zeroext false)
          to label %bb.mc unwind label %bb.md, !inline_history !666

bb.mc:                                            ; preds = %bb.mb
  %i.bwm = add i32 %.0.i.i741, 1                  ; 2 uses
  %i.bwn = zext i32 %i.bwm to i64                 ; 2 uses
  %i.bwo = load ptr, ptr %i.bwc, align 8, !tbaa !165
  %i.bwp = load ptr, ptr %98, align 8, !tbaa !166
  %i.bwq = ptrtoint ptr %i.bwo to i64
  %i.bwr = ptrtoint ptr %i.bwp to i64
  %i.bws = sub i64 %i.bwq, %i.bwr
  %i.bwt = ashr exact i64 %i.bws, 4
  %i.bwu = icmp ugt i64 %i.bwt, %i.bwn
  br i1 %i.bwu, label %.lr.ph, label %._crit_edge, !llvm.loop !667

bb.md:                                            ; preds = %bb.mb, %.lr.ph
  %i.bwv = landingpad { ptr, i32 }
          cleanup
  br label %bb.mg

bb.me:                                            ; preds = %._crit_edge
  %i.bww = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSINS1_9RowVectorEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %99) #30, !inline_history !666 ; 0 uses
  call void @_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %99) #30, !inline_history !666
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #30
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %98) #30, !inline_history !666
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #30, !inline_history !666
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #30
  br label %_ZN8facebook5velox12_GLOBAL__N_111copyIntoRowERKNS0_24EncodedVectorCopyOptionsERKNS0_9RowVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERSt10shared_ptrISA_Eb.exit.i

bb.mf:                                            ; preds = %._crit_edge
  %i.bwx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #30
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.md
  %.pn.i.i = phi { ptr, i32 } [ %i.bwv, %bb.md ], [ %i.bwx, %bb.mf ]
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %98) #30, !inline_history !666
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.ma
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.mg ], [ %i.bwh, %bb.ma ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #30
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.ly
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.mh ], [ %i.bwa, %bb.ly ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #30, !inline_history !666
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.body149

_ZN8facebook5velox12_GLOBAL__N_111copyIntoRowERKNS0_24EncodedVectorCopyOptionsERKNS0_9RowVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERSt10shared_ptrISA_Eb.exit.i: ; preds = %.noexc143._crit_edge, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %_ZN8facebook5velox12_GLOBAL__N_115copyIntoComplexERKNS0_24EncodedVectorCopyOptionsERNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS8_9CopyRangeEEERS9_b.exit

bb.mj:                                            ; preds = %bb.lq
  %i.bwy = load ptr, ptr %129, align 8, !tbaa !67
  %i.bwz = invoke noundef ptr @_ZN8facebook5velox10BaseVector9asCheckedINS0_9MapVectorEEEPT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.bwy)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661 ; 7 uses

.noexc151:                                        ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.bxa = load ptr, ptr %3, align 8, !tbaa !67   ; 20 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bxa, i64 56 ; 7 uses
  %i.bxc = load i32, ptr %i.bxb, align 8, !tbaa !102 ; 5 uses
  %.val.i58.i = load ptr, ptr %2, align 8, !tbaa !94 ; 10 uses
  %.val116.i.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 3 uses
  %.not6.i528 = icmp eq ptr %.val.i58.i, %.val116.i.i
  br i1 %.not6.i528, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit536, label %iter.check1898

iter.check1898:                                   ; preds = %.noexc151
  %.val116.i.i1859 = ptrtoaddr ptr %.val116.i.i to i64
  %.val.i58.i1860 = ptrtoaddr ptr %.val.i58.i to i64
  %i.bxd = add i64 %.val116.i.i1859, -12
  %i.bxe = sub i64 %i.bxd, %.val.i58.i1860        ; 3 uses
  %i.bxf = udiv i64 %i.bxe, 12
  %i.bxg = add nuw nsw i64 %i.bxf, 1              ; 4 uses
  %min.iters.check1861 = icmp ult i64 %i.bxe, 96
  br i1 %min.iters.check1861, label %.lr.ph.i529.preheader, label %vector.main.loop.iter.check1862

vector.main.loop.iter.check1862:                  ; preds = %iter.check1898
  %min.iters.check1863 = icmp ult i64 %i.bxe, 384
  br i1 %min.iters.check1863, label %vec.epilog.ph1902, label %vector.ph1864

vector.ph1864:                                    ; preds = %vector.main.loop.iter.check1862
  %i.bxh = and i64 %i.bxg, 31                     ; 2 uses
  %i.bxi = icmp eq i64 %i.bxh, 0
  %i.bxj = select i1 %i.bxi, i64 32, i64 %i.bxh   ; 2 uses
  %n.vec1865 = sub nsw i64 %i.bxg, %i.bxj         ; 3 uses
  %i.bxk = mul i64 %n.vec1865, 12
  %i.bxl = getelementptr i8, ptr %.val.i58.i, i64 %i.bxk
  %broadcast.splatinsert1866 = insertelement <8 x i32> poison, i32 %i.bxc, i64 0
  %broadcast.splat1867 = shufflevector <8 x i32> %broadcast.splatinsert1866, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1868

vector.body1868:                                  ; preds = %vector.ph1864, %vector.body1868
  %index1869 = phi i64 [ 0, %vector.ph1864 ], [ %index.next1890, %vector.body1868 ] ; 2 uses
  %vec.phi1870 = phi <8 x i32> [ %broadcast.splat1867, %vector.ph1864 ], [ %i.bxy, %vector.body1868 ]
  %vec.phi1871 = phi <8 x i32> [ %broadcast.splat1867, %vector.ph1864 ], [ %i.bxz, %vector.body1868 ]
  %vec.phi1872 = phi <8 x i32> [ %broadcast.splat1867, %vector.ph1864 ], [ %i.bya, %vector.body1868 ]
  %vec.phi1873 = phi <8 x i32> [ %broadcast.splat1867, %vector.ph1864 ], [ %i.byb, %vector.body1868 ]
  %i.bxm = mul i64 %index1869, 12                 ; 4 uses
  %next.gep1874 = getelementptr i8, ptr %.val.i58.i, i64 %i.bxm
  %i.bxn = getelementptr i8, ptr %.val.i58.i, i64 %i.bxm
  %i.bxo = getelementptr i8, ptr %.val.i58.i, i64 %i.bxm
  %i.bxp = getelementptr i8, ptr %.val.i58.i, i64 %i.bxm
  %i.bxq = getelementptr inbounds nuw i8, ptr %next.gep1874, i64 4
  %i.bxr = getelementptr i8, ptr %i.bxn, i64 100
  %i.bxs = getelementptr i8, ptr %i.bxo, i64 196
  %i.bxt = getelementptr i8, ptr %i.bxp, i64 292
  %wide.vec1878.a = load <24 x i32>, ptr %i.bxq, align 4, !tbaa !101 ; 2 uses
  %strided.vec1879.a = shufflevector <24 x i32> %wide.vec1878.a, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1880.a = shufflevector <24 x i32> %wide.vec1878.a, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1881.a = load <24 x i32>, ptr %i.bxr, align 4, !tbaa !101 ; 2 uses
  %strided.vec1882.a = shufflevector <24 x i32> %wide.vec1881.a, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1883.a = shufflevector <24 x i32> %wide.vec1881.a, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1884 = load <24 x i32>, ptr %i.bxs, align 4, !tbaa !101 ; 2 uses
  %strided.vec1885 = shufflevector <24 x i32> %wide.vec1884, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1886 = shufflevector <24 x i32> %wide.vec1884, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1887 = load <24 x i32>, ptr %i.bxt, align 4, !tbaa !101 ; 2 uses
  %strided.vec1888 = shufflevector <24 x i32> %wide.vec1887, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1889 = shufflevector <24 x i32> %wide.vec1887, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.bxu = add nsw <8 x i32> %strided.vec1880.a, %strided.vec1879.a
  %i.bxv = add nsw <8 x i32> %strided.vec1883.a, %strided.vec1882.a
  %i.bxw = add nsw <8 x i32> %strided.vec1886, %strided.vec1885
  %i.bxx = add nsw <8 x i32> %strided.vec1889, %strided.vec1888
  %i.bxy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1870, <8 x i32> %i.bxu) ; 2 uses
  %i.bxz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1871, <8 x i32> %i.bxv) ; 2 uses
  %i.bya = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1872, <8 x i32> %i.bxw) ; 2 uses
  %i.byb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1873, <8 x i32> %i.bxx) ; 2 uses
  %index.next1890 = add nuw i64 %index1869, 32    ; 2 uses
  %i.byc = icmp eq i64 %index.next1890, %n.vec1865
  br i1 %i.byc, label %vec.epilog.iter.check1900, label %vector.body1868, !llvm.loop !668

vec.epilog.iter.check1900:                        ; preds = %vector.body1868
  %rdx.minmax1892 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bxy, <8 x i32> %i.bxz)
  %rdx.minmax1893 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1892, <8 x i32> %i.bya)
  %rdx.minmax1894 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1893, <8 x i32> %i.byb)
  %i.byd = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1894) ; 2 uses
  %min.epilog.iters.check1901 = icmp samesign ult i64 %i.bxj, 9
  br i1 %min.epilog.iters.check1901, label %.lr.ph.i529.preheader, label %vec.epilog.ph1902, !prof !126

vec.epilog.ph1902:                                ; preds = %vector.main.loop.iter.check1862, %vec.epilog.iter.check1900
  %vec.epilog.resume.val1895 = phi i64 [ %n.vec1865, %vec.epilog.iter.check1900 ], [ 0, %vector.main.loop.iter.check1862 ]
  %bc.merge.rdx1897 = phi i32 [ %i.byd, %vec.epilog.iter.check1900 ], [ %i.bxc, %vector.main.loop.iter.check1862 ]
  %broadcast.splatinsert1899 = insertelement <8 x i32> poison, i32 %bc.merge.rdx1897, i64 0
  %broadcast.splat1900 = shufflevector <8 x i32> %broadcast.splatinsert1899, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bye = and i64 %i.bxg, 7                      ; 2 uses
  %i.byf = icmp eq i64 %i.bye, 0
  %i.byg = select i1 %i.byf, i64 8, i64 %i.bye
  %n.vec1903 = sub nsw i64 %i.bxg, %i.byg         ; 2 uses
  %i.byh = mul i64 %n.vec1903, 12
  %i.byi = getelementptr i8, ptr %.val.i58.i, i64 %i.byh
  br label %vec.epilog.vector.body1906

vec.epilog.vector.body1906:                       ; preds = %vec.epilog.vector.body1906, %vec.epilog.ph1902
  %index1907 = phi i64 [ %vec.epilog.resume.val1895, %vec.epilog.ph1902 ], [ %index.next1913, %vec.epilog.vector.body1906 ] ; 2 uses
  %vec.phi1908 = phi <8 x i32> [ %broadcast.splat1900, %vec.epilog.ph1902 ], [ %i.bym, %vec.epilog.vector.body1906 ]
  %i.byj = mul i64 %index1907, 12
  %next.gep1909 = getelementptr i8, ptr %.val.i58.i, i64 %i.byj
  %i.byk = getelementptr inbounds nuw i8, ptr %next.gep1909, i64 4
  %wide.vec1910 = load <24 x i32>, ptr %i.byk, align 4, !tbaa !101 ; 2 uses
  %strided.vec1911 = shufflevector <24 x i32> %wide.vec1910, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1912 = shufflevector <24 x i32> %wide.vec1910, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.byl = add nsw <8 x i32> %strided.vec1912, %strided.vec1911
  %i.bym = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1908, <8 x i32> %i.byl) ; 2 uses
  %index.next1913 = add nuw i64 %index1907, 8     ; 2 uses
  %i.byn = icmp eq i64 %index.next1913, %n.vec1903
  br i1 %i.byn, label %vec.epilog.middle.block1914, label %vec.epilog.vector.body1906, !llvm.loop !669

vec.epilog.middle.block1914:                      ; preds = %vec.epilog.vector.body1906
  %i.byo = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.bym)
  br label %.lr.ph.i529.preheader

.lr.ph.i529.preheader:                            ; preds = %iter.check1898, %vec.epilog.iter.check1900, %vec.epilog.middle.block1914
  %.08.i530.ph = phi ptr [ %.val.i58.i, %iter.check1898 ], [ %i.bxl, %vec.epilog.iter.check1900 ], [ %i.byi, %vec.epilog.middle.block1914 ]
  %.057.i531.ph = phi i32 [ %i.bxc, %iter.check1898 ], [ %i.byd, %vec.epilog.iter.check1900 ], [ %i.byo, %vec.epilog.middle.block1914 ]
  br label %.lr.ph.i529

.lr.ph.i529:                                      ; preds = %.lr.ph.i529.preheader, %.lr.ph.i529
  %.08.i530 = phi ptr [ %i.byu, %.lr.ph.i529 ], [ %.08.i530.ph, %.lr.ph.i529.preheader ] ; 3 uses
  %.057.i531 = phi i32 [ %.sroa.speculated.i532, %.lr.ph.i529 ], [ %.057.i531.ph, %.lr.ph.i529.preheader ]
  %i.byp = getelementptr inbounds nuw i8, ptr %.08.i530, i64 4
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !128
  %i.byr = getelementptr inbounds nuw i8, ptr %.08.i530, i64 8
  %i.bys = load i32, ptr %i.byr, align 4, !tbaa !129
  %i.byt = add nsw i32 %i.bys, %i.byq
  %.sroa.speculated.i532 = call i32 @llvm.smax.i32(i32 %.057.i531, i32 %i.byt) ; 2 uses
  %i.byu = getelementptr inbounds nuw i8, ptr %.08.i530, i64 12 ; 2 uses
  %.not.i533 = icmp eq ptr %i.byu, %.val116.i.i
  br i1 %.not.i533, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit536, label %.lr.ph.i529, !llvm.loop !670

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit536: ; preds = %.lr.ph.i529, %.noexc151
  %.05.lcssa.i535 = phi i32 [ %i.bxc, %.noexc151 ], [ %.sroa.speculated.i532, %.lr.ph.i529 ] ; 4 uses
  store i32 %.05.lcssa.i535, ptr %i.h, align 4, !tbaa !101
  %i.byv = getelementptr inbounds nuw i8, ptr %i.bwz, i64 40
  %i.byw = load ptr, ptr %i.byv, align 8, !tbaa !156 ; 3 uses
  br i1 %4, label %bb.mk, label %bb.oc

bb.mk:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit536
  %i.byx = load ptr, ptr %i.bxa, align 8, !tbaa !88
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 192
  %i.byz = load ptr, ptr %i.byy, align 8
  invoke void %i.byz(ptr noundef nonnull align 8 dereferenceable(94) %i.bxa, i32 noundef %.05.lcssa.i535, i1 noundef zeroext true)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc152:                                        ; preds = %bb.mk
  %i.bza = load ptr, ptr %3, align 8, !tbaa !67   ; 2 uses
  %i.bzb = load ptr, ptr %i.bza, align 8, !tbaa !88
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.bzb, i64 360
  %i.bzd = load ptr, ptr %i.bzc, align 8
  invoke void %i.bzd(ptr noundef nonnull align 8 dereferenceable(94) %i.bza, ptr noundef null)
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc153:                                        ; preds = %.noexc152
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #30
  %i.bze = load i32, ptr %i.h, align 4, !tbaa !101
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.bzf = load i32, ptr %i.bxb, align 8, !tbaa !102, !noalias !816
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bxa, i64 48 ; 2 uses
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !83, !noalias !816
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bxa, i64 96 ; 2 uses
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bxa, i64 104
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.bzf, i32 noundef %i.bze, ptr noundef %i.bzh, ptr noundef nonnull align 8 dereferenceable(8) %i.bzi, ptr noundef nonnull %i.bzj)
          to label %.noexc526 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc526:                                        ; preds = %.noexc153
  %i.bzk = load ptr, ptr %i.bzi, align 8, !tbaa !132, !noalias !816, !nonnull !62, !noundef !62 ; 2 uses
  store ptr %i.bzk, ptr %73, align 8, !tbaa !132, !alias.scope !816
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzk, i64 40
  %i.bzm = atomicrmw add ptr %i.bzl, i32 1 acq_rel, align 4, !noalias !816 ; 0 uses
  %.pre795 = load ptr, ptr %73, align 8, !tbaa !132 ; 2 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %.pre795, i64 44
  %i.bzo = load i8, ptr %i.bzn, align 4, !tbaa !138
  %i.bzp = and i8 %i.bzo, 2
  %.not.i522 = icmp eq i8 %i.bzp, 0
  br i1 %.not.i522, label %bb.mm, label %bb.ml, !prof !85

bb.ml:                                            ; preds = %.noexc526
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc523 unwind label %bb.nd

.noexc523:                                        ; preds = %bb.ml
  unreachable

bb.mm:                                            ; preds = %.noexc526
  %i.bzq = getelementptr inbounds nuw i8, ptr %.pre795, i64 16
  %i.bzr = load ptr, ptr %i.bzq, align 8, !tbaa !139 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #30
  %i.bzs = load i32, ptr %i.h, align 4, !tbaa !101
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.bzt = load i32, ptr %i.bxb, align 8, !tbaa !102, !noalias !817
  %i.bzu = load ptr, ptr %i.bzg, align 8, !tbaa !83, !noalias !817
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bxa, i64 112 ; 2 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bxa, i64 120
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.bzt, i32 noundef %i.bzs, ptr noundef %i.bzu, ptr noundef nonnull align 8 dereferenceable(8) %i.bzv, ptr noundef nonnull %i.bzw)
          to label %.noexc520 unwind label %bb.ne

.noexc520:                                        ; preds = %bb.mm
  %i.bzx = load ptr, ptr %i.bzv, align 8, !tbaa !132, !noalias !817, !nonnull !62, !noundef !62 ; 2 uses
  store ptr %i.bzx, ptr %74, align 8, !tbaa !132, !alias.scope !817
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 40
  %i.bzz = atomicrmw add ptr %i.bzy, i32 1 acq_rel, align 4, !noalias !817 ; 0 uses
  %.pre796 = load ptr, ptr %74, align 8, !tbaa !132 ; 2 uses
  %i.caa = getelementptr inbounds nuw i8, ptr %.pre796, i64 44
  %i.cab = load i8, ptr %i.caa, align 4, !tbaa !138
  %i.cac = and i8 %i.cab, 2
  %.not.i516 = icmp eq i8 %i.cac, 0
  br i1 %.not.i516, label %bb.mo, label %bb.mn, !prof !85

bb.mn:                                            ; preds = %.noexc520
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc517 unwind label %bb.nf

.noexc517:                                        ; preds = %bb.mn
  unreachable

bb.mo:                                            ; preds = %.noexc520
  %i.cad = getelementptr inbounds nuw i8, ptr %.pre796, i64 16
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !139 ; 2 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.bxa, i64 128 ; 2 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bxa, i64 136
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !91 ; 4 uses
  %.not.i.i514 = icmp eq ptr %i.cah, null         ; 2 uses
  br i1 %.not.i.i514, label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit515, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 8
  %i.caj = load atomic i32, ptr %i.cai monotonic, align 8
  %i.cak = icmp eq i32 %i.caj, 1
  br label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit515

_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit515: ; preds = %bb.mo, %bb.mp
  %i.cal = phi i1 [ %i.cak, %bb.mp ], [ false, %bb.mo ] ; 2 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.bxa, i64 144 ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.bxa, i64 152 ; 2 uses
  %i.cao = load ptr, ptr %i.can, align 8, !tbaa !91 ; 2 uses
  %.not.i.i512 = icmp eq ptr %i.cao, null
  br i1 %.not.i.i512, label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit513, label %bb.mq

bb.mq:                                            ; preds = %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit515
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cao, i64 8
  %i.caq = load atomic i32, ptr %i.cap monotonic, align 8
  %i.car = icmp eq i32 %i.caq, 1
  br label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit513

_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit513: ; preds = %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit515, %bb.mq
  %i.cas = phi i1 [ %i.car, %bb.mq ], [ false, %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit515 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #30
  %i.cat = load ptr, ptr %i.caf, align 8, !tbaa !67
  store ptr %i.cat, ptr %75, align 8, !tbaa !67
  %i.cau = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr %i.cah, ptr %i.cau, align 8, !tbaa !91
  br i1 %.not.i.i514, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit511, label %bb.mr

bb.mr:                                            ; preds = %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit513
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cah, i64 8 ; 3 uses
  %i.caw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i510 = icmp eq i8 %i.caw, 0
  br i1 %.not.i.i.i.i510, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.cax = load i32, ptr %i.cav, align 4, !tbaa !101
  %i.cay = add nsw i32 %i.cax, 1
  store i32 %i.cay, ptr %i.cav, align 4, !tbaa !101
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit511

bb.mt:                                            ; preds = %bb.mr
  %i.caz = atomicrmw volatile add ptr %i.cav, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit511

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit511: ; preds = %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit513, %bb.ms, %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #30
  %i.cba = load ptr, ptr %i.cam, align 8, !tbaa !67 ; 3 uses
  store ptr %i.cba, ptr %76, align 8, !tbaa !67
  %i.cbb = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.cbc = load ptr, ptr %i.can, align 8, !tbaa !91 ; 3 uses
  store ptr %i.cbc, ptr %i.cbb, align 8, !tbaa !91
  %.not.i.i.i506 = icmp eq ptr %i.cbc, null
  br i1 %.not.i.i.i506, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit508, label %bb.mu

bb.mu:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit511
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 8 ; 3 uses
  %i.cbe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i507 = icmp eq i8 %i.cbe, 0
  br i1 %.not.i.i.i.i507, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.cbf = load i32, ptr %i.cbd, align 4, !tbaa !101
  %i.cbg = add nsw i32 %i.cbf, 1
  store i32 %i.cbg, ptr %i.cbd, align 4, !tbaa !101
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit508

bb.mw:                                            ; preds = %bb.mu
  %i.cbh = atomicrmw volatile add ptr %i.cbd, i32 1 acq_rel, align 4 ; 0 uses
  %.pre797 = load ptr, ptr %76, align 8, !tbaa !67
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit508

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
  br label %bb.pd

bb.pc:                                            ; preds = %bb.oo
  %i.chf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #30
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %.pn.i61.i = phi { ptr, i32 } [ %i.chf, %bb.pc ], [ %i.che, %bb.pb ] ; 2 uses
  %.not.i.i.i476 = icmp eq ptr %i.cfn, null
  br i1 %.not.i.i.i476, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit477, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.chg = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.chh = load ptr, ptr %i.chg, align 8, !tbaa !147
  %i.chi = ptrtoint ptr %i.chh to i64
  %i.chj = sub i64 %i.chi, %i.cfr
  call void @_ZdlPvm(ptr noundef nonnull %i.cfn, i64 noundef %i.chj) #34
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit477

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit477: ; preds = %bb.pe, %bb.pd, %bb.pa
  %.pn.pn.i60.i = phi { ptr, i32 } [ %i.chd, %bb.pa ], [ %.pn.i61.i, %bb.pd ], [ %.pn.i61.i, %bb.pe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #30
  br label %bb.pl

bb.pf:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit481
  %i.chk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit475

bb.pg:                                            ; preds = %bb.or
  %i.chl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #30
  br label %bb.pj

bb.ph:                                            ; preds = %bb.os
  %i.chm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #30
  br label %bb.pj

bb.pi:                                            ; preds = %bb.ot
  %i.chn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #30
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.ph, %bb.pg
  %.pn96.i.i = phi { ptr, i32 } [ %i.chn, %bb.pi ], [ %i.chm, %bb.ph ], [ %i.chl, %bb.pg ] ; 2 uses
  %.not.i.i.i474 = icmp eq ptr %i.cgi, null
  br i1 %.not.i.i.i474, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit475, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.cho = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.chp = load ptr, ptr %i.cho, align 8, !tbaa !147
  %i.chq = ptrtoint ptr %i.chp to i64
  %i.chr = sub i64 %i.chq, %i.cgm
  call void @_ZdlPvm(ptr noundef nonnull %i.cgi, i64 noundef %i.chr) #34
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit475

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit475: ; preds = %bb.pk, %bb.pj, %bb.pf
  %.pn96.pn.i.i = phi { ptr, i32 } [ %i.chk, %bb.pf ], [ %.pn96.i.i, %bb.pj ], [ %.pn96.i.i, %bb.pk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #30
  br label %bb.pl

bb.pl:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit475, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit477
  %.pn96.pn.pn.i.i = phi { ptr, i32 } [ %.pn96.pn.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit475 ], [ %.pn.pn.i60.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit477 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %88) #30, !inline_history !675
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #30
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %87) #30, !inline_history !675
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #30
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.oz
  %.pn96.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn96.pn.pn.i.i, %bb.pl ], [ %i.chc, %bb.oz ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %86) #30, !inline_history !675
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.oy
  %.pn96.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn96.pn.pn.pn.i.i, %bb.pm ], [ %i.chb, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #30
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.ox
  %.pn96.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.i.i, %bb.pn ], [ %i.cha, %bb.ox ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #30, !inline_history !675
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.ow
  %.pn96.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn.i.i, %bb.po ], [ %i.cgz, %bb.ow ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #30
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.of
  %.pn96.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn.pn.i.i, %bb.pp ], [ %i.ced, %bb.of ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %83) #30, !inline_history !675
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #30
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.ob
  %.pn108.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn.pn.i.i, %bb.ob ], [ %.pn96.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.pq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %.body149

_ZN8facebook5velox12_GLOBAL__N_111copyIntoMapERKNS0_24EncodedVectorCopyOptionsERKNS0_9MapVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERSt10shared_ptrISA_Eb.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit479, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %_ZN8facebook5velox12_GLOBAL__N_115copyIntoComplexERKNS0_24EncodedVectorCopyOptionsERNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS8_9CopyRangeEEERS9_b.exit

bb.ps:                                            ; preds = %bb.lq
  %i.chs = load ptr, ptr %129, align 8, !tbaa !67
  %i.cht = invoke noundef ptr @_ZN8facebook5velox10BaseVector9asCheckedINS0_11ArrayVectorEEEPT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.chs)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661 ; 5 uses

.noexc155:                                        ; preds = %bb.ps
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.chu = load ptr, ptr %3, align 8, !tbaa !67   ; 17 uses
  %i.chv = getelementptr inbounds nuw i8, ptr %i.chu, i64 56 ; 7 uses
  %i.chw = load i32, ptr %i.chv, align 8, !tbaa !102 ; 5 uses
  %.val.i63.i = load ptr, ptr %2, align 8, !tbaa !94 ; 10 uses
  %.val97.i.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 3 uses
  %.not6.i = icmp eq ptr %.val.i63.i, %.val97.i.i
  br i1 %.not6.i, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %iter.check1840

iter.check1840:                                   ; preds = %.noexc155
  %.val97.i.i1801 = ptrtoaddr ptr %.val97.i.i to i64
  %.val.i63.i1802 = ptrtoaddr ptr %.val.i63.i to i64
  %i.chx = add i64 %.val97.i.i1801, -12
  %i.chy = sub i64 %i.chx, %.val.i63.i1802        ; 3 uses
  %i.chz = udiv i64 %i.chy, 12
  %i.cia = add nuw nsw i64 %i.chz, 1              ; 4 uses
  %min.iters.check1803 = icmp ult i64 %i.chy, 96
  br i1 %min.iters.check1803, label %.lr.ph.i470.preheader, label %vector.main.loop.iter.check1804

vector.main.loop.iter.check1804:                  ; preds = %iter.check1840
  %min.iters.check1805 = icmp ult i64 %i.chy, 384
  br i1 %min.iters.check1805, label %vec.epilog.ph1844, label %vector.ph1806

vector.ph1806:                                    ; preds = %vector.main.loop.iter.check1804
  %i.cib = and i64 %i.cia, 31                     ; 2 uses
  %i.cic = icmp eq i64 %i.cib, 0
  %i.cid = select i1 %i.cic, i64 32, i64 %i.cib   ; 2 uses
  %n.vec1807 = sub nsw i64 %i.cia, %i.cid         ; 3 uses
  %i.cie = mul i64 %n.vec1807, 12
  %i.cif = getelementptr i8, ptr %.val.i63.i, i64 %i.cie
  %broadcast.splatinsert1808 = insertelement <8 x i32> poison, i32 %i.chw, i64 0
  %broadcast.splat1809 = shufflevector <8 x i32> %broadcast.splatinsert1808, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1810

vector.body1810:                                  ; preds = %vector.ph1806, %vector.body1810
  %index1811 = phi i64 [ 0, %vector.ph1806 ], [ %index.next1832, %vector.body1810 ] ; 2 uses
  %vec.phi1812 = phi <8 x i32> [ %broadcast.splat1809, %vector.ph1806 ], [ %i.cis, %vector.body1810 ]
  %vec.phi1813 = phi <8 x i32> [ %broadcast.splat1809, %vector.ph1806 ], [ %i.cit, %vector.body1810 ]
  %vec.phi1814 = phi <8 x i32> [ %broadcast.splat1809, %vector.ph1806 ], [ %i.ciu, %vector.body1810 ]
  %vec.phi1815 = phi <8 x i32> [ %broadcast.splat1809, %vector.ph1806 ], [ %i.civ, %vector.body1810 ]
  %i.cig = mul i64 %index1811, 12                 ; 4 uses
  %next.gep1816 = getelementptr i8, ptr %.val.i63.i, i64 %i.cig
  %i.cih = getelementptr i8, ptr %.val.i63.i, i64 %i.cig
  %i.cii = getelementptr i8, ptr %.val.i63.i, i64 %i.cig
  %i.cij = getelementptr i8, ptr %.val.i63.i, i64 %i.cig
  %i.cik = getelementptr inbounds nuw i8, ptr %next.gep1816, i64 4
  %i.cil = getelementptr i8, ptr %i.cih, i64 100
  %i.cim = getelementptr i8, ptr %i.cii, i64 196
  %i.cin = getelementptr i8, ptr %i.cij, i64 292
  %wide.vec1820 = load <24 x i32>, ptr %i.cik, align 4, !tbaa !101 ; 2 uses
  %strided.vec1821 = shufflevector <24 x i32> %wide.vec1820, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1822.a = shufflevector <24 x i32> %wide.vec1820, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1823 = load <24 x i32>, ptr %i.cil, align 4, !tbaa !101 ; 2 uses
  %strided.vec1824 = shufflevector <24 x i32> %wide.vec1823, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1825.a = shufflevector <24 x i32> %wide.vec1823, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1826 = load <24 x i32>, ptr %i.cim, align 4, !tbaa !101 ; 2 uses
  %strided.vec1827 = shufflevector <24 x i32> %wide.vec1826, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1828 = shufflevector <24 x i32> %wide.vec1826, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1829 = load <24 x i32>, ptr %i.cin, align 4, !tbaa !101 ; 2 uses
  %strided.vec1830 = shufflevector <24 x i32> %wide.vec1829, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1831 = shufflevector <24 x i32> %wide.vec1829, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cio = add nsw <8 x i32> %strided.vec1822.a, %strided.vec1821
  %i.cip = add nsw <8 x i32> %strided.vec1825.a, %strided.vec1824
  %i.ciq = add nsw <8 x i32> %strided.vec1828, %strided.vec1827
  %i.cir = add nsw <8 x i32> %strided.vec1831, %strided.vec1830
  %i.cis = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1812, <8 x i32> %i.cio) ; 2 uses
  %i.cit = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1813, <8 x i32> %i.cip) ; 2 uses
  %i.ciu = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1814, <8 x i32> %i.ciq) ; 2 uses
  %i.civ = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1815, <8 x i32> %i.cir) ; 2 uses
  %index.next1832 = add nuw i64 %index1811, 32    ; 2 uses
  %i.ciw = icmp eq i64 %index.next1832, %n.vec1807
  br i1 %i.ciw, label %vec.epilog.iter.check1842, label %vector.body1810, !llvm.loop !684

vec.epilog.iter.check1842:                        ; preds = %vector.body1810
  %rdx.minmax1834 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cis, <8 x i32> %i.cit)
  %rdx.minmax1835 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1834, <8 x i32> %i.ciu)
  %rdx.minmax1836 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1835, <8 x i32> %i.civ)
  %i.cix = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1836) ; 2 uses
  %min.epilog.iters.check1843 = icmp samesign ult i64 %i.cid, 9
  br i1 %min.epilog.iters.check1843, label %.lr.ph.i470.preheader, label %vec.epilog.ph1844, !prof !126

vec.epilog.ph1844:                                ; preds = %vector.main.loop.iter.check1804, %vec.epilog.iter.check1842
  %vec.epilog.resume.val1837 = phi i64 [ %n.vec1807, %vec.epilog.iter.check1842 ], [ 0, %vector.main.loop.iter.check1804 ]
  %bc.merge.rdx1839 = phi i32 [ %i.cix, %vec.epilog.iter.check1842 ], [ %i.chw, %vector.main.loop.iter.check1804 ]
  %broadcast.splatinsert1842 = insertelement <8 x i32> poison, i32 %bc.merge.rdx1839, i64 0
  %broadcast.splat1843 = shufflevector <8 x i32> %broadcast.splatinsert1842, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ciy = and i64 %i.cia, 7                      ; 2 uses
  %i.ciz = icmp eq i64 %i.ciy, 0
  %i.cja = select i1 %i.ciz, i64 8, i64 %i.ciy
  %n.vec1845 = sub nsw i64 %i.cia, %i.cja         ; 2 uses
  %i.cjb = mul i64 %n.vec1845, 12
  %i.cjc = getelementptr i8, ptr %.val.i63.i, i64 %i.cjb
  br label %vec.epilog.vector.body1848

vec.epilog.vector.body1848:                       ; preds = %vec.epilog.vector.body1848, %vec.epilog.ph1844
  %index1849 = phi i64 [ %vec.epilog.resume.val1837, %vec.epilog.ph1844 ], [ %index.next1855, %vec.epilog.vector.body1848 ] ; 2 uses
  %vec.phi1850 = phi <8 x i32> [ %broadcast.splat1843, %vec.epilog.ph1844 ], [ %i.cjg, %vec.epilog.vector.body1848 ]
  %i.cjd = mul i64 %index1849, 12
  %next.gep1851 = getelementptr i8, ptr %.val.i63.i, i64 %i.cjd
  %i.cje = getelementptr inbounds nuw i8, ptr %next.gep1851, i64 4
  %wide.vec1852 = load <24 x i32>, ptr %i.cje, align 4, !tbaa !101 ; 2 uses
  %strided.vec1853 = shufflevector <24 x i32> %wide.vec1852, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1854 = shufflevector <24 x i32> %wide.vec1852, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cjf = add nsw <8 x i32> %strided.vec1854, %strided.vec1853
  %i.cjg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1850, <8 x i32> %i.cjf) ; 2 uses
  %index.next1855 = add nuw i64 %index1849, 8     ; 2 uses
  %i.cjh = icmp eq i64 %index.next1855, %n.vec1845
  br i1 %i.cjh, label %vec.epilog.middle.block1856, label %vec.epilog.vector.body1848, !llvm.loop !685

vec.epilog.middle.block1856:                      ; preds = %vec.epilog.vector.body1848
  %i.cji = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.cjg)
  br label %.lr.ph.i470.preheader

.lr.ph.i470.preheader:                            ; preds = %iter.check1840, %vec.epilog.iter.check1842, %vec.epilog.middle.block1856
  %.08.i.ph = phi ptr [ %.val.i63.i, %iter.check1840 ], [ %i.cif, %vec.epilog.iter.check1842 ], [ %i.cjc, %vec.epilog.middle.block1856 ]
  %.057.i.ph = phi i32 [ %i.chw, %iter.check1840 ], [ %i.cix, %vec.epilog.iter.check1842 ], [ %i.cji, %vec.epilog.middle.block1856 ]
  br label %.lr.ph.i470

.lr.ph.i470:                                      ; preds = %.lr.ph.i470.preheader, %.lr.ph.i470
  %.08.i = phi ptr [ %i.cjo, %.lr.ph.i470 ], [ %.08.i.ph, %.lr.ph.i470.preheader ] ; 3 uses
  %.057.i = phi i32 [ %.sroa.speculated.i471, %.lr.ph.i470 ], [ %.057.i.ph, %.lr.ph.i470.preheader ]
  %i.cjj = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.cjk = load i32, ptr %i.cjj, align 4, !tbaa !128
  %i.cjl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.cjm = load i32, ptr %i.cjl, align 4, !tbaa !129
  %i.cjn = add nsw i32 %i.cjm, %i.cjk
  %.sroa.speculated.i471 = call i32 @llvm.smax.i32(i32 %.057.i, i32 %i.cjn) ; 2 uses
  %i.cjo = getelementptr inbounds nuw i8, ptr %.08.i, i64 12 ; 2 uses
  %.not.i472 = icmp eq ptr %i.cjo, %.val97.i.i
  br i1 %.not.i472, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %.lr.ph.i470, !llvm.loop !686

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %.lr.ph.i470, %.noexc155
  %.05.lcssa.i = phi i32 [ %i.chw, %.noexc155 ], [ %.sroa.speculated.i471, %.lr.ph.i470 ] ; 4 uses
  store i32 %.05.lcssa.i, ptr %i.g, align 4, !tbaa !101
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cht, i64 40
  %i.cjq = load ptr, ptr %i.cjp, align 8, !tbaa !156 ; 3 uses
  br i1 %4, label %bb.pt, label %bb.rb

bb.pt:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  %i.cjr = load ptr, ptr %i.chu, align 8, !tbaa !88
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 192
  %i.cjt = load ptr, ptr %i.cjs, align 8
  invoke void %i.cjt(ptr noundef nonnull align 8 dereferenceable(94) %i.chu, i32 noundef %.05.lcssa.i, i1 noundef zeroext true)
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc156:                                        ; preds = %bb.pt
  %i.cju = load ptr, ptr %3, align 8, !tbaa !67   ; 2 uses
  %i.cjv = load ptr, ptr %i.cju, align 8, !tbaa !88
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjv, i64 360
  %i.cjx = load ptr, ptr %i.cjw, align 8
  invoke void %i.cjx(ptr noundef nonnull align 8 dereferenceable(94) %i.cju, ptr noundef null)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc157:                                        ; preds = %.noexc156
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  %i.cjy = load i32, ptr %i.g, align 4, !tbaa !101
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.cjz = load i32, ptr %i.chv, align 8, !tbaa !102, !noalias !822
  %i.cka = getelementptr inbounds nuw i8, ptr %i.chu, i64 48 ; 2 uses
  %i.ckb = load ptr, ptr %i.cka, align 8, !tbaa !83, !noalias !822
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.chu, i64 96 ; 2 uses
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.chu, i64 104
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.cjz, i32 noundef %i.cjy, ptr noundef %i.ckb, ptr noundef nonnull align 8 dereferenceable(8) %i.ckc, ptr noundef nonnull %i.ckd)
          to label %.noexc469 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc469:                                        ; preds = %.noexc157
  %i.cke = load ptr, ptr %i.ckc, align 8, !tbaa !132, !noalias !822, !nonnull !62, !noundef !62 ; 2 uses
  store ptr %i.cke, ptr %56, align 8, !tbaa !132, !alias.scope !822
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 40
  %i.ckg = atomicrmw add ptr %i.ckf, i32 1 acq_rel, align 4, !noalias !822 ; 0 uses
  %.pre791 = load ptr, ptr %56, align 8, !tbaa !132 ; 2 uses
  %i.ckh = getelementptr inbounds nuw i8, ptr %.pre791, i64 44
  %i.cki = load i8, ptr %i.ckh, align 4, !tbaa !138
  %i.ckj = and i8 %i.cki, 2
  %.not.i465 = icmp eq i8 %i.ckj, 0
  br i1 %.not.i465, label %bb.pv, label %bb.pu, !prof !85

bb.pu:                                            ; preds = %.noexc469
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc466 unwind label %bb.qg

.noexc466:                                        ; preds = %bb.pu
  unreachable

bb.pv:                                            ; preds = %.noexc469
  %i.ckk = getelementptr inbounds nuw i8, ptr %.pre791, i64 16
  %i.ckl = load ptr, ptr %i.ckk, align 8, !tbaa !139 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #30
  %i.ckm = load i32, ptr %i.g, align 4, !tbaa !101
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.ckn = load i32, ptr %i.chv, align 8, !tbaa !102, !noalias !823
  %i.cko = load ptr, ptr %i.cka, align 8, !tbaa !83, !noalias !823
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.chu, i64 112 ; 2 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.chu, i64 120
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.ckn, i32 noundef %i.ckm, ptr noundef %i.cko, ptr noundef nonnull align 8 dereferenceable(8) %i.ckp, ptr noundef nonnull %i.ckq)
          to label %.noexc464 unwind label %bb.qh

.noexc464:                                        ; preds = %bb.pv
  %i.ckr = load ptr, ptr %i.ckp, align 8, !tbaa !132, !noalias !823, !nonnull !62, !noundef !62 ; 2 uses
  store ptr %i.ckr, ptr %57, align 8, !tbaa !132, !alias.scope !823
  %i.cks = getelementptr inbounds nuw i8, ptr %i.ckr, i64 40
  %i.ckt = atomicrmw add ptr %i.cks, i32 1 acq_rel, align 4, !noalias !823 ; 0 uses
  %.pre792 = load ptr, ptr %57, align 8, !tbaa !132 ; 2 uses
  %i.cku = getelementptr inbounds nuw i8, ptr %.pre792, i64 44
  %i.ckv = load i8, ptr %i.cku, align 4, !tbaa !138
  %i.ckw = and i8 %i.ckv, 2
  %.not.i460 = icmp eq i8 %i.ckw, 0
  br i1 %.not.i460, label %bb.px, label %bb.pw, !prof !85

bb.pw:                                            ; preds = %.noexc464
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc461 unwind label %bb.qi

.noexc461:                                        ; preds = %bb.pw
  unreachable

bb.px:                                            ; preds = %.noexc464
  %i.ckx = getelementptr inbounds nuw i8, ptr %.pre792, i64 16
  %i.cky = load ptr, ptr %i.ckx, align 8, !tbaa !139 ; 2 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.chu, i64 128 ; 3 uses
  %i.cla = getelementptr inbounds nuw i8, ptr %i.chu, i64 136
  %i.clb = load ptr, ptr %i.cla, align 8, !tbaa !91 ; 3 uses
  %.not.i.i459 = icmp eq ptr %i.clb, null
  br i1 %.not.i.i459, label %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread, label %bb.py

_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread: ; preds = %bb.px
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  %i.clc = load ptr, ptr %i.ckz, align 8, !tbaa !67 ; 2 uses
  store ptr %i.clc, ptr %58, align 8, !tbaa !67
  %i.cld = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr null, ptr %i.cld, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit458

bb.py:                                            ; preds = %bb.px
  %i.cle = getelementptr inbounds nuw i8, ptr %i.clb, i64 8 ; 4 uses
  %i.clf = load atomic i32, ptr %i.cle monotonic, align 8
  %i.clg = icmp eq i32 %i.clf, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  %i.clh = load ptr, ptr %i.ckz, align 8, !tbaa !67 ; 2 uses
  store ptr %i.clh, ptr %58, align 8, !tbaa !67
  %i.cli = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %i.clb, ptr %i.cli, align 8, !tbaa !91
  %i.clj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i457 = icmp eq i8 %i.clj, 0
  br i1 %.not.i.i.i.i457, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.clk = load i32, ptr %i.cle, align 8, !tbaa !101
  %i.cll = add nsw i32 %i.clk, 1
  store i32 %i.cll, ptr %i.cle, align 8, !tbaa !101
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit458

bb.qa:                                            ; preds = %bb.py
  %i.clm = atomicrmw volatile add ptr %i.cle, i32 1 acq_rel, align 4 ; 0 uses
  %.pre793 = load ptr, ptr %58, align 8, !tbaa !67
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit458

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit458: ; preds = %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread, %bb.pz, %bb.qa
  %i.cln = phi ptr [ %i.clc, %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread ], [ %.pre793, %bb.qa ], [ %i.clh, %bb.pz ]
  %i.clo = phi i1 [ false, %_ZNKSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread ], [ %i.clg, %bb.qa ], [ %i.clg, %bb.pz ] ; 2 uses
  %i.clp = getelementptr inbounds nuw i8, ptr %i.cln, i64 56
  %i.clq = load i32, ptr %i.clp, align 8, !tbaa !102
  %i.clr = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox12_GLOBAL__N_117needCompactNestedERKNS0_24EncodedVectorCopyOptionsERKNS0_15ArrayVectorBaseEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.chu, i32 noundef %i.clq)
          to label %bb.qb unwind label %bb.qj, !inline_history !691

bb.qb:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit458
  br i1 %i.clr, label %bb.qc, label %bb.qn

bb.qc:                                            ; preds = %bb.qb
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !824
  store i32 0, ptr %10, align 4, !tbaa !154, !noalias !824
  %i.cls = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.cls, align 4, !tbaa !128, !noalias !824
  %i.clt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.clu = load i32, ptr %i.chv, align 8, !tbaa !102, !noalias !824
  store i32 %i.clu, ptr %i.clt, align 4, !tbaa !129, !noalias !824
  %i.clv = getelementptr inbounds nuw i8, ptr %10, i64 12
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_114toNestedRangesERKNS0_15ArrayVectorBaseERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiSE_(ptr dead_on_unwind noalias nonnull writable align 8 %59, ptr noundef nonnull align 8 dereferenceable(128) %i.chu, ptr nonnull %10, ptr nonnull %i.clv, i32 noundef 0, ptr noundef %i.ckl, ptr noundef %i.cky)
          to label %bb.qd unwind label %bb.qk

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  %i.clw = load ptr, ptr %59, align 8, !tbaa !145 ; 7 uses
  %i.clx = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.cly = load ptr, ptr %i.clx, align 8, !tbaa !146
  %i.clz = ptrtoint ptr %i.cly to i64
  %i.cma = ptrtoint ptr %i.clw to i64             ; 3 uses
  %i.cmb = sub i64 %i.clz, %i.cma
  store ptr %i.clw, ptr %60, align 8, !tbaa !94
  %i.cmc = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.clw, i64 %i.cmb
  store ptr %i.cmd, ptr %i.cmc, align 8, !tbaa !95
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_119compactNestedVectorERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERSt10shared_ptrIS7_Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %58, i1 noundef zeroext %i.clo)
          to label %bb.qe unwind label %bb.ql, !inline_history !691

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
  %i.cqo = landingpad { ptr, i32 }
          cleanup
  br label %bb.sh

bb.rw:                                            ; preds = %bb.rk
  %i.cqp = landingpad { ptr, i32 }
          cleanup
  br label %bb.sg

bb.rx:                                            ; preds = %bb.rl
  %i.cqq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit430

bb.ry:                                            ; preds = %bb.rm
  %i.cqr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #30
  %.not.i.i.i429 = icmp eq ptr %i.cph, null
  br i1 %.not.i.i.i429, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit430, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.cqs = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.cqt = load ptr, ptr %i.cqs, align 8, !tbaa !147
  %i.cqu = ptrtoint ptr %i.cqt to i64
  %i.cqv = sub i64 %i.cqu, %i.cpl
  call void @_ZdlPvm(ptr noundef nonnull %i.cph, i64 noundef %i.cqv) #34
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit430

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit430: ; preds = %bb.rz, %bb.ry, %bb.rx
  %.pn.i65.i = phi { ptr, i32 } [ %i.cqq, %bb.rx ], [ %i.cqr, %bb.ry ], [ %i.cqr, %bb.rz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #30
  br label %bb.sf

bb.sa:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit434
  %i.cqw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit428

bb.sb:                                            ; preds = %bb.rp
  %i.cqx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  br label %bb.sd

bb.sc:                                            ; preds = %bb.rq
  %i.cqy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sb
  %.pn78.i.i = phi { ptr, i32 } [ %i.cqy, %bb.sc ], [ %i.cqx, %bb.sb ] ; 2 uses
  %.not.i.i.i427 = icmp eq ptr %i.cpx, null
  br i1 %.not.i.i.i427, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit428, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.cqz = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.cra = load ptr, ptr %i.cqz, align 8, !tbaa !147
  %i.crb = ptrtoint ptr %i.cra to i64
  %i.crc = sub i64 %i.crb, %i.cqb
  call void @_ZdlPvm(ptr noundef nonnull %i.cpx, i64 noundef %i.crc) #34
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit428

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit428: ; preds = %bb.se, %bb.sd, %bb.sa
  %.pn78.pn.i.i = phi { ptr, i32 } [ %i.cqw, %bb.sa ], [ %.pn78.i.i, %bb.sd ], [ %.pn78.i.i, %bb.se ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #30
  br label %bb.sf

bb.sf:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit428, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit430
  %.pn78.pn.pn.i.i = phi { ptr, i32 } [ %.pn78.pn.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit428 ], [ %.pn.i65.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit430 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #30, !inline_history !691
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #30
  br label %bb.sg

bb.sg:                                            ; preds = %bb.sf, %bb.rw
  %.pn78.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn78.pn.pn.i.i, %bb.sf ], [ %i.cqp, %bb.rw ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #30, !inline_history !691
  br label %bb.sh

bb.sh:                                            ; preds = %bb.sg, %bb.rv
  %.pn78.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn78.pn.pn.pn.i.i, %bb.sg ], [ %i.cqo, %bb.rv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #30
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.ru
  %.pn78.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn78.pn.pn.pn.pn.i.i, %bb.sh ], [ %i.cqn, %bb.ru ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #30, !inline_history !691
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.rt
  %.pn78.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn78.pn.pn.pn.pn.pn.i.i, %bb.si ], [ %i.cqm, %bb.rt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #30
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.re
  %.pn78.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn78.pn.pn.pn.pn.pn.pn.i.i, %bb.sj ], [ %i.cnx, %bb.re ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #30, !inline_history !691
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %bb.ra
  %.pn89.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn.pn.i.i, %bb.ra ], [ %.pn78.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.sk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.body149

_ZN8facebook5velox12_GLOBAL__N_113copyIntoArrayERKNS0_24EncodedVectorCopyOptionsERKNS0_11ArrayVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERSt10shared_ptrISA_Eb.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit432, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %_ZN8facebook5velox12_GLOBAL__N_115copyIntoComplexERKNS0_24EncodedVectorCopyOptionsERNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS8_9CopyRangeEEERS9_b.exit

bb.sm:                                            ; preds = %bb.lq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_115copyIntoComplexERKNS0_24EncodedVectorCopyOptionsERNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS8_9CopyRangeEEERS9_bE18veloxCheckFailArgs) #33
          to label %.noexc159 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !661

.noexc159:                                        ; preds = %bb.sm
  unreachable

bb.sn:                                            ; preds = %bb.lp
  %i.crd = getelementptr inbounds nuw i8, ptr %i.bsd, i64 56
  %i.cre = load i32, ptr %i.crd, align 8, !tbaa !102 ; 4 uses
  %.val.i134 = load ptr, ptr %2, align 8, !tbaa !94 ; 10 uses
  %.val53.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 3 uses
  %.not6.i.i = icmp eq ptr %.val.i134, %.val53.i
  br i1 %.not6.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i, label %iter.check1714

iter.check1714:                                   ; preds = %bb.sn
  %.val53.i1675 = ptrtoaddr ptr %.val53.i to i64
  %.val.i1341676 = ptrtoaddr ptr %.val.i134 to i64
  %i.crf = add i64 %.val53.i1675, -12
  %i.crg = sub i64 %i.crf, %.val.i1341676         ; 3 uses
  %i.crh = udiv i64 %i.crg, 12
  %i.cri = add nuw nsw i64 %i.crh, 1              ; 4 uses
  %min.iters.check1677.a = icmp ult i64 %i.crg, 96
  br i1 %min.iters.check1677.a, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1678

vector.main.loop.iter.check1678:                  ; preds = %iter.check1714
  %min.iters.check1679 = icmp ult i64 %i.crg, 384
  br i1 %min.iters.check1679, label %vec.epilog.ph1718, label %vector.ph1680

vector.ph1680:                                    ; preds = %vector.main.loop.iter.check1678
  %i.crj = and i64 %i.cri, 31                     ; 2 uses
  %i.crk = icmp eq i64 %i.crj, 0
  %i.crl = select i1 %i.crk, i64 32, i64 %i.crj   ; 2 uses
  %n.vec1681 = sub nsw i64 %i.cri, %i.crl         ; 3 uses
  %i.crm = mul i64 %n.vec1681, 12
  %i.crn = getelementptr i8, ptr %.val.i134, i64 %i.crm
  %broadcast.splatinsert1682 = insertelement <8 x i32> poison, i32 %i.cre, i64 0
  %broadcast.splat1683 = shufflevector <8 x i32> %broadcast.splatinsert1682, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1684

vector.body1684:                                  ; preds = %vector.ph1680, %vector.body1684
  %index1685 = phi i64 [ 0, %vector.ph1680 ], [ %index.next1706, %vector.body1684 ] ; 2 uses
  %vec.phi1686.a = phi <8 x i32> [ %broadcast.splat1683, %vector.ph1680 ], [ %i.csa, %vector.body1684 ]
  %vec.phi1687.a = phi <8 x i32> [ %broadcast.splat1683, %vector.ph1680 ], [ %i.csb, %vector.body1684 ]
  %vec.phi1688 = phi <8 x i32> [ %broadcast.splat1683, %vector.ph1680 ], [ %i.csc, %vector.body1684 ]
  %vec.phi1689 = phi <8 x i32> [ %broadcast.splat1683, %vector.ph1680 ], [ %i.csd, %vector.body1684 ]
  %i.cro = mul i64 %index1685, 12                 ; 4 uses
  %next.gep1690 = getelementptr i8, ptr %.val.i134, i64 %i.cro
  %i.crp = getelementptr i8, ptr %.val.i134, i64 %i.cro
  %i.crq = getelementptr i8, ptr %.val.i134, i64 %i.cro
  %i.crr = getelementptr i8, ptr %.val.i134, i64 %i.cro
  %i.crs = getelementptr inbounds nuw i8, ptr %next.gep1690, i64 4
  %i.crt = getelementptr i8, ptr %i.crp, i64 100
  %i.cru = getelementptr i8, ptr %i.crq, i64 196
  %i.crv = getelementptr i8, ptr %i.crr, i64 292
  %wide.vec1694 = load <24 x i32>, ptr %i.crs, align 4, !tbaa !101 ; 2 uses
  %strided.vec1695 = shufflevector <24 x i32> %wide.vec1694, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1696.a = shufflevector <24 x i32> %wide.vec1694, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1697 = load <24 x i32>, ptr %i.crt, align 4, !tbaa !101 ; 2 uses
  %strided.vec1698 = shufflevector <24 x i32> %wide.vec1697, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1699.a = shufflevector <24 x i32> %wide.vec1697, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1700 = load <24 x i32>, ptr %i.cru, align 4, !tbaa !101 ; 2 uses
  %strided.vec1701 = shufflevector <24 x i32> %wide.vec1700, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1702.a = shufflevector <24 x i32> %wide.vec1700, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec1703 = load <24 x i32>, ptr %i.crv, align 4, !tbaa !101 ; 2 uses
  %strided.vec1704 = shufflevector <24 x i32> %wide.vec1703, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1705 = shufflevector <24 x i32> %wide.vec1703, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.crw = add nsw <8 x i32> %strided.vec1696.a, %strided.vec1695
  %i.crx = add nsw <8 x i32> %strided.vec1699.a, %strided.vec1698
  %i.cry = add nsw <8 x i32> %strided.vec1702.a, %strided.vec1701
  %i.crz = add nsw <8 x i32> %strided.vec1705, %strided.vec1704
  %i.csa = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1686.a, <8 x i32> %i.crw) ; 2 uses
  %i.csb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1687.a, <8 x i32> %i.crx) ; 2 uses
  %i.csc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1688, <8 x i32> %i.cry) ; 2 uses
  %i.csd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1689, <8 x i32> %i.crz) ; 2 uses
  %index.next1706 = add nuw i64 %index1685, 32    ; 2 uses
  %i.cse = icmp eq i64 %index.next1706, %n.vec1681
  br i1 %i.cse, label %vec.epilog.iter.check1716, label %vector.body1684, !llvm.loop !700

vec.epilog.iter.check1716:                        ; preds = %vector.body1684
  %rdx.minmax1708.a = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.csa, <8 x i32> %i.csb)
  %rdx.minmax1709 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1708.a, <8 x i32> %i.csc)
  %rdx.minmax1710 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1709, <8 x i32> %i.csd)
  %i.csf = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1710) ; 2 uses
  %min.epilog.iters.check1717 = icmp samesign ult i64 %i.crl, 9
  br i1 %min.epilog.iters.check1717, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1718, !prof !126

vec.epilog.ph1718:                                ; preds = %vector.main.loop.iter.check1678, %vec.epilog.iter.check1716
  %vec.epilog.resume.val1711 = phi i64 [ %n.vec1681, %vec.epilog.iter.check1716 ], [ 0, %vector.main.loop.iter.check1678 ]
  %bc.merge.rdx1713 = phi i32 [ %i.csf, %vec.epilog.iter.check1716 ], [ %i.cre, %vector.main.loop.iter.check1678 ]
  %broadcast.splatinsert1719 = insertelement <8 x i32> poison, i32 %bc.merge.rdx1713, i64 0
  %broadcast.splat1720 = shufflevector <8 x i32> %broadcast.splatinsert1719, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.csg = and i64 %i.cri, 7                      ; 2 uses
  %i.csh = icmp eq i64 %i.csg, 0
  %i.csi = select i1 %i.csh, i64 8, i64 %i.csg
  %n.vec1719 = sub nsw i64 %i.cri, %i.csi         ; 2 uses
  %i.csj = mul i64 %n.vec1719, 12
  %i.csk = getelementptr i8, ptr %.val.i134, i64 %i.csj
  br label %vec.epilog.vector.body1722

vec.epilog.vector.body1722:                       ; preds = %vec.epilog.vector.body1722, %vec.epilog.ph1718
  %index1723 = phi i64 [ %vec.epilog.resume.val1711, %vec.epilog.ph1718 ], [ %index.next1729, %vec.epilog.vector.body1722 ] ; 2 uses
  %vec.phi1724 = phi <8 x i32> [ %broadcast.splat1720, %vec.epilog.ph1718 ], [ %i.cso, %vec.epilog.vector.body1722 ]
  %i.csl = mul i64 %index1723, 12
  %next.gep1725 = getelementptr i8, ptr %.val.i134, i64 %i.csl
  %i.csm = getelementptr inbounds nuw i8, ptr %next.gep1725, i64 4
  %wide.vec1726 = load <24 x i32>, ptr %i.csm, align 4, !tbaa !101 ; 2 uses
  %strided.vec1727 = shufflevector <24 x i32> %wide.vec1726, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1728 = shufflevector <24 x i32> %wide.vec1726, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.csn = add nsw <8 x i32> %strided.vec1728, %strided.vec1727
  %i.cso = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1724, <8 x i32> %i.csn) ; 2 uses
  %index.next1729 = add nuw i64 %index1723, 8     ; 2 uses
  %i.csp = icmp eq i64 %index.next1729, %n.vec1719
  br i1 %i.csp, label %vec.epilog.middle.block1730, label %vec.epilog.vector.body1722, !llvm.loop !701

vec.epilog.middle.block1730:                      ; preds = %vec.epilog.vector.body1722
  %i.csq = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.cso)
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1714, %vec.epilog.iter.check1716, %vec.epilog.middle.block1730
  %.08.i.i.ph = phi ptr [ %.val.i134, %iter.check1714 ], [ %i.crn, %vec.epilog.iter.check1716 ], [ %i.csk, %vec.epilog.middle.block1730 ]
  %.057.i.i.ph = phi i32 [ %i.cre, %iter.check1714 ], [ %i.csf, %vec.epilog.iter.check1716 ], [ %i.csq, %vec.epilog.middle.block1730 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.csw, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.057.i.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.csr = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  %i.css = load i32, ptr %i.csr, align 4, !tbaa !128
  %i.cst = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.csu = load i32, ptr %i.cst, align 4, !tbaa !129
  %i.csv = add nsw i32 %i.csu, %i.css
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %.057.i.i, i32 %i.csv) ; 2 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 12 ; 2 uses
  %.not.i.i135 = icmp eq ptr %i.csw, %.val53.i
  br i1 %.not.i.i135, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i, label %.lr.ph.i.i, !llvm.loop !702

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i: ; preds = %.lr.ph.i.i, %bb.sn
  %.05.lcssa.i.i = phi i32 [ %i.cre, %bb.sn ], [ %.sroa.speculated.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #30
  store ptr null, ptr %100, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #30
  %i.csx = load ptr, ptr %0, align 8, !tbaa !84
  %i.csy = sext i32 %.05.lcssa.i.i to i64         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #30, !noalias !828
  store i32 0, ptr %55, align 4, !tbaa !100, !noalias !828
  %i.csz = getelementptr inbounds nuw i8, ptr %55, i64 4
  store i8 1, ptr %i.csz, align 4, !tbaa !133, !noalias !828
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %101, i64 noundef %i.csy, ptr noundef %i.csx, ptr noundef nonnull align 4 dereferenceable(8) %55, i1 noundef zeroext false)
          to label %_ZN8facebook5velox15allocateIndicesEiPNS0_6memory10MemoryPoolE.exit.i unwind label %bb.sq, !inline_history !661

_ZN8facebook5velox15allocateIndicesEiPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #30, !noalias !828
  %i.cta = load ptr, ptr %101, align 8, !tbaa !132 ; 2 uses
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.cta, i64 44
  %i.ctc = load i8, ptr %i.ctb, align 4, !tbaa !138
  %i.ctd = and i8 %i.ctc, 2
  %.not.i66.i = icmp eq i8 %i.ctd, 0
  br i1 %.not.i66.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i, label %bb.so, !prof !85

bb.so:                                            ; preds = %_ZN8facebook5velox15allocateIndicesEiPNS0_6memory10MemoryPoolE.exit.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc.i unwind label %bb.sr, !inline_history !661

.noexc.i:                                         ; preds = %bb.so
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i: ; preds = %_ZN8facebook5velox15allocateIndicesEiPNS0_6memory10MemoryPoolE.exit.i
  %i.cte = getelementptr inbounds nuw i8, ptr %i.cta, i64 16
  %i.ctf = load ptr, ptr %i.cte, align 8, !tbaa !139 ; 9 uses
  %i.ctg = load ptr, ptr %3, align 8, !tbaa !67
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 56 ; 2 uses
  %i.cti = load i32, ptr %i.cth, align 8, !tbaa !102 ; 2 uses
  %i.ctj = sext i32 %i.cti to i64
  %.idx = shl nsw i64 %i.ctj, 2                   ; 2 uses
  %i.ctk = getelementptr inbounds i8, ptr %i.ctf, i64 %.idx
  %.not6.i67.i = icmp eq i32 %i.cti, 0
  br i1 %.not6.i67.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i, label %iter.check1752

iter.check1752:                                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i
  %i.ctl = add nsw i64 %.idx, -4                  ; 3 uses
  %i.ctm = lshr exact i64 %i.ctl, 2
  %i.ctn = add nuw nsw i64 %i.ctm, 1              ; 5 uses
  %min.iters.check1733 = icmp ult i64 %i.ctl, 28
  br i1 %min.iters.check1733, label %.lr.ph.i68.i.preheader, label %vector.main.loop.iter.check1734

vector.main.loop.iter.check1734:                  ; preds = %iter.check1752
  %min.iters.check1735 = icmp ult i64 %i.ctl, 124
  br i1 %min.iters.check1735, label %vec.epilog.ph1756, label %vector.ph1736

vector.ph1736:                                    ; preds = %vector.main.loop.iter.check1734
  %i.cto = and i64 %i.ctn, 24
  %n.vec1737 = and i64 %i.ctn, 9223372036854775776 ; 5 uses
  %i.ctp = trunc i64 %n.vec1737 to i32            ; 2 uses
  %i.ctq = shl i64 %n.vec1737, 2
  %i.ctr = getelementptr i8, ptr %i.ctf, i64 %i.ctq
  br label %vector.body1738

vector.body1738:                                  ; preds = %vector.ph1736, %vector.body1738
  %index1739 = phi i64 [ 0, %vector.ph1736 ], [ %index.next1745, %vector.body1738 ] ; 2 uses
  %vec.ind1740 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1736 ], [ %vec.ind.next1746, %vector.body1738 ] ; 5 uses
  %step.add1741 = add nuw nsw <8 x i32> %vec.ind1740, splat (i32 8)
  %step.add.21742 = add nuw nsw <8 x i32> %vec.ind1740, splat (i32 16)
  %step.add.31743 = add nuw nsw <8 x i32> %vec.ind1740, splat (i32 24)
  %i.cts = shl i64 %index1739, 2
  %next.gep1744 = getelementptr i8, ptr %i.ctf, i64 %i.cts ; 4 uses
  %i.ctt = getelementptr i8, ptr %next.gep1744, i64 32
  %i.ctu = getelementptr i8, ptr %next.gep1744, i64 64
  %i.ctv = getelementptr i8, ptr %next.gep1744, i64 96
  store <8 x i32> %vec.ind1740, ptr %next.gep1744, align 4, !tbaa !101
  store <8 x i32> %step.add1741, ptr %i.ctt, align 4, !tbaa !101
  store <8 x i32> %step.add.21742, ptr %i.ctu, align 4, !tbaa !101
  store <8 x i32> %step.add.31743, ptr %i.ctv, align 4, !tbaa !101
  %index.next1745 = add nuw i64 %index1739, 32    ; 2 uses
  %vec.ind.next1746 = add nuw nsw <8 x i32> %vec.ind1740, splat (i32 32)
  %i.ctw = icmp eq i64 %index.next1745, %n.vec1737
  br i1 %i.ctw, label %middle.block1747, label %vector.body1738, !llvm.loop !705

middle.block1747:                                 ; preds = %vector.body1738
  %cmp.n1748 = icmp eq i64 %i.ctn, %n.vec1737
  br i1 %cmp.n1748, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i, label %vec.epilog.iter.check1754

vec.epilog.iter.check1754:                        ; preds = %middle.block1747
  %min.epilog.iters.check1755 = icmp eq i64 %i.cto, 0
  br i1 %min.epilog.iters.check1755, label %.lr.ph.i68.i.preheader, label %vec.epilog.ph1756, !prof !126

vec.epilog.ph1756:                                ; preds = %vector.main.loop.iter.check1734, %vec.epilog.iter.check1754
  %vec.epilog.resume.val1749 = phi i64 [ %n.vec1737, %vec.epilog.iter.check1754 ], [ 0, %vector.main.loop.iter.check1734 ]
  %bc.resume.val1750 = phi i32 [ %i.ctp, %vec.epilog.iter.check1754 ], [ 0, %vector.main.loop.iter.check1734 ]
  %n.vec1757 = and i64 %i.ctn, 9223372036854775800 ; 4 uses
  %i.ctx = trunc i64 %n.vec1757 to i32
  %i.cty = shl i64 %n.vec1757, 2
  %i.ctz = getelementptr i8, ptr %i.ctf, i64 %i.cty
  %broadcast.splatinsert1758 = insertelement <8 x i32> poison, i32 %bc.resume.val1750, i64 0
  %broadcast.splat1759 = shufflevector <8 x i32> %broadcast.splatinsert1758, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1760 = add nuw nsw <8 x i32> %broadcast.splat1759, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body1761

vec.epilog.vector.body1761:                       ; preds = %vec.epilog.vector.body1761, %vec.epilog.ph1756
  %index1762 = phi i64 [ %vec.epilog.resume.val1749, %vec.epilog.ph1756 ], [ %index.next1765, %vec.epilog.vector.body1761 ] ; 2 uses
  %vec.ind1763 = phi <8 x i32> [ %induction1760, %vec.epilog.ph1756 ], [ %vec.ind.next1766, %vec.epilog.vector.body1761 ] ; 2 uses
  %i.cua = shl i64 %index1762, 2
  %next.gep1764 = getelementptr i8, ptr %i.ctf, i64 %i.cua
  store <8 x i32> %vec.ind1763, ptr %next.gep1764, align 4, !tbaa !101
  %index.next1765 = add nuw i64 %index1762, 8     ; 2 uses
  %vec.ind.next1766 = add nuw nsw <8 x i32> %vec.ind1763, splat (i32 8)
  %i.cub = icmp eq i64 %index.next1765, %n.vec1757
  br i1 %i.cub, label %vec.epilog.middle.block1767, label %vec.epilog.vector.body1761, !llvm.loop !706

vec.epilog.middle.block1767:                      ; preds = %vec.epilog.vector.body1761
  %cmp.n1768 = icmp eq i64 %i.ctn, %n.vec1757
  br i1 %cmp.n1768, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i, label %.lr.ph.i68.i.preheader

.lr.ph.i68.i.preheader:                           ; preds = %iter.check1752, %vec.epilog.iter.check1754, %vec.epilog.middle.block1767
  %.08.i69.i.ph = phi i32 [ 0, %iter.check1752 ], [ %i.ctp, %vec.epilog.iter.check1754 ], [ %i.ctx, %vec.epilog.middle.block1767 ]
  %.057.i70.i.ph = phi ptr [ %i.ctf, %iter.check1752 ], [ %i.ctr, %vec.epilog.iter.check1754 ], [ %i.ctz, %vec.epilog.middle.block1767 ]
  br label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %.lr.ph.i68.i.preheader, %.lr.ph.i68.i
  %.08.i69.i = phi i32 [ %i.cuc, %.lr.ph.i68.i ], [ %.08.i69.i.ph, %.lr.ph.i68.i.preheader ] ; 2 uses
  %.057.i70.i = phi ptr [ %i.cud, %.lr.ph.i68.i ], [ %.057.i70.i.ph, %.lr.ph.i68.i.preheader ] ; 2 uses
  store i32 %.08.i69.i, ptr %.057.i70.i, align 4, !tbaa !101
  %i.cuc = add nuw nsw i32 %.08.i69.i, 1
  %i.cud = getelementptr inbounds nuw i8, ptr %.057.i70.i, i64 4 ; 2 uses
  %.not.i71.i = icmp eq ptr %i.cud, %i.ctk
  br i1 %.not.i71.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i, label %.lr.ph.i68.i, !llvm.loop !707

_ZSt4iotaIPiiEvT_S1_T0_.exit.i:                   ; preds = %.lr.ph.i68.i, %middle.block1747, %vec.epilog.middle.block1767, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #30
  %i.cue = load i32, ptr %i.cth, align 8, !tbaa !102 ; 4 uses
  %i.cuf = getelementptr inbounds nuw i8, ptr %102, i64 4
  store i32 %i.cue, ptr %i.cuf, align 4, !tbaa !128
  %i.cug = getelementptr inbounds nuw i8, ptr %128, i64 59
  %i.cuh = load i8, ptr %i.cug, align 1, !tbaa !123, !range !61, !noundef !62
  %i.cui = trunc nuw i8 %i.cuh to i1
  br i1 %i.cui, label %bb.sp, label %bb.st

bb.sp:                                            ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i
  %.val54.i = load ptr, ptr %2, align 8, !tbaa !94 ; 2 uses
  %.val55.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 2 uses
  %.not1.i.i = icmp eq ptr %.val54.i, %.val55.i
  br i1 %.not1.i.i, label %_ZN8facebook5velox12_GLOBAL__N_111fillIndicesEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPi.exit.i, label %.lr.ph.i72.i.preheader

.lr.ph.i72.i.preheader:                           ; preds = %bb.sp
  %broadcast.splatinsert1776 = insertelement <8 x i32> poison, i32 %i.cue, i64 0
  %broadcast.splat1777 = shufflevector <8 x i32> %broadcast.splatinsert1776, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1792 = insertelement <8 x i32> poison, i32 %i.cue, i64 0
  %broadcast.splat1793 = shufflevector <8 x i32> %broadcast.splatinsert1792, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i72.i

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.i.preheader, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i
  %.02.i.i = phi ptr [ %i.cvh, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i ], [ %.val54.i, %.lr.ph.i72.i.preheader ] ; 3 uses
  %i.cuj = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 4
  %i.cuk = load i32, ptr %i.cuj, align 4, !tbaa !128
  %i.cul = sext i32 %i.cuk to i64
  %i.cum = getelementptr inbounds [4 x i8], ptr %i.ctf, i64 %i.cul ; 6 uses
  %i.cun = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8
  %i.cuo = load i32, ptr %i.cun, align 4, !tbaa !129 ; 2 uses
  %i.cup = sext i32 %i.cuo to i64
  %.idx.i.i = shl nsw i64 %i.cup, 2               ; 2 uses
  %i.cuq = getelementptr inbounds i8, ptr %i.cum, i64 %.idx.i.i
  %.not5.i.i.i.i.i = icmp eq i32 %i.cuo, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i, label %iter.check1786
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
  %.pn52.i = phi { ptr, i32 } [ %.pn.i, %.body240 ], [ %.pn50.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.pn.pn.pn.i, %bb.ul ], [ %.pn.pn.pn.i.i, %bb.mi ], [ %.pn108.pn.pn.pn.pn.pn.pn.i.i, %bb.pr ], [ %.pn89.pn.pn.pn.pn.pn.pn.i.i, %bb.sl ], [ %.pn.pn.pn.pn.pn.pn.i, %bb.lg ], [ %.pn60.pn.pn.i, %bb.dy ], [ %i.gp, %bb.as ], [ %lpad.loopexit.split-lp2219, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #30, !inline_history !575
  br label %bb.uu

bb.uu:                                            ; preds = %.body149, %bb.dz
  %.pn52.pn.i = phi { ptr, i32 } [ %.pn52.i, %.body149 ], [ %i.sd, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #30
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %120) #30, !inline_history !575
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #30
  br label %.body

_ZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_b.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_116copyIntoConstantERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERKSt10shared_ptrIS7_ERNS0_13DecodedVectorESH_SJ_RSF_b.exit, %_ZN8facebook5velox12_GLOBAL__N_118copyIntoDictionaryERKNS0_24EncodedVectorCopyOptionsERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEERNS0_13DecodedVectorERKSt10shared_ptrIS7_ESF_OSH_RSH_b.exit, %_ZN8facebook5velox12_GLOBAL__N_115copyIntoComplexERKNS0_24EncodedVectorCopyOptionsERNS0_13DecodedVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS8_9CopyRangeEEERS9_b.exit, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, %bb.li, %bb.uo
  %i.dcr = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.dcs = load ptr, ptr %i.dcr, align 8, !tbaa !91 ; 8 uses
  %.not.i.i123 = icmp eq ptr %i.dcs, null
  br i1 %.not.i.i123, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127, label %bb.uv

bb.uv:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_b.exit
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dcs, i64 8 ; 4 uses
  %i.dcu = load atomic i64, ptr %i.dct acquire, align 8 ; 2 uses
  %i.dcv = icmp eq i64 %i.dcu, 4294967297
  %i.dcw = trunc i64 %i.dcu to i32                ; 2 uses
  br i1 %i.dcv, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  store i32 0, ptr %i.dct, align 8, !tbaa !98
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcs, i64 12
  store i32 0, ptr %i.dcx, align 4, !tbaa !99
  %i.dcy = load ptr, ptr %i.dcs, align 8, !tbaa !88
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 16
  %i.dda = load ptr, ptr %i.dcz, align 8
  call void %i.dda(ptr noundef nonnull align 8 dereferenceable(16) %i.dcs) #30, !inline_history !616
  %i.ddb = load ptr, ptr %i.dcs, align 8, !tbaa !88
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.ddb, i64 24
  %i.ddd = load ptr, ptr %i.ddc, align 8
  call void %i.ddd(ptr noundef nonnull align 8 dereferenceable(16) %i.dcs) #30, !inline_history !616
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127

bb.ux:                                            ; preds = %bb.uv
  %i.dde = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i124 = icmp eq i8 %i.dde, 0
  br i1 %.not.i.i.i124, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.ddf = add nsw i32 %i.dcw, -1
  store i32 %i.ddf, ptr %i.dct, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

bb.uz:                                            ; preds = %bb.ux
  %i.ddg = atomicrmw volatile add ptr %i.dct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125: ; preds = %bb.uz, %bb.uy
  %.0.i.i.i.i126 = phi i32 [ %i.dcw, %bb.uy ], [ %i.ddg, %bb.uz ]
  %i.ddh = icmp eq i32 %.0.i.i.i.i126, 1
  br i1 %i.ddh, label %bb.va, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127, !prof !90

bb.va:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dcs) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127: ; preds = %_ZN8facebook5velox12_GLOBAL__N_116copyIntoExistingERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERNS0_13DecodedVectorES9_RS7_b.exit, %bb.uw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125, %bb.va
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #30
  %i.ddi = getelementptr inbounds nuw i8, ptr %120, i64 96
  %i.ddj = load ptr, ptr %i.ddi, align 8, !tbaa !170 ; 3 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.ddj, null
  br i1 %.not.i.i.i.i119, label %_ZNSt6vectorImSaImEED2Ev.exit.i120, label %bb.vb

bb.vb:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127
  %i.ddk = getelementptr inbounds nuw i8, ptr %120, i64 112
  %i.ddl = load ptr, ptr %i.ddk, align 8, !tbaa !171
  %i.ddm = ptrtoint ptr %i.ddl to i64
  %i.ddn = ptrtoint ptr %i.ddj to i64
  %i.ddo = sub i64 %i.ddm, %i.ddn
  call void @_ZdlPvm(ptr noundef nonnull %i.ddj, i64 noundef %i.ddo) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i120

_ZNSt6vectorImSaImEED2Ev.exit.i120:               ; preds = %bb.vb, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127
  %i.ddp = load ptr, ptr %i.bk, align 8, !tbaa !172 ; 3 uses
  %.not.i.i.i1.i121 = icmp eq ptr %i.ddp, null
  br i1 %.not.i.i.i1.i121, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit122, label %bb.vc

bb.vc:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i120
  %i.ddq = getelementptr inbounds nuw i8, ptr %120, i64 88
  %i.ddr = load ptr, ptr %i.ddq, align 8, !tbaa !173
  %i.dds = ptrtoint ptr %i.ddr to i64
  %i.ddt = ptrtoint ptr %i.ddp to i64
  %i.ddu = sub i64 %i.dds, %i.ddt
  call void @_ZdlPvm(ptr noundef nonnull %i.ddp, i64 noundef %i.ddu) #34
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit122

_ZN8facebook5velox13DecodedVectorD2Ev.exit122:    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i120, %bb.vc
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #30
  br label %bb.acm

bb.vd:                                            ; preds = %bb.n
  %i.ddv = landingpad { ptr, i32 }
          cleanup
  br label %bb.acv

bb.ve:                                            ; preds = %bb.o
  %i.ddw = getelementptr inbounds nuw i8, ptr %128, i64 59
  %i.ddx = load i8, ptr %i.ddw, align 1, !tbaa !123, !range !61, !noundef !62
  %i.ddy = trunc nuw i8 %i.ddx to i1
  br i1 %i.ddy, label %bb.vf, label %bb.yc

bb.vf:                                            ; preds = %bb.ve
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %119)
  %.val.i66 = load ptr, ptr %2, align 8, !tbaa !94, !noalias !834 ; 10 uses
  %.val10.i = load ptr, ptr %i.o, align 8, !tbaa !95, !noalias !834 ; 3 uses
  %.not19.i = icmp eq ptr %.val.i66, %.val10.i
  br i1 %.not19.i, label %._crit_edge.thread.i, label %iter.check2172

iter.check2172:                                   ; preds = %bb.vf
  %.val10.i2127 = ptrtoaddr ptr %.val10.i to i64
  %.val.i662128 = ptrtoaddr ptr %.val.i66 to i64
  %i.ddz = add i64 %.val10.i2127, -12
  %i.dea = sub i64 %i.ddz, %.val.i662128          ; 3 uses
  %i.deb = udiv i64 %i.dea, 12
  %i.dec = add nuw nsw i64 %i.deb, 1              ; 4 uses
  %min.iters.check2129 = icmp ult i64 %i.dea, 96
  br i1 %min.iters.check2129, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check2130

vector.main.loop.iter.check2130:                  ; preds = %iter.check2172
  %min.iters.check2131 = icmp ult i64 %i.dea, 384
  br i1 %min.iters.check2131, label %vec.epilog.ph2176, label %vector.ph2132

vector.ph2132:                                    ; preds = %vector.main.loop.iter.check2130
  %i.ded = and i64 %i.dec, 31                     ; 2 uses
  %i.dee = icmp eq i64 %i.ded, 0
  %i.def = select i1 %i.dee, i64 32, i64 %i.ded   ; 2 uses
  %n.vec2133 = sub nsw i64 %i.dec, %i.def         ; 3 uses
  %i.deg = mul i64 %n.vec2133, 12
  %i.deh = getelementptr i8, ptr %.val.i66, i64 %i.deg
  br label %vector.body2134

vector.body2134:                                  ; preds = %vector.ph2132, %vector.body2134
  %index2135 = phi i64 [ 0, %vector.ph2132 ], [ %index.next2160, %vector.body2134 ] ; 2 uses
  %vec.phi2136 = phi <8 x i32> [ zeroinitializer, %vector.ph2132 ], [ %i.deu, %vector.body2134 ]
  %vec.phi2137 = phi <8 x i32> [ zeroinitializer, %vector.ph2132 ], [ %i.dev, %vector.body2134 ]
  %vec.phi2138 = phi <8 x i32> [ zeroinitializer, %vector.ph2132 ], [ %i.dew, %vector.body2134 ]
  %vec.phi2139 = phi <8 x i32> [ zeroinitializer, %vector.ph2132 ], [ %i.dex, %vector.body2134 ]
  %vec.phi2140 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2132 ], [ %i.dey, %vector.body2134 ]
  %vec.phi2141 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2132 ], [ %i.dez, %vector.body2134 ]
  %vec.phi2142 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2132 ], [ %i.dfa, %vector.body2134 ]
  %vec.phi2143 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2132 ], [ %i.dfb, %vector.body2134 ]
  %i.dei = mul i64 %index2135, 12                 ; 4 uses
  %next.gep2144 = getelementptr i8, ptr %.val.i66, i64 %i.dei
  %i.dej = getelementptr i8, ptr %.val.i66, i64 %i.dei
  %i.dek = getelementptr i8, ptr %.val.i66, i64 %i.dei
  %i.del = getelementptr i8, ptr %.val.i66, i64 %i.dei
  %i.dem = getelementptr inbounds nuw i8, ptr %next.gep2144, i64 4
  %i.den = getelementptr i8, ptr %i.dej, i64 100
  %i.deo = getelementptr i8, ptr %i.dek, i64 196
  %i.dep = getelementptr i8, ptr %i.del, i64 292
  %wide.vec2148 = load <24 x i32>, ptr %i.dem, align 4, !tbaa !101 ; 2 uses
  %strided.vec2149 = shufflevector <24 x i32> %wide.vec2148, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2150 = shufflevector <24 x i32> %wide.vec2148, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2151 = load <24 x i32>, ptr %i.den, align 4, !tbaa !101 ; 2 uses
  %strided.vec2152 = shufflevector <24 x i32> %wide.vec2151, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2153 = shufflevector <24 x i32> %wide.vec2151, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2154 = load <24 x i32>, ptr %i.deo, align 4, !tbaa !101 ; 2 uses
  %strided.vec2155 = shufflevector <24 x i32> %wide.vec2154, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2156 = shufflevector <24 x i32> %wide.vec2154, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2157 = load <24 x i32>, ptr %i.dep, align 4, !tbaa !101 ; 2 uses
  %strided.vec2158 = shufflevector <24 x i32> %wide.vec2157, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2159 = shufflevector <24 x i32> %wide.vec2157, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.deq = add nsw <8 x i32> %strided.vec2150, %strided.vec2149
  %i.der = add nsw <8 x i32> %strided.vec2153, %strided.vec2152
  %i.des = add nsw <8 x i32> %strided.vec2156, %strided.vec2155
  %i.det = add nsw <8 x i32> %strided.vec2159, %strided.vec2158
  %i.deu = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2136, <8 x i32> %i.deq) ; 2 uses
  %i.dev = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2137, <8 x i32> %i.der) ; 2 uses
  %i.dew = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2138, <8 x i32> %i.des) ; 2 uses
  %i.dex = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2139, <8 x i32> %i.det) ; 2 uses
  %i.dey = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2149, <8 x i32> %vec.phi2140) ; 2 uses
  %i.dez = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2152, <8 x i32> %vec.phi2141) ; 2 uses
  %i.dfa = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2155, <8 x i32> %vec.phi2142) ; 2 uses
  %i.dfb = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2158, <8 x i32> %vec.phi2143) ; 2 uses
  %index.next2160 = add nuw i64 %index2135, 32    ; 2 uses
  %i.dfc = icmp eq i64 %index.next2160, %n.vec2133
  br i1 %i.dfc, label %vec.epilog.iter.check2174, label %vector.body2134, !llvm.loop !727

vec.epilog.iter.check2174:                        ; preds = %vector.body2134
  %rdx.minmax2165 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dey, <8 x i32> %i.dez)
  %rdx.minmax2166 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2165, <8 x i32> %i.dfa)
  %rdx.minmax2167 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2166, <8 x i32> %i.dfb)
  %i.dfd = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax2167) ; 2 uses
  %rdx.minmax2162 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.deu, <8 x i32> %i.dev)
  %rdx.minmax2163 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax2162, <8 x i32> %i.dew)
  %rdx.minmax2164 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax2163, <8 x i32> %i.dex)
  %i.dfe = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax2164) ; 2 uses
  %min.epilog.iters.check2175 = icmp samesign ult i64 %i.def, 9
  br i1 %min.epilog.iters.check2175, label %.lr.ph.i.preheader, label %vec.epilog.ph2176, !prof !126

vec.epilog.ph2176:                                ; preds = %vector.main.loop.iter.check2130, %vec.epilog.iter.check2174
  %vec.epilog.resume.val2168 = phi i64 [ %n.vec2133, %vec.epilog.iter.check2174 ], [ 0, %vector.main.loop.iter.check2130 ]
  %bc.merge.rdx2170 = phi i32 [ %i.dfe, %vec.epilog.iter.check2174 ], [ 0, %vector.main.loop.iter.check2130 ]
  %bc.merge.rdx2171 = phi i32 [ %i.dfd, %vec.epilog.iter.check2174 ], [ 2147483647, %vector.main.loop.iter.check2130 ]
  %broadcast.splatinsert2171 = insertelement <8 x i32> poison, i32 %bc.merge.rdx2171, i64 0
  %broadcast.splat2172 = shufflevector <8 x i32> %broadcast.splatinsert2171, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2168 = insertelement <8 x i32> poison, i32 %bc.merge.rdx2170, i64 0
  %broadcast.splat2169 = shufflevector <8 x i32> %broadcast.splatinsert2168, <8 x i32> poison, <8 x i32> zeroinitializer
  %139 = and i64 %i.dec, 7                        ; 2 uses
  %140 = icmp eq i64 %139, 0
  %141 = select i1 %140, i64 8, i64 %139
  %n.vec2165 = sub nsw i64 %i.dec, %141           ; 2 uses
  %142 = mul i64 %n.vec2165, 12
  %143 = getelementptr i8, ptr %.val.i66, i64 %142
  br label %vec.epilog.vector.body2182

vec.epilog.vector.body2182:                       ; preds = %vec.epilog.vector.body2182, %vec.epilog.ph2176
  %index2183 = phi i64 [ %vec.epilog.resume.val2168, %vec.epilog.ph2176 ], [ %index.next2190, %vec.epilog.vector.body2182 ] ; 2 uses
  %vec.phi2184 = phi <8 x i32> [ %broadcast.splat2169, %vec.epilog.ph2176 ], [ %i.dfi, %vec.epilog.vector.body2182 ]
  %vec.phi2185 = phi <8 x i32> [ %broadcast.splat2172, %vec.epilog.ph2176 ], [ %i.dfj, %vec.epilog.vector.body2182 ]
  %i.dff = mul i64 %index2183, 12
  %next.gep2186 = getelementptr i8, ptr %.val.i66, i64 %i.dff
  %i.dfg = getelementptr inbounds nuw i8, ptr %next.gep2186, i64 4
  %wide.vec2187 = load <24 x i32>, ptr %i.dfg, align 4, !tbaa !101 ; 2 uses
  %strided.vec2188 = shufflevector <24 x i32> %wide.vec2187, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2189 = shufflevector <24 x i32> %wide.vec2187, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.dfh = add nsw <8 x i32> %strided.vec2189, %strided.vec2188
  %i.dfi = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2184, <8 x i32> %i.dfh) ; 2 uses
  %i.dfj = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2188, <8 x i32> %vec.phi2185) ; 2 uses
  %index.next2190 = add nuw i64 %index2183, 8     ; 2 uses
  %i.dfk = icmp eq i64 %index.next2190, %n.vec2165
  br i1 %i.dfk, label %vec.epilog.middle.block2191, label %vec.epilog.vector.body2182, !llvm.loop !728

vec.epilog.middle.block2191:                      ; preds = %vec.epilog.vector.body2182
  %i.dfl = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.dfi)
  %i.dfm = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.dfj)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check2172, %vec.epilog.iter.check2174, %vec.epilog.middle.block2191
  %.022.i.ph = phi ptr [ %.val.i66, %iter.check2172 ], [ %i.deh, %vec.epilog.iter.check2174 ], [ %143, %vec.epilog.middle.block2191 ]
  %.01721.i.ph = phi i32 [ 0, %iter.check2172 ], [ %i.dfe, %vec.epilog.iter.check2174 ], [ %i.dfl, %vec.epilog.middle.block2191 ]
  %.01820.i.ph = phi i32 [ 2147483647, %iter.check2172 ], [ %i.dfd, %vec.epilog.iter.check2174 ], [ %i.dfm, %vec.epilog.middle.block2191 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not11.i = icmp eq i32 %.sroa.speculated8.i, 0
  br i1 %.not11.i, label %.noexc, label %._crit_edge.thread.i, !prof !174

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi ptr [ %i.dfs, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01721.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.01721.i.ph, %.lr.ph.i.preheader ]
  %.01820.i = phi i32 [ %.sroa.speculated8.i, %.lr.ph.i ], [ %.01820.i.ph, %.lr.ph.i.preheader ]
  %i.dfn = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.dfo = load i32, ptr %i.dfn, align 4, !tbaa !128 ; 2 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.dfq = load i32, ptr %i.dfp, align 4, !tbaa !129
  %i.dfr = add nsw i32 %i.dfq, %i.dfo
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %.01721.i, i32 %i.dfr) ; 19 uses
  %.sroa.speculated8.i = call i32 @llvm.smin.i32(i32 %i.dfo, i32 %.01820.i) ; 3 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i355 = icmp eq ptr %i.dfs, %.val10.i
  br i1 %.not.i355, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !729

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.vf
  %.018.lcssa28.i = phi i32 [ %.sroa.speculated8.i, %._crit_edge.i ], [ 2147483647, %bb.vf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30, !noalias !835
  store i32 %.018.lcssa28.i, ptr %18, align 16, !tbaa !100, !alias.scope !836, !noalias !835
  %i.dft = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.dft, align 16, !tbaa !100, !alias.scope !836, !noalias !835
  %i.dfu = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 %.018.lcssa28.i, ptr %i.dfu, align 16, !tbaa !100, !alias.scope !836, !noalias !835
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.104, i64 75, i64 273, ptr nonnull %18)
          to label %.noexc356 unwind label %bb.yb

.noexc356:                                        ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !835
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.104) #33
          to label %bb.vg unwind label %bb.vh

bb.vg:                                            ; preds = %.noexc356
  unreachable

bb.vh:                                            ; preds = %.noexc356
  %i.dfv = landingpad { ptr, i32 }
          cleanup
  %i.dfw = load ptr, ptr %19, align 8, !tbaa !107 ; 2 uses
  %i.dfx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dfy = icmp eq ptr %i.dfw, %i.dfx
  br i1 %i.dfy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.vh
  %i.dfz = load i64, ptr %i.dfx, align 8, !tbaa !100
  %i.dga = add i64 %i.dfz, 1
  call void @_ZdlPvm(ptr noundef %i.dfw, i64 noundef %i.dga) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.vh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %.body67

.noexc:                                           ; preds = %._crit_edge.i
  %i.dgb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dgc = load i8, ptr %i.dgb, align 8, !tbaa !60, !range !61, !noalias !834, !noundef !62
  %i.dgd = trunc nuw i8 %i.dgc to i1
  br i1 %i.dgd, label %bb.vi, label %bb.vz

bb.vi:                                            ; preds = %.noexc
  %i.dge = load ptr, ptr %1, align 8, !tbaa !67, !noalias !834 ; 3 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dge, i64 56
  %i.dgg = load i32, ptr %i.dgf, align 8, !tbaa !102, !noalias !834
  %i.dgh = icmp eq i32 %.sroa.speculated.i, %i.dgg
  %i.dgi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.dgh, label %bb.vj, label %bb.vn

bb.vj:                                            ; preds = %bb.vi
  store ptr %i.dge, ptr %130, align 16, !tbaa !67
  %i.dgj = getelementptr inbounds nuw i8, ptr %130, i64 8
  %i.dgk = load ptr, ptr %i.dgi, align 8, !tbaa !91 ; 3 uses
  store ptr %i.dgk, ptr %i.dgj, align 8, !tbaa !91
  %.not.i.i.i352 = icmp eq ptr %i.dgk, null
  br i1 %.not.i.i.i352, label %bb.xo, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgk, i64 8 ; 3 uses
  %i.dgm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i353 = icmp eq i8 %i.dgm, 0
  br i1 %.not.i.i.i.i353, label %bb.vm, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.dgn = load i32, ptr %i.dgl, align 4, !tbaa !101
  %i.dgo = add nsw i32 %i.dgn, 1
  store i32 %i.dgo, ptr %i.dgl, align 4, !tbaa !101
  br label %bb.xo

bb.vm:                                            ; preds = %bb.vk
  %i.dgp = atomicrmw volatile add ptr %i.dgl, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.xo

bb.vn:                                            ; preds = %bb.vi
  store ptr %i.dge, ptr %119, align 8, !tbaa !67, !noalias !834
  %i.dgq = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 2 uses
  %i.dgr = load ptr, ptr %i.dgi, align 8, !tbaa !91, !noalias !834 ; 3 uses
  store ptr %i.dgr, ptr %i.dgq, align 8, !tbaa !91, !noalias !834
  %.not.i.i.i350 = icmp eq ptr %i.dgr, null
  br i1 %.not.i.i.i350, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.dgs = getelementptr inbounds nuw i8, ptr %i.dgr, i64 8 ; 3 uses
  %i.dgt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100, !noalias !834
  %.not.i.i.i.i351 = icmp eq i8 %i.dgt, 0
  br i1 %.not.i.i.i.i351, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.dgu = load i32, ptr %i.dgs, align 4, !tbaa !101, !noalias !834
  %i.dgv = add nsw i32 %i.dgu, 1
  store i32 %i.dgv, ptr %i.dgs, align 4, !tbaa !101, !noalias !834
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.vq:                                            ; preds = %bb.vo
  %i.dgw = atomicrmw volatile add ptr %i.dgs, i32 1 acq_rel, align 4, !noalias !834 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.vn, %bb.vp, %bb.vq
  invoke void @_ZN8facebook5velox10BaseVector14wrapInConstantEiiSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %130, i32 noundef %.sroa.speculated.i, i32 noundef 0, ptr noundef nonnull align 8 %119)
          to label %bb.vr unwind label %bb.vy, !inline_history !734

bb.vr:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.dgx = load ptr, ptr %i.dgq, align 8, !tbaa !91 ; 8 uses
  %.not.i.i345 = icmp eq ptr %i.dgx, null
  br i1 %.not.i.i345, label %bb.xo, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.dgy = getelementptr inbounds nuw i8, ptr %i.dgx, i64 8 ; 4 uses
  %i.dgz = load atomic i64, ptr %i.dgy acquire, align 8 ; 2 uses
  %i.dha = icmp eq i64 %i.dgz, 4294967297
  %i.dhb = trunc i64 %i.dgz to i32                ; 2 uses
  br i1 %i.dha, label %bb.vt, label %bb.vu

bb.vt:                                            ; preds = %bb.vs
  store i32 0, ptr %i.dgy, align 8, !tbaa !98
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgx, i64 12
  store i32 0, ptr %i.dhc, align 4, !tbaa !99
  %i.dhd = load ptr, ptr %i.dgx, align 8, !tbaa !88
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dhd, i64 16
  %i.dhf = load ptr, ptr %i.dhe, align 8
  call void %i.dhf(ptr noundef nonnull align 8 dereferenceable(16) %i.dgx) #30, !inline_history !735
  %i.dhg = load ptr, ptr %i.dgx, align 8, !tbaa !88
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dhg, i64 24
  %i.dhi = load ptr, ptr %i.dhh, align 8
  call void %i.dhi(ptr noundef nonnull align 8 dereferenceable(16) %i.dgx) #30, !inline_history !735
  br label %bb.xo

bb.vu:                                            ; preds = %bb.vs
  %i.dhj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i346 = icmp eq i8 %i.dhj, 0
  br i1 %.not.i.i.i346, label %bb.vw, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.dhk = add nsw i32 %i.dhb, -1
  store i32 %i.dhk, ptr %i.dgy, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i347

bb.vw:                                            ; preds = %bb.vu
  %i.dhl = atomicrmw volatile add ptr %i.dgy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i347

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i347: ; preds = %bb.vw, %bb.vv
  %.0.i.i.i.i348 = phi i32 [ %i.dhb, %bb.vv ], [ %i.dhl, %bb.vw ]
  %i.dhm = icmp eq i32 %.0.i.i.i.i348, 1
  br i1 %i.dhm, label %bb.vx, label %bb.xo, !prof !90

bb.vx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i347
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dgx) #30
  br label %bb.xo

bb.vy:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.dhn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #30, !inline_history !734
  br label %.body67

bb.vz:                                            ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.dho = load ptr, ptr %1, align 8, !tbaa !67, !noalias !837
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 24
  %i.dhq = load i8, ptr %i.dhp, align 8, !tbaa !175, !noalias !837 ; 2 uses
  switch i8 %i.dhq, label %.noexc342 [
    i8 33, label %bb.wa
    i8 35, label %bb.wd
    i8 0, label %bb.wy
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a

bb.yh:                                            ; preds = %bb.yg
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnu, i64 8 ; 4 uses
  %i.dnw = load atomic i64, ptr %i.dnv acquire, align 8 ; 2 uses
  %i.dnx = icmp eq i64 %i.dnw, 4294967297
  %i.dny = trunc i64 %i.dnw to i32                ; 2 uses
  br i1 %i.dnx, label %bb.yi, label %bb.yj

bb.yi:                                            ; preds = %bb.yh
  store i32 0, ptr %i.dnv, align 8, !tbaa !98
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dnu, i64 12
  store i32 0, ptr %i.dnz, align 4, !tbaa !99
  %i.doa = load ptr, ptr %i.dnu, align 8, !tbaa !88
  %i.dob = getelementptr inbounds nuw i8, ptr %i.doa, i64 16
  %i.doc = load ptr, ptr %i.dob, align 8
  call void %i.doc(ptr noundef nonnull align 8 dereferenceable(16) %i.dnu) #30, !inline_history !0
  %i.dod = load ptr, ptr %i.dnu, align 8, !tbaa !88
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dod, i64 24
  %i.dof = load ptr, ptr %i.doe, align 8
  call void %i.dof(ptr noundef nonnull align 8 dereferenceable(16) %i.dnu) #30, !inline_history !0
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit86

bb.yj:                                            ; preds = %bb.yh
  %i.dog = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i83 = icmp eq i8 %i.dog, 0
  br i1 %.not.i.i.i.i.i83, label %bb.yl, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.doh = add nsw i32 %i.dny, -1
  store i32 %i.doh, ptr %i.dnv, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i84

bb.yl:                                            ; preds = %bb.yj
  %i.doi = atomicrmw volatile add ptr %i.dnv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i84: ; preds = %bb.yl, %bb.yk
  %.0.i.i.i.i.i.i85 = phi i32 [ %i.dny, %bb.yk ], [ %i.doi, %bb.yl ]
  %i.doj = icmp eq i32 %.0.i.i.i.i.i.i85, 1
  br i1 %i.doj, label %bb.ym, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit86, !prof !90

bb.ym:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dnu) #30
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit86

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit86: ; preds = %bb.yg, %bb.yi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i84, %bb.ym
  %i.dok = load ptr, ptr %i.dnr, align 8, !tbaa !91 ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.dok, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91, label %bb.yn

bb.yn:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit86
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dok, i64 8 ; 4 uses
  %i.dom = load atomic i64, ptr %i.dol acquire, align 8 ; 2 uses
  %i.don = icmp eq i64 %i.dom, 4294967297
  %i.doo = trunc i64 %i.dom to i32                ; 2 uses
  br i1 %i.don, label %bb.yo, label %bb.yp

bb.yo:                                            ; preds = %bb.yn
  store i32 0, ptr %i.dol, align 8, !tbaa !98
  %i.dop = getelementptr inbounds nuw i8, ptr %i.dok, i64 12
  store i32 0, ptr %i.dop, align 4, !tbaa !99
  %i.doq = load ptr, ptr %i.dok, align 8, !tbaa !88
  %i.dor = getelementptr inbounds nuw i8, ptr %i.doq, i64 16
  %i.dos = load ptr, ptr %i.dor, align 8
  call void %i.dos(ptr noundef nonnull align 8 dereferenceable(16) %i.dok) #30, !inline_history !3
  %i.dot = load ptr, ptr %i.dok, align 8, !tbaa !88
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dot, i64 24
  %i.dov = load ptr, ptr %i.dou, align 8
  call void %i.dov(ptr noundef nonnull align 8 dereferenceable(16) %i.dok) #30, !inline_history !3
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91

bb.yp:                                            ; preds = %bb.yn
  %i.dow = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i88 = icmp eq i8 %i.dow, 0
  br i1 %.not.i.i.i88, label %bb.yr, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.dox = add nsw i32 %i.doo, -1
  store i32 %i.dox, ptr %i.dol, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

bb.yr:                                            ; preds = %bb.yp
  %i.doy = atomicrmw volatile add ptr %i.dol, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89: ; preds = %bb.yr, %bb.yq
  %.0.i.i.i.i90 = phi i32 [ %i.doo, %bb.yq ], [ %i.doy, %bb.yr ]
  %i.doz = icmp eq i32 %.0.i.i.i.i90, 1
  br i1 %i.doz, label %bb.ys, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91, !prof !90

bb.ys:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dok) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91: ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit86, %bb.yo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89, %bb.ys
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #30
  br label %bb.acm

bb.yt:                                            ; preds = %bb.yf
  %i.dpa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #30
  br label %.body

_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit.thread: ; preds = %.noexc80, %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %116)
  call void @llvm.lifetime.start.p0(ptr nonnull %117)
  call void @llvm.lifetime.start.p0(ptr nonnull %118)
  %.val25.i = load ptr, ptr %2, align 8, !tbaa !94, !noalias !852 ; 10 uses
  %.val26.i = load ptr, ptr %i.o, align 8, !tbaa !95, !noalias !852 ; 3 uses
  %.not19.i408 = icmp eq ptr %.val25.i, %.val26.i
  br i1 %.not19.i408, label %._crit_edge.thread.i418, label %iter.check2104

iter.check2104:                                   ; preds = %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit.thread
  %.val26.i2059 = ptrtoaddr ptr %.val26.i to i64
  %.val25.i2060 = ptrtoaddr ptr %.val25.i to i64
  %i.dpb = add i64 %.val26.i2059, -12
  %i.dpc = sub i64 %i.dpb, %.val25.i2060          ; 3 uses
  %i.dpd = udiv i64 %i.dpc, 12
  %i.dpe = add nuw nsw i64 %i.dpd, 1              ; 4 uses
  %min.iters.check2061 = icmp ult i64 %i.dpc, 96
  br i1 %min.iters.check2061, label %.lr.ph.i409.preheader, label %vector.main.loop.iter.check2062

vector.main.loop.iter.check2062:                  ; preds = %iter.check2104
  %min.iters.check2063 = icmp ult i64 %i.dpc, 384
  br i1 %min.iters.check2063, label %vec.epilog.ph2108, label %vector.ph2064

vector.ph2064:                                    ; preds = %vector.main.loop.iter.check2062
  %i.dpf = and i64 %i.dpe, 31                     ; 2 uses
  %i.dpg = icmp eq i64 %i.dpf, 0
  %i.dph = select i1 %i.dpg, i64 32, i64 %i.dpf   ; 2 uses
  %n.vec2065 = sub nsw i64 %i.dpe, %i.dph         ; 3 uses
  %i.dpi = mul i64 %n.vec2065, 12
  %i.dpj = getelementptr i8, ptr %.val25.i, i64 %i.dpi
  br label %vector.body2066

vector.body2066:                                  ; preds = %vector.ph2064, %vector.body2066
  %index2067 = phi i64 [ 0, %vector.ph2064 ], [ %index.next2092, %vector.body2066 ] ; 2 uses
  %vec.phi2068 = phi <8 x i32> [ zeroinitializer, %vector.ph2064 ], [ %i.dpw, %vector.body2066 ]
  %vec.phi2069 = phi <8 x i32> [ zeroinitializer, %vector.ph2064 ], [ %i.dpx, %vector.body2066 ]
  %vec.phi2070 = phi <8 x i32> [ zeroinitializer, %vector.ph2064 ], [ %i.dpy, %vector.body2066 ]
  %vec.phi2071 = phi <8 x i32> [ zeroinitializer, %vector.ph2064 ], [ %i.dpz, %vector.body2066 ]
  %vec.phi2072 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2064 ], [ %i.dqa, %vector.body2066 ]
  %vec.phi2073 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2064 ], [ %i.dqb, %vector.body2066 ]
  %vec.phi2074 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2064 ], [ %i.dqc, %vector.body2066 ]
  %vec.phi2075 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph2064 ], [ %i.dqd, %vector.body2066 ]
  %i.dpk = mul i64 %index2067, 12                 ; 4 uses
  %next.gep2076 = getelementptr i8, ptr %.val25.i, i64 %i.dpk
  %i.dpl = getelementptr i8, ptr %.val25.i, i64 %i.dpk
  %i.dpm = getelementptr i8, ptr %.val25.i, i64 %i.dpk
  %i.dpn = getelementptr i8, ptr %.val25.i, i64 %i.dpk
  %i.dpo = getelementptr inbounds nuw i8, ptr %next.gep2076, i64 4
  %i.dpp = getelementptr i8, ptr %i.dpl, i64 100
  %i.dpq = getelementptr i8, ptr %i.dpm, i64 196
  %i.dpr = getelementptr i8, ptr %i.dpn, i64 292
  %wide.vec2080 = load <24 x i32>, ptr %i.dpo, align 4, !tbaa !101 ; 2 uses
  %strided.vec2081.a = shufflevector <24 x i32> %wide.vec2080, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2082 = shufflevector <24 x i32> %wide.vec2080, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2083 = load <24 x i32>, ptr %i.dpp, align 4, !tbaa !101 ; 2 uses
  %strided.vec2084 = shufflevector <24 x i32> %wide.vec2083, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2085 = shufflevector <24 x i32> %wide.vec2083, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2086 = load <24 x i32>, ptr %i.dpq, align 4, !tbaa !101 ; 2 uses
  %strided.vec2087 = shufflevector <24 x i32> %wide.vec2086, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2088 = shufflevector <24 x i32> %wide.vec2086, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec2089 = load <24 x i32>, ptr %i.dpr, align 4, !tbaa !101 ; 2 uses
  %strided.vec2090 = shufflevector <24 x i32> %wide.vec2089, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2091 = shufflevector <24 x i32> %wide.vec2089, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.dps = add nsw <8 x i32> %strided.vec2082, %strided.vec2081.a
  %i.dpt = add nsw <8 x i32> %strided.vec2085, %strided.vec2084
  %i.dpu = add nsw <8 x i32> %strided.vec2088, %strided.vec2087
  %i.dpv = add nsw <8 x i32> %strided.vec2091, %strided.vec2090
  %i.dpw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2068, <8 x i32> %i.dps) ; 2 uses
  %i.dpx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2069, <8 x i32> %i.dpt) ; 2 uses
  %i.dpy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2070, <8 x i32> %i.dpu) ; 2 uses
  %i.dpz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2071, <8 x i32> %i.dpv) ; 2 uses
  %i.dqa = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2081.a, <8 x i32> %vec.phi2072) ; 2 uses
  %i.dqb = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2084, <8 x i32> %vec.phi2073) ; 2 uses
  %i.dqc = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2087, <8 x i32> %vec.phi2074) ; 2 uses
  %i.dqd = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2090, <8 x i32> %vec.phi2075) ; 2 uses
  %index.next2092 = add nuw i64 %index2067, 32    ; 2 uses
  %i.dqe = icmp eq i64 %index.next2092, %n.vec2065
  br i1 %i.dqe, label %vec.epilog.iter.check2106, label %vector.body2066, !llvm.loop !766

vec.epilog.iter.check2106:                        ; preds = %vector.body2066
  %rdx.minmax2097 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dqa, <8 x i32> %i.dqb)
  %rdx.minmax2098 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2097, <8 x i32> %i.dqc)
  %rdx.minmax2099 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax2098, <8 x i32> %i.dqd)
  %i.dqf = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax2099) ; 2 uses
  %rdx.minmax2094 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dpw, <8 x i32> %i.dpx)
  %rdx.minmax2095 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax2094, <8 x i32> %i.dpy)
  %rdx.minmax2096 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax2095, <8 x i32> %i.dpz)
  %i.dqg = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax2096) ; 2 uses
  %min.epilog.iters.check2107 = icmp samesign ult i64 %i.dph, 9
  br i1 %min.epilog.iters.check2107, label %.lr.ph.i409.preheader, label %vec.epilog.ph2108, !prof !126

vec.epilog.ph2108:                                ; preds = %vector.main.loop.iter.check2062, %vec.epilog.iter.check2106
  %vec.epilog.resume.val2100 = phi i64 [ %n.vec2065, %vec.epilog.iter.check2106 ], [ 0, %vector.main.loop.iter.check2062 ]
  %bc.merge.rdx2102 = phi i32 [ %i.dqg, %vec.epilog.iter.check2106 ], [ 0, %vector.main.loop.iter.check2062 ]
  %bc.merge.rdx2103 = phi i32 [ %i.dqf, %vec.epilog.iter.check2106 ], [ 2147483647, %vector.main.loop.iter.check2062 ]
  %broadcast.splatinsert2104 = insertelement <8 x i32> poison, i32 %bc.merge.rdx2103, i64 0
  %broadcast.splat2105 = shufflevector <8 x i32> %broadcast.splatinsert2104, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2101 = insertelement <8 x i32> poison, i32 %bc.merge.rdx2102, i64 0
  %broadcast.splat2102 = shufflevector <8 x i32> %broadcast.splatinsert2101, <8 x i32> poison, <8 x i32> zeroinitializer
  %144 = and i64 %i.dpe, 7                        ; 2 uses
  %145 = icmp eq i64 %144, 0
  %146 = select i1 %145, i64 8, i64 %144
  %n.vec2098 = sub nsw i64 %i.dpe, %146           ; 2 uses
  %147 = mul i64 %n.vec2098, 12
  %148 = getelementptr i8, ptr %.val25.i, i64 %147
  br label %vec.epilog.vector.body2114

vec.epilog.vector.body2114:                       ; preds = %vec.epilog.vector.body2114, %vec.epilog.ph2108
  %index2115 = phi i64 [ %vec.epilog.resume.val2100, %vec.epilog.ph2108 ], [ %index.next2122, %vec.epilog.vector.body2114 ] ; 2 uses
  %vec.phi2116 = phi <8 x i32> [ %broadcast.splat2102, %vec.epilog.ph2108 ], [ %i.dqk, %vec.epilog.vector.body2114 ]
  %vec.phi2117 = phi <8 x i32> [ %broadcast.splat2105, %vec.epilog.ph2108 ], [ %i.dql, %vec.epilog.vector.body2114 ]
  %i.dqh = mul i64 %index2115, 12
  %next.gep2118 = getelementptr i8, ptr %.val25.i, i64 %i.dqh
  %i.dqi = getelementptr inbounds nuw i8, ptr %next.gep2118, i64 4
  %wide.vec2119 = load <24 x i32>, ptr %i.dqi, align 4, !tbaa !101 ; 2 uses
  %strided.vec2120 = shufflevector <24 x i32> %wide.vec2119, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec2121 = shufflevector <24 x i32> %wide.vec2119, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.dqj = add nsw <8 x i32> %strided.vec2121, %strided.vec2120
  %i.dqk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi2116, <8 x i32> %i.dqj) ; 2 uses
  %i.dql = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec2120, <8 x i32> %vec.phi2117) ; 2 uses
  %index.next2122 = add nuw i64 %index2115, 8     ; 2 uses
  %i.dqm = icmp eq i64 %index.next2122, %n.vec2098
  br i1 %i.dqm, label %vec.epilog.middle.block2123, label %vec.epilog.vector.body2114, !llvm.loop !767

vec.epilog.middle.block2123:                      ; preds = %vec.epilog.vector.body2114
  %i.dqn = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.dqk)
  %i.dqo = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.dql)
  br label %.lr.ph.i409.preheader

.lr.ph.i409.preheader:                            ; preds = %iter.check2104, %vec.epilog.iter.check2106, %vec.epilog.middle.block2123
  %.022.i410.ph = phi ptr [ %.val25.i, %iter.check2104 ], [ %i.dpj, %vec.epilog.iter.check2106 ], [ %148, %vec.epilog.middle.block2123 ]
  %.01721.i411.ph = phi i32 [ 0, %iter.check2104 ], [ %i.dqg, %vec.epilog.iter.check2106 ], [ %i.dqn, %vec.epilog.middle.block2123 ]
  %.01820.i412.ph = phi i32 [ 2147483647, %iter.check2104 ], [ %i.dqf, %vec.epilog.iter.check2106 ], [ %i.dqo, %vec.epilog.middle.block2123 ]
  br label %.lr.ph.i409

._crit_edge.i416:                                 ; preds = %.lr.ph.i409
  %.not11.i417 = icmp eq i32 %.sroa.speculated8.i414, 0
  br i1 %.not11.i417, label %.noexc94, label %._crit_edge.thread.i418, !prof !174

.lr.ph.i409:                                      ; preds = %.lr.ph.i409.preheader, %.lr.ph.i409
  %.022.i410 = phi ptr [ %i.dqu, %.lr.ph.i409 ], [ %.022.i410.ph, %.lr.ph.i409.preheader ] ; 3 uses
  %.01721.i411 = phi i32 [ %.sroa.speculated.i413, %.lr.ph.i409 ], [ %.01721.i411.ph, %.lr.ph.i409.preheader ]
  %.01820.i412 = phi i32 [ %.sroa.speculated8.i414, %.lr.ph.i409 ], [ %.01820.i412.ph, %.lr.ph.i409.preheader ]
  %i.dqp = getelementptr inbounds nuw i8, ptr %.022.i410, i64 4
  %i.dqq = load i32, ptr %i.dqp, align 4, !tbaa !128 ; 2 uses
  %i.dqr = getelementptr inbounds nuw i8, ptr %.022.i410, i64 8
  %i.dqs = load i32, ptr %i.dqr, align 4, !tbaa !129
  %i.dqt = add nsw i32 %i.dqs, %i.dqq
  %.sroa.speculated.i413 = call i32 @llvm.smax.i32(i32 %.01721.i411, i32 %i.dqt) ; 3 uses
  %.sroa.speculated8.i414 = call i32 @llvm.smin.i32(i32 %i.dqq, i32 %.01820.i412) ; 3 uses
  %i.dqu = getelementptr inbounds nuw i8, ptr %.022.i410, i64 12 ; 2 uses
  %.not.i415 = icmp eq ptr %i.dqu, %.val26.i
  br i1 %.not.i415, label %._crit_edge.i416, label %.lr.ph.i409, !llvm.loop !768

._crit_edge.thread.i418:                          ; preds = %._crit_edge.i416, %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit.thread
  %.018.lcssa28.i419 = phi i32 [ %.sroa.speculated8.i414, %._crit_edge.i416 ], [ 2147483647, %_ZN8facebook5velox12_GLOBAL__N_111needFlattenERKNS0_13DecodedVectorE.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !853
  store i32 %.018.lcssa28.i419, ptr %14, align 16, !tbaa !100, !alias.scope !854, !noalias !853
  %i.dqv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.dqv, align 16, !tbaa !100, !alias.scope !854, !noalias !853
  %i.dqw = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 %.018.lcssa28.i419, ptr %i.dqw, align 16, !tbaa !100, !alias.scope !854, !noalias !853
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.104, i64 75, i64 273, ptr nonnull %14)
          to label %.noexc423 unwind label %bb.abl

.noexc423:                                        ; preds = %._crit_edge.thread.i418
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !853
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr nonnull @.str.104) #33
          to label %bb.yu unwind label %bb.yv

bb.yu:                                            ; preds = %.noexc423
  unreachable

bb.yv:                                            ; preds = %.noexc423
  %i.dqx = landingpad { ptr, i32 }
          cleanup
  %i.dqy = load ptr, ptr %15, align 8, !tbaa !107 ; 2 uses
  %i.dqz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dra = icmp eq ptr %i.dqy, %i.dqz
  br i1 %i.dra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i420: ; preds = %bb.yv
  %i.drb = load i64, ptr %i.dqz, align 8, !tbaa !100
  %i.drc = add i64 %i.drb, 1
  call void @_ZdlPvm(ptr noundef %i.dqy, i64 noundef %i.drc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i421: ; preds = %bb.yv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body97

.noexc94:                                         ; preds = %._crit_edge.i416
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #30, !noalias !852
  %i.drd = load ptr, ptr %0, align 8, !tbaa !84, !noalias !852
  %i.dre = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %128, ptr noundef null)
          to label %.noexc95 unwind label %bb.abl, !inline_history !773 ; 2 uses

.noexc95:                                         ; preds = %.noexc94
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %.not.i402 = icmp eq ptr %i.dre, null
  %.pre = zext nneg i32 %.sroa.speculated.i413 to i64 ; 2 uses
  br i1 %.not.i402, label %bb.yw, label %bb.yx

bb.yw:                                            ; preds = %.noexc95
  store ptr null, ptr %111, align 8, !tbaa !132, !alias.scope !855
  br label %.noexc96

bb.yx:                                            ; preds = %.noexc95
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !857
  store i8 -1, ptr %16, align 1, !tbaa !100, !noalias !857
  %i.drf = getelementptr inbounds nuw i8, ptr %16, i64 1
  store i8 1, ptr %i.drf, align 1, !tbaa !143, !noalias !857
  %i.drg = add nuw nsw i64 %.pre, 7
  %i.drh = lshr i64 %i.drg, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %111, i64 noundef %i.drh, ptr noundef %i.drd, ptr noundef nonnull align 1 dereferenceable(2) %16, i1 noundef zeroext false)
          to label %.noexc405 unwind label %bb.abl

.noexc405:                                        ; preds = %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30, !noalias !857
  %i.dri = load ptr, ptr %111, align 8, !tbaa !132, !alias.scope !858 ; 2 uses
  %i.drj = getelementptr inbounds nuw i8, ptr %i.dri, i64 44
  %i.drk = load i8, ptr %i.drj, align 4, !tbaa !138
  %i.drl = and i8 %i.drk, 2
  %.not.i.i.i403 = icmp eq i8 %i.drl, 0
  br i1 %.not.i.i.i403, label %bb.za, label %bb.yy, !prof !85

bb.yy:                                            ; preds = %.noexc405
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc.i.i404 unwind label %bb.yz

.noexc.i.i404:                                    ; preds = %bb.yy
  unreachable

bb.yz:                                            ; preds = %bb.za, %bb.yy
  %i.drm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #30
  br label %.body97

bb.za:                                            ; preds = %.noexc405
  %i.drn = getelementptr inbounds nuw i8, ptr %i.dri, i64 16
  %i.dro = load ptr, ptr %i.drn, align 8, !tbaa !139
  invoke void @_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE(ptr noundef %i.dro, ptr noundef nonnull %i.dre, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc96 unwind label %bb.yz

.noexc96:                                         ; preds = %bb.za, %bb.yw
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #30, !noalias !852
  %i.drp = load ptr, ptr %0, align 8, !tbaa !84, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !859
  store i32 0, ptr %17, align 4, !tbaa !100, !noalias !859
  %i.drq = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i8 1, ptr %i.drq, align 4, !tbaa !133, !noalias !859
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %112, i64 noundef %.pre, ptr noundef %i.drp, ptr noundef nonnull align 4 dereferenceable(8) %17, i1 noundef zeroext false)
          to label %bb.zb unwind label %bb.zq

bb.zb:                                            ; preds = %.noexc96
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !859
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #30, !noalias !852
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, i8 0, i64 16, i1 false), !noalias !852
  %i.drr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.drs = load i8, ptr %i.drr, align 8, !tbaa !60, !range !61, !noalias !852, !noundef !62
  %i.drt = trunc nuw i8 %i.drs to i1
  br i1 %i.drt, label %bb.zc, label %bb.zs

bb.zc:                                            ; preds = %bb.zb
  %i.dru = load ptr, ptr %i.ay, align 8, !tbaa !141, !noalias !852 ; 2 uses
  %.not.i399 = icmp eq ptr %i.dru, null
  br i1 %.not.i399, label %bb.zd, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

bb.zd:                                            ; preds = %bb.zc
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %128)
          to label %.noexc400 unwind label %bb.zr

.noexc400:                                        ; preds = %bb.zd
  %.pre.i = load ptr, ptr %i.ay, align 8, !tbaa !141, !noalias !852
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

_ZNK8facebook5velox13DecodedVector7indicesEv.exit: ; preds = %.noexc400, %bb.zc
  %i.drv = phi ptr [ %.pre.i, %.noexc400 ], [ %i.dru, %bb.zc ]
  %i.drw = load ptr, ptr %112, align 8, !tbaa !132, !noalias !852 ; 2 uses
  %i.drx = getelementptr inbounds nuw i8, ptr %i.drw, i64 44
  %i.dry = load i8, ptr %i.drx, align 4, !tbaa !138, !noalias !852
  %i.drz = and i8 %i.dry, 2
  %.not.i396 = icmp eq i8 %i.drz, 0
  br i1 %.not.i396, label %bb.zf, label %bb.ze, !prof !85

bb.ze:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc397 unwind label %bb.zr

.noexc397:                                        ; preds = %bb.ze
  unreachable

bb.zf:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.drw, i64 16
  %i.dsb = load ptr, ptr %i.dsa, align 8, !tbaa !139, !noalias !852
  %.val.i93 = load ptr, ptr %2, align 8, !tbaa !94, !noalias !852 ; 2 uses
  %.val24.i = load ptr, ptr %i.o, align 8, !tbaa !95, !noalias !852 ; 2 uses
  %.not2.i = icmp eq ptr %.val.i93, %.val24.i
  br i1 %.not2.i, label %_ZN8facebook5velox12_GLOBAL__N_111copyIndicesEPKiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPi.exit, label %.lr.ph4.split.us.i

.lr.ph4.split.us.i:                               ; preds = %bb.zf, %.lr.ph4.split.us.i
  %.0193.us.i = phi ptr [ %i.dsn, %.lr.ph4.split.us.i ], [ %.val.i93, %bb.zf ] ; 4 uses
  %i.dsc = getelementptr inbounds nuw i8, ptr %.0193.us.i, i64 4
  %i.dsd = load i32, ptr %i.dsc, align 4, !tbaa !128, !noalias !852
  %i.dse = sext i32 %i.dsd to i64
  %i.dsf = getelementptr inbounds [4 x i8], ptr %i.dsb, i64 %i.dse
  %i.dsg = load i32, ptr %.0193.us.i, align 4, !tbaa !154, !noalias !852
  %i.dsh = sext i32 %i.dsg to i64
  %i.dsi = getelementptr inbounds [4 x i8], ptr %i.drv, i64 %i.dsh
  %i.dsj = getelementptr inbounds nuw i8, ptr %.0193.us.i, i64 8
  %i.dsk = load i32, ptr %i.dsj, align 4, !tbaa !129, !noalias !852
  %i.dsl = sext i32 %i.dsk to i64
  %i.dsm = shl nsw i64 %i.dsl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dsf, ptr readonly align 4 %i.dsi, i64 %i.dsm, i1 false), !noalias !852
  %i.dsn = getelementptr inbounds nuw i8, ptr %.0193.us.i, i64 12 ; 2 uses
  %.not.us.i = icmp eq ptr %i.dsn, %.val24.i
  br i1 %.not.us.i, label %_ZN8facebook5velox12_GLOBAL__N_111copyIndicesEPKiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPi.exit, label %.lr.ph4.split.us.i

_ZN8facebook5velox12_GLOBAL__N_111copyIndicesEPKiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPi.exit: ; preds = %.lr.ph4.split.us.i, %bb.zf
end_hunk_6
begin_hunk_7_@_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !99
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !5
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN8facebook5velox13DecodedVector16decodeAndGetBaseERKSt10shared_ptrINS0_10BaseVectorEEb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_17newFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, i8 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.182", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = trunc nuw i8 %.8.val to i1
  %.val.pre = load ptr, ptr %2, align 8, !tbaa !94 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %.val.pre to i64            ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 12
  %or.cond = select i1 %i.a, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %.val.pre, align 4, !tbaa !154 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !67    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.pre, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !129  ; 2 uses
  br i1 %i.i, label %bb.c, label %._crit_edge2

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !102
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %._crit_edge2

bb.d:                                             ; preds = %bb.c
  store ptr %.pre, ptr %0, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !91
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.r, align 4, !tbaa !101
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !101
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

._crit_edge2:                                     ; preds = %bb.b, %bb.c
  %i.w = load ptr, ptr %.pre, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(94) %.pre, i32 noundef %i.h, i32 noundef %i.k)
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

._crit_edge:                                      ; preds = %bb.a
  %i.z = load ptr, ptr %1, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not19.i = icmp eq ptr %.val.pre, %i.c
  br i1 %.not19.i, label %._crit_edge.thread.i, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.ab = add i64 %i.d, -12
  %i.ac = sub i64 %i.ab, %i.e                     ; 3 uses
  %i.ad = udiv i64 %i.ac, 12
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.ac, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.ac, 384
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ae, 31                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 32, i64 %i.af      ; 2 uses
  %n.vec = sub nsw i64 %i.ae, %i.ah               ; 3 uses
  %i.ai = mul i64 %n.vec, 12
  %i.aj = getelementptr i8, ptr %.val.pre, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi12 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi13 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi14 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi15 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi16 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi17 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi18 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.bd, %vector.body ]
  %i.ak = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %.val.pre, i64 %i.ak
  %i.al = getelementptr i8, ptr %.val.pre, i64 %i.ak
  %i.am = getelementptr i8, ptr %.val.pre, i64 %i.ak
  %i.an = getelementptr i8, ptr %.val.pre, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ap = getelementptr i8, ptr %i.al, i64 100
  %i.aq = getelementptr i8, ptr %i.am, i64 196
  %i.ar = getelementptr i8, ptr %i.an, i64 292
  %wide.vec = load <24 x i32>, ptr %i.ao, align 4, !tbaa !101 ; 2 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec22 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec23 = load <24 x i32>, ptr %i.ap, align 4, !tbaa !101 ; 2 uses
  %strided.vec24 = shufflevector <24 x i32> %wide.vec23, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec25 = shufflevector <24 x i32> %wide.vec23, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec26 = load <24 x i32>, ptr %i.aq, align 4, !tbaa !101 ; 2 uses
  %strided.vec27 = shufflevector <24 x i32> %wide.vec26, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec28 = shufflevector <24 x i32> %wide.vec26, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec29 = load <24 x i32>, ptr %i.ar, align 4, !tbaa !101 ; 2 uses
  %strided.vec30 = shufflevector <24 x i32> %wide.vec29, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec31 = shufflevector <24 x i32> %wide.vec29, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.as = add nsw <8 x i32> %strided.vec22, %strided.vec
  %i.at = add nsw <8 x i32> %strided.vec25, %strided.vec24
  %i.au = add nsw <8 x i32> %strided.vec28, %strided.vec27
  %i.av = add nsw <8 x i32> %strided.vec31, %strided.vec30
  %i.aw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.as) ; 2 uses
  %i.ax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi12, <8 x i32> %i.at) ; 2 uses
  %i.ay = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi13, <8 x i32> %i.au) ; 2 uses
  %i.az = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi14, <8 x i32> %i.av) ; 2 uses
  %i.ba = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec, <8 x i32> %vec.phi15) ; 2 uses
  %i.bb = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec24, <8 x i32> %vec.phi16) ; 2 uses
  %i.bc = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec27, <8 x i32> %vec.phi17) ; 2 uses
  %i.bd = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec30, <8 x i32> %vec.phi18) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !862

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax34 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ba, <8 x i32> %i.bb)
  %rdx.minmax35 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax34, <8 x i32> %i.bc)
  %rdx.minmax36 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax35, <8 x i32> %i.bd)
  %i.bf = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax36) ; 2 uses
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aw, <8 x i32> %i.ax)
  %rdx.minmax32 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.ay)
  %rdx.minmax33 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax32, <8 x i32> %i.az)
  %i.bg = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax33) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ah, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx37 = phi i32 [ %i.bf, %vec.epilog.iter.check ], [ 2147483647, %vector.main.loop.iter.check ]
  %broadcast.splatinsert41 = insertelement <8 x i32> poison, i32 %bc.merge.rdx37, i64 0
  %broadcast.splat42 = shufflevector <8 x i32> %broadcast.splatinsert41, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %6 = and i64 %i.ae, 7                           ; 2 uses
  %7 = icmp eq i64 %6, 0
  %8 = select i1 %7, i64 8, i64 %6
  %n.vec38 = sub nsw i64 %i.ae, %8                ; 2 uses
  %9 = mul i64 %n.vec38, 12
  %10 = getelementptr i8, ptr %.val.pre, i64 %9
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi42 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bk, %vec.epilog.vector.body ]
  %vec.phi43 = phi <8 x i32> [ %broadcast.splat42, %vec.epilog.ph ], [ %i.bl, %vec.epilog.vector.body ]
  %i.bh = mul i64 %index41, 12
  %next.gep44 = getelementptr i8, ptr %.val.pre, i64 %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %next.gep44, i64 4
  %wide.vec45 = load <24 x i32>, ptr %i.bi, align 4, !tbaa !101 ; 2 uses
  %strided.vec46 = shufflevector <24 x i32> %wide.vec45, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec47 = shufflevector <24 x i32> %wide.vec45, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.bj = add nsw <8 x i32> %strided.vec47, %strided.vec46
  %i.bk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi42, <8 x i32> %i.bj) ; 2 uses
  %i.bl = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec46, <8 x i32> %vec.phi43) ; 2 uses
  %index.next48 = add nuw i64 %index41, 8         ; 2 uses
  %i.bm = icmp eq i64 %index.next48, %n.vec38
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !863

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bn = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.bk)
  %i.bo = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.bl)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i.ph = phi ptr [ %.val.pre, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %10, %vec.epilog.middle.block ]
  %.01721.i.ph = phi i32 [ 0, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.01820.i.ph = phi i32 [ 2147483647, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not11.i = icmp eq i32 %.sroa.speculated8.i, 0
  br i1 %.not11.i, label %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %._crit_edge.thread.i, !prof !174

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01721.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.01721.i.ph, %.lr.ph.i.preheader ]
  %.01820.i = phi i32 [ %.sroa.speculated8.i, %.lr.ph.i ], [ %.01820.i.ph, %.lr.ph.i.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !129
  %i.bt = add nsw i32 %i.bs, %i.bq
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.01721.i, i32 %i.bt) ; 2 uses
  %.sroa.speculated8.i = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %.01820.i) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.bu, %i.c
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !864

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %._crit_edge
  %.018.lcssa28.i = phi i32 [ %.sroa.speculated8.i, %._crit_edge.i ], [ 2147483647, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !873
  store i32 %.018.lcssa28.i, ptr %4, align 16, !tbaa !100, !alias.scope !874, !noalias !873
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bv, align 16, !tbaa !100, !alias.scope !874, !noalias !873
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.018.lcssa28.i, ptr %i.bw, align 16, !tbaa !100, !alias.scope !874, !noalias !873
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.104, i64 75, i64 273, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !873
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.104) #33
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread.i
  unreachable

bb.i:                                             ; preds = %._crit_edge.thread.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %5, align 8, !tbaa !107   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !100
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cj, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !875
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i32 noundef %.sroa.speculated.i, ptr noundef %.0.val), !noalias !875
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.cd = load <2 x ptr>, ptr %3, align 16, !tbaa !96, !noalias !877
  %i.ce = load ptr, ptr %3, align 16, !tbaa !67, !noalias !877 ; 2 uses
  store <2 x ptr> %i.cd, ptr %0, align 8, !tbaa !96, !alias.scope !877
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !875
  %i.cf = load ptr, ptr %1, align 8, !tbaa !67
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(94) %i.ce, ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  br label %common.resume

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.g, %bb.f, %bb.d, %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, %._crit_edge2
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_16newRowERKNS0_24EncodedVectorCopyOptionsERKNS0_9RowVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional.109", align 1 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.182", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.23", align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val = load ptr, ptr %3, align 8, !tbaa !94    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !95 ; 3 uses
  %.not19.i = icmp eq ptr %.val, %.val21
  br i1 %.not19.i, label %._crit_edge.thread.i, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.val2145 = ptrtoaddr ptr %.val21 to i64
  %.val46 = ptrtoaddr ptr %.val to i64
  %i.c = add i64 %.val2145, -12
  %i.d = sub i64 %i.c, %.val46                    ; 3 uses
  %i.e = udiv i64 %i.d, 12
  %i.f = add nuw nsw i64 %i.e, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.d, 384
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.f, 31                         ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 32, i64 %i.g         ; 2 uses
  %n.vec = sub nsw i64 %i.f, %i.i                 ; 3 uses
  %i.j = mul i64 %n.vec, 12
  %i.k = getelementptr i8, ptr %.val, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi48 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi49 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi50 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi51 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi52 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi53 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi54 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ae, %vector.body ]
  %i.l = mul i64 %index, 12                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.val, i64 %i.l
  %i.m = getelementptr i8, ptr %.val, i64 %i.l
  %i.n = getelementptr i8, ptr %.val, i64 %i.l
  %i.o = getelementptr i8, ptr %.val, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.q = getelementptr i8, ptr %i.m, i64 100
  %i.r = getelementptr i8, ptr %i.n, i64 196
  %i.s = getelementptr i8, ptr %i.o, i64 292
  %wide.vec = load <24 x i32>, ptr %i.p, align 4, !tbaa !101 ; 2 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec58 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec59 = load <24 x i32>, ptr %i.q, align 4, !tbaa !101 ; 2 uses
  %strided.vec60 = shufflevector <24 x i32> %wide.vec59, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec61 = shufflevector <24 x i32> %wide.vec59, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec62 = load <24 x i32>, ptr %i.r, align 4, !tbaa !101 ; 2 uses
  %strided.vec63 = shufflevector <24 x i32> %wide.vec62, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec64 = shufflevector <24 x i32> %wide.vec62, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec65 = load <24 x i32>, ptr %i.s, align 4, !tbaa !101 ; 2 uses
  %strided.vec66 = shufflevector <24 x i32> %wide.vec65, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec67 = shufflevector <24 x i32> %wide.vec65, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.t = add nsw <8 x i32> %strided.vec58, %strided.vec
  %i.u = add nsw <8 x i32> %strided.vec61, %strided.vec60
  %i.v = add nsw <8 x i32> %strided.vec64, %strided.vec63
  %i.w = add nsw <8 x i32> %strided.vec67, %strided.vec66
  %i.x = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.t) ; 2 uses
  %i.y = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi48, <8 x i32> %i.u) ; 2 uses
  %i.z = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi49, <8 x i32> %i.v) ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi50, <8 x i32> %i.w) ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec, <8 x i32> %vec.phi51) ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec60, <8 x i32> %vec.phi52) ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec63, <8 x i32> %vec.phi53) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec66, <8 x i32> %vec.phi54) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !878

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax70 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ac)
  %rdx.minmax71 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax70, <8 x i32> %i.ad)
  %rdx.minmax72 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax71, <8 x i32> %i.ae)
  %i.ag = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax72) ; 2 uses
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.x, <8 x i32> %i.y)
  %rdx.minmax68 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.z)
  %rdx.minmax69 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax68, <8 x i32> %i.aa)
  %i.ah = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax69) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.i, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ah, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx73 = phi i32 [ %i.ag, %vec.epilog.iter.check ], [ 2147483647, %vector.main.loop.iter.check ]
  %broadcast.splatinsert77 = insertelement <8 x i32> poison, i32 %bc.merge.rdx73, i64 0
  %broadcast.splat78 = shufflevector <8 x i32> %broadcast.splatinsert77, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %9 = and i64 %i.f, 7                            ; 2 uses
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i64 8, i64 %9
  %n.vec74 = sub nsw i64 %i.f, %11                ; 2 uses
  %12 = mul i64 %n.vec74, 12
  %13 = getelementptr i8, ptr %.val, i64 %12
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi78 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.al, %vec.epilog.vector.body ]
  %vec.phi79 = phi <8 x i32> [ %broadcast.splat78, %vec.epilog.ph ], [ %i.am, %vec.epilog.vector.body ]
  %i.ai = mul i64 %index77, 12
  %next.gep80 = getelementptr i8, ptr %.val, i64 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep80, i64 4
  %wide.vec81 = load <24 x i32>, ptr %i.aj, align 4, !tbaa !101 ; 2 uses
  %strided.vec82 = shufflevector <24 x i32> %wide.vec81, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec83 = shufflevector <24 x i32> %wide.vec81, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ak = add nsw <8 x i32> %strided.vec83, %strided.vec82
  %i.al = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi78, <8 x i32> %i.ak) ; 2 uses
  %i.am = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec82, <8 x i32> %vec.phi79) ; 2 uses
  %index.next84 = add nuw i64 %index77, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next84, %n.vec74
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !879

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.al)
  %i.ap = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.am)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i.ph = phi ptr [ %.val, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  %.01721.i.ph = phi i32 [ 0, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.01820.i.ph = phi i32 [ 2147483647, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not11.i = icmp eq i32 %.sroa.speculated8.i, 0
  br i1 %.not11.i, label %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %._crit_edge.thread.i, !prof !174

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01721.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.01721.i.ph, %.lr.ph.i.preheader ]
  %.01820.i = phi i32 [ %.sroa.speculated8.i, %.lr.ph.i ], [ %.01820.i.ph, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = add nsw i32 %i.at, %i.ar
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.01721.i, i32 %i.au) ; 3 uses
  %.sroa.speculated8.i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.01820.i) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %.val21
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !880

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.018.lcssa28.i = phi i32 [ %.sroa.speculated8.i, %._crit_edge.i ], [ 2147483647, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !896
  store i32 %.018.lcssa28.i, ptr %5, align 16, !tbaa !100, !alias.scope !897, !noalias !896
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.aw, align 16, !tbaa !100, !alias.scope !897, !noalias !896
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.018.lcssa28.i, ptr %i.ax, align 16, !tbaa !100, !alias.scope !897, !noalias !896
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.104, i64 75, i64 273, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !896
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.104) #33
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.thread.i
  unreachable

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %6, align 8, !tbaa !107   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !100
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.v, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bp, %bb.g ], [ %.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %._crit_edge.i
  store i32 %.sroa.speculated.i, ptr %i.a, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.be = load ptr, ptr %1, align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !156 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %.not.i22 = icmp eq ptr %i.bg, null
  br i1 %.not.i22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  store ptr null, ptr %7, align 8, !tbaa !132, !alias.scope !898
  br label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit

bb.e:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.bh = zext nneg i32 %.sroa.speculated.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !900
  store i8 -1, ptr %4, align 1, !tbaa !100, !noalias !900
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.bi, align 1, !tbaa !143, !noalias !900
  %i.bj = add nuw nsw i64 %i.bh, 7
  %i.bk = lshr i64 %i.bj, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %7, i64 noundef %i.bk, ptr noundef %i.be, ptr noundef nonnull align 1 dereferenceable(2) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !900
  %i.bl = load ptr, ptr %7, align 8, !tbaa !132, !alias.scope !901 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !138
  %i.bo = and i8 %i.bn, 2
  %.not.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.f, !prof !85

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #30
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !139
  invoke void @_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE(ptr noundef %i.br, ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit unwind label %bb.g

_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %bb.d, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !164 ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, 576460752303423487
  br i1 %i.bu, label %bb.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.i:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #33
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.bx = shl nuw nsw i64 %i.bt, 4                ; 3 uses
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #36
          to label %.lr.ph.preheader unwind label %bb.j ; 4 uses

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.by, ptr %8, align 8, !tbaa !166
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bt
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.bx, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.by, i64 %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !178
  store ptr %scevgep.i.i.i.i.i, ptr %i.ca, align 8, !tbaa !165
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %.thread
  %i.cc = phi ptr [ %i.bw, %.thread ], [ %i.cb, %bb.l ]
  %i.cd = phi ptr [ %i.bv, %.thread ], [ %i.ca, %bb.l ]
  %i.ce = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #36
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc24:                                         ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 1, ptr %i.cg, align 8, !tbaa !98, !noalias !902
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 1, ptr %i.ch, align 4, !tbaa !99, !noalias !902
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ce, align 8, !tbaa !88, !noalias !902
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9RowVectorEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSt6vectorIS8_INS1_10BaseVectorEESaISL_EEEEvPT_DpOT0_(ptr noundef nonnull %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !902

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc24
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 168) #34, !noalias !902
  br label %.body

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.v
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12_GLOBAL__N_16newRowERKNS0_24EncodedVectorCopyOptionsERKNS0_9RowVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE:bb.a
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.r, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, !prof !90

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #30
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.n, %.lr.ph.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.ds, %i.da
  br i1 %.not.i.i.i26, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !166
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.cz, %_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i
  %i.du = load ptr, ptr %i.cc, align 8, !tbaa !178
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #34
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.dy = load ptr, ptr %7, align 8, !tbaa !132   ; 7 uses
  %.not.i27 = icmp eq ptr %i.dy, null
  br i1 %.not.i27, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = atomicrmw add ptr %i.dz, i32 -1 acq_rel, align 4
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.t
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(64) %i.dy)
          to label %.noexc.i unwind label %bb.u, !inline_history !4

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !148
  %.not.i.i28 = icmp eq ptr %i.eg, null
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !88
  %..i.i = select i1 %.not.i.i28, i64 8, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %..i.i
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(64) %i.dy)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.u, !inline_history !4

bb.u:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit, %bb.t, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.k, %._crit_edge
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.cj, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ck, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_16newMapERKNS0_24EncodedVectorCopyOptionsERKNS0_9MapVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(161) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional", align 4     ; 5 uses
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.std::optional.109", align 1 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.182", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %13 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %15 = alloca %"class.folly::Range", align 8     ; 6 uses
  %16 = alloca %"class.folly::Range", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val24 = load ptr, ptr %3, align 8, !tbaa !94  ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !95 ; 3 uses
  %.not19.i = icmp eq ptr %.val24, %.val25
  br i1 %.not19.i, label %._crit_edge.thread.i, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.val2571 = ptrtoaddr ptr %.val25 to i64
  %.val2472 = ptrtoaddr ptr %.val24 to i64
  %i.c = add i64 %.val2571, -12
  %i.d = sub i64 %i.c, %.val2472                  ; 3 uses
  %i.e = udiv i64 %i.d, 12
  %i.f = add nuw nsw i64 %i.e, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check73 = icmp ult i64 %i.d, 384
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.f, 31                         ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 32, i64 %i.g         ; 2 uses
  %n.vec = sub nsw i64 %i.f, %i.i                 ; 3 uses
  %i.j = mul i64 %n.vec, 12
  %i.k = getelementptr i8, ptr %.val24, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi74 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi75 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi76 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi77 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi78 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi79 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi80 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ae, %vector.body ]
  %i.l = mul i64 %index, 12                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.val24, i64 %i.l
  %i.m = getelementptr i8, ptr %.val24, i64 %i.l
  %i.n = getelementptr i8, ptr %.val24, i64 %i.l
  %i.o = getelementptr i8, ptr %.val24, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.q = getelementptr i8, ptr %i.m, i64 100
  %i.r = getelementptr i8, ptr %i.n, i64 196
  %i.s = getelementptr i8, ptr %i.o, i64 292
  %wide.vec = load <24 x i32>, ptr %i.p, align 4, !tbaa !101 ; 2 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec84 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec85 = load <24 x i32>, ptr %i.q, align 4, !tbaa !101 ; 2 uses
  %strided.vec86 = shufflevector <24 x i32> %wide.vec85, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec87 = shufflevector <24 x i32> %wide.vec85, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec88 = load <24 x i32>, ptr %i.r, align 4, !tbaa !101 ; 2 uses
  %strided.vec89 = shufflevector <24 x i32> %wide.vec88, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec90 = shufflevector <24 x i32> %wide.vec88, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec91 = load <24 x i32>, ptr %i.s, align 4, !tbaa !101 ; 2 uses
  %strided.vec92 = shufflevector <24 x i32> %wide.vec91, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec93 = shufflevector <24 x i32> %wide.vec91, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.t = add nsw <8 x i32> %strided.vec84, %strided.vec
  %i.u = add nsw <8 x i32> %strided.vec87, %strided.vec86
  %i.v = add nsw <8 x i32> %strided.vec90, %strided.vec89
  %i.w = add nsw <8 x i32> %strided.vec93, %strided.vec92
  %i.x = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.t) ; 2 uses
  %i.y = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi74, <8 x i32> %i.u) ; 2 uses
  %i.z = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi75, <8 x i32> %i.v) ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi76, <8 x i32> %i.w) ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec, <8 x i32> %vec.phi77) ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec86, <8 x i32> %vec.phi78) ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec89, <8 x i32> %vec.phi79) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec92, <8 x i32> %vec.phi80) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !903

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax96 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ac)
  %rdx.minmax97 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax96, <8 x i32> %i.ad)
  %rdx.minmax98 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax97, <8 x i32> %i.ae)
  %i.ag = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax98) ; 2 uses
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.x, <8 x i32> %i.y)
  %rdx.minmax94 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.z)
  %rdx.minmax95 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax94, <8 x i32> %i.aa)
  %i.ah = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax95) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.i, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ah, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx99 = phi i32 [ %i.ag, %vec.epilog.iter.check ], [ 2147483647, %vector.main.loop.iter.check ]
  %broadcast.splatinsert103 = insertelement <8 x i32> poison, i32 %bc.merge.rdx99, i64 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %17 = and i64 %i.f, 7                           ; 2 uses
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %18, i64 8, i64 %17
  %n.vec100 = sub nsw i64 %i.f, %19               ; 2 uses
  %20 = mul i64 %n.vec100, 12
  %21 = getelementptr i8, ptr %.val24, i64 %20
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi104 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.al, %vec.epilog.vector.body ]
  %vec.phi105 = phi <8 x i32> [ %broadcast.splat104, %vec.epilog.ph ], [ %i.am, %vec.epilog.vector.body ]
  %i.ai = mul i64 %index103, 12
  %next.gep106 = getelementptr i8, ptr %.val24, i64 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep106, i64 4
  %wide.vec107 = load <24 x i32>, ptr %i.aj, align 4, !tbaa !101 ; 2 uses
  %strided.vec108 = shufflevector <24 x i32> %wide.vec107, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec109 = shufflevector <24 x i32> %wide.vec107, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ak = add nsw <8 x i32> %strided.vec109, %strided.vec108
  %i.al = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi104, <8 x i32> %i.ak) ; 2 uses
  %i.am = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec108, <8 x i32> %vec.phi105) ; 2 uses
  %index.next110 = add nuw i64 %index103, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next110, %n.vec100
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !904

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.al)
  %i.ap = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.am)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i.ph = phi ptr [ %.val24, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %21, %vec.epilog.middle.block ]
  %.01721.i.ph = phi i32 [ 0, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.01820.i.ph = phi i32 [ 2147483647, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not11.i = icmp eq i32 %.sroa.speculated8.i, 0
  br i1 %.not11.i, label %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %._crit_edge.thread.i, !prof !174

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01721.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.01721.i.ph, %.lr.ph.i.preheader ]
  %.01820.i = phi i32 [ %.sroa.speculated8.i, %.lr.ph.i ], [ %.01820.i.ph, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = add nsw i32 %i.at, %i.ar
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.01721.i, i32 %i.au) ; 4 uses
  %.sroa.speculated8.i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.01820.i) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %.val25
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !905

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.018.lcssa28.i = phi i32 [ %.sroa.speculated8.i, %._crit_edge.i ], [ 2147483647, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !924
  store i32 %.018.lcssa28.i, ptr %7, align 16, !tbaa !100, !alias.scope !925, !noalias !924
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.aw, align 16, !tbaa !100, !alias.scope !925, !noalias !924
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %.018.lcssa28.i, ptr %i.ax, align 16, !tbaa !100, !alias.scope !925, !noalias !924
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.104, i64 75, i64 273, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !924
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.104) #33
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.thread.i
  unreachable

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %8, align 8, !tbaa !107   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !100
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.aq, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bp, %bb.g ], [ %.pn.pn.pn.pn, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %._crit_edge.i
  store i32 %.sroa.speculated.i, ptr %i.a, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.be = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !156 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %.not.i26 = icmp eq ptr %i.bg, null
  br i1 %.not.i26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  store ptr null, ptr %9, align 8, !tbaa !132, !alias.scope !926
  br label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit

bb.e:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.bh = zext nneg i32 %.sroa.speculated.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !928
  store i8 -1, ptr %6, align 1, !tbaa !100, !noalias !928
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 1, ptr %i.bi, align 1, !tbaa !143, !noalias !928
  %i.bj = add nuw nsw i64 %i.bh, 7
  %i.bk = lshr i64 %i.bj, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.bk, ptr noundef %i.be, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !928
  %i.bl = load ptr, ptr %9, align 8, !tbaa !132, !alias.scope !929 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !138
  %i.bo = and i8 %i.bn, 2
  %.not.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.f, !prof !85

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !139
  invoke void @_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE(ptr noundef %i.br, ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge unwind label %bb.g

._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge: ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4, !tbaa !101
  %.pre61 = load ptr, ptr %1, align 8, !tbaa !84
  br label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit

_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge, %bb.d
  %i.bs = phi ptr [ %.pre61, %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge ], [ %i.be, %bb.d ]
  %i.bt = phi i32 [ %.pre, %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge ], [ %.sroa.speculated.i, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bu = sext i32 %i.bt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !930
  store i32 0, ptr %5, align 4, !tbaa !100, !noalias !930
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 1, ptr %i.bv, align 4, !tbaa !133, !noalias !930
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, i64 noundef %i.bu, ptr noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(8) %5, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.ai

bb.i:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !930
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !101
  %i.bx = load ptr, ptr %1, align 8, !tbaa !84
  %i.by = sext i32 %i.bw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !931
  store i32 0, ptr %4, align 4, !tbaa !100, !noalias !931
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 1, ptr %i.bz, align 4, !tbaa !133, !noalias !931
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %11, i64 noundef %i.by, ptr noundef %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.aj

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !931
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.ca = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !138
  %i.cd = and i8 %i.cc, 2
  %.not.i28 = icmp eq i8 %i.cd, 0
  br i1 %.not.i28, label %bb.k, label %.invoke, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %11, align 8, !tbaa !132  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !138
  %i.ch = and i8 %i.cg, 2
  %.not.i29 = icmp eq i8 %i.ch, 0
  br i1 %.not.i29, label %bb.l, label %.invoke, !prof !85

.invoke:                                          ; preds = %bb.k, %bb.j
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.cont unwind label %bb.ak

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !139
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !139
  %.val = load ptr, ptr %3, align 8, !tbaa !94
  %.val23 = load ptr, ptr %i.b, align 8, !tbaa !95
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_114toNestedRangesERKNS0_15ArrayVectorBaseERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiSE_(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr %.val, ptr %.val23, i32 noundef 0, ptr noundef %i.cj, ptr noundef %i.cl)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox12_GLOBAL__N_16newMapERKNS0_24EncodedVectorCopyOptionsERKNS0_9MapVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE:bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !148
  %.not.i.i55 = icmp eq ptr %i.gc, null
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !88
  %..i.i56 = select i1 %.not.i.i55, i64 8, i64 48
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %..i.i56
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(64) %i.fu)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit57 unwind label %bb.ah, !inline_history !4

bb.ah:                                            ; preds = %.noexc.i54, %.sink.split.i.i53
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit57: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit51, %bb.ag, %.noexc.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.ai:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aj:                                            ; preds = %bb.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %.invoke, %bb.l
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit59

bb.al:                                            ; preds = %bb.m
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body

bb.am:                                            ; preds = %bb.n
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %.body

bb.an:                                            ; preds = %bb.o
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.an, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.gl, %bb.al ], [ %i.gm, %bb.am ], [ %i.gn, %bb.an ], [ %i.dc, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i ] ; 2 uses
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %.not.i.i.i58 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit59, label %bb.ao

bb.ao:                                            ; preds = %.body
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !147
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.gr) #34
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit59

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit59: ; preds = %bb.ao, %.body, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ak ], [ %.pn, %.body ], [ %.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #30
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit59, %bb.aj
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit59 ], [ %i.gj, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ap ], [ %i.gi, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_18newArrayERKNS0_24EncodedVectorCopyOptionsERKNS0_11ArrayVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional", align 4     ; 5 uses
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.std::optional.109", align 1 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.182", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %13 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %14 = alloca %"class.folly::Range", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val22 = load ptr, ptr %3, align 8, !tbaa !94  ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val23 = load ptr, ptr %i.b, align 8, !tbaa !95 ; 3 uses
  %.not19.i = icmp eq ptr %.val22, %.val23
  br i1 %.not19.i, label %._crit_edge.thread.i, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.val2363 = ptrtoaddr ptr %.val23 to i64
  %.val2264 = ptrtoaddr ptr %.val22 to i64
  %i.c = add i64 %.val2363, -12
  %i.d = sub i64 %i.c, %.val2264                  ; 3 uses
  %i.e = udiv i64 %i.d, 12
  %i.f = add nuw nsw i64 %i.e, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp ult i64 %i.d, 384
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.f, 31                         ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 32, i64 %i.g         ; 2 uses
  %n.vec = sub nsw i64 %i.f, %i.i                 ; 3 uses
  %i.j = mul i64 %n.vec, 12
  %i.k = getelementptr i8, ptr %.val22, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi66 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi67 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi68 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi69 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi70 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi71 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi72 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ae, %vector.body ]
  %i.l = mul i64 %index, 12                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.val22, i64 %i.l
  %i.m = getelementptr i8, ptr %.val22, i64 %i.l
  %i.n = getelementptr i8, ptr %.val22, i64 %i.l
  %i.o = getelementptr i8, ptr %.val22, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.q = getelementptr i8, ptr %i.m, i64 100
  %i.r = getelementptr i8, ptr %i.n, i64 196
  %i.s = getelementptr i8, ptr %i.o, i64 292
  %wide.vec = load <24 x i32>, ptr %i.p, align 4, !tbaa !101 ; 2 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec76 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec77 = load <24 x i32>, ptr %i.q, align 4, !tbaa !101 ; 2 uses
  %strided.vec78 = shufflevector <24 x i32> %wide.vec77, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec79 = shufflevector <24 x i32> %wide.vec77, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec80 = load <24 x i32>, ptr %i.r, align 4, !tbaa !101 ; 2 uses
  %strided.vec81 = shufflevector <24 x i32> %wide.vec80, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec82 = shufflevector <24 x i32> %wide.vec80, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec83 = load <24 x i32>, ptr %i.s, align 4, !tbaa !101 ; 2 uses
  %strided.vec84 = shufflevector <24 x i32> %wide.vec83, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec85 = shufflevector <24 x i32> %wide.vec83, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.t = add nsw <8 x i32> %strided.vec76, %strided.vec
  %i.u = add nsw <8 x i32> %strided.vec79, %strided.vec78
  %i.v = add nsw <8 x i32> %strided.vec82, %strided.vec81
  %i.w = add nsw <8 x i32> %strided.vec85, %strided.vec84
  %i.x = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.t) ; 2 uses
  %i.y = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi66, <8 x i32> %i.u) ; 2 uses
  %i.z = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi67, <8 x i32> %i.v) ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi68, <8 x i32> %i.w) ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec, <8 x i32> %vec.phi69) ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec78, <8 x i32> %vec.phi70) ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec81, <8 x i32> %vec.phi71) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec84, <8 x i32> %vec.phi72) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !933

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax88 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ac)
  %rdx.minmax89 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax88, <8 x i32> %i.ad)
  %rdx.minmax90 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax89, <8 x i32> %i.ae)
  %i.ag = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax90) ; 2 uses
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.x, <8 x i32> %i.y)
  %rdx.minmax86 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.z)
  %rdx.minmax87 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax86, <8 x i32> %i.aa)
  %i.ah = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax87) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.i, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ah, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx91 = phi i32 [ %i.ag, %vec.epilog.iter.check ], [ 2147483647, %vector.main.loop.iter.check ]
  %broadcast.splatinsert95 = insertelement <8 x i32> poison, i32 %bc.merge.rdx91, i64 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %15 = and i64 %i.f, 7                           ; 2 uses
  %16 = icmp eq i64 %15, 0
  %17 = select i1 %16, i64 8, i64 %15
  %n.vec92 = sub nsw i64 %i.f, %17                ; 2 uses
  %18 = mul i64 %n.vec92, 12
  %19 = getelementptr i8, ptr %.val22, i64 %18
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi96 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.al, %vec.epilog.vector.body ]
  %vec.phi97 = phi <8 x i32> [ %broadcast.splat96, %vec.epilog.ph ], [ %i.am, %vec.epilog.vector.body ]
  %i.ai = mul i64 %index95, 12
  %next.gep98 = getelementptr i8, ptr %.val22, i64 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep98, i64 4
  %wide.vec99 = load <24 x i32>, ptr %i.aj, align 4, !tbaa !101 ; 2 uses
  %strided.vec100 = shufflevector <24 x i32> %wide.vec99, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec101 = shufflevector <24 x i32> %wide.vec99, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ak = add nsw <8 x i32> %strided.vec101, %strided.vec100
  %i.al = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi96, <8 x i32> %i.ak) ; 2 uses
  %i.am = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec100, <8 x i32> %vec.phi97) ; 2 uses
  %index.next102 = add nuw i64 %index95, 8        ; 2 uses
  %i.an = icmp eq i64 %index.next102, %n.vec92
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !934

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.al)
  %i.ap = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.am)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i.ph = phi ptr [ %.val22, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %19, %vec.epilog.middle.block ]
  %.01721.i.ph = phi i32 [ 0, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.01820.i.ph = phi i32 [ 2147483647, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not11.i = icmp eq i32 %.sroa.speculated8.i, 0
  br i1 %.not11.i, label %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %._crit_edge.thread.i, !prof !174

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01721.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.01721.i.ph, %.lr.ph.i.preheader ]
  %.01820.i = phi i32 [ %.sroa.speculated8.i, %.lr.ph.i ], [ %.01820.i.ph, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = add nsw i32 %i.at, %i.ar
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.01721.i, i32 %i.au) ; 4 uses
  %.sroa.speculated8.i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.01820.i) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %.val23
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !935

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.018.lcssa28.i = phi i32 [ %.sroa.speculated8.i, %._crit_edge.i ], [ 2147483647, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !954
  store i32 %.018.lcssa28.i, ptr %7, align 16, !tbaa !100, !alias.scope !955, !noalias !954
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.aw, align 16, !tbaa !100, !alias.scope !955, !noalias !954
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %.018.lcssa28.i, ptr %i.ax, align 16, !tbaa !100, !alias.scope !955, !noalias !954
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.104, i64 75, i64 273, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !954
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.104) #33
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.thread.i
  unreachable

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %8, align 8, !tbaa !107   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !100
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ai, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bp, %bb.g ], [ %.pn.pn.pn.pn, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %._crit_edge.i
  store i32 %.sroa.speculated.i, ptr %i.a, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.be = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !156 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %.not.i24 = icmp eq ptr %i.bg, null
  br i1 %.not.i24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  store ptr null, ptr %9, align 8, !tbaa !132, !alias.scope !956
  br label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit

bb.e:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.bh = zext nneg i32 %.sroa.speculated.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !958
  store i8 -1, ptr %6, align 1, !tbaa !100, !noalias !958
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 1, ptr %i.bi, align 1, !tbaa !143, !noalias !958
  %i.bj = add nuw nsw i64 %i.bh, 7
  %i.bk = lshr i64 %i.bj, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.bk, ptr noundef %i.be, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !958
  %i.bl = load ptr, ptr %9, align 8, !tbaa !132, !alias.scope !959 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !138
  %i.bo = and i8 %i.bn, 2
  %.not.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.f, !prof !85

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !139
  invoke void @_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE(ptr noundef %i.br, ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge unwind label %bb.g

._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge: ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4, !tbaa !101
  %.pre54 = load ptr, ptr %1, align 8, !tbaa !84
  br label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit

_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge, %bb.d
  %i.bs = phi ptr [ %.pre54, %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge ], [ %i.be, %bb.d ]
  %i.bt = phi i32 [ %.pre, %._ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit_crit_edge ], [ %.sroa.speculated.i, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bu = sext i32 %i.bt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !960
  store i32 0, ptr %5, align 4, !tbaa !100, !noalias !960
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 1, ptr %i.bv, align 4, !tbaa !133, !noalias !960
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, i64 noundef %i.bu, ptr noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(8) %5, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.ab

bb.i:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !960
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !101
  %i.bx = load ptr, ptr %1, align 8, !tbaa !84
  %i.by = sext i32 %i.bw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !961
  store i32 0, ptr %4, align 4, !tbaa !100, !noalias !961
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 1, ptr %i.bz, align 4, !tbaa !133, !noalias !961
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %11, i64 noundef %i.by, ptr noundef %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !961
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.ca = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !138
  %i.cd = and i8 %i.cc, 2
  %.not.i26 = icmp eq i8 %i.cd, 0
  br i1 %.not.i26, label %bb.k, label %.invoke, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %11, align 8, !tbaa !132  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !138
  %i.ch = and i8 %i.cg, 2
  %.not.i27 = icmp eq i8 %i.ch, 0
  br i1 %.not.i27, label %bb.l, label %.invoke, !prof !85

.invoke:                                          ; preds = %bb.k, %bb.j
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #33
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !139
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !139
  %.val = load ptr, ptr %3, align 8, !tbaa !94
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !95
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_114toNestedRangesERKNS0_15ArrayVectorBaseERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiSE_(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr %.val, ptr %.val21, i32 noundef 0, ptr noundef %i.cj, ptr noundef %i.cl)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12_GLOBAL__N_18newArrayERKNS0_24EncodedVectorCopyOptionsERKNS0_11ArrayVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE:bb.a
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !148
  %.not.i.i48 = icmp eq ptr %i.fj, null
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !88
  %..i.i49 = select i1 %.not.i.i48, i64 8, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %..i.i49
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(64) %i.fb)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit50 unwind label %bb.aa, !inline_history !4

bb.aa:                                            ; preds = %.noexc.i47, %.sink.split.i.i46
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit50: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit44, %bb.z, %.noexc.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.ab:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ac:                                            ; preds = %bb.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %.invoke, %bb.l
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit52

bb.ae:                                            ; preds = %bb.m
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.body

bb.af:                                            ; preds = %bb.n
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.af, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.ae ], [ %i.ft, %bb.af ], [ %i.da, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i ] ; 2 uses
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %.not.i.i.i51 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit52, label %bb.ag

bb.ag:                                            ; preds = %.body
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !147
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.fx) #34
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit52

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit52: ; preds = %bb.ag, %.body, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.ad ], [ %.pn, %.body ], [ %.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #30
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit52, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit52 ], [ %i.fq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ah ], [ %i.fp, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_110newFlatMapERKNS0_24EncodedVectorCopyOptionsERKNS0_13FlatMapVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(217) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional.109", align 1 ; 5 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.696", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %9 = alloca %"class.std::optional.109", align 1 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.182", align 16 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %12 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %13 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
  %14 = alloca %"class.std::shared_ptr.0", align 16 ; 7 uses
  %15 = alloca %"struct.facebook::velox::BaseVector::CopyRange", align 4 ; 8 uses
  %16 = alloca %"class.folly::Range", align 8     ; 6 uses
  %17 = alloca %"class.std::vector.23", align 8   ; 15 uses
  %18 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
  %19 = alloca %"class.std::shared_ptr.0", align 16 ; 7 uses
  %20 = alloca %"class.std::vector.28", align 8   ; 21 uses
  %21 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %22 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val = load ptr, ptr %3, align 8, !tbaa !94    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val52 = load ptr, ptr %i.c, align 8, !tbaa !95 ; 3 uses
  %.not19.i = icmp eq ptr %.val, %.val52
  br i1 %.not19.i, label %._crit_edge.thread.i, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.val52324 = ptrtoaddr ptr %.val52 to i64
  %.val325 = ptrtoaddr ptr %.val to i64
  %i.d = add i64 %.val52324, -12
  %i.e = sub i64 %i.d, %.val325                   ; 3 uses
  %i.f = udiv i64 %i.e, 12
  %i.g = add nuw nsw i64 %i.f, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.e, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check326 = icmp ult i64 %i.e, 384
  br i1 %min.iters.check326, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.g, 31                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 32, i64 %i.h         ; 2 uses
  %n.vec = sub nsw i64 %i.g, %i.j                 ; 3 uses
  %i.k = mul i64 %n.vec, 12
  %i.l = getelementptr i8, ptr %.val, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi327 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi328 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi329 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi330 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi331 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi332 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi333 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.af, %vector.body ]
  %i.m = mul i64 %index, 12                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.val, i64 %i.m
  %i.n = getelementptr i8, ptr %.val, i64 %i.m
  %i.o = getelementptr i8, ptr %.val, i64 %i.m
  %i.p = getelementptr i8, ptr %.val, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.r = getelementptr i8, ptr %i.n, i64 100
  %i.s = getelementptr i8, ptr %i.o, i64 196
  %i.t = getelementptr i8, ptr %i.p, i64 292
  %wide.vec = load <24 x i32>, ptr %i.q, align 4, !tbaa !101 ; 2 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec337 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec338 = load <24 x i32>, ptr %i.r, align 4, !tbaa !101 ; 2 uses
  %strided.vec339 = shufflevector <24 x i32> %wide.vec338, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec340 = shufflevector <24 x i32> %wide.vec338, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec341 = load <24 x i32>, ptr %i.s, align 4, !tbaa !101 ; 2 uses
  %strided.vec342 = shufflevector <24 x i32> %wide.vec341, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec343 = shufflevector <24 x i32> %wide.vec341, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec344 = load <24 x i32>, ptr %i.t, align 4, !tbaa !101 ; 2 uses
  %strided.vec345 = shufflevector <24 x i32> %wide.vec344, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec346 = shufflevector <24 x i32> %wide.vec344, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.u = add nsw <8 x i32> %strided.vec337, %strided.vec
  %i.v = add nsw <8 x i32> %strided.vec340, %strided.vec339
  %i.w = add nsw <8 x i32> %strided.vec343, %strided.vec342
  %i.x = add nsw <8 x i32> %strided.vec346, %strided.vec345
  %i.y = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.u) ; 2 uses
  %i.z = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi327, <8 x i32> %i.v) ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi328, <8 x i32> %i.w) ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi329, <8 x i32> %i.x) ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec, <8 x i32> %vec.phi330) ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec339, <8 x i32> %vec.phi331) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec342, <8 x i32> %vec.phi332) ; 2 uses
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec345, <8 x i32> %vec.phi333) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !963

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax349 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ac, <8 x i32> %i.ad)
  %rdx.minmax350 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax349, <8 x i32> %i.ae)
  %rdx.minmax351 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax350, <8 x i32> %i.af)
  %i.ah = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax351) ; 2 uses
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.y, <8 x i32> %i.z)
  %rdx.minmax347 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.aa)
  %rdx.minmax348 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax347, <8 x i32> %i.ab)
  %i.ai = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax348) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.j, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ai, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx352 = phi i32 [ %i.ah, %vec.epilog.iter.check ], [ 2147483647, %vector.main.loop.iter.check ]
  %broadcast.splatinsert356 = insertelement <8 x i32> poison, i32 %bc.merge.rdx352, i64 0
  %broadcast.splat357 = shufflevector <8 x i32> %broadcast.splatinsert356, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %23 = and i64 %i.g, 7                           ; 2 uses
  %24 = icmp eq i64 %23, 0
  %25 = select i1 %24, i64 8, i64 %23
  %n.vec353 = sub nsw i64 %i.g, %25               ; 2 uses
  %26 = mul i64 %n.vec353, 12
  %27 = getelementptr i8, ptr %.val, i64 %26
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index356 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next363, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi357 = phi <8 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.am, %vec.epilog.vector.body ]
  %vec.phi358 = phi <8 x i32> [ %broadcast.splat357, %vec.epilog.ph ], [ %i.an, %vec.epilog.vector.body ]
  %i.aj = mul i64 %index356, 12
  %next.gep359 = getelementptr i8, ptr %.val, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep359, i64 4
  %wide.vec360 = load <24 x i32>, ptr %i.ak, align 4, !tbaa !101 ; 2 uses
  %strided.vec361 = shufflevector <24 x i32> %wide.vec360, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec362 = shufflevector <24 x i32> %wide.vec360, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.al = add nsw <8 x i32> %strided.vec362, %strided.vec361
  %i.am = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi357, <8 x i32> %i.al) ; 2 uses
  %i.an = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec361, <8 x i32> %vec.phi358) ; 2 uses
  %index.next363 = add nuw i64 %index356, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next363, %n.vec353
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !964

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.am)
  %i.aq = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.an)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i.ph = phi ptr [ %.val, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %27, %vec.epilog.middle.block ]
  %.01721.i.ph = phi i32 [ 0, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.01820.i.ph = phi i32 [ 2147483647, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not11.i = icmp eq i32 %.sroa.speculated8.i, 0
  br i1 %.not11.i, label %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %._crit_edge.thread.i, !prof !174

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01721.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.01721.i.ph, %.lr.ph.i.preheader ]
  %.01820.i = phi i32 [ %.sroa.speculated8.i, %.lr.ph.i ], [ %.01820.i.ph, %.lr.ph.i.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !129
  %i.av = add nsw i32 %i.au, %i.as
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.01721.i, i32 %i.av) ; 3 uses
  %.sroa.speculated8.i = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %.01820.i) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %.val52
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !965

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.018.lcssa28.i = phi i32 [ %.sroa.speculated8.i, %._crit_edge.i ], [ 2147483647, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !1033
  store i32 %.018.lcssa28.i, ptr %10, align 16, !tbaa !100, !alias.scope !1034, !noalias !1033
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !100, !alias.scope !1034, !noalias !1033
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %.018.lcssa28.i, ptr %i.ay, align 16, !tbaa !100, !alias.scope !1034, !noalias !1033
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.104, i64 75, i64 273, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !1033
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.104) #33
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.thread.i
  unreachable

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %11, align 8, !tbaa !107  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !100
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.df, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bq, %bb.g ], [ %.pn47.pn.pn.pn, %bb.df ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %._crit_edge.i
  store i32 %.sroa.speculated.i, ptr %i.a, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.bf = load ptr, ptr %1, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !156 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %.not.i53 = icmp eq ptr %i.bh, null
  br i1 %.not.i53, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  store ptr null, ptr %12, align 8, !tbaa !132, !alias.scope !1035
  br label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit

bb.e:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_113newTargetSizeERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.bi = zext nneg i32 %.sroa.speculated.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !1037
  store i8 -1, ptr %9, align 1, !tbaa !100, !noalias !1037
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 1
  store i8 1, ptr %i.bj, align 1, !tbaa !143, !noalias !1037
  %i.bk = add nuw nsw i64 %i.bi, 7
  %i.bl = lshr i64 %i.bk, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %12, i64 noundef %i.bl, ptr noundef %i.bf, ptr noundef nonnull align 1 dereferenceable(2) %9, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !1037
  %i.bm = load ptr, ptr %12, align 8, !tbaa !132, !alias.scope !1038 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !138
  %i.bp = and i8 %i.bo, 2
  %.not.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.f, !prof !85

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #30
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !139
  invoke void @_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE(ptr noundef %i.bs, ptr noundef nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit unwind label %bb.g

_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %bb.d, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !86, !noalias !1039
  %i.bv = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.bu, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7MapTypeE, i64 0) #30, !noalias !1039 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.i, label %_ZNK8facebook5velox4Type5asMapEv.exit.i

bb.i:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  invoke void @__cxa_bad_cast() #33
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNK8facebook5velox4Type5asMapEv.exit.i:          ; preds = %_ZN8facebook5velox12_GLOBAL__N_18newNullsEiPNS0_6memory10MemoryPoolEPKmRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !91, !noalias !1039 ; 2 uses
  %i.cb = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !96, !noalias !1039
  store <2 x ptr> %i.cb, ptr %14, align 16, !tbaa !96, !alias.scope !1039
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZNK8facebook5velox13FlatMapVector7keyTypeEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox4Type5asMapEv.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100, !noalias !1039
  %.not.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !101, !noalias !1039
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !101, !noalias !1039
  br label %_ZNK8facebook5velox13FlatMapVector7keyTypeEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4, !noalias !1039 ; 0 uses
  br label %_ZNK8facebook5velox13FlatMapVector7keyTypeEv.exit

_ZNK8facebook5velox13FlatMapVector7keyTypeEv.exit: ; preds = %bb.l, %bb.k, %_ZNK8facebook5velox4Type5asMapEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !67 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK8facebook5velox13FlatMapVector7keyTypeEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !102
  br label %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit

_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit: ; preds = %_ZNK8facebook5velox13FlatMapVector7keyTypeEv.exit, %bb.m
  %i.cl = phi i32 [ %i.ck, %bb.m ], [ 0, %_ZNK8facebook5velox13FlatMapVector7keyTypeEv.exit ]
  %i.cm = load ptr, ptr %1, align 8, !tbaa !84
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !1040
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %i.cl, ptr noundef %i.cm)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.co = load <2 x ptr>, ptr %8, align 16, !tbaa !96, !noalias !1042
  store <2 x ptr> %i.co, ptr %13, align 16, !tbaa !96, !alias.scope !1042
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox12_GLOBAL__N_110newFlatMapERKNS0_24EncodedVectorCopyOptionsERKNS0_13FlatMapVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !1067
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !101  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !1067
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %6 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !67     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102  ; 5 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !94    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val33 = load ptr, ptr %i.d, align 8, !tbaa !95 ; 3 uses
  %.not6.i = icmp eq ptr %.val, %.val33
  br i1 %.not6.i, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.val3343 = ptrtoaddr ptr %.val33 to i64
  %.val44 = ptrtoaddr ptr %.val to i64
  %i.e = add i64 %.val3343, -12
  %i.f = sub i64 %i.e, %.val44                    ; 3 uses
  %i.g = udiv i64 %i.f, 12
  %i.h = add nuw nsw i64 %i.g, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.f, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp ult i64 %i.f, 384
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 32, i64 %i.i         ; 2 uses
  %n.vec = sub nsw i64 %i.h, %i.k                 ; 3 uses
  %i.l = mul i64 %n.vec, 12
  %i.m = getelementptr i8, ptr %.val, i64 %i.l
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi46 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi47 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi48 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ac, %vector.body ]
  %i.n = mul i64 %index, 12                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.val, i64 %i.n
  %i.o = getelementptr i8, ptr %.val, i64 %i.n
  %i.p = getelementptr i8, ptr %.val, i64 %i.n
  %i.q = getelementptr i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.o, i64 100
  %i.t = getelementptr i8, ptr %i.p, i64 196
  %i.u = getelementptr i8, ptr %i.q, i64 292
  %wide.vec = load <24 x i32>, ptr %i.r, align 4, !tbaa !101 ; 2 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec52 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec53 = load <24 x i32>, ptr %i.s, align 4, !tbaa !101 ; 2 uses
  %strided.vec54 = shufflevector <24 x i32> %wide.vec53, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec55 = shufflevector <24 x i32> %wide.vec53, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec56 = load <24 x i32>, ptr %i.t, align 4, !tbaa !101 ; 2 uses
  %strided.vec57 = shufflevector <24 x i32> %wide.vec56, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec58 = shufflevector <24 x i32> %wide.vec56, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec59 = load <24 x i32>, ptr %i.u, align 4, !tbaa !101 ; 2 uses
  %strided.vec60 = shufflevector <24 x i32> %wide.vec59, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec61 = shufflevector <24 x i32> %wide.vec59, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.v = add nsw <8 x i32> %strided.vec52, %strided.vec
  %i.w = add nsw <8 x i32> %strided.vec55, %strided.vec54
  %i.x = add nsw <8 x i32> %strided.vec58, %strided.vec57
  %i.y = add nsw <8 x i32> %strided.vec61, %strided.vec60
  %i.z = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.v) ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi46, <8 x i32> %i.w) ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi47, <8 x i32> %i.x) ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi48, <8 x i32> %i.y) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1068

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.z, <8 x i32> %i.aa)
  %rdx.minmax62 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.ab)
  %rdx.minmax63 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax62, <8 x i32> %i.ac)
  %i.ae = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax63) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.k, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ae, %vec.epilog.iter.check ], [ %i.c, %vector.main.loop.iter.check ]
  %broadcast.splatinsert66 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat67 = shufflevector <8 x i32> %broadcast.splatinsert66, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.af = and i64 %i.h, 7                         ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 8, i64 %i.af
  %n.vec64 = sub nsw i64 %i.h, %i.ah              ; 2 uses
  %i.ai = mul i64 %n.vec64, 12
  %i.aj = getelementptr i8, ptr %.val, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi68 = phi <8 x i32> [ %broadcast.splat67, %vec.epilog.ph ], [ %i.an, %vec.epilog.vector.body ]
  %i.ak = mul i64 %index67, 12
  %next.gep69 = getelementptr i8, ptr %.val, i64 %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep69, i64 4
  %wide.vec70 = load <24 x i32>, ptr %i.al, align 4, !tbaa !101 ; 2 uses
  %strided.vec71 = shufflevector <24 x i32> %wide.vec70, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec72 = shufflevector <24 x i32> %wide.vec70, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.am = add nsw <8 x i32> %strided.vec72, %strided.vec71
  %i.an = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi68, <8 x i32> %i.am) ; 2 uses
  %index.next73 = add nuw i64 %index67, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1069

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.an)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %.val, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.057.i.ph = phi i32 [ %i.c, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.057.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = add nsw i32 %i.at, %i.ar
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.057.i, i32 %i.au) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %.val33
  br i1 %.not.i, label %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit, label %.lr.ph.i, !llvm.loop !1070

_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit: ; preds = %.lr.ph.i, %bb.a
  %.05.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %.sroa.speculated.i, %.lr.ph.i ] ; 3 uses
  br i1 %4, label %bb.t, label %.preheader40

.preheader40:                                     ; preds = %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit
  %i.aw = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #30
  %i.ax = sdiv i64 %i.aw, 1000000                 ; 2 uses
  %invariant.op = add nsw i64 %i.ax, -1000
  %i.ay = load atomic i64, ptr @_ZZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_bE11FB_LEM_hist acquire, align 8 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, %invariant.op
  br i1 %i.az, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader40
  %i.ba = cmpxchg ptr @_ZZN8facebook5velox12_GLOBAL__N_112copyIntoFlatERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_bE11FB_LEM_hist, i64 %i.ay, i64 %i.ax seq_cst seq_cst, align 8
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str, i32 noundef 577, i32 noundef 1)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.59, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.w

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.preheader40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bf = load ptr, ptr %3, align 8, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %0, align 8, !tbaa !84
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !1075
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i32 noundef %.05.lcssa.i, ptr noundef %i.bh), !noalias !1075
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.bi = load ptr, ptr %5, align 8, !tbaa !67, !noalias !1077 ; 4 uses
  store ptr %i.bi, ptr %7, align 8, !tbaa !67, !alias.scope !1077
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !91, !noalias !1077 ; 2 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !91, !alias.scope !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !1075
  %i.bm = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !102
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(94) %i.bi, ptr noundef nonnull %i.bm, i32 noundef 0, i32 noundef 0, i32 noundef %i.bo)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %i.bi, ptr %3, align 8, !tbaa !198
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !91 ; 8 uses
  store ptr %i.bl, ptr %i.bs, align 8, !tbaa !91
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.bu, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !99
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !88
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #30, !inline_history !0
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #30, !inline_history !0
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.j ], [ %i.ch, %bb.k ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.l, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !90

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #30
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !91 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ck, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !99
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !88
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #30, !inline_history !3
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !88
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #30, !inline_history !3
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.cn, %bb.p ], [ %i.cx, %bb.q ]
  %i.cy = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cy, label %bb.r, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_11
