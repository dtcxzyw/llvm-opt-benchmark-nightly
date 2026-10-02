Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DynamicEntry?download=true
inline.NumInlined: 80
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::locale::id" = type { i64 }
%"class.std::vector.153" = type { %"struct.std::_Vector_base.154" }
%"struct.std::_Vector_base.154" = type { %"struct.std::_Vector_base<LIEF::ELF::DynamicEntryFlags::FLAG, std::allocator<LIEF::ELF::DynamicEntryFlags::FLAG>>::_Vector_impl" }
%"struct.std::_Vector_base<LIEF::ELF::DynamicEntryFlags::FLAG, std::allocator<LIEF::ELF::DynamicEntryFlags::FLAG>>::_Vector_impl" = type { %"struct.std::_Vector_base<LIEF::ELF::DynamicEntryFlags::FLAG, std::allocator<LIEF::ELF::DynamicEntryFlags::FLAG>>::_Vector_impl_data" }
%"struct.std::_Vector_base<LIEF::ELF::DynamicEntryFlags::FLAG, std::allocator<LIEF::ELF::DynamicEntryFlags::FLAG>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN3fmt3v1212format_facetISt6localeE2idE = comdat any

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1212format_facetISt6localeE2idE), align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #1 section ".text.startup" comdat($_ZN3fmt3v1212format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF22init_c_dynamic_entriesEP12Elf_Binary_tPNS0_6BinaryE(ptr nofree noundef captures(none) initializes((128, 136)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.std::vector.153", align 8   ; 5 uses
  %3 = alloca %"class.std::vector.153", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !noalias !91 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %reass.sub = sub i64 %i.e, %i.f
  %i.g = add i64 %reass.sub, 8
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 12 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !18
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge112, label %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit.lr.ph

_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit.lr.ph: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit

._crit_edge112.loopexit:                          ; preds = %bb.n
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.loopexit, %bb.a
  %i.l = phi ptr [ %i.h, %bb.a ], [ %.pre, %._crit_edge112.loopexit ]
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.ew, %._crit_edge112.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.lcssa
  store ptr null, ptr %i.m, align 8, !tbaa !20
  ret void

_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit: ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit.lr.ph, %bb.n
  %i.n = phi ptr [ %i.b, %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit.lr.ph ], [ %i.et, %bb.n ]
  %.0111 = phi i64 [ 0, %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit.lr.ph ], [ %i.er, %bb.n ] ; 12 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0111
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 21 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43   ; 3 uses
  switch i64 %i.r, label %bb.m [
    i64 1, label %bb.b
    i64 14, label %bb.c
    i64 2147483645, label %bb.d
    i64 2147483647, label %bb.e
    i64 15, label %bb.f
    i64 29, label %bb.g
    i64 25, label %bb.h
    i64 26, label %bb.h
    i64 32, label %bb.h
    i64 30, label %bb.i
    i64 1879048187, label %bb.k
  ]

bb.b:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.s = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 4 uses
  store i64 1, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !51
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0111
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !20
  br label %bb.n

bb.c:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.ab = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 4 uses
  store i64 14, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !55
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0111
  store ptr %i.ab, ptr %i.aj, align 8, !tbaa !20
  br label %bb.n

bb.d:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.ak = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 4 uses
  store i64 2147483645, ptr %i.ak, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.0111
  store ptr %i.ak, ptr %i.as, align 8, !tbaa !20
  br label %bb.n

bb.e:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.at = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 4 uses
  store i64 2147483647, ptr %i.at, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !63
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0111
  store ptr %i.at, ptr %i.bb, align 8, !tbaa !20
  br label %bb.n

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.bc = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 4 uses
  store i64 15, ptr %i.bc, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !67
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.0111
  store ptr %i.bc, ptr %i.bk, align 8, !tbaa !20
  br label %bb.n

bb.g:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.bl = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 4 uses
  store i64 29, ptr %i.bl, align 8, !tbaa !69
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !70
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !71
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0111
  store ptr %i.bl, ptr %i.bt, align 8, !tbaa !20
  br label %bb.n

