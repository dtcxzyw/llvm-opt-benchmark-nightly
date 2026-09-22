Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipUpdate?download=true
inline.NumInlined: 523
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj:bb.a
  %.pre41.i.i124 = load i64, ptr %i.d, align 8, !tbaa !90
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i122, %bb.ak
  %i.fq = phi i64 [ %.pre41.i.i124, %._crit_edge.i.i122 ], [ %i.fi, %bb.ak ]
  %i.fr = phi i64 [ %.pre40.i.i123, %._crit_edge.i.i122 ], [ %i.fj, %bb.ak ]
  %i.fs = and i64 %i.fr, 4194303                  ; 2 uses
  %i.ft = sub nuw nsw i64 4194304, %i.fs
  %i.fu = tail call noundef i64 @llvm.umin.i64(i64 %i.ft, i64 %i.fq)
  %i.fv = tail call noundef i64 @llvm.umin.i64(i64 %i.fu, i64 %.01933.i.i117) ; 5 uses
  %i.fw = load ptr, ptr %i.fe, align 8, !tbaa !60
  %i.fx = load ptr, ptr %i.fg, align 8, !tbaa !87
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fs
  %i.fz = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %i.fw, ptr noundef %i.fy, i64 noundef %i.fv) ; 2 uses
  %.not30.not.i.i125 = icmp eq i32 %i.fz, 0
  br i1 %.not30.not.i.i125, label %bb.an, label %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit

bb.an:                                            ; preds = %bb.am
  %i.ga = load i64, ptr %i.ff, align 8, !tbaa !88
  %i.gb = add i64 %i.ga, %i.fv                    ; 3 uses
  store i64 %i.gb, ptr %i.ff, align 8, !tbaa !88
  %i.gc = load i64, ptr %i.fh, align 8, !tbaa !92
  %i.gd = icmp ult i64 %i.gc, %i.gb
  br i1 %i.gd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 %i.gb, ptr %i.fh, align 8, !tbaa !92
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ge = load i64, ptr %i.ex, align 8, !tbaa !91
  %i.gf = add i64 %i.ge, %i.fv                    ; 3 uses
  store i64 %i.gf, ptr %i.ex, align 8, !tbaa !91
  %i.gg = load i64, ptr %i.d, align 8, !tbaa !90
  %i.gh = sub i64 %i.gg, %i.fv                    ; 3 uses
  store i64 %i.gh, ptr %i.d, align 8, !tbaa !90
  %i.gi = sub nuw nsw i64 %.01933.i.i117, %i.fv   ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i126, label %_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread, label %bb.aj

_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread: ; preds = %bb.aj, %bb.ap, %bb.ah
  %i.gj = phi i64 [ %i.ep, %bb.ah ], [ 0, %bb.aj ], [ %i.gh, %bb.ap ]
  %i.gk = phi i64 [ %i.es, %bb.ah ], [ %i.fj, %bb.aj ], [ %i.gf, %bb.ap ]
  %i.gl = and i64 %i.gk, 4194303                  ; 2 uses
  %i.gm = icmp samesign ugt i64 %i.gl, %i.et
  %i.gn = sub nuw nsw i64 %i.gl, %i.et
  %i.go = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.gn)
  %.065.in = select i1 %i.gm, i64 %i.go, i64 %i.ew ; 2 uses
  %i.gp = add i64 %.065.in, %i.gj
  store i64 %i.gp, ptr %i.d, align 8, !tbaa !90
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread, %bb.ag
  %.166.in = phi i64 [ %i.fa, %bb.ag ], [ %.065.in, %_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !87
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %1, i64 %.166.in, i1 false)
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.166 = trunc nuw nsw i64 %.166.in to i32
  store i32 %.166, ptr %3, align 4, !tbaa !15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !89
  %i.gu = add i64 %i.gt, %.166.in                 ; 3 uses
  store i64 %i.gu, ptr %i.b, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !93
  %i.gx = icmp ult i64 %i.gw, %i.gu
  br i1 %i.gx, label %bb.at, label %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit

bb.at:                                            ; preds = %bb.as
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !93
  br label %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit

_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit: ; preds = %bb.q, %bb.r, %bb.i, %bb.h, %bb.z, %bb.aa, %bb.am, %bb.al, %bb.as, %bb.at, %bb.c
  %.13 = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.i ], [ %i.fz, %bb.am ], [ 0, %bb.as ], [ %i.df, %bb.z ], [ 0, %bb.at ], [ %i.fp, %bb.al ], [ %i.dp, %bb.aa ], [ %i.t, %bb.h ], [ %i.bc, %bb.q ], [ %i.bm, %bb.r ]
  ret i32 %.13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147287039, 1) i32 @_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #9 align 2 {
bb.a:
  switch i32 %2, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8, !tbaa !89
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %i.d = add i64 %i.c, %1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93
  %i.g = add i64 %i.f, %1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %i.h, align 8, !tbaa !89
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = phi i64 [ %i.g, %bb.d ], [ %i.d, %bb.c ], [ %1, %bb.b ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.i, ptr %3, align 8, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ -2147287039, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((40, 48)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %1) ; 2 uses
  %.not.not = icmp eq i32 %i.j, 0
  br i1 %.not.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.b, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !91   ; 2 uses
  %.not15 = icmp ugt i64 %1, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %.not15, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !90
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %.phi.trans.insert, align 8, !tbaa !90
  store i64 %1, ptr %i.k, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.m = phi i64 [ 0, %bb.e ], [ %.pre, %._crit_edge ]
  %i.n = phi i64 [ %1, %bb.e ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.o = add i64 %i.m, %i.n
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = sub i64 %1, %i.n
  store i64 %i.r, ptr %i.q, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.g
  %.1 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.NArchive::NZip::CAddCommon", align 8 ; 7 uses
  %7 = alloca %class.CObjectVector.10, align 8    ; 14 uses
  %8 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 30 uses
  %9 = alloca %class.CMyComPtr.1, align 8         ; 10 uses
  %10 = alloca %"struct.NArchive::NZip::CCompressingResult", align 8 ; 6 uses
  %11 = alloca %class.CMyComPtr.0, align 8        ; 10 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %12 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 16 uses
  %13 = alloca %"class.NArchive::NZip::CAddCommon", align 8 ; 6 uses
  %14 = alloca %"struct.NArchive::NZip::CCompressionMethodMode", align 8 ; 12 uses
  %15 = alloca %"class.NWindows::NSynchronization::CSynchro", align 8 ; 9 uses
  %16 = alloca %"class.NWindows::NSynchronization::CSynchro", align 8 ; 11 uses
  %17 = alloca %class.CObjectVector.10, align 8   ; 14 uses
  %18 = alloca %class.CMtCompressProgressMixer, align 8 ; 16 uses
  %19 = alloca %class.CMemBlockManagerMt, align 8 ; 17 uses
  %20 = alloca %"class.NArchive::NZip::CMemRefs", align 8 ; 12 uses
  %21 = alloca %"class.NArchive::NZip::CThreads", align 8 ; 12 uses
  %22 = alloca %class.CRecordVector.14, align 8   ; 12 uses
  %23 = alloca %class.CRecordVector.15, align 8   ; 12 uses
  %24 = alloca %"struct.NArchive::NZip::CMemBlocks2", align 8 ; 13 uses
  %25 = alloca %"struct.NArchive::NZip::CThreadInfo", align 8 ; 7 uses
  %26 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 20 uses
  %27 = alloca %class.CMyComPtr.1, align 8        ; 10 uses
  %28 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 32 uses
  %29 = alloca %class.CMyComPtr.0, align 8        ; 8 uses
  %30 = alloca %class.CMyComPtr.0, align 8        ; 8 uses
  %31 = alloca %class.CMyComPtr.0, align 8        ; 10 uses
  %32 = alloca %"class.NArchive::NZip::COutArchive", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  store ptr null, ptr %31, align 8, !tbaa !60
  %i.c = load ptr, ptr %2, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) @IID_IOutStream, ptr noundef nonnull %31)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %31, align 8, !tbaa !60
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.ld, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15
          to label %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit unwind label %bb.e ; 14 uses

_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit:          ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN8NArchive4NZip15CCacheOutStreamE, i64 16), ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.j, align 8, !tbaa !80
  %i.l = invoke ptr @MidAlloc(i64 noundef 4194304)
          to label %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit unwind label %bb.e ; 2 uses

_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit: ; preds = %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !87
  %.not126 = icmp eq ptr %i.l, null
  br i1 %.not126, label %bb.l, label %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread

bb.e:                                             ; preds = %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit, %bb.d
  %.sroa.078.0 = phi ptr [ %i.i, %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit ], [ null, %bb.d ]
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread: ; preds = %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit
  %i.o = load ptr, ptr %31, align 8, !tbaa !60    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  store i64 0, ptr %i.q, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.noexc49, label %bb.f

bb.f:                                             ; preds = %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc49 unwind label %bb.k, !inline_history !205 ; 0 uses

.noexc49:                                         ; preds = %bb.f, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %.not6.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i, label %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc49
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i unwind label %bb.k, !inline_history !205 ; 0 uses

_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i:        ; preds = %bb.g, %.noexc49
  store ptr %i.o, ptr %i.k, align 8, !tbaa !60
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.q)
          to label %.noexc51 unwind label %bb.k, !inline_history !205 ; 2 uses

.noexc51:                                         ; preds = %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i
  %.not.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.not.i, label %bb.h, label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

bb.h:                                             ; preds = %.noexc51
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.af)
          to label %.noexc52 unwind label %bb.k, !inline_history !205 ; 2 uses

.noexc52:                                         ; preds = %bb.h
  %.not16.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not16.not.i, label %bb.i, label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

bb.i:                                             ; preds = %.noexc52
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.al = load i64, ptr %i.q, align 8, !tbaa !89
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef %i.al, i32 noundef 0, ptr noundef nonnull %i.q)
          to label %.noexc53 unwind label %bb.k, !inline_history !205 ; 2 uses

.noexc53:                                         ; preds = %bb.i
  %.not17.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not17.not.i, label %bb.j, label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

bb.j:                                             ; preds = %.noexc53
  %i.aq = load <2 x i64>, ptr %i.q, align 8, !tbaa !78
  store <2 x i64> %i.aq, ptr %i.p, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit: ; preds = %bb.j, %.noexc53, %.noexc52, %.noexc51
  %.3.i = phi i32 [ 0, %bb.j ], [ %i.ap, %.noexc53 ], [ %i.aj, %.noexc52 ], [ %i.ad, %.noexc51 ] ; 2 uses
  %.not = icmp eq i32 %.3.i, 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h, %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i, %bb.g, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit
  %.234.ph = phi i32 [ -2147024882, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit ], [ %.3.i, %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit ]
  %.2.ph = phi i1 [ false, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit ], [ %.not, %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit ]
  %.pr = load ptr, ptr %31, align 8, !tbaa !60    ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %.pr, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #16
  unreachable

_ZN9CMyComPtrI10IOutStreamED2Ev.exit:             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  br i1 %.2.ph, label %bb.o, label %bb.le

bb.o:                                             ; preds = %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
  %.not40 = icmp eq ptr %3, null                  ; 4 uses
  br i1 %.not40, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !211
  %.not41 = icmp eq i64 %i.ba, 0
  br i1 %.not41, label %bb.q, label %bb.le

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %.not42 = icmp eq i64 %i.bc, 0
  br i1 %.not42, label %bb.r, label %bb.le

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 137
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !213, !range !57, !noundef !58
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.v, label %bb.le

bb.s:                                             ; preds = %bb.e, %bb.k, %bb.c
  %.sroa.078.2 = phi ptr [ %i.i, %bb.k ], [ %.sroa.078.0, %bb.e ], [ null, %bb.c ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.n, %bb.e ], [ %i.h, %bb.c ] ; 2 uses
  %i.bg = load ptr, ptr %31, align 8, !tbaa !60   ; 3 uses
  %.not.i55 = icmp eq ptr %i.bg, null
  br i1 %.not.i55, label %bb.lg, label %bb.t

end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
  %exitcond905.not.i = icmp eq i32 %i.ry, %.2276563.i
  br i1 %exitcond905.not.i, label %.preheader.i, label %bb.ey, !llvm.loop !192

.preheader.i:                                     ; preds = %bb.ex, %.preheader606.i
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %26, i64 44 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.sg = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.sh = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.sj = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.sk = getelementptr inbounds nuw i8, ptr %26, i64 152 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %26, i64 160
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %26, i64 180
  %i.so = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %26, i64 168
  %i.sv = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 5 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %28, i64 44 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.tb = getelementptr inbounds nuw i8, ptr %28, i64 120 ; 7 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %28, i64 128
  %i.td = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.te = getelementptr inbounds nuw i8, ptr %28, i64 152 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %28, i64 160
  %i.tg = getelementptr inbounds nuw i8, ptr %28, i64 180
  %i.th = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %4, i64 105 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %28, i64 168 ; 2 uses
  br label %.outer.outer.i

bb.ey:                                            ; preds = %bb.ex, %.lr.ph696.i
  %.1266695.i = phi i32 [ 0, %.lr.ph696.i ], [ %i.ry, %bb.ex ] ; 3 uses
  %i.tm = load ptr, ptr %i.rf, align 8, !tbaa !98
  %i.tn = sext i32 %.1266695.i to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !99 ; 11 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !144
  %.not.i.i475.i = icmp eq i32 %i.tr, 0
  br i1 %.not.i.i475.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i: ; preds = %bb.ey
  %i.ts = invoke i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.tq)
          to label %.noexc476.i unwind label %bb.fb ; 2 uses

.noexc476.i:                                      ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %.not.not.i.i = icmp eq i32 %i.ts, 0
  br i1 %.not.not.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i, label %.thread575.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i: ; preds = %.noexc476.i, %bb.ey
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 128 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !65
  %.not.i6.i.i = icmp eq ptr %i.tu, null
  br i1 %.not.i6.i.i, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  store ptr %15, ptr %i.tt, align 8, !tbaa !65
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tp, i64 136
  store i8 0, ptr %i.tv, align 8, !tbaa !233
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 137
  store i8 0, ptr %i.tw, align 1, !tbaa !66
  br label %bb.fc

bb.fa:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fb:                                            ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fc:                                            ; preds = %bb.ez, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  %i.tz = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #15
          to label %bb.fd unwind label %bb.fa     ; 20 uses

bb.fd:                                            ; preds = %bb.fc
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i32 0, ptr %i.ua, align 4, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV13COutMemStream, i64 16), ptr %i.tz, align 8, !tbaa !64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store ptr %19, ptr %i.ub, align 8, !tbaa !234
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 48
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.uc, align 8, !tbaa !64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 72
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.ue, align 8, !tbaa !64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 104
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 112
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tz, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uh, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ui, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPvE, i64 16), ptr %i.ug, align 8, !tbaa !64
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 136
  store i64 0, ptr %i.uj, align 8, !tbaa !141
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tz, i64 144
  store i8 1, ptr %i.uk, align 8, !tbaa !143
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tz, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ul, i8 0, i64 16, i1 false)
  %i.um = getelementptr inbounds nuw i8, ptr %i.tp, i64 168
  store ptr %i.tz, ptr %i.um, align 8, !tbaa !146
  store ptr %16, ptr %i.ud, align 8, !tbaa !65
  %i.un = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  store i8 0, ptr %i.un, align 8, !tbaa !233
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tz, i64 65
  store i8 0, ptr %i.uo, align 1, !tbaa !66
  store ptr %16, ptr %i.uf, align 8, !tbaa !65
  %i.up = getelementptr inbounds nuw i8, ptr %i.tz, i64 88
  store i8 0, ptr %i.up, align 8, !tbaa !233
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tz, i64 89
  store i8 0, ptr %i.uq, align 1, !tbaa !66
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tp, i64 176 ; 2 uses
  %i.us = invoke noundef i32 %i.rn(ptr noundef nonnull align 8 dereferenceable(8) %i.tz)
          to label %.noexc479.i unwind label %bb.fa, !inline_history !1 ; 0 uses

.noexc479.i:                                      ; preds = %bb.fd
  %i.ut = load ptr, ptr %i.ur, align 8, !tbaa !60 ; 3 uses
  %.not6.i.i62 = icmp eq ptr %i.ut, null
  br i1 %.not6.i.i62, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.noexc479.i
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8
  %i.ux = invoke noundef i32 %i.uw(ptr noundef nonnull align 8 dereferenceable(8) %i.ut)
          to label %bb.ff unwind label %bb.fa, !inline_history !1 ; 0 uses

bb.ff:                                            ; preds = %bb.fe, %.noexc479.i
  store ptr %i.tz, ptr %i.ur, align 8, !tbaa !60
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tp, i64 400
  store i8 1, ptr %i.uy, align 8, !tbaa !235
  %i.uz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %bb.fg unwind label %bb.fa     ; 5 uses

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.uz, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CMtCompressProgress, i64 16), ptr %i.uz, align 16, !tbaa !64
  %i.va = getelementptr inbounds nuw i8, ptr %i.tp, i64 152 ; 2 uses
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !236
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tp, i64 160 ; 2 uses
  %i.vc = invoke noundef i32 %i.rm(ptr noundef nonnull align 8 dereferenceable(8) %i.uz)
          to label %.noexc483.i unwind label %bb.fa, !inline_history !0 ; 0 uses

.noexc483.i:                                      ; preds = %bb.fg
  %i.vd = load ptr, ptr %i.vb, align 8, !tbaa !61 ; 3 uses
  %.not6.i482.i = icmp eq ptr %i.vd, null
  br i1 %.not6.i482.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.noexc483.i
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = invoke noundef i32 %i.vg(ptr noundef nonnull align 8 dereferenceable(8) %i.vd)
          to label %bb.fi unwind label %bb.fa, !inline_history !0 ; 0 uses

bb.fi:                                            ; preds = %bb.fh, %.noexc483.i
  store ptr %i.uz, ptr %i.vb, align 8, !tbaa !61
  %i.vi = load ptr, ptr %i.va, align 8, !tbaa !236 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store ptr %18, ptr %i.vj, align 8, !tbaa !239
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  store i32 %.1266695.i, ptr %i.vk, align 8, !tbaa !240
  %i.vl = invoke noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(408) %i.tp, ptr noundef nonnull @_ZN8NArchive4NZipL11CoderThreadEPv, ptr noundef nonnull align 8 dereferenceable(408) %i.tp)
          to label %bb.fk unwind label %bb.fj     ; 2 uses

bb.fj:                                            ; preds = %bb.fi
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fk:                                            ; preds = %bb.fi
  %.not396.i = icmp eq i32 %i.vl, 0
  br i1 %.not396.i, label %bb.ex, label %.thread575.i

bb.fl:                                            ; preds = %bb.hf, %.lr.ph698.split.i
  %indvars.iv911.i = phi i64 [ %i.vy, %.lr.ph698.split.i ], [ %indvars.iv.next912.i, %bb.hf ] ; 5 uses
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.vx, i64 %indvars.iv911.i
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !99
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 73
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !232, !range !57, !noundef !58
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.hf, label %bb.hg

.outer598.i:                                      ; preds = %.lr.ph698.split.us.i
  %exitcond909.not.i = icmp eq i64 %indvars.iv.next907.i, %smax.i
  br i1 %exitcond909.not.i, label %.lr.ph698.split.split.i.a, label %.lr.ph698.split.us.i, !llvm.loop !193

.lr.ph698.split.us.i:                             ; preds = %.lr.ph698.split.us.i.preheader, %.outer598.i
  %indvars.iv906.i1062 = phi i64 [ %indvars.iv.next907.i, %.outer598.i ], [ %i.akr, %.lr.ph698.split.us.i.preheader ] ; 4 uses
  %indvars.iv.next907.i = add nsw i64 %indvars.iv906.i1062, 1 ; 3 uses
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.aks, i64 %indvars.iv906.i1062
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !99 ; 6 uses
  %i.vu = load i8, ptr %i.vt, align 8, !tbaa !215, !range !57, !noundef !58
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %bb.fn, label %.outer598.i, !llvm.loop !193