bb.h:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit, %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit, %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.bu = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 4 uses
  store i64 %i.r, ptr %i.bu, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !75 ; 2 uses
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !76 ; 8 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = add i64 %i.ce, 8
  %i.cg = call noalias ptr @malloc(i64 noundef %i.cf) #8 ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !23
  %.not113 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not113, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ci = ptrtoaddr ptr %i.cg to i64
  %i.cj = ashr exact i64 %i.ce, 3                 ; 6 uses
  %min.iters.check = icmp ult i64 %i.cj, 4
  %i.ck = sub i64 %i.cd, %i.ci
  %diff.check = icmp ugt i64 %i.ck, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cj, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <2 x i64>, ptr %i.cl, align 8, !tbaa !77
  %wide.load120 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !77
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x i64> %wide.load, ptr %i.cn, align 8, !tbaa !77
  store <2 x i64> %wide.load120, ptr %i.co, align 8, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader121

.lr.ph.preheader121:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0103109.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader121, %.lr.ph.prol
  %.0103109.prol = phi i64 [ %i.ct, %.lr.ph.prol ], [ %.0103109.ph, %.lr.ph.preheader121 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader121 ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0103109.prol
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0103109.prol
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !77
  %i.ct = add nuw i64 %.0103109.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !30

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader121
  %.0103109.unr = phi i64 [ %.0103109.ph, %.lr.ph.preheader121 ], [ %i.ct, %.lr.ph.prol ]
  %i.cu = sub nsw i64 %.0103109.ph, %i.cj
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i64 0, ptr %i.cw, align 8, !tbaa !77
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0111
  store ptr %i.bu, ptr %i.cy, align 8, !tbaa !20
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0103109 = phi i64 [ %i.do, %.lr.ph ], [ %.0103109.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0103109
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !77
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0103109
  store i64 %i.da, ptr %i.db, align 8, !tbaa !77
  %i.dc = add nuw i64 %.0103109, 1                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !77
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dc
  store i64 %i.de, ptr %i.df, align 8, !tbaa !77
  %i.dg = add nuw i64 %.0103109, 2                ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !77
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dg
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !77
  %i.dk = add nuw i64 %.0103109, 3                ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dk
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !77
  %i.do = add nuw i64 %.0103109, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.do, %i.cj
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.i:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.dp = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  store i64 30, ptr %i.dp, align 8, !tbaa !82
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @_ZNK4LIEF3ELF17DynamicEntryFlags5flagsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.153") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #9
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0111
  store ptr %i.dp, ptr %i.du, align 8, !tbaa !20
  %i.dv = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #10
  br label %_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.n

bb.k:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.ea = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  store i64 1879048187, ptr %i.ea, align 8, !tbaa !82
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !46
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZNK4LIEF3ELF17DynamicEntryFlags5flagsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.153") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #9
  %i.ee = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.0111
  store ptr %i.ea, ptr %i.ef, align 8, !tbaa !20
  %i.eg = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i104 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit105, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #10
  br label %_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit105

_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit105: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.n

bb.m:                                             ; preds = %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit
  %i.el = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.0111
  store ptr %i.el, ptr %i.en, align 8, !tbaa !20
  store i64 %i.r, ptr %i.el, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !87
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit105, %_ZNSt6vectorIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EED2Ev.exit, %._crit_edge, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.er = add nuw i64 %.0111, 1                   ; 2 uses
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = icmp ult i64 %i.er, %i.ex
  br i1 %i.ey, label %_ZN4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_3ELF12DynamicEntryESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEEixEm.exit, label %._crit_edge112.loopexit, !llvm.loop !32
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @_ZNK4LIEF3ELF17DynamicEntryFlags5flagsEv(ptr dead_on_unwind writable sret(%"class.std::vector.153") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN4LIEF3ELF23destroy_dynamic_entriesEP12Elf_Binary_t(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not31 = icmp eq ptr %i.c, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  tail call void @free(ptr noundef %i.d) #9
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.032 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  switch i64 %i.f, label %bb.c [
    i64 32, label %bb.b
    i64 26, label %bb.b
    i64 25, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.h) #9
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #9
  %i.i = add i64 %.032, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !92
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTS12Elf_Header_t", !4, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80}
!12 = !{!"any p2 pointer", !8, i64 0}
!13 = !{!"p2 _ZTS13Elf_Section_t", !12, i64 0}
!14 = !{!"p2 _ZTS13Elf_Segment_t", !12, i64 0}
!15 = !{!"p2 _ZTS18Elf_DynamicEntry_t", !12, i64 0}
!16 = !{!"p2 _ZTS12Elf_Symbol_t", !12, i64 0}
!17 = !{!"_ZTS12Elf_Binary_t", !8, i64 0, !9, i64 8, !5, i64 16, !11, i64 24, !13, i64 112, !14, i64 120, !15, i64 128, !16, i64 136, !16, i64 144}
!18 = !{!17, !15, i64 128}
!19 = !{!"p1 _ZTS18Elf_DynamicEntry_t", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 long", !8, i64 0}
!22 = !{!"_ZTS24Elf_DynamicEntry_Array_t", !10, i64 0, !10, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"_ZTS18Elf_DynamicEntry_t", !10, i64 0, !10, i64 8}
!26 = !{!25, !10, i64 0}
!29 = distinct !{!29, !24, !78, !79}
!30 = distinct !{!30, !80}
!31 = distinct !{!31, !24, !78}
!32 = distinct !{!32, !24}
!33 = !{!"p1 _ZTSSt10unique_ptrIN4LIEF3ELF12DynamicEntryESt14default_deleteIS2_EE", !8, i64 0}
!34 = !{!33, !33, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF12DynamicEntryESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!37 = !{!36, !33, i64 8}
!38 = !{!"p1 _ZTSN4LIEF3ELF12DynamicEntryE", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSN4LIEF6ObjectE"}
!41 = !{!"_ZTSN4LIEF3ELF12DynamicEntry3TAGE", !4, i64 0}
!42 = !{!"_ZTSN4LIEF3ELF12DynamicEntryE", !40, i64 0, !41, i64 8, !10, i64 16}
!43 = !{!42, !41, i64 8}
!44 = !{!"_ZTS26Elf_DynamicEntry_Library_t", !10, i64 0, !10, i64 8, !9, i64 16}
!45 = !{!44, !10, i64 0}
!46 = !{!42, !10, i64 16}
!47 = !{!44, !10, i64 8}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !10, i64 8, !4, i64 16}
!50 = !{!49, !9, i64 0}
!51 = !{!44, !9, i64 16}
!52 = !{!"_ZTS31Elf_DynamicEntry_SharedObject_t", !10, i64 0, !10, i64 8, !9, i64 16}
!53 = !{!52, !10, i64 0}
!54 = !{!52, !10, i64 8}
!55 = !{!52, !9, i64 16}
!56 = !{!"_ZTS28Elf_DynamicEntry_Auxiliary_t", !10, i64 0, !10, i64 8, !9, i64 16}
!57 = !{!56, !10, i64 0}
!58 = !{!56, !10, i64 8}
!59 = !{!56, !9, i64 16}
!60 = !{!"_ZTS25Elf_DynamicEntry_Filter_t", !10, i64 0, !10, i64 8, !9, i64 16}
!61 = !{!60, !10, i64 0}
!62 = !{!60, !10, i64 8}
!63 = !{!60, !9, i64 16}
!64 = !{!"_ZTS24Elf_DynamicEntry_Rpath_t", !10, i64 0, !10, i64 8, !9, i64 16}
!65 = !{!64, !10, i64 0}
!66 = !{!64, !10, i64 8}
!67 = !{!64, !9, i64 16}
!68 = !{!"_ZTS26Elf_DynamicEntry_RunPath_t", !10, i64 0, !10, i64 8, !9, i64 16}
!69 = !{!68, !10, i64 0}
!70 = !{!68, !10, i64 8}
!71 = !{!68, !9, i64 16}
!72 = !{!22, !10, i64 0}
!73 = !{!22, !10, i64 8}
!74 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!75 = !{!74, !21, i64 8}
!76 = !{!74, !21, i64 0}
!77 = !{!10, !10, i64 0}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"_ZTS24Elf_DynamicEntry_Flags_t", !10, i64 0, !10, i64 8}
!82 = !{!81, !10, i64 0}
!83 = !{!81, !10, i64 8}
!84 = !{!"_ZTSNSt12_Vector_baseIN4LIEF3ELF17DynamicEntryFlags4FLAGESaIS3_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!85 = !{!84, !8, i64 0}
!86 = !{!84, !8, i64 16}
!87 = !{!25, !10, i64 8}
!88 = !{!36, !33, i64 0}
!89 = distinct !{!89, i1 false, !"_ZN4LIEF3ELF6Binary15dynamic_entriesEv"}
!90 = distinct !{!90, !89, !"_ZN4LIEF3ELF6Binary15dynamic_entriesEv: argument 0"}
!91 = !{!90}
!92 = distinct !{!92, !24}
end_hunk_0