.lr.ph698.split.split.i.a:                        ; preds = %.outer598.preheader.i, %.outer598.i
  %i.vw = trunc nsw i64 %smax.i to i32
  br label %.lr.ph698.split.i

.lr.ph698.split.i:                                ; preds = %.outer.split.split.us.i, %.lr.ph698.split.split.i.a
  %.pre-phi.i = phi i64 [ %.pre918.i, %.outer.split.split.us.i ], [ %33, %.lr.ph698.split.split.i.a ]
  %.us-phi723.i = phi i32 [ %.0264.ph.i, %.outer.split.split.us.i ], [ %i.vw, %.lr.ph698.split.split.i.a ]
  store i64 %i.akm, ptr %i.b, align 8
  %i.vx = load ptr, ptr %i.st, align 8
  %i.vy = sext i32 %.0262.ph.ph.i to i64
  br label %bb.fl

bb.fm:                                            ; preds = %._crit_edge699.i
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fn:                                            ; preds = %.lr.ph698.split.us.i
  %i.wa = trunc nsw i64 %indvars.iv906.i1062 to i32
  %i.wb = trunc nsw i64 %indvars.iv.next907.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i8 0, i64 16, i1 false)
  %i.wc = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %.noexc487.i unwind label %bb.fq ; 10 uses

.noexc487.i:                                      ; preds = %bb.fn
  %i.wd = ptrtoaddr ptr %i.wc to i64
  %i.we = load i32, ptr %i.sd, align 4, !tbaa !122
  %i.wf = icmp sgt i32 %i.we, 0
  %.pre1.i.i.i.i.i = load i32, ptr %i.sc, align 8, !tbaa !123 ; 6 uses
  br i1 %i.wf, label %.preheader.i.i.i.i.i.i, label %bb.fo

.preheader.i.i.i.i.i.i:                           ; preds = %.noexc487.i
  %i.wg = icmp sgt i32 %.pre1.i.i.i.i.i, 0
  %.pre.i.i.i.i.i486.i = load ptr, ptr %i.sb, align 8, !tbaa !117 ; 10 uses
  br i1 %i.wg, label %iter.check1123, label %._crit_edge.i.i.i.i.i.i

iter.check1123:                                   ; preds = %.preheader.i.i.i.i.i.i
  %.pre.i.i.i.i.i486.i1108 = ptrtoaddr ptr %.pre.i.i.i.i.i486.i to i64
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.pre1.i.i.i.i.i to i64 ; 8 uses
  %min.iters.check1110 = icmp ult i32 %.pre1.i.i.i.i.i, 4
  %i.wh = sub i64 %.pre.i.i.i.i.i486.i1108, %i.wd
  %diff.check1109 = icmp ugt i64 %i.wh, -32
  %or.cond1136 = select i1 %min.iters.check1110, i1 true, i1 %diff.check1109
  br i1 %or.cond1136, label %vec.epilog.scalar.ph1124.preheader, label %vector.main.loop.iter.check1111

vector.main.loop.iter.check1111:                  ; preds = %iter.check1123
  %min.iters.check1112 = icmp ult i32 %.pre1.i.i.i.i.i, 32
  br i1 %min.iters.check1112, label %vec.epilog.ph1127, label %vector.ph1113

vector.ph1113:                                    ; preds = %vector.main.loop.iter.check1111
  %i.wi = and i64 %wide.trip.count.i.i.i.i.i.i, 28
  %n.vec1114 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483616 ; 4 uses
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %vector.ph1113
  %index1116 = phi i64 [ 0, %vector.ph1113 ], [ %index.next1119, %vector.body1115 ] ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %index1116 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %wide.load1117 = load <16 x i8>, ptr %i.wj, align 1, !tbaa !119
  %wide.load1118 = load <16 x i8>, ptr %i.wk, align 1, !tbaa !119
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wc, i64 %index1116 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  store <16 x i8> %wide.load1117, ptr %i.wl, align 1, !tbaa !119
  store <16 x i8> %wide.load1118, ptr %i.wm, align 1, !tbaa !119
  %index.next1119 = add nuw i64 %index1116, 32    ; 2 uses
  %i.wn = icmp eq i64 %index.next1119, %n.vec1114
  br i1 %i.wn, label %middle.block1120, label %vector.body1115, !llvm.loop !194

middle.block1120:                                 ; preds = %vector.body1115
  %cmp.n1121 = icmp eq i64 %n.vec1114, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n1121, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.iter.check1125

vec.epilog.iter.check1125:                        ; preds = %middle.block1120
  %min.epilog.iters.check1126 = icmp eq i64 %i.wi, 0
  br i1 %min.epilog.iters.check1126, label %vec.epilog.scalar.ph1124.preheader, label %vec.epilog.ph1127, !prof !126

vec.epilog.ph1127:                                ; preds = %vector.main.loop.iter.check1111, %vec.epilog.iter.check1125
  %vec.epilog.resume.val1122 = phi i64 [ %n.vec1114, %vec.epilog.iter.check1125 ], [ 0, %vector.main.loop.iter.check1111 ]
  %n.vec1128 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1129

vec.epilog.vector.body1129:                       ; preds = %vec.epilog.vector.body1129, %vec.epilog.ph1127
  %index1130 = phi i64 [ %vec.epilog.resume.val1122, %vec.epilog.ph1127 ], [ %index.next1132, %vec.epilog.vector.body1129 ] ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %index1130
  %wide.load1131 = load <4 x i8>, ptr %i.wo, align 1, !tbaa !119
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wc, i64 %index1130
  store <4 x i8> %wide.load1131, ptr %i.wp, align 1, !tbaa !119
  %index.next1132 = add nuw i64 %index1130, 4     ; 2 uses
  %i.wq = icmp eq i64 %index.next1132, %n.vec1128
  br i1 %i.wq, label %vec.epilog.middle.block1133, label %vec.epilog.vector.body1129, !llvm.loop !195

vec.epilog.middle.block1133:                      ; preds = %vec.epilog.vector.body1129
  %cmp.n1134 = icmp eq i64 %n.vec1128, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n1134, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1124.preheader

vec.epilog.scalar.ph1124.preheader:               ; preds = %iter.check1123, %vec.epilog.iter.check1125, %vec.epilog.middle.block1133
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check1123 ], [ %n.vec1114, %vec.epilog.iter.check1125 ], [ %n.vec1128, %vec.epilog.middle.block1133 ] ; 3 uses
  %xtraiter1261 = and i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod1262.not = icmp eq i64 %xtraiter1261, 0
  br i1 %lcmp.mod1262.not, label %vec.epilog.scalar.ph1124.prol.loopexit, label %vec.epilog.scalar.ph1124.prol

vec.epilog.scalar.ph1124.prol:                    ; preds = %vec.epilog.scalar.ph1124.preheader, %vec.epilog.scalar.ph1124.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph1124.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph1124.preheader ] ; 3 uses
  %prol.iter1263 = phi i64 [ %prol.iter1263.next, %vec.epilog.scalar.ph1124.prol ], [ 0, %vec.epilog.scalar.ph1124.preheader ]
  %i.wr = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !119
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wc, i64 %indvars.iv.i.i.i.i.i.i.prol
  store i8 %i.ws, ptr %i.wt, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1263.next = add i64 %prol.iter1263, 1 ; 2 uses
  %prol.iter1263.cmp.not = icmp eq i64 %prol.iter1263.next, %xtraiter1261
  br i1 %prol.iter1263.cmp.not, label %vec.epilog.scalar.ph1124.prol.loopexit, label %vec.epilog.scalar.ph1124.prol, !llvm.loop !196

vec.epilog.scalar.ph1124.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1124.prol, %vec.epilog.scalar.ph1124.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph1124.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph1124.prol ]
  %i.wu = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.wv = icmp ugt i64 %i.wu, -4
  br i1 %i.wv, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1124

._crit_edge.i.i.i.i.i.i:                          ; preds = %.preheader.i.i.i.i.i.i
  %i.ww = icmp eq ptr %.pre.i.i.i.i.i486.i, null
  br i1 %i.ww, label %bb.fo, label %._crit_edge.thread.i.i.i.i.i.i

vec.epilog.scalar.ph1124:                         ; preds = %vec.epilog.scalar.ph1124.prol.loopexit, %vec.epilog.scalar.ph1124
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %vec.epilog.scalar.ph1124 ], [ %indvars.iv.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph1124.prol.loopexit ] ; 6 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !119
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wc, i64 %indvars.iv.i.i.i.i.i.i
  store i8 %i.wy, ptr %i.wz, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !119
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wc, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.xb, ptr %i.xc, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !119
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wc, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !119
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wc, i64 %indvars.iv.next.i.i.i.i.i.i.2
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1124, !llvm.loop !197

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %vec.epilog.scalar.ph1124.prol.loopexit, %vec.epilog.scalar.ph1124, %middle.block1120, %vec.epilog.middle.block1133, %._crit_edge.i.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i486.i) #17
  %.pre.i.i.i.i.i = load i32, ptr %i.sc, align 8, !tbaa !123
  br label %bb.fo

bb.fo:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %.noexc487.i
  %i.xj = phi i32 [ %.pre1.i.i.i.i.i, %.noexc487.i ], [ %.pre1.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ]
  store ptr %i.wc, ptr %i.sb, align 8, !tbaa !117
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds i8, ptr %i.wc, i64 %i.xk
  store i8 0, ptr %i.xl, align 1, !tbaa !119
  store i32 4, ptr %i.sd, align 4, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sf, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.sg, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.se, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.si, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.sj, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sh, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.sk, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.sl, i8 0, i64 19, i1 false)
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !128, !range !57, !noundef !58
  %i.xo = trunc nuw i8 %i.xn to i1
  br i1 %i.xo, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.xp = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  %i.xq = load i8, ptr %i.xp, align 2, !tbaa !129, !range !57, !noundef !58
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %bb.gy, label %bb.fx, !llvm.loop !193

bb.fq:                                            ; preds = %bb.fn
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.fr:                                            ; preds = %bb.fo
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !216
  %i.xv = load ptr, ptr %i.sm, align 8, !tbaa !98
  %i.xw = sext i32 %i.xu to i64
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.xv, i64 %i.xw
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !99 ; 2 uses
  %i.xz = invoke noundef nonnull align 8 dereferenceable(179) ptr @_ZN8NArchive4NZip5CItemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %26, ptr noundef nonnull align 8 dereferenceable(186) %i.xy)
          to label %bb.fs unwind label %bb.fu     ; 0 uses

bb.fs:                                            ; preds = %bb.fr
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.sn, ptr noundef nonnull align 4 dereferenceable(6) %i.ya, i64 6, i1 false)
  %i.yb = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %3, ptr noundef nonnull align 8 dereferenceable(186) %26)
          to label %bb.ft unwind label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %.not415.i = icmp eq i32 %i.yb, 0
  br i1 %.not415.i, label %bb.fv, label %bb.gy

bb.fu:                                            ; preds = %bb.fv, %bb.fs, %bb.fr
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.fv:                                            ; preds = %bb.ft
  %i.yd = invoke noundef zeroext i1 @_ZNK8NArchive4NZip5CItem5IsDirEv(ptr noundef nonnull align 8 dereferenceable(179) %26)
          to label %bb.fw unwind label %bb.fu

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.yd, label %bb.gy, label %bb.fx, !llvm.loop !193

bb.fx:                                            ; preds = %bb.fw, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  store ptr null, ptr %27, align 8, !tbaa !59
  %i.ye = load ptr, ptr %i.so, align 8, !tbaa !83
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 80 ; 4 uses
  %i.yg = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.yf) #14 ; 0 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !223
  %i.yj = load ptr, ptr %5, align 8, !tbaa !64
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 72
  %i.yl = load ptr, ptr %i.yk, align 8
  %i.ym = invoke noundef i32 %i.yl(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.yi, ptr noundef nonnull %27)
          to label %bb.fy unwind label %bb.gb     ; 2 uses

bb.fy:                                            ; preds = %bb.fx
  switch i32 %i.ym, label %.thread578.i [
    i32 1, label %bb.fz
    i32 0, label %bb.ge
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !102
  %i.yp = add i64 %i.akm, 26
  %i.yq = add i64 %i.yp, %i.yo                    ; 3 uses
  %i.yr = load ptr, ptr %i.so, align 8, !tbaa !83 ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 80 ; 2 uses
  %i.yt = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ys) #14 ; 0 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 48
  store i64 0, ptr %i.yu, align 8, !tbaa !78
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  store i64 0, ptr %i.yv, align 8, !tbaa !78
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  store i64 %i.yq, ptr %i.yw, align 8, !tbaa !79
  %i.yx = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ys) #14 ; 0 uses
  %i.yy = load ptr, ptr %5, align 8, !tbaa !64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 80
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = invoke noundef i32 %i.za(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %bb.ga unwind label %bb.gc     ; 2 uses

bb.ga:                                            ; preds = %bb.fz
  %.not421.i = icmp eq i32 %i.zb, 0
  br i1 %.not421.i, label %bb.gd, label %.thread578.i

bb.gb:                                            ; preds = %bb.fx
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gc:                                            ; preds = %bb.fz
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gd:                                            ; preds = %bb.ga
  %i.ze = load ptr, ptr %i.st, align 8, !tbaa !98
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.ze, i64 %indvars.iv906.i1062
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !99
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 73
  store i8 1, ptr %i.zh, align 1, !tbaa !232
  br label %.thread578.i, !llvm.loop !193

bb.ge:                                            ; preds = %bb.fy
  %i.zi = load ptr, ptr %5, align 8, !tbaa !64
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 80
  %i.zk = load ptr, ptr %i.zj, align 8
  %i.zl = invoke noundef i32 %i.zk(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %bb.gf unwind label %bb.gg     ; 3 uses

bb.gf:                                            ; preds = %bb.ge
  %.not417.i = icmp eq i32 %i.zl, 0               ; 2 uses
  %.11358.452..i = select i1 %.not417.i, i32 %.11358.ph.i, i32 %i.zl ; 2 uses
  br i1 %.not417.i, label %bb.gh, label %.thread578.i

bb.gg:                                            ; preds = %bb.ge
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

.thread578.i:                                     ; preds = %bb.gf, %bb.gd, %bb.ga, %bb.fy
  %i.zn = phi i64 [ %i.akm, %bb.fy ], [ %i.akm, %bb.gf ], [ %i.yq, %bb.ga ], [ %i.yq, %bb.gd ]
  %.15362.ph.i = phi i32 [ %i.ym, %bb.fy ], [ %i.zl, %bb.gf ], [ %i.zb, %bb.ga ], [ %.11358.ph.i, %bb.gd ]
  %i.zo = phi i1 [ false, %bb.fy ], [ false, %bb.gf ], [ false, %bb.ga ], [ true, %bb.gd ]
  %i.zp = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.yf) #14 ; 0 uses
  br label %.loopexit.i

bb.gh:                                            ; preds = %bb.gf
  %i.zq = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.yf) #14 ; 0 uses
  br i1 %.not792.i, label %.loopexit.i, label %.lr.ph777.i, !llvm.loop !193

.lr.ph777.i:                                      ; preds = %bb.gh
  %i.zr = load ptr, ptr %i.sp, align 8, !tbaa !98
  br label %bb.gj, !llvm.loop !193

bb.gi:                                            ; preds = %bb.gg, %bb.gc, %bb.gb
  %.pn418.i = phi { ptr, i32 } [ %i.zd, %bb.gc ], [ %i.zc, %bb.gb ], [ %i.zm, %bb.gg ]
  %i.zs = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.yf) #14 ; 0 uses
  br label %bb.gv

bb.gj:                                            ; preds = %.critedge455.i, %.lr.ph777.i
  %.0775.i = phi i32 [ 0, %.lr.ph777.i ], [ %i.abo, %.critedge455.i ] ; 3 uses
  %i.zt = sext i32 %.0775.i to i64
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.zt
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !99 ; 8 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 400
  %i.zx = load i8, ptr %i.zw, align 8, !tbaa !235, !range !57, !noundef !58
  %i.zy = trunc nuw i8 %i.zx to i1
  br i1 %i.zy, label %bb.gk, label %.critedge455.i

bb.gk:                                            ; preds = %bb.gj
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 400
  store i8 0, ptr %i.zz, align 8, !tbaa !235
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zv, i64 184 ; 2 uses
  %i.aab = load ptr, ptr %27, align 8, !tbaa !59  ; 4 uses
  %.not.i.i489.i = icmp eq ptr %i.aab, null
  br i1 %.not.i.i489.i, label %.noexc490.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !64
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8
  %i.aaf = invoke noundef i32 %i.aae(ptr noundef nonnull align 8 dereferenceable(8) %i.aab)
          to label %.noexc490.i unwind label %bb.gr, !inline_history !198 ; 0 uses

.noexc490.i:                                      ; preds = %bb.gl, %bb.gk
  %i.aag = load ptr, ptr %i.aaa, align 8, !tbaa !59 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.aag, null
  br i1 %.not6.i.i.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.noexc490.i
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = invoke noundef i32 %i.aaj(ptr noundef nonnull align 8 dereferenceable(8) %i.aag)
          to label %bb.gn unwind label %bb.gr, !inline_history !198 ; 0 uses

bb.gn:                                            ; preds = %bb.gm, %.noexc490.i
  store ptr %i.aab, ptr %i.aaa, align 8, !tbaa !59
  %i.aal = load ptr, ptr %27, align 8, !tbaa !59  ; 3 uses
  %.not.i492.i = icmp eq ptr %i.aal, null
  br i1 %.not.i492.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !64
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = load ptr, ptr %i.aan, align 8
  %i.aap = invoke noundef i32 %i.aao(ptr noundef nonnull align 8 dereferenceable(8) %i.aal)
          to label %.noexc493.i unwind label %bb.gr, !inline_history !199 ; 0 uses

.noexc493.i:                                      ; preds = %bb.go
  store ptr null, ptr %27, align 8, !tbaa !59
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i: ; preds = %.noexc493.i, %bb.gn
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zv, i64 168
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !146
  invoke void @_ZN13COutMemStream4InitEv(ptr noundef nonnull align 8 dereferenceable(168) %i.aar)
          to label %bb.gp unwind label %bb.gr

bb.gp:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zv, i64 152
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !236 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !239
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 24
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !240
  invoke void @_ZN24CMtCompressProgressMixer6ReinitEi(ptr noundef nonnull align 8 dereferenceable(128) %i.aav, i32 noundef %i.aax)
          to label %_ZN19CMtCompressProgress6ReinitEv.exit.i unwind label %bb.gr

_ZN19CMtCompressProgress6ReinitEv.exit.i:         ; preds = %bb.gp
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.aaz = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.aay)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i unwind label %bb.gr ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i: ; preds = %_ZN19CMtCompressProgress6ReinitEv.exit.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zv, i64 404
  store i32 %i.wa, ptr %i.aba, align 4, !tbaa !241
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zv, i64 120
  %i.abc = load ptr, ptr %i.sq, align 8, !tbaa !98
  %i.abd = load i32, ptr %i.sr, align 4, !tbaa !97 ; 2 uses
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.abc, i64 %i.abe
  store ptr %i.abb, ptr %i.abf, align 8, !tbaa !243
  %i.abg = add nsw i32 %i.abd, 1
  store i32 %i.abg, ptr %i.sr, align 4, !tbaa !97
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.gs unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i, %_ZN19CMtCompressProgress6ReinitEv.exit.i, %bb.gp, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, %bb.go, %bb.gm, %bb.gl
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gs:                                            ; preds = %bb.gq
  %i.abi = load ptr, ptr %i.ss, align 8, !tbaa !98
  %i.abj = load i32, ptr %i.rz, align 4, !tbaa !97
  %i.abk = sext i32 %i.abj to i64
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abk
  store i32 %.0775.i, ptr %i.abl, align 4, !tbaa !15
  %i.abm = load i32, ptr %i.rz, align 4, !tbaa !97
  %i.abn = add nsw i32 %i.abm, 1
  store i32 %i.abn, ptr %i.rz, align 4, !tbaa !97
  br label %.loopexit.i, !llvm.loop !193

.critedge455.i:                                   ; preds = %bb.gj
  %i.abo = add nuw i32 %.0775.i, 1                ; 2 uses
  %exitcond910.not.i = icmp eq i32 %i.abo, %.2276563.i
  br i1 %exitcond910.not.i, label %..loopexit_crit_edge.i, label %bb.gj, !llvm.loop !200

..loopexit_crit_edge.i:                           ; preds = %.critedge455.i
  br label %.loopexit.i, !llvm.loop !193

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %bb.gs, %bb.gh, %.thread578.i
  %i.abp = phi i64 [ %i.zn, %.thread578.i ], [ %i.akm, %bb.gs ], [ %i.akm, %..loopexit_crit_edge.i ], [ %i.akm, %bb.gh ]
  %.15362582.i = phi i32 [ %.15362.ph.i, %.thread578.i ], [ %.11358.452..i, %bb.gs ], [ %.11358.452..i, %..loopexit_crit_edge.i ], [ %.11358.ph.i, %bb.gh ]
  %.13.i = phi i1 [ %i.zo, %.thread578.i ], [ true, %bb.gs ], [ true, %..loopexit_crit_edge.i ], [ true, %bb.gh ]
  %i.abq = load ptr, ptr %27, align 8, !tbaa !59  ; 3 uses
  %.not.i498.i = icmp eq ptr %i.abq, null
  br i1 %.not.i498.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, label %bb.gt

bb.gt:                                            ; preds = %.loopexit.i
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !64
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load ptr, ptr %i.abs, align 8
  %i.abu = invoke noundef i32 %i.abt(ptr noundef nonnull align 8 dereferenceable(8) %i.abq)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i unwind label %bb.gu ; 0 uses

bb.gu:                                            ; preds = %bb.gt
  %i.abv = landingpad { ptr, i32 }
          catch ptr null
  %i.abw = extractvalue { ptr, i32 } %i.abv, 0
  call void @__clang_call_terminate(ptr %i.abw) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i:  ; preds = %bb.gt, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.gy

bb.gv:                                            ; preds = %bb.gr, %bb.gi
  %.pn422.i = phi { ptr, i32 } [ %i.abh, %bb.gr ], [ %.pn418.i, %bb.gi ]
  %i.abx = load ptr, ptr %27, align 8, !tbaa !59  ; 3 uses
  %.not.i499.i = icmp eq ptr %i.abx, null
  br i1 %.not.i499.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !64
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.aca = load ptr, ptr %i.abz, align 8
  %i.acb = invoke noundef i32 %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %i.abx)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i unwind label %bb.gx ; 0 uses

bb.gx:                                            ; preds = %bb.gw
  %i.acc = landingpad { ptr, i32 }
          catch ptr null
  %i.acd = extractvalue { ptr, i32 } %i.acc, 0
  call void @__clang_call_terminate(ptr %i.acd) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.hd

bb.gy:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, %bb.fw, %bb.ft, %bb.fp
  %i.ace = phi i64 [ %i.akm, %bb.ft ], [ %i.abp, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %i.akm, %bb.fp ], [ %i.akm, %bb.fw ]
  %.16363.i = phi i32 [ -2147467263, %bb.ft ], [ %.15362582.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %.11358.ph.i, %bb.fp ], [ %.11358.ph.i, %bb.fw ] ; 2 uses
  %.14.i = phi i1 [ false, %bb.ft ], [ %.13.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ true, %bb.fp ], [ true, %bb.fw ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.sk, align 8, !tbaa !64
  %i.acf = load ptr, ptr %i.su, align 8, !tbaa !114 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, null
  br i1 %i.acg, label %_ZN7CBufferIhED2Ev.exit.i501.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZdaPv(ptr noundef nonnull %i.acf) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i501.i

_ZN7CBufferIhED2Ev.exit.i501.i:                   ; preds = %bb.gz, %bb.gy
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sh, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sh)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i unwind label %bb.ha, !inline_history !116

bb.ha:                                            ; preds = %_ZN7CBufferIhED2Ev.exit.i501.i
  %i.ach = landingpad { ptr, i32 }
          catch ptr null
  %i.aci = extractvalue { ptr, i32 } %i.ach, 0
  call void @__clang_call_terminate(ptr %i.aci) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i:   ; preds = %_ZN7CBufferIhED2Ev.exit.i501.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sh) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.se, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.se)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i unwind label %bb.hb, !inline_history !116

bb.hb:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i
  %i.acj = landingpad { ptr, i32 }
          catch ptr null
  %i.ack = extractvalue { ptr, i32 } %i.acj, 0
  call void @__clang_call_terminate(ptr %i.ack) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.se) #14, !inline_history !116
  %i.acl = load ptr, ptr %i.sb, align 8, !tbaa !117 ; 2 uses
  %i.acm = icmp eq ptr %i.acl, null
  br i1 %i.acm, label %_ZN8NArchive4NZip5CItemD2Ev.exit504.i, label %bb.hc

bb.hc:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i
  call void @_ZdaPv(ptr noundef nonnull %i.acl) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit504.i

_ZN8NArchive4NZip5CItemD2Ev.exit504.i:            ; preds = %bb.hc, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br i1 %.14.i, label %.outer.i, label %.thread575.i

bb.hd:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i, %bb.fu
  %.pn422.pn.i = phi { ptr, i32 } [ %.pn422.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i ], [ %i.yc, %bb.fu ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %26) #14
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.fq
  %.pn422.pn.pn.i = phi { ptr, i32 } [ %.pn422.pn.i, %bb.hd ], [ %i.xs, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %bb.km

bb.hf:                                            ; preds = %bb.fl
  %indvars.iv.next912.i = add nsw i64 %indvars.iv911.i, 1 ; 2 uses
  %i.acn = icmp slt i64 %indvars.iv.next912.i, %.pre-phi.i
  br i1 %i.acn, label %bb.fl, label %._crit_edge699.i, !llvm.loop !193

bb.hg:                                            ; preds = %bb.fl
  %i.aco = trunc nsw i64 %indvars.iv911.i to i32  ; 4 uses
  %i.acp = load ptr, ptr %i.sa, align 8, !tbaa !98
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.acp, i64 %indvars.iv911.i
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !99 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sv, i8 0, i64 16, i1 false)
  %i.acs = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %.noexc516.i unwind label %bb.hm ; 10 uses

.noexc516.i:                                      ; preds = %bb.hg
  %i.act = ptrtoaddr ptr %i.acs to i64
  %i.acu = load i32, ptr %i.sx, align 4, !tbaa !122
  %i.acv = icmp sgt i32 %i.acu, 0
  %.pre1.i.i.i.i505.i = load i32, ptr %i.sw, align 8, !tbaa !123 ; 6 uses
  br i1 %i.acv, label %.preheader.i.i.i.i.i506.i, label %bb.hh

.preheader.i.i.i.i.i506.i:                        ; preds = %.noexc516.i
  %i.acw = icmp sgt i32 %.pre1.i.i.i.i505.i, 0
  %.pre.i.i.i.i.i507.i = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 10 uses
  br i1 %i.acw, label %iter.check1094, label %._crit_edge.i.i.i.i.i508.i

iter.check1094:                                   ; preds = %.preheader.i.i.i.i.i506.i
  %.pre.i.i.i.i.i507.i1079 = ptrtoaddr ptr %.pre.i.i.i.i.i507.i to i64
  %wide.trip.count.i.i.i.i.i512.i = zext nneg i32 %.pre1.i.i.i.i505.i to i64 ; 8 uses
  %min.iters.check1081 = icmp ult i32 %.pre1.i.i.i.i505.i, 4
  %i.acx = sub i64 %.pre.i.i.i.i.i507.i1079, %i.act
  %diff.check1080 = icmp ugt i64 %i.acx, -32
  %or.cond1137 = select i1 %min.iters.check1081, i1 true, i1 %diff.check1080
  br i1 %or.cond1137, label %vec.epilog.scalar.ph1095.preheader, label %vector.main.loop.iter.check1082

vector.main.loop.iter.check1082:                  ; preds = %iter.check1094
  %min.iters.check1083 = icmp ult i32 %.pre1.i.i.i.i505.i, 32
  br i1 %min.iters.check1083, label %vec.epilog.ph1098, label %vector.ph1084

vector.ph1084:                                    ; preds = %vector.main.loop.iter.check1082
  %i.acy = and i64 %wide.trip.count.i.i.i.i.i512.i, 28
  %n.vec1085 = and i64 %wide.trip.count.i.i.i.i.i512.i, 2147483616 ; 4 uses
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %vector.ph1084
  %index1087 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1090, %vector.body1086 ] ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %index1087 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %wide.load1088 = load <16 x i8>, ptr %i.acz, align 1, !tbaa !119
  %wide.load1089 = load <16 x i8>, ptr %i.ada, align 1, !tbaa !119
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acs, i64 %index1087 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  store <16 x i8> %wide.load1088, ptr %i.adb, align 1, !tbaa !119
  store <16 x i8> %wide.load1089, ptr %i.adc, align 1, !tbaa !119
  %index.next1090 = add nuw i64 %index1087, 32    ; 2 uses
  %i.add = icmp eq i64 %index.next1090, %n.vec1085
  br i1 %i.add, label %middle.block1091, label %vector.body1086, !llvm.loop !201

middle.block1091:                                 ; preds = %vector.body1086
  %cmp.n1092 = icmp eq i64 %n.vec1085, %wide.trip.count.i.i.i.i.i512.i
  br i1 %cmp.n1092, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.iter.check1096

vec.epilog.iter.check1096:                        ; preds = %middle.block1091
  %min.epilog.iters.check1097 = icmp eq i64 %i.acy, 0
  br i1 %min.epilog.iters.check1097, label %vec.epilog.scalar.ph1095.preheader, label %vec.epilog.ph1098, !prof !126

vec.epilog.ph1098:                                ; preds = %vector.main.loop.iter.check1082, %vec.epilog.iter.check1096
  %vec.epilog.resume.val1093 = phi i64 [ %n.vec1085, %vec.epilog.iter.check1096 ], [ 0, %vector.main.loop.iter.check1082 ]
  %n.vec1099 = and i64 %wide.trip.count.i.i.i.i.i512.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1100

vec.epilog.vector.body1100:                       ; preds = %vec.epilog.vector.body1100, %vec.epilog.ph1098
  %index1101 = phi i64 [ %vec.epilog.resume.val1093, %vec.epilog.ph1098 ], [ %index.next1103, %vec.epilog.vector.body1100 ] ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %index1101
  %wide.load1102 = load <4 x i8>, ptr %i.ade, align 1, !tbaa !119
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acs, i64 %index1101
  store <4 x i8> %wide.load1102, ptr %i.adf, align 1, !tbaa !119
  %index.next1103 = add nuw i64 %index1101, 4     ; 2 uses
  %i.adg = icmp eq i64 %index.next1103, %n.vec1099
  br i1 %i.adg, label %vec.epilog.middle.block1104, label %vec.epilog.vector.body1100, !llvm.loop !202

vec.epilog.middle.block1104:                      ; preds = %vec.epilog.vector.body1100
  %cmp.n1105 = icmp eq i64 %n.vec1099, %wide.trip.count.i.i.i.i.i512.i
  br i1 %cmp.n1105, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.scalar.ph1095.preheader

vec.epilog.scalar.ph1095.preheader:               ; preds = %iter.check1094, %vec.epilog.iter.check1096, %vec.epilog.middle.block1104
  %indvars.iv.i.i.i.i.i513.i.ph = phi i64 [ 0, %iter.check1094 ], [ %n.vec1085, %vec.epilog.iter.check1096 ], [ %n.vec1099, %vec.epilog.middle.block1104 ] ; 3 uses
  %xtraiter1264 = and i64 %wide.trip.count.i.i.i.i.i512.i, 3 ; 2 uses
  %lcmp.mod1265.not = icmp eq i64 %xtraiter1264, 0
  br i1 %lcmp.mod1265.not, label %vec.epilog.scalar.ph1095.prol.loopexit, label %vec.epilog.scalar.ph1095.prol

vec.epilog.scalar.ph1095.prol:                    ; preds = %vec.epilog.scalar.ph1095.preheader, %vec.epilog.scalar.ph1095.prol
  %indvars.iv.i.i.i.i.i513.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i514.i.prol, %vec.epilog.scalar.ph1095.prol ], [ %indvars.iv.i.i.i.i.i513.i.ph, %vec.epilog.scalar.ph1095.preheader ] ; 3 uses
  %prol.iter1266 = phi i64 [ %prol.iter1266.next, %vec.epilog.scalar.ph1095.prol ], [ 0, %vec.epilog.scalar.ph1095.preheader ]
  %i.adh = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.i.i.i.i.i513.i.prol
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !119
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.i.i.i.i.i513.i.prol
  store i8 %i.adi, ptr %i.adj, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i.prol, 1 ; 2 uses
  %prol.iter1266.next = add i64 %prol.iter1266, 1 ; 2 uses
  %prol.iter1266.cmp.not = icmp eq i64 %prol.iter1266.next, %xtraiter1264
  br i1 %prol.iter1266.cmp.not, label %vec.epilog.scalar.ph1095.prol.loopexit, label %vec.epilog.scalar.ph1095.prol, !llvm.loop !203

vec.epilog.scalar.ph1095.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1095.prol, %vec.epilog.scalar.ph1095.preheader
  %indvars.iv.i.i.i.i.i513.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i513.i.ph, %vec.epilog.scalar.ph1095.preheader ], [ %indvars.iv.next.i.i.i.i.i514.i.prol, %vec.epilog.scalar.ph1095.prol ]
  %i.adk = sub nsw i64 %indvars.iv.i.i.i.i.i513.i.ph, %wide.trip.count.i.i.i.i.i512.i
  %i.adl = icmp ugt i64 %i.adk, -4
  br i1 %i.adl, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.scalar.ph1095

._crit_edge.i.i.i.i.i508.i:                       ; preds = %.preheader.i.i.i.i.i506.i
  %i.adm = icmp eq ptr %.pre.i.i.i.i.i507.i, null
  br i1 %i.adm, label %bb.hh, label %._crit_edge.thread.i.i.i.i.i509.i

vec.epilog.scalar.ph1095:                         ; preds = %vec.epilog.scalar.ph1095.prol.loopexit, %vec.epilog.scalar.ph1095
  %indvars.iv.i.i.i.i.i513.i = phi i64 [ %indvars.iv.next.i.i.i.i.i514.i.3, %vec.epilog.scalar.ph1095 ], [ %indvars.iv.i.i.i.i.i513.i.unr, %vec.epilog.scalar.ph1095.prol.loopexit ] ; 6 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.i.i.i.i.i513.i
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !119
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.i.i.i.i.i513.i
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 1 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.next.i.i.i.i.i514.i
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !119
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.next.i.i.i.i.i514.i
  store i8 %i.adr, ptr %i.ads, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 2 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.next.i.i.i.i.i514.i.1
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !119
  %i.adv = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.next.i.i.i.i.i514.i.1
  store i8 %i.adu, ptr %i.adv, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 3 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.next.i.i.i.i.i514.i.2
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !119
  %i.ady = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.next.i.i.i.i.i514.i.2
  store i8 %i.adx, ptr %i.ady, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i515.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i514.i.3, %wide.trip.count.i.i.i.i.i512.i
  br i1 %exitcond.not.i.i.i.i.i515.i.3, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.scalar.ph1095, !llvm.loop !204

._crit_edge.thread.i.i.i.i.i509.i:                ; preds = %vec.epilog.scalar.ph1095.prol.loopexit, %vec.epilog.scalar.ph1095, %middle.block1091, %vec.epilog.middle.block1104, %._crit_edge.i.i.i.i.i508.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i507.i) #17
  %.pre.i.i.i.i510.i = load i32, ptr %i.sw, align 8, !tbaa !123
  br label %bb.hh

bb.hh:                                            ; preds = %._crit_edge.thread.i.i.i.i.i509.i, %._crit_edge.i.i.i.i.i508.i, %.noexc516.i
  %i.adz = phi i32 [ %.pre1.i.i.i.i505.i, %.noexc516.i ], [ %.pre1.i.i.i.i505.i, %._crit_edge.i.i.i.i.i508.i ], [ %.pre.i.i.i.i510.i, %._crit_edge.thread.i.i.i.i.i509.i ]
  store ptr %i.acs, ptr %i.sv, align 8, !tbaa !117
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds i8, ptr %i.acs, i64 %i.aea
  store i8 0, ptr %i.aeb, align 1, !tbaa !119
  store i32 4, ptr %i.sx, align 4, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sz, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ta, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tc, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.td, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.tf, i8 0, i64 19, i1 false)
  %i.aec = getelementptr inbounds nuw i8, ptr %i.acr, i64 1 ; 2 uses
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !128, !range !57, !noundef !58
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aef = load i8, ptr %i.acr, align 8, !tbaa !215, !range !57, !noundef !58
  %i.aeg = trunc nuw i8 %i.aef to i1
  br i1 %i.aeg, label %.split.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.aei = load i32, ptr %i.aeh, align 8, !tbaa !216
  %i.aej = load ptr, ptr %i.sm, align 8, !tbaa !98
  %i.aek = sext i32 %i.aei to i64
  %i.ael = getelementptr inbounds [8 x i8], ptr %i.aej, i64 %i.aek
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !99 ; 2 uses
  %i.aen = invoke noundef nonnull align 8 dereferenceable(179) ptr @_ZN8NArchive4NZip5CItemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %28, ptr noundef nonnull align 8 dereferenceable(186) %i.aem)
          to label %bb.hk unwind label %bb.hn     ; 0 uses

bb.hk:                                            ; preds = %bb.hj
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.tg, ptr noundef nonnull align 4 dereferenceable(6) %i.aeo, i64 6, i1 false)
  %i.aep = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %3, ptr noundef nonnull align 8 dereferenceable(186) %28)
          to label %bb.hl unwind label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  %.not398.i = icmp eq i32 %i.aep, 0
  br i1 %.not398.i, label %bb.ho, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i

bb.hm:                                            ; preds = %bb.hg
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.hn:                                            ; preds = %bb.jo, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i, %bb.hk, %bb.hj
  %i.aer = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

bb.ho:                                            ; preds = %bb.hl
  %.pre917.i = load i8, ptr %i.acr, align 8, !tbaa !215, !range !57
  %i.aes = trunc nuw i8 %.pre917.i to i1
  br i1 %i.aes, label %.thread975.i, label %bb.jl
end_hunk_1
begin_hunk_2_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(80) %28)
          to label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i unwind label %bb.ix

bb.ji:                                            ; preds = %bb.ja
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aib, i64 404
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !241
  %i.aiz = load ptr, ptr %i.st, align 8, !tbaa !98
  %i.aja = sext i32 %i.aiy to i64
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.aiz, i64 %i.aja
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !99 ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aib, i64 168
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !146
  invoke void @_ZN13COutMemStream10DetachDataER14CMemLockBlocks(ptr noundef nonnull align 8 dereferenceable(168) %i.aje, ptr noundef nonnull align 8 dereferenceable(41) %i.ajc)
          to label %bb.jj unwind label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aib, i64 376
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajg, ptr noundef nonnull align 8 dereferenceable(24) %i.ajf, i64 24, i1 false), !tbaa.struct !245
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajc, i64 72
  store i8 1, ptr %i.ajh, align 8, !tbaa !231
  br label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i

bb.jk:                                            ; preds = %bb.ji
  %i.aji = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

bb.jl:                                            ; preds = %bb.ho
  %i.ajj = invoke fastcc noundef i32 @_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(72) %i.acr, ptr noundef nonnull align 8 dereferenceable(186) %28, ptr noundef nonnull %i.pe, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.jm unwind label %bb.jn     ; 2 uses

bb.jm:                                            ; preds = %bb.jl
  %.not399.i = icmp eq i32 %i.ajj, 0
  br i1 %.not399.i, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i

bb.jn:                                            ; preds = %bb.jl
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i: ; preds = %bb.jm, %bb.jh, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i, %.noexc521.i
  %.4.i = phi i32 [ %.0261.ph.ph.i, %.noexc521.i ], [ %.0261.ph.ph.i, %bb.jm ], [ %.1.i, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i ], [ %.1.i, %bb.jh ]
  %i.ajl = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #15
          to label %.noexc533.i unwind label %bb.hn ; 3 uses

.noexc533.i:                                      ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i
  invoke void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %i.ajl, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.jo unwind label %bb.jp

bb.jo:                                            ; preds = %.noexc533.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.jq unwind label %bb.hn

bb.jp:                                            ; preds = %.noexc533.i
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ajl, i64 noundef 184) #17
  br label %.body535.i

bb.jq:                                            ; preds = %bb.jo
  %i.ajn = load ptr, ptr %i.tj, align 8, !tbaa !98
  %i.ajo = load i32, ptr %i.tk, align 4, !tbaa !97 ; 2 uses
  %i.ajp = sext i32 %i.ajo to i64
  %i.ajq = getelementptr inbounds [8 x i8], ptr %i.ajn, i64 %i.ajp
  store ptr %i.ajl, ptr %i.ajq, align 8, !tbaa !99
  %i.ajr = add nsw i32 %i.ajo, 1
  store i32 %i.ajr, ptr %i.tk, align 4, !tbaa !97
  %i.ajs = load i64, ptr %i.b, align 8, !tbaa !78
  %i.ajt = add i64 %i.ajs, 26                     ; 3 uses
  store i64 %i.ajt, ptr %i.b, align 8, !tbaa !78
  %i.aju = load ptr, ptr %i.so, align 8, !tbaa !83 ; 4 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 80 ; 2 uses
  %i.ajw = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ajv) #14 ; 0 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 48
  store i64 0, ptr %i.ajx, align 8, !tbaa !78
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aju, i64 32
  store i64 0, ptr %i.ajy, align 8, !tbaa !78
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.aju, i64 16
  store i64 %i.ajt, ptr %i.ajz, align 8, !tbaa !79
  %i.aka = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ajv) #14 ; 0 uses
  %i.akb = add nsw i32 %i.aco, 1
  br label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i: ; preds = %bb.jm, %bb.jc, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit532.i, %bb.hl
  %.27374.jt1.i = phi i32 [ %i.aik, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit532.i ], [ -2147467263, %bb.hl ], [ %i.ajj, %bb.jm ], [ %i.aiq, %bb.jc ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  %i.akc = load ptr, ptr %i.tl, align 8, !tbaa !114 ; 2 uses
  %i.akd = icmp eq ptr %i.akc, null
  br i1 %i.akd, label %_ZN7CBufferIhED2Ev.exit.i537.jt1.i, label %bb.jr

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i: ; preds = %bb.jq, %bb.jj
  %.promoted778.pre.i = phi i64 [ %i.ajt, %bb.jq ], [ %i.akm, %bb.jj ]
  %.1263.jt0.i = phi i32 [ %i.akb, %bb.jq ], [ %i.aco, %bb.jj ]
  %.5.jt0.i = phi i32 [ %.4.i, %bb.jq ], [ %.1.i, %bb.jj ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  %i.ake = load ptr, ptr %i.tl, align 8, !tbaa !114 ; 2 uses
  %i.akf = icmp eq ptr %i.ake, null
  br i1 %i.akf, label %_ZN7CBufferIhED2Ev.exit.i537.jt0.i, label %bb.js

bb.jr:                                            ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i
  call void @_ZdaPv(ptr noundef nonnull %i.akc) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i537.jt1.i

bb.js:                                            ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i
  call void @_ZdaPv(ptr noundef nonnull %i.ake) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i537.jt0.i

_ZN7CBufferIhED2Ev.exit.i537.jt1.i:               ; preds = %bb.jr, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.tb)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i unwind label %.loopexit.split-lp.i, !inline_history !116

_ZN7CBufferIhED2Ev.exit.i537.jt0.i:               ; preds = %bb.js, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.tb)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i unwind label %.loopexit976.i, !inline_history !116

.loopexit976.i:                                   ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt0.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jt

.loopexit.split-lp.i:                             ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt1.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jt

bb.jt:                                            ; preds = %.loopexit.split-lp.i, %.loopexit976.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit976.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.akg = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.akg) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt1.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.tb) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sy)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i unwind label %.loopexit.split-lp978.i, !inline_history !116

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt0.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.tb) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sy)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i unwind label %.loopexit977.i, !inline_history !116

.loopexit977.i:                                   ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i
  %lpad.loopexit979.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ju

.loopexit.split-lp978.i:                          ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i
  %lpad.loopexit.split-lp980.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ju

bb.ju:                                            ; preds = %.loopexit.split-lp978.i, %.loopexit977.i
  %lpad.phi981.i = phi { ptr, i32 } [ %lpad.loopexit979.i, %.loopexit977.i ], [ %lpad.loopexit.split-lp980.i, %.loopexit.split-lp978.i ]
  %i.akh = extractvalue { ptr, i32 } %lpad.phi981.i, 0
  call void @__clang_call_terminate(ptr %i.akh) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #14, !inline_history !116
  %i.aki = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 2 uses
  %i.akj = icmp eq ptr %i.aki, null
  br i1 %i.akj, label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i, label %bb.jv

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #14, !inline_history !116
  %i.akk = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 2 uses
  %i.akl = icmp eq ptr %i.akk, null
  br i1 %i.akl, label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i, label %bb.jw

bb.jv:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i
  call void @_ZdaPv(ptr noundef nonnull %i.aki) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i

bb.jw:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i
  call void @_ZdaPv(ptr noundef nonnull %i.akk) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i

_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i:        ; preds = %bb.jv, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %.thread575.i

_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i:        ; preds = %bb.jw, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %.outer.outer.i, !llvm.loop !193

.outer.outer.i:                                   ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i, %.preheader.i
  %.promoted778.i = phi i64 [ 0, %.preheader.i ], [ %.promoted778.pre.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.11358.ph.ph.i = phi i32 [ %..i, %.preheader.i ], [ %.11358.ph.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.0264.ph.ph.i = phi i32 [ 0, %.preheader.i ], [ %.us-phi723.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.0262.ph.ph.i = phi i32 [ 0, %.preheader.i ], [ %.1263.jt0.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ] ; 2 uses
  %.0261.ph.ph.i = phi i32 [ -1, %.preheader.i ], [ %.5.jt0.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ] ; 4 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.outer.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i
  %i.akm = phi i64 [ %i.ace, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.promoted778.i, %.outer.outer.i ] ; 11 uses
  %.11358.ph.i = phi i32 [ %.16363.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.11358.ph.ph.i, %.outer.outer.i ] ; 6 uses
  %.0264.ph.i = phi i32 [ %i.wb, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.0264.ph.ph.i, %.outer.outer.i ] ; 3 uses
  %i.akn = load i32, ptr %i.bz, align 4, !tbaa !97 ; 4 uses
  %i.ako = icmp slt i32 %.0262.ph.ph.i, %i.akn
  br i1 %i.ako, label %.outer.split.i, label %._crit_edge699.i

.outer.split.i:                                   ; preds = %.outer.i
  %i.akp = load i32, ptr %i.rz, align 4
  %i.akq = icmp ult i32 %i.akp, %.2276563.i
  %.fr.i = freeze i1 %i.akq
  br i1 %.fr.i, label %.outer598.preheader.i, label %.outer.split.split.us.i

.outer598.preheader.i:                            ; preds = %.outer.split.i
  %i.akr = sext i32 %.0264.ph.i to i64            ; 2 uses
  %33 = sext i32 %i.akn to i64                    ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %i.akr, i64 %33) ; 2 uses
  %exitcond909.not.i1061.not = icmp slt i32 %.0264.ph.i, %i.akn
  br i1 %exitcond909.not.i1061.not, label %.lr.ph698.split.us.i.preheader, label %.lr.ph698.split.split.i.a

.lr.ph698.split.us.i.preheader:                   ; preds = %.outer598.preheader.i
  %i.aks = load ptr, ptr %i.sa, align 8, !tbaa !98
  br label %.lr.ph698.split.us.i

.outer.split.split.us.i:                          ; preds = %.outer.split.i
  %.pre918.i = sext i32 %i.akn to i64
  br label %.lr.ph698.split.i

.body535.i:                                       ; preds = %bb.jp, %bb.jn, %bb.jk, %bb.jd, %bb.ix, %bb.iw, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit529.i, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit525.i, %bb.hs, %bb.hn
  %.pn411.i = phi { ptr, i32 } [ %i.aji, %bb.jk ], [ %i.ajk, %bb.jn ], [ %i.afe, %bb.hs ], [ %i.agg, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit525.i ], [ %i.ajm, %bb.jp ], [ %i.ahj, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit529.i ], [ %i.ail, %bb.iw ], [ %i.aim, %bb.ix ], [ %i.air, %bb.jd ], [ %i.aer, %bb.hn ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %28) #14
  br label %bb.jx

bb.jx:                                            ; preds = %.body535.i, %bb.hm
  %.pn411.pn.i = phi { ptr, i32 } [ %.pn411.i, %.body535.i ], [ %i.aeq, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %bb.km

._crit_edge699.i:                                 ; preds = %.outer.i, %bb.hf
  invoke void @_ZN8NArchive4NZip11COutArchive15WriteCentralDirERK13CObjectVectorINS0_5CItemEEPK7CBufferIhE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %i.by)
          to label %.thread575.i unwind label %bb.fm

.thread575.i:                                     ; preds = %bb.fk, %.noexc476.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i, %._crit_edge699.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i, %bb.eh
  %.29376.i = phi i32 [ %i.qs, %bb.eh ], [ 0, %._crit_edge699.i ], [ %.27374.jt1.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i ], [ %.16363.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %i.ts, %.noexc476.i ], [ %i.vl, %bb.fk ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @_ZN8NArchive4NZip8CThreadsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.akt = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !97
  %i.akv = icmp sgt i32 %i.aku, 0
  br i1 %i.akv, label %.lr.ph.i542.i, label %._crit_edge.i541.i

.lr.ph.i542.i:                                    ; preds = %.thread575.i
  %i.akw = getelementptr inbounds nuw i8, ptr %20, i64 24
  br label %bb.jz

._crit_edge.i541.i:                               ; preds = %bb.ka, %.thread575.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, i64 16), ptr %i.qh, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.qh)
          to label %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i unwind label %bb.jy, !inline_history !148

bb.jy:                                            ; preds = %._crit_edge.i541.i
  %i.akx = landingpad { ptr, i32 }
          catch ptr null
  %i.aky = extractvalue { ptr, i32 } %i.akx, 0
  call void @__clang_call_terminate(ptr %i.aky) #16, !inline_history !148
  unreachable

bb.jz:                                            ; preds = %bb.ka, %.lr.ph.i542.i
  %indvars.iv.i543.i = phi i64 [ 0, %.lr.ph.i542.i ], [ %indvars.iv.next.i544.i, %bb.ka ] ; 2 uses
  %i.akz = load ptr, ptr %i.akw, align 8, !tbaa !98
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.akz, i64 %indvars.iv.i543.i
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !99
  %i.alc = load ptr, ptr %20, align 8, !tbaa !139
  invoke void @_ZN10CMemBlocks7FreeOptEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(40) %i.alb, ptr noundef %i.alc)
          to label %bb.ka unwind label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %indvars.iv.next.i544.i = add nuw nsw i64 %indvars.iv.i543.i, 1 ; 2 uses
  %i.ald = load i32, ptr %i.akt, align 4, !tbaa !97
  %i.ale = sext i32 %i.ald to i64
  %i.alf = icmp slt i64 %indvars.iv.next.i544.i, %i.ale
  br i1 %i.alf, label %bb.jz, label %._crit_edge.i541.i, !llvm.loop !2

bb.kb:                                            ; preds = %bb.jz
  %i.alg = landingpad { ptr, i32 }
          catch ptr null
  %i.alh = extractvalue { ptr, i32 } %i.alg, 0
  call void @__clang_call_terminate(ptr %i.alh) #16
  unreachable

_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i:            ; preds = %._crit_edge.i541.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.qh) #14, !inline_history !148
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  invoke void @_ZN18CMemBlockManagerMt9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %bb.kc unwind label %bb.ke

bb.kc:                                            ; preds = %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i
  %i.ali = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.qa) #14 ; 0 uses
  invoke void @_ZN16CMemBlockManager9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %_ZN18CMemBlockManagerMtD2Ev.exit.i unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.alj = landingpad { ptr, i32 }
          catch ptr null
  %i.alk = extractvalue { ptr, i32 } %i.alj, 0
  call void @__clang_call_terminate(ptr %i.alk) #16
  unreachable

bb.ke:                                            ; preds = %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i
  %i.all = landingpad { ptr, i32 }
          catch ptr null
  %i.alm = extractvalue { ptr, i32 } %i.all, 0
  call void @__clang_call_terminate(ptr %i.alm) #16
  unreachable

_ZN18CMemBlockManagerMtD2Ev.exit.i:               ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  %i.aln = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.pn) #14 ; 0 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.pk) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ph) #14
  %i.alo = load ptr, ptr %18, align 8, !tbaa !61  ; 3 uses
  %.not.i.i546.i = icmp eq ptr %i.alo, null
  br i1 %.not.i.i546.i, label %bb.kh, label %bb.kf

bb.kf:                                            ; preds = %_ZN18CMemBlockManagerMtD2Ev.exit.i
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !64
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  %i.alr = load ptr, ptr %i.alq, align 8
  %i.als = invoke noundef i32 %i.alr(ptr noundef nonnull align 8 dereferenceable(8) %i.alo)
          to label %bb.kh unwind label %bb.kg     ; 0 uses

bb.kg:                                            ; preds = %bb.kf
  %i.alt = landingpad { ptr, i32 }
          catch ptr null
  %i.alu = extractvalue { ptr, i32 } %i.alt, 0
  call void @__clang_call_terminate(ptr %i.alu) #16
  unreachable

bb.kh:                                            ; preds = %bb.kf, %_ZN18CMemBlockManagerMtD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %i.alv = load ptr, ptr %i.pe, align 8, !tbaa !64
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  %i.alx = load ptr, ptr %i.alw, align 8
  %i.aly = invoke noundef i32 %i.alx(ptr noundef nonnull align 8 dereferenceable(8) %i.pe)
          to label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i unwind label %bb.ki ; 0 uses

bb.ki:                                            ; preds = %bb.kh
  %i.alz = landingpad { ptr, i32 }
          catch ptr null
  %i.ama = extractvalue { ptr, i32 } %i.alz, 0
  call void @__clang_call_terminate(ptr %i.ama) #16
  unreachable

_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i: ; preds = %bb.kh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, i64 16), ptr %17, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i unwind label %bb.kj, !inline_history !133

bb.kj:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
  %i.amb = landingpad { ptr, i32 }
          catch ptr null
  %i.amc = extractvalue { ptr, i32 } %i.amb, 0
  call void @__clang_call_terminate(ptr %i.amc) #16, !inline_history !133
  unreachable

_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i: ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #14, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.amd = load i8, ptr %i.oy, align 8, !tbaa !135, !range !57, !noundef !58
  %i.ame = trunc nuw i8 %i.amd to i1
  br i1 %i.ame, label %bb.kk, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.kk:                                            ; preds = %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i
  %i.amf = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %16) #14 ; 0 uses
  %i.amg = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.pa) #14 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.kk, %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.amh = load i8, ptr %i.ou, align 8, !tbaa !135, !range !57, !noundef !58
  %i.ami = trunc nuw i8 %i.amh to i1
  br i1 %i.ami, label %bb.kl, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i

bb.kl:                                            ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
  %i.amj = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %15) #14 ; 0 uses
  %i.amk = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ow) #14 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i: ; preds = %bb.kl, %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %_ZN8NArchive4NZipL9Update2StERNS0_11COutArchiveEPNS0_10CInArchiveEP9IInStreamRK13CObjectVectorINS0_7CItemExEERKS7_INS0_11CUpdateItemEEPKNS0_22CCompressionMethodModeEPK7CBufferIhEP22IArchiveUpdateCallback.exit.i

bb.km:                                            ; preds = %bb.jx, %bb.he, %bb.fm, %bb.fj, %bb.fb, %bb.fa, %bb.ew, %bb.eo, %bb.el
  %.pn431.pn.i = phi { ptr, i32 } [ %i.rl, %bb.eo ], [ %i.re, %bb.el ], [ %i.ty, %bb.fb ], [ %.pn428.i, %bb.ew ], [ %i.vm, %bb.fj ], [ %i.tx, %bb.fa ], [ %.pn411.pn.i, %bb.jx ], [ %.pn422.pn.pn.i, %bb.he ], [ %i.vz, %bb.fm ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @_ZN8NArchive4NZip8CThreadsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @_ZN8NArchive4NZip8CMemRefsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @_ZN18CMemBlockManagerMtD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  br label %.body469.i

.body469.i:                                       ; preds = %bb.km, %bb.ee
  %.pn431.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn431.pn.i, %bb.km ], [ %i.qc, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.kn

bb.kn:                                            ; preds = %.body469.i, %bb.ek
  %.pn431.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn431.pn.pn.pn.pn.i, %.body469.i ], [ %i.rd, %bb.ek ]
  call void @_ZN24CMtCompressProgressMixerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %18) #14
  br label %.body467.i

.body467.i:                                       ; preds = %bb.kn, %bb.eb, %bb.ea
  %.pn431.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn431.pn.pn.pn.pn.pn.i, %bb.kn ], [ %i.pp, %bb.ea ], [ %i.pp, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %bb.ko

bb.ko:                                            ; preds = %.body467.i, %bb.ej
  %.pn431.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn431.pn.pn.pn.pn.pn.pn.i, %.body467.i ], [ %i.rc, %bb.ej ]
  %i.aml = load ptr, ptr %i.pe, align 8, !tbaa !64
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  %i.amn = load ptr, ptr %i.amm, align 8
  %i.amo = invoke noundef i32 %i.amn(ptr noundef nonnull align 8 dereferenceable(8) %i.pe)
          to label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit551.i unwind label %bb.kp ; 0 uses

bb.kp:                                            ; preds = %bb.ko
  %i.amp = landingpad { ptr, i32 }
          catch ptr null
  %i.amq = extractvalue { ptr, i32 } %i.amp, 0
  call void @__clang_call_terminate(ptr %i.amq) #16
  unreachable

_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit551.i: ; preds = %bb.ko, %bb.ei
  %.pn431.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.rb, %bb.ei ], [ %.pn431.pn.pn.pn.pn.pn.pn.pn.i, %bb.ko ]
  call void @_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @_ZN8NWindows16NSynchronization8CSynchroD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %16) #14
end_hunk_2
