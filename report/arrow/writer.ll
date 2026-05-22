inline.NumInlined: 5023
inline.NumDeleted: 1781
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !299
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !299
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Result.82", align 8  ; 12 uses
  %6 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 12 uses
  %10 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %11 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %14 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %15 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %16 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %20 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %21 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %23 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %25 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %26 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %27 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %28 = alloca %"class.arrow::Result.339", align 8 ; 13 uses
  %29 = alloca %"class.std::shared_ptr.32", align 16 ; 6 uses
  %30 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %33 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %35 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"class.std::vector.137", align 8  ; 10 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"class.std::allocator.139", align 1 ; 4 uses
  %39 = alloca %"class.std::vector.137", align 8  ; 10 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %40 = alloca %"class.std::allocator.139", align 1 ; 4 uses
  %41 = alloca %"class.arrow::Result.82", align 8 ; 11 uses
  %42 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %43 = alloca %"class.std::shared_ptr.32", align 16 ; 13 uses
  %44 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %45 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %47 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %48 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %50 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %51 = alloca %"class.std::shared_ptr.32", align 8 ; 9 uses
  %52 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %53 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %54 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %55 = alloca %"class.std::shared_ptr", align 16 ; 17 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %57 = alloca %"class.std::shared_ptr.32", align 16 ; 9 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %58 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %60 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %62 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %64 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %65 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %66 = alloca %"class.std::shared_ptr.32", align 8 ; 10 uses
  %67 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %68 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %69 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
  %70 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %71 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %72 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %73 = alloca %"class.std::shared_ptr.32", align 8 ; 10 uses
  %74 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %76 = alloca %"class.std::shared_ptr", align 16 ; 17 uses
  %77 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %78 = alloca %"class.std::shared_ptr.32", align 16 ; 9 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %79 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.s = alloca i64, align 8                      ; 7 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %81 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %82 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %83 = alloca %"class.std::shared_ptr", align 16 ; 17 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %85 = alloca %"class.std::shared_ptr.32", align 16 ; 9 uses
  %i.t = alloca i32, align 4                      ; 6 uses
  %86 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.u = alloca i32, align 4                      ; 7 uses
  %87 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %88 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %89 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %90 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %91 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %92 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %93 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %94 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %95 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %96 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %97 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %98 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %99 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.af = alloca i64, align 8                     ; 4 uses
  %i.ag = alloca i64, align 8                     ; 4 uses
  %100 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %101 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %102 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %103 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %104 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %105 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %i.am = alloca i64, align 8                     ; 4 uses
  %106 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %107 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.an = alloca i64, align 8                     ; 4 uses
  %i.ao = alloca i64, align 8                     ; 4 uses
  %108 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %109 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.ap = alloca i64, align 8                     ; 4 uses
  %i.aq = alloca i64, align 8                     ; 4 uses
  %110 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %111 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.ar = alloca i64, align 8                     ; 4 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %112 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %113 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.at = alloca i64, align 8                     ; 4 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %114 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %115 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %116 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %117 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %118 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %i.ax = alloca i64, align 8                     ; 4 uses
  %i.ay = alloca i64, align 8                     ; 4 uses
  %119 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.az = alloca i64, align 8                     ; 8 uses
  %120 = alloca %"class.arrow::Status", align 8   ; 4 uses
  %121 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %122 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %123 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %124 = alloca %"class.std::shared_ptr", align 16 ; 23 uses
  %125 = alloca %"class.arrow::Status", align 8   ; 10 uses
  %126 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %i.ba = alloca i64, align 8                     ; 6 uses
  %127 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %128 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %129 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %i.bb = alloca i64, align 8                     ; 4 uses
  %i.bc = alloca i64, align 8                     ; 4 uses
  %130 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.bd = alloca i64, align 8                     ; 8 uses
  %131 = alloca %"class.arrow::Status", align 8   ; 4 uses
  %132 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %133 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %134 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %135 = alloca %"class.std::shared_ptr", align 16 ; 23 uses
  %136 = alloca %"class.arrow::Status", align 8   ; 10 uses
  %137 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %i.be = alloca i64, align 8                     ; 6 uses
  %138 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %139 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %140 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %i.bf = alloca i64, align 8                     ; 4 uses
  %i.bg = alloca i64, align 8                     ; 4 uses
  %141 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.bh = alloca i32, align 4                     ; 8 uses
  %142 = alloca %"class.arrow::Status", align 8   ; 4 uses
  %143 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %144 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %145 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %146 = alloca %"class.std::shared_ptr", align 16 ; 23 uses
  %147 = alloca %"class.arrow::Status", align 8   ; 10 uses
  %148 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %i.bi = alloca i32, align 4                     ; 6 uses
  %149 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %150 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %151 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %i.bj = alloca i64, align 8                     ; 4 uses
  %i.bk = alloca i64, align 8                     ; 4 uses
  %152 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.bl = alloca i32, align 4                     ; 8 uses
  %153 = alloca %"class.arrow::Status", align 8   ; 4 uses
  %154 = alloca %"class.arrow::Result.82", align 8 ; 12 uses
  %155 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %156 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %157 = alloca %"class.std::shared_ptr", align 16 ; 23 uses
  %158 = alloca %"class.arrow::Status", align 8   ; 10 uses
  %159 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %i.bm = alloca i32, align 4                     ; 6 uses
  %160 = alloca %"class.arrow::Status", align 8   ; 5 uses
  %161 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.bn = alloca i64, align 8                     ; 4 uses
  %i.bo = alloca i64, align 8                     ; 4 uses
  %162 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %163 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.bp = alloca i64, align 8                     ; 4 uses
  %i.bq = alloca i64, align 8                     ; 4 uses
  %164 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %165 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.br = alloca i64, align 8                     ; 4 uses
  %i.bs = alloca i64, align 8                     ; 4 uses
  %166 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %167 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.bt = alloca i64, align 8                     ; 4 uses
  %i.bu = alloca i64, align 8                     ; 4 uses
  %168 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %169 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.bv = alloca i64, align 8                     ; 4 uses
  %i.bw = alloca i64, align 8                     ; 4 uses
  %170 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %171 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.bx = alloca i64, align 8                     ; 4 uses
  %i.by = alloca i64, align 8                     ; 4 uses
  %172 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %173 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.bz = alloca i64, align 8                     ; 4 uses
  %i.ca = alloca i64, align 8                     ; 4 uses
  %174 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %175 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.cb = alloca i64, align 8                     ; 4 uses
  %i.cc = alloca i64, align 8                     ; 4 uses
  %176 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %177 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.cd = alloca i64, align 8                     ; 4 uses
  %i.ce = alloca i64, align 8                     ; 4 uses
  %178 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %179 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.cf = alloca i64, align 8                     ; 4 uses
  %i.cg = alloca i64, align 8                     ; 4 uses
  %180 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %181 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %i.ch = alloca i64, align 8                     ; 4 uses
  %i.ci = alloca i64, align 8                     ; 4 uses
  %182 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %183 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %184 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
  %185 = alloca %"class.arrow::Status", align 8   ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr1792 = phi ptr [ %1, %bb.a ], [ %.tr1792.be, %tailrecurse.backedge ] ; 81 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !115 ; 51 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !341 ; 51 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !648
  switch i32 %i.cn, label %bb.bqb [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.o
    i32 2, label %bb.at
    i32 5, label %bb.by
    i32 4, label %bb.dd
    i32 7, label %bb.ei
    i32 6, label %bb.fn
    i32 9, label %bb.gs
    i32 8, label %bb.hx
    i32 10, label %bb.jc
    i32 11, label %bb.kh
    i32 12, label %bb.lm
    i32 13, label %bb.mr
    i32 39, label %bb.re
    i32 14, label %bb.rf
    i32 40, label %bb.vs
    i32 34, label %bb.vt
    i32 35, label %bb.aag
    i32 15, label %bb.aet
    i32 33, label %bb.afy
    i32 16, label %bb.ahd
    i32 17, label %bb.aii
    i32 18, label %bb.ajn
    i32 19, label %bb.aks
    i32 20, label %bb.alx
    i32 37, label %bb.anc
    i32 21, label %bb.aoh
    i32 22, label %bb.apm
    i32 43, label %bb.aqr
    i32 44, label %bb.arw
    i32 23, label %bb.atb
    i32 24, label %bb.aug
    i32 25, label %bb.avl
    i32 36, label %bb.ayo
    i32 41, label %bb.bbr
    i32 42, label %bb.bem
    i32 30, label %bb.bhj
    i32 32, label %bb.bkm
    i32 26, label %bb.bku
    i32 27, label %bb.ble
    i32 28, label %bb.bmb
    i32 29, label %bb.bou
    i32 38, label %bb.bov
    i32 31, label %bb.bqa
  ]

bb.b:                                             ; preds = %tailrecurse
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !718
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.c:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #28, !noalias !723
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %184, i8 0, i64 16, i1 false), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #28, !noalias !723
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !647, !noalias !723
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !138, !noalias !723
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !45, !noalias !723 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !182, !noalias !723, !nonnull !183, !align !184
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !364, !noalias !723
  %.val.i = load ptr, ptr %i.cu, align 8, !tbaa !33, !noalias !723
  %i.cz = getelementptr i8, ptr %i.ct, i64 24
  %.val14.i = load ptr, ptr %i.cz, align 8, !noalias !723
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118GetTruncatedBitmapEllRKSt10shared_ptrINS_6BufferEEPNS_10MemoryPoolEPS4_(ptr dead_on_unwind noalias writable align 8 %185, i64 noundef %i.cp, i64 noundef %i.cr, ptr %.val.i, ptr %.val14.i, ptr noundef %i.cy, ptr noundef %184)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.d, !noalias !723

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  %i.da = load ptr, ptr %185, align 8, !tbaa !39, !noalias !723 ; 2 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !39, !alias.scope !723
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #28, !noalias !723
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN5arrow6StatusD2Ev.exit18.i, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #28, !noalias !723
  br label %bb.n

_ZN5arrow6StatusD2Ev.exit18.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !70, !noalias !723 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !42, !noalias !723 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !299, !noalias !723
  %.not.i19.i = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i19.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit18.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr null, ptr %i.dj, align 8, !tbaa !118, !noalias !723
  %i.dk = getelementptr inbounds nuw i8, ptr %184, i64 8
  %i.dl = load <2 x ptr>, ptr %184, align 16, !tbaa !119, !noalias !723
  store ptr null, ptr %i.dk, align 8, !tbaa !118, !noalias !723
  store <2 x ptr> %i.dl, ptr %i.dg, align 8, !tbaa !119, !noalias !723
  store ptr null, ptr %184, align 16, !tbaa !33, !noalias !723
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.dm, ptr %i.df, align 8, !tbaa !42, !noalias !723
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit18.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %184)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i unwind label %bb.g, !noalias !723
end_hunk_0
begin_hunk_1_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.ox:                                            ; preds = %bb.ov
  %i.bff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !890
  %.not.i.i.i95.i.i = icmp eq i8 %i.bff, 0
  br i1 %.not.i.i.i95.i.i, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bfg = add nsw i32 %i.bex, -1
  store i32 %i.bfg, ptr %i.beu, align 4, !tbaa !3, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i

bb.oz:                                            ; preds = %bb.ox
  %i.bfh = atomicrmw volatile add ptr %i.beu, i32 -1 acq_rel, align 4, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i: ; preds = %bb.oz, %bb.oy
  %.0.i.i.i.i97.i.i = phi i32 [ %i.bex, %bb.oy ], [ %i.bfh, %bb.oz ]
  %i.bfi = icmp eq i32 %.0.i.i.i.i97.i.i, 1
  br i1 %i.bfi, label %bb.pa, label %_ZN5arrow6StatusD2Ev.exit.thread91.i.a, !prof !129

bb.pa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bet) #28, !noalias !890
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i.a

bb.pb:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i
  %i.bfj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.pb, %.body.i79.i.a
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bfj, %bb.pb ], [ %i.beb, %.body.i79.i.a ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %156) #28, !noalias !890
  br label %bb.pm

bb.pc:                                            ; preds = %.critedge55.i.i, %bb.od, %bb.nz, %bb.nx
  %i.bfk = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !930
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 40
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !45, !noalias !930 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 16
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfm, i64 24
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !118, !noalias !930 ; 2 uses
  %i.bfq = load <2 x ptr>, ptr %i.bfn, align 8, !tbaa !119, !noalias !930
  %.not.i.i.i.i99.i.i = icmp eq ptr %i.bfp, null
  br i1 %.not.i.i.i.i99.i.i, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfp, i64 8 ; 3 uses
  %i.bfs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !930
  %.not.i.i.i.i.i100.i.i = icmp eq i8 %i.bfs, 0
  br i1 %.not.i.i.i.i.i100.i.i, label %bb.pf, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bft = load i32, ptr %i.bfr, align 4, !tbaa !3, !noalias !930
  %i.bfu = add nsw i32 %i.bft, 1
  store i32 %i.bfu, ptr %i.bfr, align 4, !tbaa !3, !noalias !930
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i

bb.pf:                                            ; preds = %bb.pd
  %i.bfv = atomicrmw volatile add ptr %i.bfr, i32 1 acq_rel, align 4, !noalias !930 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i: ; preds = %bb.pf, %bb.pe, %bb.pc
  %i.bfw = getelementptr inbounds nuw i8, ptr %157, i64 8
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !118, !noalias !890 ; 8 uses
  store <2 x ptr> %i.bfq, ptr %157, align 16, !tbaa !119, !noalias !890
  %.not.i.i.i.i102.i.i = icmp eq ptr %i.bfx, null
  br i1 %.not.i.i.i.i102.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread91.i.a, label %bb.pg

bb.pg:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8 ; 4 uses
  %i.bfz = load atomic i64, ptr %i.bfy acquire, align 8, !noalias !890 ; 2 uses
  %i.bga = icmp eq i64 %i.bfz, 4294967297
  %i.bgb = trunc i64 %i.bfz to i32                ; 2 uses
  br i1 %i.bga, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  store i32 0, ptr %i.bfy, align 8, !tbaa !125, !noalias !890
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfx, i64 12
  store i32 0, ptr %i.bgc, align 4, !tbaa !127, !noalias !890
  %i.bgd = load ptr, ptr %i.bfx, align 8, !tbaa !55, !noalias !890
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 16
  %i.bgf = load ptr, ptr %i.bge, align 8, !noalias !890
  call void %i.bgf(ptr noundef nonnull align 8 dereferenceable(16) %i.bfx) #28, !noalias !890, !inline_history !894
  %i.bgg = load ptr, ptr %i.bfx, align 8, !tbaa !55, !noalias !890
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 24
  %i.bgi = load ptr, ptr %i.bgh, align 8, !noalias !890
  call void %i.bgi(ptr noundef nonnull align 8 dereferenceable(16) %i.bfx) #28, !noalias !890, !inline_history !894
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i.a

bb.pi:                                            ; preds = %bb.pg
  %i.bgj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !890
  %.not.i.i.i.i.i103.i.i = icmp eq i8 %i.bgj, 0
  br i1 %.not.i.i.i.i.i103.i.i, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bgk = add nsw i32 %i.bgb, -1
  store i32 %i.bgk, ptr %i.bfy, align 4, !tbaa !3, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i

bb.pk:                                            ; preds = %bb.pi
  %i.bgl = atomicrmw volatile add ptr %i.bfy, i32 -1 acq_rel, align 4, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i: ; preds = %bb.pk, %bb.pj
  %.0.i.i.i.i.i.i105.i.i = phi i32 [ %i.bgb, %bb.pj ], [ %i.bgl, %bb.pk ]
  %i.bgm = icmp eq i32 %.0.i.i.i.i.i.i105.i.i, 1
  br i1 %i.bgm, label %bb.pl, label %_ZN5arrow6StatusD2Ev.exit.thread91.i.a, !prof !129

bb.pl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfx) #28, !noalias !890
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i.a

_ZN5arrow6StatusD2Ev.exit.thread91.i.a:           ; preds = %bb.pl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i, %bb.ph, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i, %bb.pa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i, %bb.ow, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #28, !noalias !890
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i.a

bb.pm:                                            ; preds = %.body.i.i, %bb.nr
  %.pn51.pn.i.i = phi { ptr, i32 } [ %.pn51.i.i, %bb.nr ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #28, !noalias !890
  br label %.body.i383

_ZN5arrow6StatusD2Ev.exit.i395:                   ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i, %bb.nc
  %.pr.pr.i = load ptr, ptr %158, align 8, !tbaa !39, !noalias !884 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #28, !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %156), !noalias !884
  store ptr %.pr.pr.i, ptr %0, align 8, !tbaa !39, !alias.scope !884
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #28, !noalias !884
  %i.bgn = icmp eq ptr %.pr.pr.i, null
  br i1 %i.bgn, label %_ZN5arrow6StatusD2Ev.exit44.i.a, label %.critedge.i385

bb.pn:                                            ; preds = %bb.nd, %bb.nc, %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bgo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i383

.body.i383:                                       ; preds = %bb.pn, %bb.pm
  %.pn.i = phi { ptr, i32 } [ %.pn51.pn.i.i, %bb.pm ], [ %i.bgo, %bb.pn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #28, !noalias !884
  br label %bb.rd

_ZN5arrow6StatusD2Ev.exit44.sink.split.i.a:       ; preds = %_ZN5arrow6StatusD2Ev.exit.thread91.i.a, %bb.na, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.mw, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %156), !noalias !884
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !884
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #28, !noalias !884
  br label %_ZN5arrow6StatusD2Ev.exit44.i.a

_ZN5arrow6StatusD2Ev.exit44.i.a:                  ; preds = %_ZN5arrow6StatusD2Ev.exit44.sink.split.i.a, %_ZN5arrow6StatusD2Ev.exit.i395
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #28, !noalias !884
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.bgp = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !936
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 40
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !45, !noalias !936 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 32
  %i.bgt = getelementptr inbounds nuw i8, ptr %159, i64 8 ; 6 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgr, i64 40
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !118, !noalias !936 ; 2 uses
  %i.bgw = load <2 x ptr>, ptr %i.bgs, align 8, !tbaa !119, !noalias !936
  store <2 x ptr> %i.bgw, ptr %159, align 16, !tbaa !119, !alias.scope !933, !noalias !884
  %.not.i.i.i.i.i386 = icmp eq ptr %i.bgv, null
  br i1 %.not.i.i.i.i.i386, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i, label %bb.po

bb.po:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.a
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgv, i64 8 ; 3 uses
  %i.bgy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !936
  %.not.i.i.i.i.i45.i.a = icmp eq i8 %i.bgy, 0
  br i1 %.not.i.i.i.i.i45.i.a, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bgz = load i32, ptr %i.bgx, align 4, !tbaa !3, !noalias !936
  %i.bha = add nsw i32 %i.bgz, 1
  store i32 %i.bha, ptr %i.bgx, align 4, !tbaa !3, !noalias !936
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i

bb.pq:                                            ; preds = %bb.po
  %i.bhb = atomicrmw volatile add ptr %i.bgx, i32 1 acq_rel, align 4, !noalias !936 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i: ; preds = %bb.pq, %bb.pp, %_ZN5arrow6StatusD2Ev.exit44.i.a
  %i.bhc = load ptr, ptr %157, align 16, !tbaa !33, !noalias !884
  %.not.i = icmp eq ptr %i.bhc, null
  br i1 %.not.i, label %bb.pu, label %bb.pr

bb.pr:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i
  %i.bhd = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !884
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 16
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !138, !noalias !884 ; 2 uses
  %i.bhg = icmp sgt i64 %i.bhf, 0
  br i1 %i.bhg, label %bb.ps, label %bb.pu

bb.ps:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #28, !noalias !884
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #28, !noalias !884
  %i.bhh = shl i64 %i.bhf, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %160, ptr noundef nonnull align 8 dereferenceable(16) %157, i64 noundef %i.bhh, i64 noundef 4, ptr noundef nonnull %i.bm)
          to label %_ZN5arrow6StatusD2Ev.exit47.i.a unwind label %bb.pt, !noalias !884

_ZN5arrow6StatusD2Ev.exit47.i.a:                  ; preds = %bb.ps
  %i.bhi = load ptr, ptr %160, align 8, !tbaa !39, !noalias !884 ; 2 uses
  store ptr %i.bhi, ptr %0, align 8, !tbaa !39, !alias.scope !884
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #28, !noalias !884
  %i.bhj = icmp eq ptr %i.bhi, null
  br i1 %i.bhj, label %.critedge38.thread.i, label %.critedge39.i

bb.pt:                                            ; preds = %bb.ps
  %i.bhk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #28, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #28, !noalias !884
  br label %bb.qw

.critedge38.thread.i:                             ; preds = %_ZN5arrow6StatusD2Ev.exit47.i.a
  %i.bhl = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !884
  %i.bhm = sext i32 %i.bhl to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #28, !noalias !884
  br label %bb.pu

bb.pu:                                            ; preds = %.critedge38.thread.i, %bb.pr, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i
  %.123.i = phi i64 [ %i.bhm, %.critedge38.thread.i ], [ 0, %bb.pr ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i ] ; 2 uses
  %i.bhn = load ptr, ptr %159, align 16, !tbaa !33, !noalias !884 ; 3 uses
  %i.bho = icmp eq ptr %i.bhn, null
  br i1 %i.bho, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.bhp = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !884
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 32
  %i.bhr = load i64, ptr %i.bhq, align 8, !tbaa !647, !noalias !884
  %.not.i52.i.a = icmp ne i64 %i.bhr, 0
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhn, i64 24
  %i.bht = load i64, ptr %i.bhs, align 8, !tbaa !46, !noalias !884 ; 2 uses
  %i.bhu = icmp slt i64 %.123.i, %i.bht
  %or.cond.i387 = select i1 %.not.i52.i.a, i1 true, i1 %i.bhu
  br i1 %or.cond.i387, label %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i389, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a

_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i389: ; preds = %bb.pv
  %i.bhv = getelementptr inbounds nuw i8, ptr %.tr1792, i64 32
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !903, !noalias !884
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !3, !noalias !884
  %i.bhy = sext i32 %i.bhx to i64                 ; 2 uses
  %i.bhz = add nsw i64 %.123.i, 63                ; 2 uses
  %i.bia = srem i64 %i.bhz, 64
  %i.bib = sub nsw i64 %i.bhz, %i.bia
  %i.bic = sub nsw i64 %i.bht, %i.bhy
  %.sroa.speculated.i390 = call i64 @llvm.smin.i64(i64 %i.bic, i64 %i.bib)
  store ptr %i.bhn, ptr %161, align 8, !tbaa !33, !noalias !884
  %i.bid = getelementptr inbounds nuw i8, ptr %161, i64 8 ; 2 uses
  %i.bie = load ptr, ptr %i.bgt, align 8, !tbaa !118, !noalias !884
  store ptr null, ptr %i.bgt, align 8, !tbaa !118, !noalias !884
  store ptr %i.bie, ptr %i.bid, align 8, !tbaa !118, !noalias !884
  store ptr null, ptr %159, align 16, !tbaa !33, !noalias !884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !884
  store i64 %i.bhy, ptr %i.bj, align 8, !tbaa !288, !noalias !937
  store i64 %.sroa.speculated.i390, ptr %i.bk, align 8, !tbaa !288, !noalias !937
  %i.bif = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc53.i.a unwind label %bb.qj, !noalias !884 ; 4 uses

.noexc53.i.a:                                     ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i389
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bif, ptr noundef nonnull align 8 dereferenceable(16) %161, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %bb.pw unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i391, !noalias !940

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i391: ; preds = %.noexc53.i.a
  %i.big = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bif, i64 noundef 96) #30, !noalias !940
  br label %.body54.i.a

bb.pw:                                            ; preds = %.noexc53.i.a
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bif, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !884
  store ptr %i.bih, ptr %159, align 16, !tbaa !351, !noalias !884
  %i.bii = load ptr, ptr %i.bgt, align 8, !tbaa !118, !noalias !884 ; 8 uses
  store ptr %i.bif, ptr %i.bgt, align 8, !tbaa !118, !noalias !884
  %.not.i.i.i.i56.i.a = icmp eq ptr %i.bii, null
  br i1 %.not.i.i.i.i56.i.a, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i394, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bii, i64 8 ; 4 uses
  %i.bik = load atomic i64, ptr %i.bij acquire, align 8, !noalias !884 ; 2 uses
  %i.bil = icmp eq i64 %i.bik, 4294967297
  %i.bim = trunc i64 %i.bik to i32                ; 2 uses
  br i1 %i.bil, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  store i32 0, ptr %i.bij, align 8, !tbaa !125, !noalias !884
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bii, i64 12
  store i32 0, ptr %i.bin, align 4, !tbaa !127, !noalias !884
  %i.bio = load ptr, ptr %i.bii, align 8, !tbaa !55, !noalias !884
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 16
  %i.biq = load ptr, ptr %i.bip, align 8, !noalias !884
  call void %i.biq(ptr noundef nonnull align 8 dereferenceable(16) %i.bii) #28, !noalias !884, !inline_history !943
  %i.bir = load ptr, ptr %i.bii, align 8, !tbaa !55, !noalias !884
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 24
  %i.bit = load ptr, ptr %i.bis, align 8, !noalias !884
  call void %i.bit(ptr noundef nonnull align 8 dereferenceable(16) %i.bii) #28, !noalias !884, !inline_history !943
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i394

bb.pz:                                            ; preds = %bb.px
  %i.biu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !884
  %.not.i.i.i.i.i57.i.a = icmp eq i8 %i.biu, 0
  br i1 %.not.i.i.i.i.i57.i.a, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.biv = add nsw i32 %i.bim, -1
  store i32 %i.biv, ptr %i.bij, align 4, !tbaa !3, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i392

bb.qb:                                            ; preds = %bb.pz
  %i.biw = atomicrmw volatile add ptr %i.bij, i32 -1 acq_rel, align 4, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i392

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i392: ; preds = %bb.qb, %bb.qa
  %.0.i.i.i.i.i.i.i393 = phi i32 [ %i.bim, %bb.qa ], [ %i.biw, %bb.qb ]
  %i.bix = icmp eq i32 %.0.i.i.i.i.i.i.i393, 1
  br i1 %i.bix, label %bb.qc, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i394, !prof !129

bb.qc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i392
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bii) #28, !noalias !884
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i394

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i394: ; preds = %bb.qc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i392, %bb.py, %bb.pw
  %i.biy = load ptr, ptr %i.bid, align 8, !tbaa !118, !noalias !884 ; 8 uses
  %.not.i.i58.i.a = icmp eq ptr %i.biy, null
  br i1 %.not.i.i58.i.a, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a, label %bb.qd

bb.qd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i394
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 8 ; 4 uses
  %i.bja = load atomic i64, ptr %i.biz acquire, align 8, !noalias !884 ; 2 uses
  %i.bjb = icmp eq i64 %i.bja, 4294967297
  %i.bjc = trunc i64 %i.bja to i32                ; 2 uses
  br i1 %i.bjb, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  store i32 0, ptr %i.biz, align 8, !tbaa !125, !noalias !884
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.biy, i64 12
  store i32 0, ptr %i.bjd, align 4, !tbaa !127, !noalias !884
  %i.bje = load ptr, ptr %i.biy, align 8, !tbaa !55, !noalias !884
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 16
  %i.bjg = load ptr, ptr %i.bjf, align 8, !noalias !884
  call void %i.bjg(ptr noundef nonnull align 8 dereferenceable(16) %i.biy) #28, !noalias !884, !inline_history !944
  %i.bjh = load ptr, ptr %i.biy, align 8, !tbaa !55, !noalias !884
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 24
  %i.bjj = load ptr, ptr %i.bji, align 8, !noalias !884
  call void %i.bjj(ptr noundef nonnull align 8 dereferenceable(16) %i.biy) #28, !noalias !884, !inline_history !944
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a

bb.qf:                                            ; preds = %bb.qd
  %i.bjk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !884
  %.not.i.i.i59.i.a = icmp eq i8 %i.bjk, 0
  br i1 %.not.i.i.i59.i.a, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.bjl = add nsw i32 %i.bjc, -1
  store i32 %i.bjl, ptr %i.biz, align 4, !tbaa !3, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i.a

bb.qh:                                            ; preds = %bb.qf
  %i.bjm = atomicrmw volatile add ptr %i.biz, i32 -1 acq_rel, align 4, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i.a: ; preds = %bb.qh, %bb.qg
  %.0.i.i.i.i61.i.a = phi i32 [ %i.bjc, %bb.qg ], [ %i.bjm, %bb.qh ]
  %i.bjn = icmp eq i32 %.0.i.i.i.i61.i.a, 1
  br i1 %i.bjn, label %bb.qi, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a, !prof !129

bb.qi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.biy) #28, !noalias !884
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a

bb.qj:                                            ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i389
  %i.bjo = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i.a

.body54.i.a:                                      ; preds = %bb.qj, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i391
  %eh.lpad-body55.i.a = phi { ptr, i32 } [ %i.bjo, %bb.qj ], [ %i.big, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i391 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %161) #28, !noalias !884
  br label %bb.qw

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a: ; preds = %bb.qi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i.a, %bb.qe, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i394, %bb.pv, %bb.pu
  %i.bjp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !70, !noalias !884 ; 4 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 32 ; 2 uses
  %i.bjs = load ptr, ptr %i.bjr, align 8, !tbaa !42, !noalias !884 ; 5 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjq, i64 40
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !299, !noalias !884 ; 2 uses
  %.not.i63.i.a = icmp eq ptr %i.bjs, %i.bju
  br i1 %.not.i63.i.a, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjs, i64 8
  store ptr null, ptr %i.bjv, align 8, !tbaa !118, !noalias !884
  %i.bjw = getelementptr inbounds nuw i8, ptr %157, i64 8
  %i.bjx = load <2 x ptr>, ptr %157, align 16, !tbaa !119, !noalias !884
  store ptr null, ptr %i.bjw, align 8, !tbaa !118, !noalias !884
  store <2 x ptr> %i.bjx, ptr %i.bjs, align 8, !tbaa !119, !noalias !884
  store ptr null, ptr %157, align 16, !tbaa !33, !noalias !884
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjs, i64 16 ; 2 uses
  store ptr %i.bjy, ptr %i.bjr, align 8, !tbaa !42, !noalias !884
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i388

bb.ql:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i.a
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjq, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bjz, ptr %i.bjs, ptr noundef nonnull align 8 dereferenceable(16) %157)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i unwind label %bb.qo, !noalias !884

._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i: ; preds = %bb.ql
  %.pre101.i = load ptr, ptr %i.bjp, align 8, !tbaa !70, !noalias !884 ; 3 uses
  %.phi.trans.insert102.i = getelementptr inbounds nuw i8, ptr %.pre101.i, i64 32
  %.pre103.i = load ptr, ptr %.phi.trans.insert102.i, align 8, !tbaa !42, !noalias !884
  %.phi.trans.insert104.i = getelementptr inbounds nuw i8, ptr %.pre101.i, i64 40
  %.pre105.i = load ptr, ptr %.phi.trans.insert104.i, align 8, !tbaa !299, !noalias !884
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i388

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i388: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i, %bb.qk
  %i.bka = phi ptr [ %.pre105.i, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i ], [ %i.bju, %bb.qk ]
  %i.bkb = phi ptr [ %.pre103.i, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i ], [ %i.bjy, %bb.qk ] ; 5 uses
  %i.bkc = phi ptr [ %.pre101.i, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i ], [ %i.bjq, %bb.qk ] ; 2 uses
  %.not.i65.i.a = icmp eq ptr %i.bkb, %i.bka
  br i1 %.not.i65.i.a, label %bb.qn, label %bb.qm

bb.qm:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i388
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 32
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8
  store ptr null, ptr %i.bke, align 8, !tbaa !118, !noalias !884
  %i.bkf = load <2 x ptr>, ptr %159, align 16, !tbaa !119, !noalias !884
  store ptr null, ptr %i.bgt, align 8, !tbaa !118, !noalias !884
  store <2 x ptr> %i.bkf, ptr %i.bkb, align 8, !tbaa !119, !noalias !884
  store ptr null, ptr %159, align 16, !tbaa !33, !noalias !884
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkb, i64 16
  store ptr %i.bkg, ptr %i.bkd, align 8, !tbaa !42, !noalias !884
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i.a

bb.qn:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i388
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkc, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bkh, ptr %i.bkb, ptr noundef nonnull align 8 dereferenceable(16) %159)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i.a unwind label %bb.qo, !noalias !884

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i.a: ; preds = %bb.qn, %bb.qm
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !945
  br label %bb.qp

bb.qo:                                            ; preds = %bb.qn, %bb.ql
  %i.bki = landingpad { ptr, i32 }
          cleanup
  br label %bb.qw

.critedge39.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit47.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #28, !noalias !884
  br label %bb.qp

bb.qp:                                            ; preds = %.critedge39.i, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i.a
  %i.bkj = load ptr, ptr %i.bgt, align 8, !tbaa !118, !noalias !884 ; 8 uses
  %.not.i.i69.i.a = icmp eq ptr %i.bkj, null
  br i1 %.not.i.i69.i.a, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i.a, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 8 ; 4 uses
  %i.bkl = load atomic i64, ptr %i.bkk acquire, align 8, !noalias !884 ; 2 uses
  %i.bkm = icmp eq i64 %i.bkl, 4294967297
  %i.bkn = trunc i64 %i.bkl to i32                ; 2 uses
  br i1 %i.bkm, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  store i32 0, ptr %i.bkk, align 8, !tbaa !125, !noalias !884
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkj, i64 12
  store i32 0, ptr %i.bko, align 4, !tbaa !127, !noalias !884
  %i.bkp = load ptr, ptr %i.bkj, align 8, !tbaa !55, !noalias !884
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 16
  %i.bkr = load ptr, ptr %i.bkq, align 8, !noalias !884
  call void %i.bkr(ptr noundef nonnull align 8 dereferenceable(16) %i.bkj) #28, !noalias !884, !inline_history !944
  %i.bks = load ptr, ptr %i.bkj, align 8, !tbaa !55, !noalias !884
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 24
  %i.bku = load ptr, ptr %i.bkt, align 8, !noalias !884
  call void %i.bku(ptr noundef nonnull align 8 dereferenceable(16) %i.bkj) #28, !noalias !884, !inline_history !944
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i.a

bb.qs:                                            ; preds = %bb.qq
  %i.bkv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !884
  %.not.i.i.i70.i.a = icmp eq i8 %i.bkv, 0
  br i1 %.not.i.i.i70.i.a, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.bkw = add nsw i32 %i.bkn, -1
  store i32 %i.bkw, ptr %i.bkk, align 4, !tbaa !3, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i.a

bb.qu:                                            ; preds = %bb.qs
  %i.bkx = atomicrmw volatile add ptr %i.bkk, i32 -1 acq_rel, align 4, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i.a: ; preds = %bb.qu, %bb.qt
  %.0.i.i.i.i72.i.a = phi i32 [ %i.bkn, %bb.qt ], [ %i.bkx, %bb.qu ]
  %i.bky = icmp eq i32 %.0.i.i.i.i72.i.a, 1
  br i1 %i.bky, label %bb.qv, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i.a, !prof !129

bb.qv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bkj) #28, !noalias !884
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i.a

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i.a: ; preds = %bb.qv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i.a, %bb.qr, %bb.qp
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #28, !noalias !884
  br label %.critedge.i385

bb.qw:                                            ; preds = %bb.qo, %.body54.i.a, %bb.pt
  %.pn34.i = phi { ptr, i32 } [ %i.bki, %bb.qo ], [ %eh.lpad-body55.i.a, %.body54.i.a ], [ %i.bhk, %bb.pt ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %159) #28, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #28, !noalias !884
  br label %bb.rd

.critedge.i385:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i.a, %_ZN5arrow6StatusD2Ev.exit.i395, %_ZN5arrow6StatusD2Ev.exit.thread93.i.a
  %i.bkz = getelementptr inbounds nuw i8, ptr %157, i64 8
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !118, !noalias !884 ; 8 uses
  %.not.i.i74.i.a = icmp eq ptr %i.bla, null
  br i1 %.not.i.i74.i.a, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11StringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.qx

bb.qx:                                            ; preds = %.critedge.i385
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 8 ; 4 uses
  %i.blc = load atomic i64, ptr %i.blb acquire, align 8, !noalias !884 ; 2 uses
  %i.bld = icmp eq i64 %i.blc, 4294967297
  %i.ble = trunc i64 %i.blc to i32                ; 2 uses
  br i1 %i.bld, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %bb.qx
  store i32 0, ptr %i.blb, align 8, !tbaa !125, !noalias !884
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bla, i64 12
  store i32 0, ptr %i.blf, align 4, !tbaa !127, !noalias !884
  %i.blg = load ptr, ptr %i.bla, align 8, !tbaa !55, !noalias !884
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 16
  %i.bli = load ptr, ptr %i.blh, align 8, !noalias !884
  call void %i.bli(ptr noundef nonnull align 8 dereferenceable(16) %i.bla) #28, !noalias !884, !inline_history !944
  %i.blj = load ptr, ptr %i.bla, align 8, !tbaa !55, !noalias !884
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 24
  %i.bll = load ptr, ptr %i.blk, align 8, !noalias !884
  call void %i.bll(ptr noundef nonnull align 8 dereferenceable(16) %i.bla) #28, !noalias !884, !inline_history !944
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11StringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.qz:                                            ; preds = %bb.qx
  %i.blm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !884
  %.not.i.i.i75.i.a = icmp eq i8 %i.blm, 0
  br i1 %.not.i.i.i75.i.a, label %bb.rb, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bln = add nsw i32 %i.ble, -1
  store i32 %i.bln, ptr %i.blb, align 4, !tbaa !3, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i.a

bb.rb:                                            ; preds = %bb.qz
  %i.blo = atomicrmw volatile add ptr %i.blb, i32 -1 acq_rel, align 4, !noalias !884
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i.a: ; preds = %bb.rb, %bb.ra
  %.0.i.i.i.i77.i.a = phi i32 [ %i.ble, %bb.ra ], [ %i.blo, %bb.rb ]
  %i.blp = icmp eq i32 %.0.i.i.i.i77.i.a, 1
  br i1 %i.blp, label %bb.rc, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11StringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, !prof !129

bb.rc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bla) #28, !noalias !884
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11StringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.rd:                                            ; preds = %bb.qw, %.body.i383
  %.pn34.pn.i = phi { ptr, i32 } [ %.pn34.i, %bb.qw ], [ %.pn.i, %.body.i383 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %157) #28, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #28, !noalias !884
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11StringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %.critedge.i385, %bb.qy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i.a, %bb.rc
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #28, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %161)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.re:                                            ; preds = %tailrecurse
  tail call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_15BinaryViewArrayE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(40) %.tr1792)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.rf:                                            ; preds = %tailrecurse
  %i.blq = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.lifetime.start.p0(ptr nonnull %150)
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #28, !noalias !948
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %146, i8 0, i64 16, i1 false), !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #28, !noalias !948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.lifetime.start.p0(ptr nonnull %145), !noalias !948
  %i.blr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !138, !noalias !954 ; 2 uses
  %i.blt = icmp eq i64 %i.bls, 0
  br i1 %i.blt, label %bb.rg, label %_ZN5arrow6StatusD2Ev.exit.i.i398

bb.rg:                                            ; preds = %bb.rf
  %i.blu = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !45, !noalias !955 ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 16
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !33, !noalias !955 ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blv, i64 24
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !118, !noalias !955 ; 4 uses
  %.not.i.i.i.i.i.i519 = icmp eq ptr %i.blz, null
  br i1 %.not.i.i.i.i.i.i519, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i521, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 8 ; 3 uses
  %i.bmb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !955
  %.not.i.i.i.i.i.i.i520 = icmp eq i8 %i.bmb, 0
  br i1 %.not.i.i.i.i.i.i.i520, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i522, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bmc = load i32, ptr %i.bma, align 4, !tbaa !3, !noalias !955
  %i.bmd = add nsw i32 %i.bmc, 1
  store i32 %i.bmd, ptr %i.bma, align 4, !tbaa !3, !noalias !955
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i521

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i521: ; preds = %bb.ri, %bb.rg
  store ptr %i.blx, ptr %146, align 16, !tbaa !351, !noalias !954
  %i.bme = getelementptr inbounds nuw i8, ptr %146, i64 8
  store ptr %i.blz, ptr %i.bme, align 8, !tbaa !118, !noalias !954
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i433

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i522: ; preds = %bb.rh
  %i.bmf = atomicrmw volatile add ptr %i.bma, i32 1 acq_rel, align 4, !noalias !955 ; 0 uses
  %.phi.trans.insert.i523 = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 2 uses
  %.pre.i524 = load ptr, ptr %.phi.trans.insert.i523, align 8, !tbaa !118, !noalias !954 ; 8 uses
  store ptr %i.blx, ptr %146, align 16, !tbaa !351, !noalias !954
  store ptr %i.blz, ptr %.phi.trans.insert.i523, align 8, !tbaa !118, !noalias !954
  %.not.i.i.i.i56.i.i525 = icmp eq ptr %.pre.i524, null
  br i1 %.not.i.i.i.i56.i.i525, label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i433, label %bb.rj

bb.rj:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i522
  %i.bmg = getelementptr inbounds nuw i8, ptr %.pre.i524, i64 8 ; 4 uses
  %i.bmh = load atomic i64, ptr %i.bmg acquire, align 8, !noalias !954 ; 2 uses
  %i.bmi = icmp eq i64 %i.bmh, 4294967297
  %i.bmj = trunc i64 %i.bmh to i32                ; 2 uses
  br i1 %i.bmi, label %bb.rk, label %bb.rl

bb.rk:                                            ; preds = %bb.rj
  store i32 0, ptr %i.bmg, align 8, !tbaa !125, !noalias !954
  %i.bmk = getelementptr inbounds nuw i8, ptr %.pre.i524, i64 12
  store i32 0, ptr %i.bmk, align 4, !tbaa !127, !noalias !954
  %i.bml = load ptr, ptr %.pre.i524, align 8, !tbaa !55, !noalias !954
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 16
  %i.bmn = load ptr, ptr %i.bmm, align 8, !noalias !954
  tail call void %i.bmn(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i524) #28, !noalias !954, !inline_history !958
  %i.bmo = load ptr, ptr %.pre.i524, align 8, !tbaa !55, !noalias !954
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 24
  %i.bmq = load ptr, ptr %i.bmp, align 8, !noalias !954
  tail call void %i.bmq(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i524) #28, !noalias !954, !inline_history !958
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i433

bb.rl:                                            ; preds = %bb.rj
  %i.bmr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i.i.i57.i.i526 = icmp eq i8 %i.bmr, 0
  br i1 %.not.i.i.i.i.i57.i.i526, label %bb.rn, label %bb.rm

end_hunk_1
begin_hunk_2_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.tl:                                            ; preds = %bb.tj
  %i.bva = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i95.i.i429 = icmp eq i8 %i.bva, 0
  br i1 %.not.i.i.i95.i.i429, label %bb.tn, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.bvb = add nsw i32 %i.bus, -1
  store i32 %i.bvb, ptr %i.bup, align 4, !tbaa !3, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430

bb.tn:                                            ; preds = %bb.tl
  %i.bvc = atomicrmw volatile add ptr %i.bup, i32 -1 acq_rel, align 4, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430: ; preds = %bb.tn, %bb.tm
  %.0.i.i.i.i97.i.i431 = phi i32 [ %i.bus, %bb.tm ], [ %i.bvc, %bb.tn ]
  %i.bvd = icmp eq i32 %.0.i.i.i.i97.i.i431, 1
  br i1 %i.bvd, label %bb.to, label %_ZN5arrow6StatusD2Ev.exit.thread91.i432, !prof !129

bb.to:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.buo) #28, !noalias !954
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i432

bb.tp:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i413
  %i.bve = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i414

.body.i.i414:                                     ; preds = %bb.tp, %.body.i79.i418
  %eh.lpad-body.i.i415 = phi { ptr, i32 } [ %i.bve, %bb.tp ], [ %i.btw, %.body.i79.i418 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %145) #28, !noalias !954
  br label %bb.ua

bb.tq:                                            ; preds = %.critedge55.i.i482, %bb.sr, %bb.sn, %bb.sl
  %i.bvf = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !987
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 40
  %i.bvh = load ptr, ptr %i.bvg, align 8, !tbaa !45, !noalias !987 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 16
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvh, i64 24
  %i.bvk = load ptr, ptr %i.bvj, align 8, !tbaa !118, !noalias !987 ; 2 uses
  %i.bvl = load <2 x ptr>, ptr %i.bvi, align 8, !tbaa !119, !noalias !987
  %.not.i.i.i.i99.i.i483 = icmp eq ptr %i.bvk, null
  br i1 %.not.i.i.i.i99.i.i483, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvk, i64 8 ; 3 uses
  %i.bvn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !987
  %.not.i.i.i.i.i100.i.i484 = icmp eq i8 %i.bvn, 0
  br i1 %.not.i.i.i.i.i100.i.i484, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.bvo = load i32, ptr %i.bvm, align 4, !tbaa !3, !noalias !987
  %i.bvp = add nsw i32 %i.bvo, 1
  store i32 %i.bvp, ptr %i.bvm, align 4, !tbaa !3, !noalias !987
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485

bb.tt:                                            ; preds = %bb.tr
  %i.bvq = atomicrmw volatile add ptr %i.bvm, i32 1 acq_rel, align 4, !noalias !987 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485: ; preds = %bb.tt, %bb.ts, %bb.tq
  %i.bvr = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.bvs = load ptr, ptr %i.bvr, align 8, !tbaa !118, !noalias !954 ; 8 uses
  store <2 x ptr> %i.bvl, ptr %146, align 16, !tbaa !119, !noalias !954
  %.not.i.i.i.i102.i.i486 = icmp eq ptr %i.bvs, null
  br i1 %.not.i.i.i.i102.i.i486, label %_ZN5arrow6StatusD2Ev.exit.thread91.i432, label %bb.tu

bb.tu:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvs, i64 8 ; 4 uses
  %i.bvu = load atomic i64, ptr %i.bvt acquire, align 8, !noalias !954 ; 2 uses
  %i.bvv = icmp eq i64 %i.bvu, 4294967297
  %i.bvw = trunc i64 %i.bvu to i32                ; 2 uses
  br i1 %i.bvv, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %bb.tu
  store i32 0, ptr %i.bvt, align 8, !tbaa !125, !noalias !954
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvs, i64 12
  store i32 0, ptr %i.bvx, align 4, !tbaa !127, !noalias !954
  %i.bvy = load ptr, ptr %i.bvs, align 8, !tbaa !55, !noalias !954
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvy, i64 16
  %i.bwa = load ptr, ptr %i.bvz, align 8, !noalias !954
  call void %i.bwa(ptr noundef nonnull align 8 dereferenceable(16) %i.bvs) #28, !noalias !954, !inline_history !958
  %i.bwb = load ptr, ptr %i.bvs, align 8, !tbaa !55, !noalias !954
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 24
  %i.bwd = load ptr, ptr %i.bwc, align 8, !noalias !954
  call void %i.bwd(ptr noundef nonnull align 8 dereferenceable(16) %i.bvs) #28, !noalias !954, !inline_history !958
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i432

bb.tw:                                            ; preds = %bb.tu
  %i.bwe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i.i.i103.i.i487 = icmp eq i8 %i.bwe, 0
  br i1 %.not.i.i.i.i.i103.i.i487, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.bwf = add nsw i32 %i.bvw, -1
  store i32 %i.bwf, ptr %i.bvt, align 4, !tbaa !3, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i488

bb.ty:                                            ; preds = %bb.tw
  %i.bwg = atomicrmw volatile add ptr %i.bvt, i32 -1 acq_rel, align 4, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i488

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i488: ; preds = %bb.ty, %bb.tx
  %.0.i.i.i.i.i.i105.i.i489 = phi i32 [ %i.bvw, %bb.tx ], [ %i.bwg, %bb.ty ]
  %i.bwh = icmp eq i32 %.0.i.i.i.i.i.i105.i.i489, 1
  br i1 %i.bwh, label %bb.tz, label %_ZN5arrow6StatusD2Ev.exit.thread91.i432, !prof !129

bb.tz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i488
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bvs) #28, !noalias !954
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i432

_ZN5arrow6StatusD2Ev.exit.thread91.i432:          ; preds = %bb.tz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i488, %bb.tv, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485, %bb.to, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430, %bb.tk, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i427, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #28, !noalias !954
  br label %_ZN5arrow6StatusD2Ev.exit44.sink.split.i433

bb.ua:                                            ; preds = %.body.i.i414, %bb.sf
  %.pn51.pn.i.i416 = phi { ptr, i32 } [ %.pn51.i.i493, %bb.sf ], [ %eh.lpad-body.i.i415, %.body.i.i414 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #28, !noalias !954
  br label %.body.i399

_ZN5arrow6StatusD2Ev.exit.i490:                   ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496, %bb.rq
  %.pr.pr.i491 = load ptr, ptr %147, align 8, !tbaa !39, !noalias !948 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #28, !noalias !954
  call void @llvm.lifetime.end.p0(ptr nonnull %145), !noalias !948
  store ptr %.pr.pr.i491, ptr %0, align 8, !tbaa !39, !alias.scope !948
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #28, !noalias !948
  %i.bwi = icmp eq ptr %.pr.pr.i491, null
  br i1 %i.bwi, label %_ZN5arrow6StatusD2Ev.exit44.i434, label %.critedge.i404

bb.ub:                                            ; preds = %bb.rr, %bb.rq, %_ZN5arrow6StatusD2Ev.exit.i.i398
  %i.bwj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i399

.body.i399:                                       ; preds = %bb.ub, %bb.ua
  %.pn.i400 = phi { ptr, i32 } [ %.pn51.pn.i.i416, %bb.ua ], [ %i.bwj, %bb.ub ]
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #28, !noalias !948
  br label %bb.vr

_ZN5arrow6StatusD2Ev.exit44.sink.split.i433:      ; preds = %_ZN5arrow6StatusD2Ev.exit.thread91.i432, %bb.ro, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i527, %bb.rk, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.i522, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit.i.thread.i521
  call void @llvm.lifetime.end.p0(ptr nonnull %145), !noalias !948
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !948
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #28, !noalias !948
  br label %_ZN5arrow6StatusD2Ev.exit44.i434

_ZN5arrow6StatusD2Ev.exit44.i434:                 ; preds = %_ZN5arrow6StatusD2Ev.exit44.sink.split.i433, %_ZN5arrow6StatusD2Ev.exit.i490
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #28, !noalias !948
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.bwk = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !993
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 40
  %i.bwm = load ptr, ptr %i.bwl, align 8, !tbaa !45, !noalias !993 ; 2 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwm, i64 32
  %i.bwo = getelementptr inbounds nuw i8, ptr %148, i64 8 ; 6 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwm, i64 40
  %i.bwq = load ptr, ptr %i.bwp, align 8, !tbaa !118, !noalias !993 ; 2 uses
  %i.bwr = load <2 x ptr>, ptr %i.bwn, align 8, !tbaa !119, !noalias !993
  store <2 x ptr> %i.bwr, ptr %148, align 16, !tbaa !119, !alias.scope !990, !noalias !948
  %.not.i.i.i.i.i435 = icmp eq ptr %i.bwq, null
  br i1 %.not.i.i.i.i.i435, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437, label %bb.uc

bb.uc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit44.i434
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwq, i64 8 ; 3 uses
  %i.bwt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !993
  %.not.i.i.i.i.i45.i436 = icmp eq i8 %i.bwt, 0
  br i1 %.not.i.i.i.i.i45.i436, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.bwu = load i32, ptr %i.bws, align 4, !tbaa !3, !noalias !993
  %i.bwv = add nsw i32 %i.bwu, 1
  store i32 %i.bwv, ptr %i.bws, align 4, !tbaa !3, !noalias !993
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437

bb.ue:                                            ; preds = %bb.uc
  %i.bww = atomicrmw volatile add ptr %i.bws, i32 1 acq_rel, align 4, !noalias !993 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437: ; preds = %bb.ue, %bb.ud, %_ZN5arrow6StatusD2Ev.exit44.i434
  %i.bwx = load ptr, ptr %146, align 16, !tbaa !33, !noalias !948
  %.not.i438 = icmp eq ptr %i.bwx, null
  br i1 %.not.i438, label %bb.ui, label %bb.uf

bb.uf:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437
  %i.bwy = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !948
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 16
  %i.bxa = load i64, ptr %i.bwz, align 8, !tbaa !138, !noalias !948 ; 2 uses
  %i.bxb = icmp sgt i64 %i.bxa, 0
  br i1 %i.bxb, label %bb.ug, label %bb.ui

bb.ug:                                            ; preds = %bb.uf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #28, !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #28, !noalias !948
  %i.bxc = shl i64 %i.bxa, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %149, ptr noundef nonnull align 8 dereferenceable(16) %146, i64 noundef %i.bxc, i64 noundef 4, ptr noundef nonnull %i.bi)
          to label %_ZN5arrow6StatusD2Ev.exit47.i474 unwind label %bb.uh, !noalias !948

_ZN5arrow6StatusD2Ev.exit47.i474:                 ; preds = %bb.ug
  %i.bxd = load ptr, ptr %149, align 8, !tbaa !39, !noalias !948 ; 2 uses
  store ptr %i.bxd, ptr %0, align 8, !tbaa !39, !alias.scope !948
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #28, !noalias !948
  %i.bxe = icmp eq ptr %i.bxd, null
  br i1 %i.bxe, label %.critedge38.thread.i476, label %.critedge39.i475

bb.uh:                                            ; preds = %bb.ug
  %i.bxf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #28, !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #28, !noalias !948
  br label %bb.vk

.critedge38.thread.i476:                          ; preds = %_ZN5arrow6StatusD2Ev.exit47.i474
  %i.bxg = load i32, ptr %i.bi, align 4, !tbaa !3, !noalias !948
  %i.bxh = sext i32 %i.bxg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #28, !noalias !948
  br label %bb.ui

bb.ui:                                            ; preds = %.critedge38.thread.i476, %bb.uf, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437
  %.123.i439 = phi i64 [ %i.bxh, %.critedge38.thread.i476 ], [ 0, %bb.uf ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE10value_dataEv.exit.i437 ] ; 2 uses
  %i.bxi = load ptr, ptr %148, align 16, !tbaa !33, !noalias !948 ; 3 uses
  %i.bxj = icmp eq ptr %i.bxi, null
  br i1 %i.bxj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.bxk = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !948
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxk, i64 32
  %i.bxm = load i64, ptr %i.bxl, align 8, !tbaa !647, !noalias !948
  %.not.i52.i440 = icmp ne i64 %i.bxm, 0
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxi, i64 24
  %i.bxo = load i64, ptr %i.bxn, align 8, !tbaa !46, !noalias !948 ; 2 uses
  %i.bxp = icmp slt i64 %.123.i439, %i.bxo
  %or.cond.i441 = select i1 %.not.i52.i440, i1 true, i1 %i.bxp
  br i1 %or.cond.i441, label %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i459, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442

_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i459: ; preds = %bb.uj
  %i.bxq = getelementptr inbounds nuw i8, ptr %.tr1792, i64 32
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !903, !noalias !948
  %i.bxs = load i32, ptr %i.bxr, align 4, !tbaa !3, !noalias !948
  %i.bxt = sext i32 %i.bxs to i64                 ; 2 uses
  %i.bxu = add nsw i64 %.123.i439, 63             ; 2 uses
  %i.bxv = srem i64 %i.bxu, 64
  %i.bxw = sub nsw i64 %i.bxu, %i.bxv
  %i.bxx = sub nsw i64 %i.bxo, %i.bxt
  %.sroa.speculated.i460 = call i64 @llvm.smin.i64(i64 %i.bxx, i64 %i.bxw)
  store ptr %i.bxi, ptr %150, align 8, !tbaa !33, !noalias !948
  %i.bxy = getelementptr inbounds nuw i8, ptr %150, i64 8 ; 2 uses
  %i.bxz = load ptr, ptr %i.bwo, align 8, !tbaa !118, !noalias !948
  store ptr null, ptr %i.bwo, align 8, !tbaa !118, !noalias !948
  store ptr %i.bxz, ptr %i.bxy, align 8, !tbaa !118, !noalias !948
  store ptr null, ptr %148, align 16, !tbaa !33, !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !948
  store i64 %i.bxt, ptr %i.bf, align 8, !tbaa !288, !noalias !994
  store i64 %.sroa.speculated.i460, ptr %i.bg, align 8, !tbaa !288, !noalias !994
  %i.bya = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc53.i463 unwind label %bb.ux, !noalias !948 ; 4 uses

.noexc53.i463:                                    ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i459
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bya, ptr noundef nonnull align 8 dereferenceable(16) %150, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.uk unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i464, !noalias !997

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i464: ; preds = %.noexc53.i463
  %i.byb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bya, i64 noundef 96) #30, !noalias !997
  br label %.body54.i461

bb.uk:                                            ; preds = %.noexc53.i463
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bya, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !948
  store ptr %i.byc, ptr %148, align 16, !tbaa !351, !noalias !948
  %i.byd = load ptr, ptr %i.bwo, align 8, !tbaa !118, !noalias !948 ; 8 uses
  store ptr %i.bya, ptr %i.bwo, align 8, !tbaa !118, !noalias !948
  %.not.i.i.i.i56.i465 = icmp eq ptr %i.byd, null
  br i1 %.not.i.i.i.i56.i465, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i469, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.bye = getelementptr inbounds nuw i8, ptr %i.byd, i64 8 ; 4 uses
  %i.byf = load atomic i64, ptr %i.bye acquire, align 8, !noalias !948 ; 2 uses
  %i.byg = icmp eq i64 %i.byf, 4294967297
  %i.byh = trunc i64 %i.byf to i32                ; 2 uses
  br i1 %i.byg, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  store i32 0, ptr %i.bye, align 8, !tbaa !125, !noalias !948
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byd, i64 12
  store i32 0, ptr %i.byi, align 4, !tbaa !127, !noalias !948
  %i.byj = load ptr, ptr %i.byd, align 8, !tbaa !55, !noalias !948
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byj, i64 16
  %i.byl = load ptr, ptr %i.byk, align 8, !noalias !948
  call void %i.byl(ptr noundef nonnull align 8 dereferenceable(16) %i.byd) #28, !noalias !948, !inline_history !1000
  %i.bym = load ptr, ptr %i.byd, align 8, !tbaa !55, !noalias !948
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bym, i64 24
  %i.byo = load ptr, ptr %i.byn, align 8, !noalias !948
  call void %i.byo(ptr noundef nonnull align 8 dereferenceable(16) %i.byd) #28, !noalias !948, !inline_history !1000
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i469

bb.un:                                            ; preds = %bb.ul
  %i.byp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !948
  %.not.i.i.i.i.i57.i466 = icmp eq i8 %i.byp, 0
  br i1 %.not.i.i.i.i.i57.i466, label %bb.up, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.byq = add nsw i32 %i.byh, -1
  store i32 %i.byq, ptr %i.bye, align 4, !tbaa !3, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i467

bb.up:                                            ; preds = %bb.un
  %i.byr = atomicrmw volatile add ptr %i.bye, i32 -1 acq_rel, align 4, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i467

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i467: ; preds = %bb.up, %bb.uo
  %.0.i.i.i.i.i.i.i468 = phi i32 [ %i.byh, %bb.uo ], [ %i.byr, %bb.up ]
  %i.bys = icmp eq i32 %.0.i.i.i.i.i.i.i468, 1
  br i1 %i.bys, label %bb.uq, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i469, !prof !129

bb.uq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i467
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.byd) #28, !noalias !948
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i469

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i469: ; preds = %bb.uq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i467, %bb.um, %bb.uk
  %i.byt = load ptr, ptr %i.bxy, align 8, !tbaa !118, !noalias !948 ; 8 uses
  %.not.i.i58.i470 = icmp eq ptr %i.byt, null
  br i1 %.not.i.i58.i470, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442, label %bb.ur

bb.ur:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i469
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byt, i64 8 ; 4 uses
  %i.byv = load atomic i64, ptr %i.byu acquire, align 8, !noalias !948 ; 2 uses
  %i.byw = icmp eq i64 %i.byv, 4294967297
  %i.byx = trunc i64 %i.byv to i32                ; 2 uses
  br i1 %i.byw, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  store i32 0, ptr %i.byu, align 8, !tbaa !125, !noalias !948
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byt, i64 12
  store i32 0, ptr %i.byy, align 4, !tbaa !127, !noalias !948
  %i.byz = load ptr, ptr %i.byt, align 8, !tbaa !55, !noalias !948
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 16
  %i.bzb = load ptr, ptr %i.bza, align 8, !noalias !948
  call void %i.bzb(ptr noundef nonnull align 8 dereferenceable(16) %i.byt) #28, !noalias !948, !inline_history !1001
  %i.bzc = load ptr, ptr %i.byt, align 8, !tbaa !55, !noalias !948
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bzc, i64 24
  %i.bze = load ptr, ptr %i.bzd, align 8, !noalias !948
  call void %i.bze(ptr noundef nonnull align 8 dereferenceable(16) %i.byt) #28, !noalias !948, !inline_history !1001
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442

bb.ut:                                            ; preds = %bb.ur
  %i.bzf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !948
  %.not.i.i.i59.i471 = icmp eq i8 %i.bzf, 0
  br i1 %.not.i.i.i59.i471, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.bzg = add nsw i32 %i.byx, -1
  store i32 %i.bzg, ptr %i.byu, align 4, !tbaa !3, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i472

bb.uv:                                            ; preds = %bb.ut
  %i.bzh = atomicrmw volatile add ptr %i.byu, i32 -1 acq_rel, align 4, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i472

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i472: ; preds = %bb.uv, %bb.uu
  %.0.i.i.i.i61.i473 = phi i32 [ %i.byx, %bb.uu ], [ %i.bzh, %bb.uv ]
  %i.bzi = icmp eq i32 %.0.i.i.i.i61.i473, 1
  br i1 %i.bzi, label %bb.uw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442, !prof !129

bb.uw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i472
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.byt) #28, !noalias !948
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442

bb.ux:                                            ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i459
  %i.bzj = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i461

.body54.i461:                                     ; preds = %bb.ux, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i464
  %eh.lpad-body55.i462 = phi { ptr, i32 } [ %i.bzj, %bb.ux ], [ %i.byb, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i464 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %150) #28, !noalias !948
  br label %bb.vk

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442: ; preds = %bb.uw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60.i472, %bb.us, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i469, %bb.uj, %bb.ui
  %i.bzk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bzl = load ptr, ptr %i.bzk, align 8, !tbaa !70, !noalias !948 ; 4 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 32 ; 2 uses
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !42, !noalias !948 ; 5 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzl, i64 40
  %i.bzp = load ptr, ptr %i.bzo, align 8, !tbaa !299, !noalias !948 ; 2 uses
  %.not.i63.i443 = icmp eq ptr %i.bzn, %i.bzp
  br i1 %.not.i63.i443, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzn, i64 8
  store ptr null, ptr %i.bzq, align 8, !tbaa !118, !noalias !948
  %i.bzr = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.bzs = load <2 x ptr>, ptr %146, align 16, !tbaa !119, !noalias !948
  store ptr null, ptr %i.bzr, align 8, !tbaa !118, !noalias !948
  store <2 x ptr> %i.bzs, ptr %i.bzn, align 8, !tbaa !119, !noalias !948
  store ptr null, ptr %146, align 16, !tbaa !33, !noalias !948
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzn, i64 16 ; 2 uses
  store ptr %i.bzt, ptr %i.bzm, align 8, !tbaa !42, !noalias !948
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i444

bb.uz:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit62.i442
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzl, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bzu, ptr %i.bzn, ptr noundef nonnull align 8 dereferenceable(16) %146)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i453 unwind label %bb.vc, !noalias !948

._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i453: ; preds = %bb.uz
  %.pre101.i454 = load ptr, ptr %i.bzk, align 8, !tbaa !70, !noalias !948 ; 3 uses
  %.phi.trans.insert102.i455 = getelementptr inbounds nuw i8, ptr %.pre101.i454, i64 32
  %.pre103.i456 = load ptr, ptr %.phi.trans.insert102.i455, align 8, !tbaa !42, !noalias !948
  %.phi.trans.insert104.i457 = getelementptr inbounds nuw i8, ptr %.pre101.i454, i64 40
  %.pre105.i458 = load ptr, ptr %.phi.trans.insert104.i457, align 8, !tbaa !299, !noalias !948
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i444

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i444: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i453, %bb.uy
  %i.bzv = phi ptr [ %.pre105.i458, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i453 ], [ %i.bzp, %bb.uy ]
  %i.bzw = phi ptr [ %.pre103.i456, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i453 ], [ %i.bzt, %bb.uy ] ; 5 uses
  %i.bzx = phi ptr [ %.pre101.i454, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i453 ], [ %i.bzl, %bb.uy ] ; 2 uses
  %.not.i65.i445 = icmp eq ptr %i.bzw, %i.bzv
  br i1 %.not.i65.i445, label %bb.vb, label %bb.va

bb.va:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i444
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 32
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzw, i64 8
  store ptr null, ptr %i.bzz, align 8, !tbaa !118, !noalias !948
  %i.caa = load <2 x ptr>, ptr %148, align 16, !tbaa !119, !noalias !948
  store ptr null, ptr %i.bwo, align 8, !tbaa !118, !noalias !948
  store <2 x ptr> %i.caa, ptr %i.bzw, align 8, !tbaa !119, !noalias !948
  store ptr null, ptr %148, align 16, !tbaa !33, !noalias !948
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzw, i64 16
  store ptr %i.cab, ptr %i.bzy, align 8, !tbaa !42, !noalias !948
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i446

bb.vb:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i444
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzx, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cac, ptr %i.bzw, ptr noundef nonnull align 8 dereferenceable(16) %148)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i446 unwind label %bb.vc, !noalias !948

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i446: ; preds = %bb.vb, %bb.va
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1002
  br label %bb.vd

bb.vc:                                            ; preds = %bb.vb, %bb.uz
  %i.cad = landingpad { ptr, i32 }
          cleanup
  br label %bb.vk

.critedge39.i475:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit47.i474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #28, !noalias !948
  br label %bb.vd

bb.vd:                                            ; preds = %.critedge39.i475, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit68.i446
  %i.cae = load ptr, ptr %i.bwo, align 8, !tbaa !118, !noalias !948 ; 8 uses
  %.not.i.i69.i447 = icmp eq ptr %i.cae, null
  br i1 %.not.i.i69.i447, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i451, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 8 ; 4 uses
  %i.cag = load atomic i64, ptr %i.caf acquire, align 8, !noalias !948 ; 2 uses
  %i.cah = icmp eq i64 %i.cag, 4294967297
  %i.cai = trunc i64 %i.cag to i32                ; 2 uses
  br i1 %i.cah, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %bb.ve
  store i32 0, ptr %i.caf, align 8, !tbaa !125, !noalias !948
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cae, i64 12
  store i32 0, ptr %i.caj, align 4, !tbaa !127, !noalias !948
  %i.cak = load ptr, ptr %i.cae, align 8, !tbaa !55, !noalias !948
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cak, i64 16
  %i.cam = load ptr, ptr %i.cal, align 8, !noalias !948
  call void %i.cam(ptr noundef nonnull align 8 dereferenceable(16) %i.cae) #28, !noalias !948, !inline_history !1001
  %i.can = load ptr, ptr %i.cae, align 8, !tbaa !55, !noalias !948
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 24
  %i.cap = load ptr, ptr %i.cao, align 8, !noalias !948
  call void %i.cap(ptr noundef nonnull align 8 dereferenceable(16) %i.cae) #28, !noalias !948, !inline_history !1001
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i451

bb.vg:                                            ; preds = %bb.ve
  %i.caq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !948
  %.not.i.i.i70.i448 = icmp eq i8 %i.caq, 0
  br i1 %.not.i.i.i70.i448, label %bb.vi, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.car = add nsw i32 %i.cai, -1
  store i32 %i.car, ptr %i.caf, align 4, !tbaa !3, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i449

bb.vi:                                            ; preds = %bb.vg
  %i.cas = atomicrmw volatile add ptr %i.caf, i32 -1 acq_rel, align 4, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i449

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i449: ; preds = %bb.vi, %bb.vh
  %.0.i.i.i.i72.i450 = phi i32 [ %i.cai, %bb.vh ], [ %i.cas, %bb.vi ]
  %i.cat = icmp eq i32 %.0.i.i.i.i72.i450, 1
  br i1 %i.cat, label %bb.vj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i451, !prof !129

bb.vj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i449
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cae) #28, !noalias !948
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i451

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i451: ; preds = %bb.vj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i449, %bb.vf, %bb.vd
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #28, !noalias !948
  br label %.critedge.i404

bb.vk:                                            ; preds = %bb.vc, %.body54.i461, %bb.uh
  %.pn34.i452 = phi { ptr, i32 } [ %i.cad, %bb.vc ], [ %eh.lpad-body55.i462, %.body54.i461 ], [ %i.bxf, %bb.uh ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %148) #28, !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #28, !noalias !948
  br label %bb.vr

.critedge.i404:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i451, %_ZN5arrow6StatusD2Ev.exit.i490, %_ZN5arrow6StatusD2Ev.exit.thread93.i403
  %i.cau = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !118, !noalias !948 ; 8 uses
  %.not.i.i74.i405 = icmp eq ptr %i.cav, null
  br i1 %.not.i.i74.i405, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11BinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.vl

bb.vl:                                            ; preds = %.critedge.i404
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 8 ; 4 uses
  %i.cax = load atomic i64, ptr %i.caw acquire, align 8, !noalias !948 ; 2 uses
  %i.cay = icmp eq i64 %i.cax, 4294967297
  %i.caz = trunc i64 %i.cax to i32                ; 2 uses
  br i1 %i.cay, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  store i32 0, ptr %i.caw, align 8, !tbaa !125, !noalias !948
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cav, i64 12
  store i32 0, ptr %i.cba, align 4, !tbaa !127, !noalias !948
  %i.cbb = load ptr, ptr %i.cav, align 8, !tbaa !55, !noalias !948
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cbb, i64 16
  %i.cbd = load ptr, ptr %i.cbc, align 8, !noalias !948
  call void %i.cbd(ptr noundef nonnull align 8 dereferenceable(16) %i.cav) #28, !noalias !948, !inline_history !1001
  %i.cbe = load ptr, ptr %i.cav, align 8, !tbaa !55, !noalias !948
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbe, i64 24
  %i.cbg = load ptr, ptr %i.cbf, align 8, !noalias !948
  call void %i.cbg(ptr noundef nonnull align 8 dereferenceable(16) %i.cav) #28, !noalias !948, !inline_history !1001
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11BinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.vn:                                            ; preds = %bb.vl
  %i.cbh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !948
  %.not.i.i.i75.i406 = icmp eq i8 %i.cbh, 0
  br i1 %.not.i.i.i75.i406, label %bb.vp, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.cbi = add nsw i32 %i.caz, -1
  store i32 %i.cbi, ptr %i.caw, align 4, !tbaa !3, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i407

bb.vp:                                            ; preds = %bb.vn
  %i.cbj = atomicrmw volatile add ptr %i.caw, i32 -1 acq_rel, align 4, !noalias !948
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i407

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i407: ; preds = %bb.vp, %bb.vo
  %.0.i.i.i.i77.i408 = phi i32 [ %i.caz, %bb.vo ], [ %i.cbj, %bb.vp ]
  %i.cbk = icmp eq i32 %.0.i.i.i.i77.i408, 1
  br i1 %i.cbk, label %bb.vq, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11BinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, !prof !129

bb.vq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i407
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cav) #28, !noalias !948
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11BinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.vr:                                            ; preds = %bb.vk, %.body.i399
  %.pn34.pn.i401 = phi { ptr, i32 } [ %.pn34.i452, %bb.vk ], [ %.pn.i400, %.body.i399 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %146) #28, !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #28, !noalias !948
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_11BinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %.critedge.i404, %bb.vm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76.i407, %bb.vq
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #28, !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %150)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.vs:                                            ; preds = %tailrecurse
  tail call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_15BinaryViewArrayE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(40) %.tr1792)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.vt:                                            ; preds = %tailrecurse
  %i.cbl = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.lifetime.start.p0(ptr nonnull %139)
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #28, !noalias !1005
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %135, i8 0, i64 16, i1 false), !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #28, !noalias !1005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  call void @llvm.lifetime.start.p0(ptr nonnull %134), !noalias !1005
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cbn = load i64, ptr %i.cbm, align 8, !tbaa !138, !noalias !1011 ; 2 uses
  %i.cbo = icmp eq i64 %i.cbn, 0
  br i1 %i.cbo, label %bb.vu, label %_ZN5arrow6StatusD2Ev.exit.i.i529

bb.vu:                                            ; preds = %bb.vt
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !45, !noalias !1012 ; 2 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbq, i64 16
  %i.cbs = load ptr, ptr %i.cbr, align 8, !tbaa !33, !noalias !1012 ; 2 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbq, i64 24
  %i.cbu = load ptr, ptr %i.cbt, align 8, !tbaa !118, !noalias !1012 ; 4 uses
  %.not.i.i.i.i.i.i606 = icmp eq ptr %i.cbu, null
  br i1 %.not.i.i.i.i.i.i606, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbu, i64 8 ; 3 uses
  %i.cbw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1012
  %.not.i.i.i.i.i.i.i607 = icmp eq i8 %i.cbw, 0
  br i1 %.not.i.i.i.i.i.i.i607, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.cbx = load i32, ptr %i.cbv, align 4, !tbaa !3, !noalias !1012
  %i.cby = add nsw i32 %i.cbx, 1
  store i32 %i.cby, ptr %i.cbv, align 4, !tbaa !3, !noalias !1012
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i: ; preds = %bb.vw, %bb.vu
  store ptr %i.cbs, ptr %135, align 16, !tbaa !351, !noalias !1011
  %i.cbz = getelementptr inbounds nuw i8, ptr %135, i64 8
  store ptr %i.cbu, ptr %i.cbz, align 8, !tbaa !118, !noalias !1011
  br label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i: ; preds = %bb.vv
  %i.cca = atomicrmw volatile add ptr %i.cbv, i32 1 acq_rel, align 4, !noalias !1012 ; 0 uses
  %.phi.trans.insert.i608 = getelementptr inbounds nuw i8, ptr %135, i64 8 ; 2 uses
  %.pre.i609 = load ptr, ptr %.phi.trans.insert.i608, align 8, !tbaa !118, !noalias !1011 ; 8 uses
  store ptr %i.cbs, ptr %135, align 16, !tbaa !351, !noalias !1011
  store ptr %i.cbu, ptr %.phi.trans.insert.i608, align 8, !tbaa !118, !noalias !1011
  %.not.i.i.i.i56.i.i610 = icmp eq ptr %.pre.i609, null
  br i1 %.not.i.i.i.i56.i.i610, label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i, label %bb.vx

bb.vx:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i
  %i.ccb = getelementptr inbounds nuw i8, ptr %.pre.i609, i64 8 ; 4 uses
  %i.ccc = load atomic i64, ptr %i.ccb acquire, align 8, !noalias !1011 ; 2 uses
  %i.ccd = icmp eq i64 %i.ccc, 4294967297
  %i.cce = trunc i64 %i.ccc to i32                ; 2 uses
  br i1 %i.ccd, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  store i32 0, ptr %i.ccb, align 8, !tbaa !125, !noalias !1011
  %i.ccf = getelementptr inbounds nuw i8, ptr %.pre.i609, i64 12
  store i32 0, ptr %i.ccf, align 4, !tbaa !127, !noalias !1011
  %i.ccg = load ptr, ptr %.pre.i609, align 8, !tbaa !55, !noalias !1011
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 16
  %i.cci = load ptr, ptr %i.cch, align 8, !noalias !1011
  tail call void %i.cci(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i609) #28, !noalias !1011, !inline_history !1015
  %i.ccj = load ptr, ptr %.pre.i609, align 8, !tbaa !55, !noalias !1011
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 24
  %i.ccl = load ptr, ptr %i.cck, align 8, !noalias !1011
  tail call void %i.ccl(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i609) #28, !noalias !1011, !inline_history !1015
  br label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i

bb.vz:                                            ; preds = %bb.vx
  %i.ccm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i.i.i57.i.i611 = icmp eq i8 %i.ccm, 0
  br i1 %.not.i.i.i.i.i57.i.i611, label %bb.wb, label %bb.wa

end_hunk_2
begin_hunk_3_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.xz:                                            ; preds = %bb.xx
  %i.cjs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i95.i.i550 = icmp eq i8 %i.cjs, 0
  br i1 %.not.i.i.i95.i.i550, label %bb.yb, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.cjt = add nsw i32 %i.cjk, -1
  store i32 %i.cjt, ptr %i.cjh, align 4, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i551

bb.yb:                                            ; preds = %bb.xz
  %i.cju = atomicrmw volatile add ptr %i.cjh, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i551

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i551: ; preds = %bb.yb, %bb.ya
  %.0.i.i.i.i97.i.i552 = phi i32 [ %i.cjk, %bb.ya ], [ %i.cju, %bb.yb ]
  %i.cjv = icmp eq i32 %.0.i.i.i.i97.i.i552, 1
  br i1 %i.cjv, label %bb.yc, label %_ZN5arrow6StatusD2Ev.exit.thread89.i, !prof !129

bb.yc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i551
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cjg) #28, !noalias !1011
  br label %_ZN5arrow6StatusD2Ev.exit.thread89.i

bb.yd:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i
  %i.cjw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i540

.body.i.i540:                                     ; preds = %bb.yd, %.body.i77.i
  %eh.lpad-body.i.i541 = phi { ptr, i32 } [ %i.cjw, %bb.yd ], [ %i.cio, %.body.i77.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %134) #28, !noalias !1011
  br label %bb.yo

bb.ye:                                            ; preds = %.critedge55.i.i572, %bb.xf, %bb.xb, %bb.wz
  %i.cjx = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1044
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cjx, i64 40
  %i.cjz = load ptr, ptr %i.cjy, align 8, !tbaa !45, !noalias !1044 ; 2 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 16
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cjz, i64 24
  %i.ckc = load ptr, ptr %i.ckb, align 8, !tbaa !118, !noalias !1044 ; 2 uses
  %i.ckd = load <2 x ptr>, ptr %i.cka, align 8, !tbaa !119, !noalias !1044
  %.not.i.i.i.i99.i.i573 = icmp eq ptr %i.ckc, null
  br i1 %.not.i.i.i.i99.i.i573, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckc, i64 8 ; 3 uses
  %i.ckf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1044
  %.not.i.i.i.i.i100.i.i574 = icmp eq i8 %i.ckf, 0
  br i1 %.not.i.i.i.i.i100.i.i574, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.ckg = load i32, ptr %i.cke, align 4, !tbaa !3, !noalias !1044
  %i.ckh = add nsw i32 %i.ckg, 1
  store i32 %i.ckh, ptr %i.cke, align 4, !tbaa !3, !noalias !1044
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i

bb.yh:                                            ; preds = %bb.yf
  %i.cki = atomicrmw volatile add ptr %i.cke, i32 1 acq_rel, align 4, !noalias !1044 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i: ; preds = %bb.yh, %bb.yg, %bb.ye
  %i.ckj = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.ckk = load ptr, ptr %i.ckj, align 8, !tbaa !118, !noalias !1011 ; 8 uses
  store <2 x ptr> %i.ckd, ptr %135, align 16, !tbaa !119, !noalias !1011
  %.not.i.i.i.i102.i.i575 = icmp eq ptr %i.ckk, null
  br i1 %.not.i.i.i.i102.i.i575, label %_ZN5arrow6StatusD2Ev.exit.thread89.i, label %bb.yi

bb.yi:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckk, i64 8 ; 4 uses
  %i.ckm = load atomic i64, ptr %i.ckl acquire, align 8, !noalias !1011 ; 2 uses
  %i.ckn = icmp eq i64 %i.ckm, 4294967297
  %i.cko = trunc i64 %i.ckm to i32                ; 2 uses
  br i1 %i.ckn, label %bb.yj, label %bb.yk

bb.yj:                                            ; preds = %bb.yi
  store i32 0, ptr %i.ckl, align 8, !tbaa !125, !noalias !1011
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.ckk, i64 12
  store i32 0, ptr %i.ckp, align 4, !tbaa !127, !noalias !1011
  %i.ckq = load ptr, ptr %i.ckk, align 8, !tbaa !55, !noalias !1011
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 16
  %i.cks = load ptr, ptr %i.ckr, align 8, !noalias !1011
  call void %i.cks(ptr noundef nonnull align 8 dereferenceable(16) %i.ckk) #28, !noalias !1011, !inline_history !1015
  %i.ckt = load ptr, ptr %i.ckk, align 8, !tbaa !55, !noalias !1011
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckt, i64 24
  %i.ckv = load ptr, ptr %i.cku, align 8, !noalias !1011
  call void %i.ckv(ptr noundef nonnull align 8 dereferenceable(16) %i.ckk) #28, !noalias !1011, !inline_history !1015
  br label %_ZN5arrow6StatusD2Ev.exit.thread89.i

bb.yk:                                            ; preds = %bb.yi
  %i.ckw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i.i.i103.i.i576 = icmp eq i8 %i.ckw, 0
  br i1 %.not.i.i.i.i.i103.i.i576, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.ckx = add nsw i32 %i.cko, -1
  store i32 %i.ckx, ptr %i.ckl, align 4, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i577

bb.ym:                                            ; preds = %bb.yk
  %i.cky = atomicrmw volatile add ptr %i.ckl, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i577

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i577: ; preds = %bb.ym, %bb.yl
  %.0.i.i.i.i.i.i105.i.i578 = phi i32 [ %i.cko, %bb.yl ], [ %i.cky, %bb.ym ]
  %i.ckz = icmp eq i32 %.0.i.i.i.i.i.i105.i.i578, 1
  br i1 %i.ckz, label %bb.yn, label %_ZN5arrow6StatusD2Ev.exit.thread89.i, !prof !129

bb.yn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i577
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ckk) #28, !noalias !1011
  br label %_ZN5arrow6StatusD2Ev.exit.thread89.i

_ZN5arrow6StatusD2Ev.exit.thread89.i:             ; preds = %bb.yn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i577, %bb.yj, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i, %bb.yc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i551, %bb.xy, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i548, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #28, !noalias !1011
  br label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i

bb.yo:                                            ; preds = %.body.i.i540, %bb.wt
  %.pn51.pn.i.i542 = phi { ptr, i32 } [ %.pn51.i.i581, %bb.wt ], [ %eh.lpad-body.i.i541, %.body.i.i540 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #28, !noalias !1011
  br label %.body.i530

_ZN5arrow6StatusD2Ev.exit.i579:                   ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i584, %bb.we
  %.pr.pr.i580 = load ptr, ptr %136, align 8, !tbaa !39, !noalias !1005 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #28, !noalias !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %134), !noalias !1005
  store ptr %.pr.pr.i580, ptr %0, align 8, !tbaa !39, !alias.scope !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #28, !noalias !1005
  %i.cla = icmp eq ptr %.pr.pr.i580, null
  br i1 %i.cla, label %_ZN5arrow6StatusD2Ev.exit42.i, label %.critedge.i535

bb.yp:                                            ; preds = %bb.wf, %bb.we, %_ZN5arrow6StatusD2Ev.exit.i.i529
  %i.clb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i530

.body.i530:                                       ; preds = %bb.yp, %bb.yo
  %.pn.i531 = phi { ptr, i32 } [ %.pn51.pn.i.i542, %bb.yo ], [ %i.clb, %bb.yp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #28, !noalias !1005
  br label %bb.aaf

_ZN5arrow6StatusD2Ev.exit42.sink.split.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit.thread89.i, %bb.wc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i612, %bb.vy, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %134), !noalias !1005
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #28, !noalias !1005
  br label %_ZN5arrow6StatusD2Ev.exit42.i

_ZN5arrow6StatusD2Ev.exit42.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit42.sink.split.i, %_ZN5arrow6StatusD2Ev.exit.i579
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #28, !noalias !1005
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.clc = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1050
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 40
  %i.cle = load ptr, ptr %i.cld, align 8, !tbaa !45, !noalias !1050 ; 2 uses
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cle, i64 32
  %i.clg = getelementptr inbounds nuw i8, ptr %137, i64 8 ; 6 uses
  %i.clh = getelementptr inbounds nuw i8, ptr %i.cle, i64 40
  %i.cli = load ptr, ptr %i.clh, align 8, !tbaa !118, !noalias !1050 ; 2 uses
  %i.clj = load <2 x ptr>, ptr %i.clf, align 8, !tbaa !119, !noalias !1050
  store <2 x ptr> %i.clj, ptr %137, align 16, !tbaa !119, !alias.scope !1047, !noalias !1005
  %.not.i.i.i.i.i553 = icmp eq ptr %i.cli, null
  br i1 %.not.i.i.i.i.i553, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i, label %bb.yq

bb.yq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit42.i
  %i.clk = getelementptr inbounds nuw i8, ptr %i.cli, i64 8 ; 3 uses
  %i.cll = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1050
  %.not.i.i.i.i.i43.i = icmp eq i8 %i.cll, 0
  br i1 %.not.i.i.i.i.i43.i, label %bb.ys, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.clm = load i32, ptr %i.clk, align 4, !tbaa !3, !noalias !1050
  %i.cln = add nsw i32 %i.clm, 1
  store i32 %i.cln, ptr %i.clk, align 4, !tbaa !3, !noalias !1050
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i

bb.ys:                                            ; preds = %bb.yq
  %i.clo = atomicrmw volatile add ptr %i.clk, i32 1 acq_rel, align 4, !noalias !1050 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i: ; preds = %bb.ys, %bb.yr, %_ZN5arrow6StatusD2Ev.exit42.i
  %i.clp = load ptr, ptr %135, align 16, !tbaa !33, !noalias !1005
  %.not.i554 = icmp eq ptr %i.clp, null
  br i1 %.not.i554, label %bb.yw, label %bb.yt

bb.yt:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i
  %i.clq = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1005
  %i.clr = getelementptr inbounds nuw i8, ptr %i.clq, i64 16
  %i.cls = load i64, ptr %i.clr, align 8, !tbaa !138, !noalias !1005 ; 2 uses
  %i.clt = icmp sgt i64 %i.cls, 0
  br i1 %i.clt, label %bb.yu, label %bb.yw

bb.yu:                                            ; preds = %bb.yt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #28, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #28, !noalias !1005
  %i.clu = shl i64 %i.cls, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %138, ptr noundef nonnull align 8 dereferenceable(16) %135, i64 noundef %i.clu, i64 noundef 8, ptr noundef nonnull %i.be)
          to label %_ZN5arrow6StatusD2Ev.exit45.i unwind label %bb.yv, !noalias !1005

_ZN5arrow6StatusD2Ev.exit45.i:                    ; preds = %bb.yu
  %i.clv = load ptr, ptr %138, align 8, !tbaa !39, !noalias !1005 ; 2 uses
  store ptr %i.clv, ptr %0, align 8, !tbaa !39, !alias.scope !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #28, !noalias !1005
  %i.clw = icmp eq ptr %i.clv, null
  br i1 %i.clw, label %_ZN5arrow6StatusD2Ev.exit51.i, label %.critedge38.i

bb.yv:                                            ; preds = %bb.yu
  %i.clx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #28, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #28, !noalias !1005
  br label %bb.zy

_ZN5arrow6StatusD2Ev.exit51.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit45.i
  %186 = load i64, ptr %i.be, align 8, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #28, !noalias !1005
  br label %bb.yw

bb.yw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit51.i, %bb.yt, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i
  %.123.i555 = phi i64 [ %186, %_ZN5arrow6StatusD2Ev.exit51.i ], [ 0, %bb.yt ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i ] ; 2 uses
  %i.cly = load ptr, ptr %137, align 16, !tbaa !33, !noalias !1005 ; 3 uses
  %i.clz = icmp eq ptr %i.cly, null
  br i1 %i.clz, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cma = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1005
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 32
  %i.cmc = load i64, ptr %i.cmb, align 8, !tbaa !647, !noalias !1005
  %.not.i50.i = icmp ne i64 %i.cmc, 0
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cly, i64 24
  %i.cme = load i64, ptr %i.cmd, align 8, !tbaa !46, !noalias !1005 ; 2 uses
  %i.cmf = icmp slt i64 %.123.i555, %i.cme
  %or.cond.i556 = select i1 %.not.i50.i, i1 true, i1 %i.cmf
  br i1 %or.cond.i556, label %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i561, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i

_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i561: ; preds = %bb.yx
  %i.cmg = getelementptr inbounds nuw i8, ptr %.tr1792, i64 32
  %i.cmh = load ptr, ptr %i.cmg, align 8, !tbaa !1024, !noalias !1005
  %i.cmi = load i64, ptr %i.cmh, align 8, !tbaa !288, !noalias !1005 ; 2 uses
  %i.cmj = add i64 %.123.i555, 63                 ; 2 uses
  %i.cmk = srem i64 %i.cmj, 64
  %i.cml = sub nsw i64 %i.cmj, %i.cmk
  %i.cmm = sub nsw i64 %i.cme, %i.cmi
  %.sroa.speculated.i562 = call i64 @llvm.smin.i64(i64 %i.cmm, i64 %i.cml)
  store ptr %i.cly, ptr %139, align 8, !tbaa !33, !noalias !1005
  %i.cmn = getelementptr inbounds nuw i8, ptr %139, i64 8 ; 2 uses
  %i.cmo = load ptr, ptr %i.clg, align 8, !tbaa !118, !noalias !1005
  store ptr null, ptr %i.clg, align 8, !tbaa !118, !noalias !1005
  store ptr %i.cmo, ptr %i.cmn, align 8, !tbaa !118, !noalias !1005
  store ptr null, ptr %137, align 16, !tbaa !33, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1005
  store i64 %i.cmi, ptr %i.bb, align 8, !tbaa !288, !noalias !1051
  store i64 %.sroa.speculated.i562, ptr %i.bc, align 8, !tbaa !288, !noalias !1051
  %i.cmp = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc51.i unwind label %bb.zl, !noalias !1005 ; 4 uses

.noexc51.i:                                       ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i561
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.cmp, ptr noundef nonnull align 8 dereferenceable(16) %139, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %bb.yy unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i563, !noalias !1054

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i563: ; preds = %.noexc51.i
  %i.cmq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cmp, i64 noundef 96) #30, !noalias !1054
  br label %.body52.i

bb.yy:                                            ; preds = %.noexc51.i
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmp, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1005
  store ptr %i.cmr, ptr %137, align 16, !tbaa !351, !noalias !1005
  %i.cms = load ptr, ptr %i.clg, align 8, !tbaa !118, !noalias !1005 ; 8 uses
  store ptr %i.cmp, ptr %i.clg, align 8, !tbaa !118, !noalias !1005
  %.not.i.i.i.i54.i.a = icmp eq ptr %i.cms, null
  br i1 %.not.i.i.i.i54.i.a, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i566, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cms, i64 8 ; 4 uses
  %i.cmu = load atomic i64, ptr %i.cmt acquire, align 8, !noalias !1005 ; 2 uses
  %i.cmv = icmp eq i64 %i.cmu, 4294967297
  %i.cmw = trunc i64 %i.cmu to i32                ; 2 uses
  br i1 %i.cmv, label %bb.za, label %bb.zb

bb.za:                                            ; preds = %bb.yz
  store i32 0, ptr %i.cmt, align 8, !tbaa !125, !noalias !1005
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cms, i64 12
  store i32 0, ptr %i.cmx, align 4, !tbaa !127, !noalias !1005
  %i.cmy = load ptr, ptr %i.cms, align 8, !tbaa !55, !noalias !1005
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmy, i64 16
  %i.cna = load ptr, ptr %i.cmz, align 8, !noalias !1005
  call void %i.cna(ptr noundef nonnull align 8 dereferenceable(16) %i.cms) #28, !noalias !1005, !inline_history !1057
  %i.cnb = load ptr, ptr %i.cms, align 8, !tbaa !55, !noalias !1005
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cnb, i64 24
  %i.cnd = load ptr, ptr %i.cnc, align 8, !noalias !1005
  call void %i.cnd(ptr noundef nonnull align 8 dereferenceable(16) %i.cms) #28, !noalias !1005, !inline_history !1057
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i566

bb.zb:                                            ; preds = %bb.yz
  %i.cne = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1005
  %.not.i.i.i.i.i55.i = icmp eq i8 %i.cne, 0
  br i1 %.not.i.i.i.i.i55.i, label %bb.zd, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.cnf = add nsw i32 %i.cmw, -1
  store i32 %i.cnf, ptr %i.cmt, align 4, !tbaa !3, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i564

bb.zd:                                            ; preds = %bb.zb
  %i.cng = atomicrmw volatile add ptr %i.cmt, i32 -1 acq_rel, align 4, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i564

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i564: ; preds = %bb.zd, %bb.zc
  %.0.i.i.i.i.i.i.i565 = phi i32 [ %i.cmw, %bb.zc ], [ %i.cng, %bb.zd ]
  %i.cnh = icmp eq i32 %.0.i.i.i.i.i.i.i565, 1
  br i1 %i.cnh, label %bb.ze, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i566, !prof !129

bb.ze:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i564
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cms) #28, !noalias !1005
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i566

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i566: ; preds = %bb.ze, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i564, %bb.za, %bb.yy
  %i.cni = load ptr, ptr %i.cmn, align 8, !tbaa !118, !noalias !1005 ; 8 uses
  %.not.i.i56.i = icmp eq ptr %i.cni, null
  br i1 %.not.i.i56.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i, label %bb.zf

bb.zf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i566
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cni, i64 8 ; 4 uses
  %i.cnk = load atomic i64, ptr %i.cnj acquire, align 8, !noalias !1005 ; 2 uses
  %i.cnl = icmp eq i64 %i.cnk, 4294967297
  %i.cnm = trunc i64 %i.cnk to i32                ; 2 uses
  br i1 %i.cnl, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %bb.zf
  store i32 0, ptr %i.cnj, align 8, !tbaa !125, !noalias !1005
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.cni, i64 12
  store i32 0, ptr %i.cnn, align 4, !tbaa !127, !noalias !1005
  %i.cno = load ptr, ptr %i.cni, align 8, !tbaa !55, !noalias !1005
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cno, i64 16
  %i.cnq = load ptr, ptr %i.cnp, align 8, !noalias !1005
  call void %i.cnq(ptr noundef nonnull align 8 dereferenceable(16) %i.cni) #28, !noalias !1005, !inline_history !1058
  %i.cnr = load ptr, ptr %i.cni, align 8, !tbaa !55, !noalias !1005
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnr, i64 24
  %i.cnt = load ptr, ptr %i.cns, align 8, !noalias !1005
  call void %i.cnt(ptr noundef nonnull align 8 dereferenceable(16) %i.cni) #28, !noalias !1005, !inline_history !1058
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i

bb.zh:                                            ; preds = %bb.zf
  %i.cnu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1005
  %.not.i.i.i57.i = icmp eq i8 %i.cnu, 0
  br i1 %.not.i.i.i57.i, label %bb.zj, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.cnv = add nsw i32 %i.cnm, -1
  store i32 %i.cnv, ptr %i.cnj, align 4, !tbaa !3, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i

bb.zj:                                            ; preds = %bb.zh
  %i.cnw = atomicrmw volatile add ptr %i.cnj, i32 -1 acq_rel, align 4, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i: ; preds = %bb.zj, %bb.zi
  %.0.i.i.i.i59.i = phi i32 [ %i.cnm, %bb.zi ], [ %i.cnw, %bb.zj ]
  %i.cnx = icmp eq i32 %.0.i.i.i.i59.i, 1
  br i1 %i.cnx, label %bb.zk, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i, !prof !129

bb.zk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cni) #28, !noalias !1005
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i

bb.zl:                                            ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i561
  %i.cny = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i

.body52.i:                                        ; preds = %bb.zl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i563
  %eh.lpad-body53.i = phi { ptr, i32 } [ %i.cny, %bb.zl ], [ %i.cmq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i563 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %139) #28, !noalias !1005
  br label %bb.zy

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i: ; preds = %bb.zk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i, %bb.zg, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i566, %bb.yx, %bb.yw
  %i.cnz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.coa = load ptr, ptr %i.cnz, align 8, !tbaa !70, !noalias !1005 ; 4 uses
  %i.cob = getelementptr inbounds nuw i8, ptr %i.coa, i64 32 ; 2 uses
  %i.coc = load ptr, ptr %i.cob, align 8, !tbaa !42, !noalias !1005 ; 5 uses
  %i.cod = getelementptr inbounds nuw i8, ptr %i.coa, i64 40
  %i.coe = load ptr, ptr %i.cod, align 8, !tbaa !299, !noalias !1005 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.coc, %i.coe
  br i1 %.not.i61.i, label %bb.zn, label %bb.zm

bb.zm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coc, i64 8
  store ptr null, ptr %i.cof, align 8, !tbaa !118, !noalias !1005
  %i.cog = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.coh = load <2 x ptr>, ptr %135, align 16, !tbaa !119, !noalias !1005
  store ptr null, ptr %i.cog, align 8, !tbaa !118, !noalias !1005
  store <2 x ptr> %i.coh, ptr %i.coc, align 8, !tbaa !119, !noalias !1005
  store ptr null, ptr %135, align 16, !tbaa !33, !noalias !1005
  %i.coi = getelementptr inbounds nuw i8, ptr %i.coc, i64 16 ; 2 uses
  store ptr %i.coi, ptr %i.cob, align 8, !tbaa !42, !noalias !1005
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i557

bb.zn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i
  %i.coj = getelementptr inbounds nuw i8, ptr %i.coa, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.coj, ptr %i.coc, ptr noundef nonnull align 8 dereferenceable(16) %135)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i560 unwind label %bb.zq, !noalias !1005

._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i560: ; preds = %bb.zn
  %.pre98.i = load ptr, ptr %i.cnz, align 8, !tbaa !70, !noalias !1005 ; 3 uses
  %.phi.trans.insert99.i = getelementptr inbounds nuw i8, ptr %.pre98.i, i64 32
  %.pre100.i = load ptr, ptr %.phi.trans.insert99.i, align 8, !tbaa !42, !noalias !1005
  %.phi.trans.insert101.i = getelementptr inbounds nuw i8, ptr %.pre98.i, i64 40
  %.pre102.i = load ptr, ptr %.phi.trans.insert101.i, align 8, !tbaa !299, !noalias !1005
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i557

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i557: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i560, %bb.zm
  %i.cok = phi ptr [ %.pre102.i, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i560 ], [ %i.coe, %bb.zm ]
  %i.col = phi ptr [ %.pre100.i, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i560 ], [ %i.coi, %bb.zm ] ; 5 uses
  %i.com = phi ptr [ %.pre98.i, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i560 ], [ %i.coa, %bb.zm ] ; 2 uses
  %.not.i63.i558 = icmp eq ptr %i.col, %i.cok
  br i1 %.not.i63.i558, label %bb.zp, label %bb.zo

bb.zo:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i557
  %i.con = getelementptr inbounds nuw i8, ptr %i.com, i64 32
  %i.coo = getelementptr inbounds nuw i8, ptr %i.col, i64 8
  store ptr null, ptr %i.coo, align 8, !tbaa !118, !noalias !1005
  %i.cop = load <2 x ptr>, ptr %137, align 16, !tbaa !119, !noalias !1005
  store ptr null, ptr %i.clg, align 8, !tbaa !118, !noalias !1005
  store <2 x ptr> %i.cop, ptr %i.col, align 8, !tbaa !119, !noalias !1005
  store ptr null, ptr %137, align 16, !tbaa !33, !noalias !1005
  %i.coq = getelementptr inbounds nuw i8, ptr %i.col, i64 16
  store ptr %i.coq, ptr %i.con, align 8, !tbaa !42, !noalias !1005
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i

bb.zp:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i557
  %i.cor = getelementptr inbounds nuw i8, ptr %i.com, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cor, ptr %i.col, ptr noundef nonnull align 8 dereferenceable(16) %137)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i unwind label %bb.zq, !noalias !1005

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i: ; preds = %bb.zp, %bb.zo
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1059
  br label %bb.zr

bb.zq:                                            ; preds = %bb.zp, %bb.zn
  %i.cos = landingpad { ptr, i32 }
          cleanup
  br label %bb.zy

.critedge38.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #28, !noalias !1005
  br label %bb.zr

bb.zr:                                            ; preds = %.critedge38.i, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i
  %i.cot = load ptr, ptr %i.clg, align 8, !tbaa !118, !noalias !1005 ; 8 uses
  %.not.i.i67.i = icmp eq ptr %i.cot, null
  br i1 %.not.i.i67.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i, label %bb.zs

bb.zs:                                            ; preds = %bb.zr
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 8 ; 4 uses
  %i.cov = load atomic i64, ptr %i.cou acquire, align 8, !noalias !1005 ; 2 uses
  %i.cow = icmp eq i64 %i.cov, 4294967297
  %i.cox = trunc i64 %i.cov to i32                ; 2 uses
  br i1 %i.cow, label %bb.zt, label %bb.zu

bb.zt:                                            ; preds = %bb.zs
  store i32 0, ptr %i.cou, align 8, !tbaa !125, !noalias !1005
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cot, i64 12
  store i32 0, ptr %i.coy, align 4, !tbaa !127, !noalias !1005
  %i.coz = load ptr, ptr %i.cot, align 8, !tbaa !55, !noalias !1005
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 16
  %i.cpb = load ptr, ptr %i.cpa, align 8, !noalias !1005
  call void %i.cpb(ptr noundef nonnull align 8 dereferenceable(16) %i.cot) #28, !noalias !1005, !inline_history !1058
  %i.cpc = load ptr, ptr %i.cot, align 8, !tbaa !55, !noalias !1005
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 24
  %i.cpe = load ptr, ptr %i.cpd, align 8, !noalias !1005
  call void %i.cpe(ptr noundef nonnull align 8 dereferenceable(16) %i.cot) #28, !noalias !1005, !inline_history !1058
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i

bb.zu:                                            ; preds = %bb.zs
  %i.cpf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1005
  %.not.i.i.i68.i = icmp eq i8 %i.cpf, 0
  br i1 %.not.i.i.i68.i, label %bb.zw, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.cpg = add nsw i32 %i.cox, -1
  store i32 %i.cpg, ptr %i.cou, align 4, !tbaa !3, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

bb.zw:                                            ; preds = %bb.zu
  %i.cph = atomicrmw volatile add ptr %i.cou, i32 -1 acq_rel, align 4, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i: ; preds = %bb.zw, %bb.zv
  %.0.i.i.i.i70.i = phi i32 [ %i.cox, %bb.zv ], [ %i.cph, %bb.zw ]
  %i.cpi = icmp eq i32 %.0.i.i.i.i70.i, 1
  br i1 %i.cpi, label %bb.zx, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i, !prof !129

bb.zx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cot) #28, !noalias !1005
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i: ; preds = %bb.zx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i, %bb.zt, %bb.zr
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28, !noalias !1005
  br label %.critedge.i535

bb.zy:                                            ; preds = %bb.zq, %.body52.i, %bb.yv
  %.pn34.i559 = phi { ptr, i32 } [ %i.cos, %bb.zq ], [ %eh.lpad-body53.i, %.body52.i ], [ %i.clx, %bb.yv ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %137) #28, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28, !noalias !1005
  br label %bb.aaf

.critedge.i535:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i, %_ZN5arrow6StatusD2Ev.exit.i579, %_ZN5arrow6StatusD2Ev.exit.thread91.i534
  %i.cpj = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.cpk = load ptr, ptr %i.cpj, align 8, !tbaa !118, !noalias !1005 ; 8 uses
  %.not.i.i72.i = icmp eq ptr %i.cpk, null
  br i1 %.not.i.i72.i, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeStringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.zz

bb.zz:                                            ; preds = %.critedge.i535
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 8 ; 4 uses
  %i.cpm = load atomic i64, ptr %i.cpl acquire, align 8, !noalias !1005 ; 2 uses
  %i.cpn = icmp eq i64 %i.cpm, 4294967297
  %i.cpo = trunc i64 %i.cpm to i32                ; 2 uses
  br i1 %i.cpn, label %bb.aaa, label %bb.aab

bb.aaa:                                           ; preds = %bb.zz
  store i32 0, ptr %i.cpl, align 8, !tbaa !125, !noalias !1005
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpk, i64 12
  store i32 0, ptr %i.cpp, align 4, !tbaa !127, !noalias !1005
  %i.cpq = load ptr, ptr %i.cpk, align 8, !tbaa !55, !noalias !1005
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpq, i64 16
  %i.cps = load ptr, ptr %i.cpr, align 8, !noalias !1005
  call void %i.cps(ptr noundef nonnull align 8 dereferenceable(16) %i.cpk) #28, !noalias !1005, !inline_history !1058
  %i.cpt = load ptr, ptr %i.cpk, align 8, !tbaa !55, !noalias !1005
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 24
  %i.cpv = load ptr, ptr %i.cpu, align 8, !noalias !1005
  call void %i.cpv(ptr noundef nonnull align 8 dereferenceable(16) %i.cpk) #28, !noalias !1005, !inline_history !1058
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeStringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aab:                                           ; preds = %bb.zz
  %i.cpw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1005
  %.not.i.i.i73.i = icmp eq i8 %i.cpw, 0
  br i1 %.not.i.i.i73.i, label %bb.aad, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.cpx = add nsw i32 %i.cpo, -1
  store i32 %i.cpx, ptr %i.cpl, align 4, !tbaa !3, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i

bb.aad:                                           ; preds = %bb.aab
  %i.cpy = atomicrmw volatile add ptr %i.cpl, i32 -1 acq_rel, align 4, !noalias !1005
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i: ; preds = %bb.aad, %bb.aac
  %.0.i.i.i.i75.i = phi i32 [ %i.cpo, %bb.aac ], [ %i.cpy, %bb.aad ]
  %i.cpz = icmp eq i32 %.0.i.i.i.i75.i, 1
  br i1 %i.cpz, label %bb.aae, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeStringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, !prof !129

bb.aae:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cpk) #28, !noalias !1005
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeStringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aaf:                                           ; preds = %bb.zy, %.body.i530
  %.pn34.pn.i532 = phi { ptr, i32 } [ %.pn34.i559, %bb.zy ], [ %.pn.i531, %.body.i530 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %135) #28, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #28, !noalias !1005
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeStringArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %.critedge.i535, %bb.aaa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i, %bb.aae
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #28, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %139)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aag:                                           ; preds = %tailrecurse
  %i.cqa = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.lifetime.start.p0(ptr nonnull %128)
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #28, !noalias !1062
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %124, i8 0, i64 16, i1 false), !noalias !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #28, !noalias !1062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.lifetime.start.p0(ptr nonnull %123), !noalias !1062
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cqc = load i64, ptr %i.cqb, align 8, !tbaa !138, !noalias !1068 ; 2 uses
  %i.cqd = icmp eq i64 %i.cqc, 0
  br i1 %i.cqd, label %bb.aah, label %_ZN5arrow6StatusD2Ev.exit.i.i614

bb.aah:                                           ; preds = %bb.aag
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cqf = load ptr, ptr %i.cqe, align 8, !tbaa !45, !noalias !1069 ; 2 uses
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cqf, i64 16
  %i.cqh = load ptr, ptr %i.cqg, align 8, !tbaa !33, !noalias !1069 ; 2 uses
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqf, i64 24
  %i.cqj = load ptr, ptr %i.cqi, align 8, !tbaa !118, !noalias !1069 ; 4 uses
  %.not.i.i.i.i.i.i733 = icmp eq ptr %i.cqj, null
  br i1 %.not.i.i.i.i.i.i733, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i735, label %bb.aai

bb.aai:                                           ; preds = %bb.aah
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cqj, i64 8 ; 3 uses
  %i.cql = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1069
  %.not.i.i.i.i.i.i.i734 = icmp eq i8 %i.cql, 0
  br i1 %.not.i.i.i.i.i.i.i734, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i736, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.cqm = load i32, ptr %i.cqk, align 4, !tbaa !3, !noalias !1069
  %i.cqn = add nsw i32 %i.cqm, 1
  store i32 %i.cqn, ptr %i.cqk, align 4, !tbaa !3, !noalias !1069
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i735

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i735: ; preds = %bb.aaj, %bb.aah
  store ptr %i.cqh, ptr %124, align 16, !tbaa !351, !noalias !1068
  %i.cqo = getelementptr inbounds nuw i8, ptr %124, i64 8
  store ptr %i.cqj, ptr %i.cqo, align 8, !tbaa !118, !noalias !1068
  br label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i649

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i736: ; preds = %bb.aai
  %i.cqp = atomicrmw volatile add ptr %i.cqk, i32 1 acq_rel, align 4, !noalias !1069 ; 0 uses
  %.phi.trans.insert.i737 = getelementptr inbounds nuw i8, ptr %124, i64 8 ; 2 uses
  %.pre.i738 = load ptr, ptr %.phi.trans.insert.i737, align 8, !tbaa !118, !noalias !1068 ; 8 uses
  store ptr %i.cqh, ptr %124, align 16, !tbaa !351, !noalias !1068
  store ptr %i.cqj, ptr %.phi.trans.insert.i737, align 8, !tbaa !118, !noalias !1068
  %.not.i.i.i.i56.i.i739 = icmp eq ptr %.pre.i738, null
  br i1 %.not.i.i.i.i56.i.i739, label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i649, label %bb.aak

bb.aak:                                           ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i736
  %i.cqq = getelementptr inbounds nuw i8, ptr %.pre.i738, i64 8 ; 4 uses
  %i.cqr = load atomic i64, ptr %i.cqq acquire, align 8, !noalias !1068 ; 2 uses
  %i.cqs = icmp eq i64 %i.cqr, 4294967297
  %i.cqt = trunc i64 %i.cqr to i32                ; 2 uses
  br i1 %i.cqs, label %bb.aal, label %bb.aam

bb.aal:                                           ; preds = %bb.aak
  store i32 0, ptr %i.cqq, align 8, !tbaa !125, !noalias !1068
  %i.cqu = getelementptr inbounds nuw i8, ptr %.pre.i738, i64 12
  store i32 0, ptr %i.cqu, align 4, !tbaa !127, !noalias !1068
  %i.cqv = load ptr, ptr %.pre.i738, align 8, !tbaa !55, !noalias !1068
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqv, i64 16
  %i.cqx = load ptr, ptr %i.cqw, align 8, !noalias !1068
  tail call void %i.cqx(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i738) #28, !noalias !1068, !inline_history !1072
  %i.cqy = load ptr, ptr %.pre.i738, align 8, !tbaa !55, !noalias !1068
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqy, i64 24
  %i.cra = load ptr, ptr %i.cqz, align 8, !noalias !1068
  tail call void %i.cra(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i738) #28, !noalias !1068, !inline_history !1072
  br label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i649

bb.aam:                                           ; preds = %bb.aak
  %i.crb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i.i.i57.i.i740 = icmp eq i8 %i.crb, 0
  br i1 %.not.i.i.i.i.i57.i.i740, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.crc = add nsw i32 %i.cqt, -1
  store i32 %i.crc, ptr %i.cqq, align 4, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i741
end_hunk_3
begin_hunk_4_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.acm:                                           ; preds = %bb.ack
  %i.cyh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i95.i.i645 = icmp eq i8 %i.cyh, 0
  br i1 %.not.i.i.i95.i.i645, label %bb.aco, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.cyi = add nsw i32 %i.cxz, -1
  store i32 %i.cyi, ptr %i.cxw, align 4, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i646

bb.aco:                                           ; preds = %bb.acm
  %i.cyj = atomicrmw volatile add ptr %i.cxw, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i646

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i646: ; preds = %bb.aco, %bb.acn
  %.0.i.i.i.i97.i.i647 = phi i32 [ %i.cxz, %bb.acn ], [ %i.cyj, %bb.aco ]
  %i.cyk = icmp eq i32 %.0.i.i.i.i97.i.i647, 1
  br i1 %i.cyk, label %bb.acp, label %_ZN5arrow6StatusD2Ev.exit.thread89.i648, !prof !129

bb.acp:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i646
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cxv) #28, !noalias !1068
  br label %_ZN5arrow6StatusD2Ev.exit.thread89.i648

bb.acq:                                           ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i629
  %i.cyl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i630

.body.i.i630:                                     ; preds = %bb.acq, %.body.i77.i634
  %eh.lpad-body.i.i631 = phi { ptr, i32 } [ %i.cyl, %bb.acq ], [ %i.cxd, %.body.i77.i634 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %123) #28, !noalias !1068
  br label %bb.adb

bb.acr:                                           ; preds = %.critedge55.i.i696, %bb.abs, %bb.abo, %bb.abm
  %i.cym = load ptr, ptr %i.cqa, align 8, !tbaa !115, !noalias !1099
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 40
  %i.cyo = load ptr, ptr %i.cyn, align 8, !tbaa !45, !noalias !1099 ; 2 uses
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyo, i64 16
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyo, i64 24
  %i.cyr = load ptr, ptr %i.cyq, align 8, !tbaa !118, !noalias !1099 ; 2 uses
  %i.cys = load <2 x ptr>, ptr %i.cyp, align 8, !tbaa !119, !noalias !1099
  %.not.i.i.i.i99.i.i697 = icmp eq ptr %i.cyr, null
  br i1 %.not.i.i.i.i99.i.i697, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cyr, i64 8 ; 3 uses
  %i.cyu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1099
  %.not.i.i.i.i.i100.i.i698 = icmp eq i8 %i.cyu, 0
  br i1 %.not.i.i.i.i.i100.i.i698, label %bb.acu, label %bb.act

bb.act:                                           ; preds = %bb.acs
  %i.cyv = load i32, ptr %i.cyt, align 4, !tbaa !3, !noalias !1099
  %i.cyw = add nsw i32 %i.cyv, 1
  store i32 %i.cyw, ptr %i.cyt, align 4, !tbaa !3, !noalias !1099
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699

bb.acu:                                           ; preds = %bb.acs
  %i.cyx = atomicrmw volatile add ptr %i.cyt, i32 1 acq_rel, align 4, !noalias !1099 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699: ; preds = %bb.acu, %bb.act, %bb.acr
  %i.cyy = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.cyz = load ptr, ptr %i.cyy, align 8, !tbaa !118, !noalias !1068 ; 8 uses
  store <2 x ptr> %i.cys, ptr %124, align 16, !tbaa !119, !noalias !1068
  %.not.i.i.i.i102.i.i700 = icmp eq ptr %i.cyz, null
  br i1 %.not.i.i.i.i102.i.i700, label %_ZN5arrow6StatusD2Ev.exit.thread89.i648, label %bb.acv

bb.acv:                                           ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyz, i64 8 ; 4 uses
  %i.czb = load atomic i64, ptr %i.cza acquire, align 8, !noalias !1068 ; 2 uses
  %i.czc = icmp eq i64 %i.czb, 4294967297
  %i.czd = trunc i64 %i.czb to i32                ; 2 uses
  br i1 %i.czc, label %bb.acw, label %bb.acx

bb.acw:                                           ; preds = %bb.acv
  store i32 0, ptr %i.cza, align 8, !tbaa !125, !noalias !1068
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cyz, i64 12
  store i32 0, ptr %i.cze, align 4, !tbaa !127, !noalias !1068
  %i.czf = load ptr, ptr %i.cyz, align 8, !tbaa !55, !noalias !1068
  %i.czg = getelementptr inbounds nuw i8, ptr %i.czf, i64 16
  %i.czh = load ptr, ptr %i.czg, align 8, !noalias !1068
  call void %i.czh(ptr noundef nonnull align 8 dereferenceable(16) %i.cyz) #28, !noalias !1068, !inline_history !1072
  %i.czi = load ptr, ptr %i.cyz, align 8, !tbaa !55, !noalias !1068
  %i.czj = getelementptr inbounds nuw i8, ptr %i.czi, i64 24
  %i.czk = load ptr, ptr %i.czj, align 8, !noalias !1068
  call void %i.czk(ptr noundef nonnull align 8 dereferenceable(16) %i.cyz) #28, !noalias !1068, !inline_history !1072
  br label %_ZN5arrow6StatusD2Ev.exit.thread89.i648

bb.acx:                                           ; preds = %bb.acv
  %i.czl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i.i.i103.i.i701 = icmp eq i8 %i.czl, 0
  br i1 %.not.i.i.i.i.i103.i.i701, label %bb.acz, label %bb.acy

bb.acy:                                           ; preds = %bb.acx
  %i.czm = add nsw i32 %i.czd, -1
  store i32 %i.czm, ptr %i.cza, align 4, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i702

bb.acz:                                           ; preds = %bb.acx
  %i.czn = atomicrmw volatile add ptr %i.cza, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i702

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i702: ; preds = %bb.acz, %bb.acy
  %.0.i.i.i.i.i.i105.i.i703 = phi i32 [ %i.czd, %bb.acy ], [ %i.czn, %bb.acz ]
  %i.czo = icmp eq i32 %.0.i.i.i.i.i.i105.i.i703, 1
  br i1 %i.czo, label %bb.ada, label %_ZN5arrow6StatusD2Ev.exit.thread89.i648, !prof !129

bb.ada:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i702
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cyz) #28, !noalias !1068
  br label %_ZN5arrow6StatusD2Ev.exit.thread89.i648

_ZN5arrow6StatusD2Ev.exit.thread89.i648:          ; preds = %bb.ada, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104.i.i702, %bb.acw, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699, %bb.acp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i646, %bb.acl, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i643, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #28, !noalias !1068
  br label %_ZN5arrow6StatusD2Ev.exit42.sink.split.i649

bb.adb:                                           ; preds = %.body.i.i630, %bb.abg
  %.pn51.pn.i.i632 = phi { ptr, i32 } [ %.pn51.i.i707, %bb.abg ], [ %eh.lpad-body.i.i631, %.body.i.i630 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #28, !noalias !1068
  br label %.body.i615

_ZN5arrow6StatusD2Ev.exit.i704:                   ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710, %bb.aar
  %.pr.pr.i705 = load ptr, ptr %125, align 8, !tbaa !39, !noalias !1062 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #28, !noalias !1068
  call void @llvm.lifetime.end.p0(ptr nonnull %123), !noalias !1062
  store ptr %.pr.pr.i705, ptr %0, align 8, !tbaa !39, !alias.scope !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28, !noalias !1062
  %i.czp = icmp eq ptr %.pr.pr.i705, null
  br i1 %i.czp, label %_ZN5arrow6StatusD2Ev.exit42.i650, label %.critedge.i620

bb.adc:                                           ; preds = %bb.aas, %bb.aar, %_ZN5arrow6StatusD2Ev.exit.i.i614
  %i.czq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i615

.body.i615:                                       ; preds = %bb.adc, %bb.adb
  %.pn.i616 = phi { ptr, i32 } [ %.pn51.pn.i.i632, %bb.adb ], [ %i.czq, %bb.adc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28, !noalias !1062
  br label %bb.aes

_ZN5arrow6StatusD2Ev.exit42.sink.split.i649:      ; preds = %_ZN5arrow6StatusD2Ev.exit.thread89.i648, %bb.aap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i741, %bb.aal, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.i736, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit.i.thread.i735
  call void @llvm.lifetime.end.p0(ptr nonnull %123), !noalias !1062
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28, !noalias !1062
  br label %_ZN5arrow6StatusD2Ev.exit42.i650

_ZN5arrow6StatusD2Ev.exit42.i650:                 ; preds = %_ZN5arrow6StatusD2Ev.exit42.sink.split.i649, %_ZN5arrow6StatusD2Ev.exit.i704
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #28, !noalias !1062
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.czr = load ptr, ptr %i.cqa, align 8, !tbaa !115, !noalias !1105
  %i.czs = getelementptr inbounds nuw i8, ptr %i.czr, i64 40
  %i.czt = load ptr, ptr %i.czs, align 8, !tbaa !45, !noalias !1105 ; 2 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czt, i64 32
  %i.czv = getelementptr inbounds nuw i8, ptr %126, i64 8 ; 6 uses
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czt, i64 40
  %i.czx = load ptr, ptr %i.czw, align 8, !tbaa !118, !noalias !1105 ; 2 uses
  %i.czy = load <2 x ptr>, ptr %i.czu, align 8, !tbaa !119, !noalias !1105
  store <2 x ptr> %i.czy, ptr %126, align 16, !tbaa !119, !alias.scope !1102, !noalias !1062
  %.not.i.i.i.i.i651 = icmp eq ptr %i.czx, null
  br i1 %.not.i.i.i.i.i651, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i653, label %bb.add

bb.add:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit42.i650
  %i.czz = getelementptr inbounds nuw i8, ptr %i.czx, i64 8 ; 3 uses
  %i.daa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1105
  %.not.i.i.i.i.i43.i652 = icmp eq i8 %i.daa, 0
  br i1 %.not.i.i.i.i.i43.i652, label %bb.adf, label %bb.ade

bb.ade:                                           ; preds = %bb.add
  %i.dab = load i32, ptr %i.czz, align 4, !tbaa !3, !noalias !1105
  %i.dac = add nsw i32 %i.dab, 1
  store i32 %i.dac, ptr %i.czz, align 4, !tbaa !3, !noalias !1105
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i653

bb.adf:                                           ; preds = %bb.add
  %i.dad = atomicrmw volatile add ptr %i.czz, i32 1 acq_rel, align 4, !noalias !1105 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i653

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i653: ; preds = %bb.adf, %bb.ade, %_ZN5arrow6StatusD2Ev.exit42.i650
  %i.dae = load ptr, ptr %124, align 16, !tbaa !33, !noalias !1062
  %.not.i654 = icmp eq ptr %i.dae, null
  br i1 %.not.i654, label %bb.adj, label %bb.adg

bb.adg:                                           ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i653
  %i.daf = load ptr, ptr %i.cqa, align 8, !tbaa !115, !noalias !1062
  %i.dag = getelementptr inbounds nuw i8, ptr %i.daf, i64 16
  %i.dah = load i64, ptr %i.dag, align 8, !tbaa !138, !noalias !1062 ; 2 uses
  %i.dai = icmp sgt i64 %i.dah, 0
  br i1 %i.dai, label %bb.adh, label %bb.adj

bb.adh:                                           ; preds = %bb.adg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #28, !noalias !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #28, !noalias !1062
  %i.daj = shl i64 %i.dah, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %127, ptr noundef nonnull align 8 dereferenceable(16) %124, i64 noundef %i.daj, i64 noundef 8, ptr noundef nonnull %i.ba)
          to label %_ZN5arrow6StatusD2Ev.exit45.i690 unwind label %bb.adi, !noalias !1062

_ZN5arrow6StatusD2Ev.exit45.i690:                 ; preds = %bb.adh
  %i.dak = load ptr, ptr %127, align 8, !tbaa !39, !noalias !1062 ; 2 uses
  store ptr %i.dak, ptr %0, align 8, !tbaa !39, !alias.scope !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #28, !noalias !1062
  %i.dal = icmp eq ptr %i.dak, null
  br i1 %i.dal, label %_ZN5arrow6StatusD2Ev.exit51.i690, label %.critedge38.i689

bb.adi:                                           ; preds = %bb.adh
  %i.dam = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #28, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #28, !noalias !1062
  br label %bb.ael

_ZN5arrow6StatusD2Ev.exit51.i690:                 ; preds = %_ZN5arrow6StatusD2Ev.exit45.i690
  %187 = load i64, ptr %i.ba, align 8, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #28, !noalias !1062
  br label %bb.adj

bb.adj:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit51.i690, %bb.adg, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i653
  %.123.i655 = phi i64 [ %187, %_ZN5arrow6StatusD2Ev.exit51.i690 ], [ 0, %bb.adg ], [ 0, %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE10value_dataEv.exit.i653 ] ; 2 uses
  %i.dan = load ptr, ptr %126, align 16, !tbaa !33, !noalias !1062 ; 3 uses
  %i.dao = icmp eq ptr %i.dan, null
  br i1 %i.dao, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658, label %bb.adk

bb.adk:                                           ; preds = %bb.adj
  %i.dap = load ptr, ptr %i.cqa, align 8, !tbaa !115, !noalias !1062
  %i.daq = getelementptr inbounds nuw i8, ptr %i.dap, i64 32
  %i.dar = load i64, ptr %i.daq, align 8, !tbaa !647, !noalias !1062
  %.not.i50.i656 = icmp ne i64 %i.dar, 0
  %i.das = getelementptr inbounds nuw i8, ptr %i.dan, i64 24
  %i.dat = load i64, ptr %i.das, align 8, !tbaa !46, !noalias !1062 ; 2 uses
  %i.dau = icmp slt i64 %.123.i655, %i.dat
  %or.cond.i657 = select i1 %.not.i50.i656, i1 true, i1 %i.dau
  br i1 %or.cond.i657, label %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i675, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658

_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i675: ; preds = %bb.adk
  %i.dav = getelementptr inbounds nuw i8, ptr %.tr1792, i64 32
  %i.daw = load ptr, ptr %i.dav, align 8, !tbaa !1024, !noalias !1062
  %i.dax = load i64, ptr %i.daw, align 8, !tbaa !288, !noalias !1062 ; 2 uses
  %i.day = add i64 %.123.i655, 63                 ; 2 uses
  %i.daz = srem i64 %i.day, 64
  %i.dba = sub nsw i64 %i.day, %i.daz
  %i.dbb = sub nsw i64 %i.dat, %i.dax
  %.sroa.speculated.i676 = call i64 @llvm.smin.i64(i64 %i.dbb, i64 %i.dba)
  store ptr %i.dan, ptr %128, align 8, !tbaa !33, !noalias !1062
  %i.dbc = getelementptr inbounds nuw i8, ptr %128, i64 8 ; 2 uses
  %i.dbd = load ptr, ptr %i.czv, align 8, !tbaa !118, !noalias !1062
  store ptr null, ptr %i.czv, align 8, !tbaa !118, !noalias !1062
  store ptr %i.dbd, ptr %i.dbc, align 8, !tbaa !118, !noalias !1062
  store ptr null, ptr %126, align 16, !tbaa !33, !noalias !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1062
  store i64 %i.dax, ptr %i.ax, align 8, !tbaa !288, !noalias !1106
  store i64 %.sroa.speculated.i676, ptr %i.ay, align 8, !tbaa !288, !noalias !1106
  %i.dbe = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc51.i679 unwind label %bb.ady, !noalias !1062 ; 4 uses

.noexc51.i679:                                    ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i675
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.dbe, ptr noundef nonnull align 8 dereferenceable(16) %128, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %bb.adl unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i680, !noalias !1109

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i680: ; preds = %.noexc51.i679
  %i.dbf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dbe, i64 noundef 96) #30, !noalias !1109
  br label %.body52.i677

bb.adl:                                           ; preds = %.noexc51.i679
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbe, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1062
  store ptr %i.dbg, ptr %126, align 16, !tbaa !351, !noalias !1062
  %i.dbh = load ptr, ptr %i.czv, align 8, !tbaa !118, !noalias !1062 ; 8 uses
  store ptr %i.dbe, ptr %i.czv, align 8, !tbaa !118, !noalias !1062
  %.not.i.i.i.i54.i681 = icmp eq ptr %i.dbh, null
  br i1 %.not.i.i.i.i54.i681, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i685, label %bb.adm

bb.adm:                                           ; preds = %bb.adl
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbh, i64 8 ; 4 uses
  %i.dbj = load atomic i64, ptr %i.dbi acquire, align 8, !noalias !1062 ; 2 uses
  %i.dbk = icmp eq i64 %i.dbj, 4294967297
  %i.dbl = trunc i64 %i.dbj to i32                ; 2 uses
  br i1 %i.dbk, label %bb.adn, label %bb.ado

bb.adn:                                           ; preds = %bb.adm
  store i32 0, ptr %i.dbi, align 8, !tbaa !125, !noalias !1062
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.dbh, i64 12
  store i32 0, ptr %i.dbm, align 4, !tbaa !127, !noalias !1062
  %i.dbn = load ptr, ptr %i.dbh, align 8, !tbaa !55, !noalias !1062
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 16
  %i.dbp = load ptr, ptr %i.dbo, align 8, !noalias !1062
  call void %i.dbp(ptr noundef nonnull align 8 dereferenceable(16) %i.dbh) #28, !noalias !1062, !inline_history !1112
  %i.dbq = load ptr, ptr %i.dbh, align 8, !tbaa !55, !noalias !1062
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 24
  %i.dbs = load ptr, ptr %i.dbr, align 8, !noalias !1062
  call void %i.dbs(ptr noundef nonnull align 8 dereferenceable(16) %i.dbh) #28, !noalias !1062, !inline_history !1112
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i685

bb.ado:                                           ; preds = %bb.adm
  %i.dbt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1062
  %.not.i.i.i.i.i55.i682 = icmp eq i8 %i.dbt, 0
  br i1 %.not.i.i.i.i.i55.i682, label %bb.adq, label %bb.adp

bb.adp:                                           ; preds = %bb.ado
  %i.dbu = add nsw i32 %i.dbl, -1
  store i32 %i.dbu, ptr %i.dbi, align 4, !tbaa !3, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i683

bb.adq:                                           ; preds = %bb.ado
  %i.dbv = atomicrmw volatile add ptr %i.dbi, i32 -1 acq_rel, align 4, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i683

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i683: ; preds = %bb.adq, %bb.adp
  %.0.i.i.i.i.i.i.i684 = phi i32 [ %i.dbl, %bb.adp ], [ %i.dbv, %bb.adq ]
  %i.dbw = icmp eq i32 %.0.i.i.i.i.i.i.i684, 1
  br i1 %i.dbw, label %bb.adr, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i685, !prof !129

bb.adr:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i683
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dbh) #28, !noalias !1062
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i685

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i685: ; preds = %bb.adr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i683, %bb.adn, %bb.adl
  %i.dbx = load ptr, ptr %i.dbc, align 8, !tbaa !118, !noalias !1062 ; 8 uses
  %.not.i.i56.i686 = icmp eq ptr %i.dbx, null
  br i1 %.not.i.i56.i686, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658, label %bb.ads

bb.ads:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i685
  %i.dby = getelementptr inbounds nuw i8, ptr %i.dbx, i64 8 ; 4 uses
  %i.dbz = load atomic i64, ptr %i.dby acquire, align 8, !noalias !1062 ; 2 uses
  %i.dca = icmp eq i64 %i.dbz, 4294967297
  %i.dcb = trunc i64 %i.dbz to i32                ; 2 uses
  br i1 %i.dca, label %bb.adt, label %bb.adu

bb.adt:                                           ; preds = %bb.ads
  store i32 0, ptr %i.dby, align 8, !tbaa !125, !noalias !1062
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.dbx, i64 12
  store i32 0, ptr %i.dcc, align 4, !tbaa !127, !noalias !1062
  %i.dcd = load ptr, ptr %i.dbx, align 8, !tbaa !55, !noalias !1062
  %i.dce = getelementptr inbounds nuw i8, ptr %i.dcd, i64 16
  %i.dcf = load ptr, ptr %i.dce, align 8, !noalias !1062
  call void %i.dcf(ptr noundef nonnull align 8 dereferenceable(16) %i.dbx) #28, !noalias !1062, !inline_history !1113
  %i.dcg = load ptr, ptr %i.dbx, align 8, !tbaa !55, !noalias !1062
  %i.dch = getelementptr inbounds nuw i8, ptr %i.dcg, i64 24
  %i.dci = load ptr, ptr %i.dch, align 8, !noalias !1062
  call void %i.dci(ptr noundef nonnull align 8 dereferenceable(16) %i.dbx) #28, !noalias !1062, !inline_history !1113
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658

bb.adu:                                           ; preds = %bb.ads
  %i.dcj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1062
  %.not.i.i.i57.i687 = icmp eq i8 %i.dcj, 0
  br i1 %.not.i.i.i57.i687, label %bb.adw, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dck = add nsw i32 %i.dcb, -1
  store i32 %i.dck, ptr %i.dby, align 4, !tbaa !3, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i688

bb.adw:                                           ; preds = %bb.adu
  %i.dcl = atomicrmw volatile add ptr %i.dby, i32 -1 acq_rel, align 4, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i688

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i688: ; preds = %bb.adw, %bb.adv
  %.0.i.i.i.i59.i689 = phi i32 [ %i.dcb, %bb.adv ], [ %i.dcl, %bb.adw ]
  %i.dcm = icmp eq i32 %.0.i.i.i.i59.i689, 1
  br i1 %i.dcm, label %bb.adx, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658, !prof !129

bb.adx:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i688
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dbx) #28, !noalias !1062
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658

bb.ady:                                           ; preds = %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i675
  %i.dcn = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i677

.body52.i677:                                     ; preds = %bb.ady, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i680
  %eh.lpad-body53.i678 = phi { ptr, i32 } [ %i.dcn, %bb.ady ], [ %i.dbf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i680 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %128) #28, !noalias !1062
  br label %bb.ael

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658: ; preds = %bb.adx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i688, %bb.adt, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i685, %bb.adk, %bb.adj
  %i.dco = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dcp = load ptr, ptr %i.dco, align 8, !tbaa !70, !noalias !1062 ; 4 uses
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcp, i64 32 ; 2 uses
  %i.dcr = load ptr, ptr %i.dcq, align 8, !tbaa !42, !noalias !1062 ; 5 uses
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcp, i64 40
  %i.dct = load ptr, ptr %i.dcs, align 8, !tbaa !299, !noalias !1062 ; 2 uses
  %.not.i61.i659 = icmp eq ptr %i.dcr, %i.dct
  br i1 %.not.i61.i659, label %bb.aea, label %bb.adz

bb.adz:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.dcr, i64 8
  store ptr null, ptr %i.dcu, align 8, !tbaa !118, !noalias !1062
  %i.dcv = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.dcw = load <2 x ptr>, ptr %124, align 16, !tbaa !119, !noalias !1062
  store ptr null, ptr %i.dcv, align 8, !tbaa !118, !noalias !1062
  store <2 x ptr> %i.dcw, ptr %i.dcr, align 8, !tbaa !119, !noalias !1062
  store ptr null, ptr %124, align 16, !tbaa !33, !noalias !1062
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcr, i64 16 ; 2 uses
  store ptr %i.dcx, ptr %i.dcq, align 8, !tbaa !42, !noalias !1062
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i660

bb.aea:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60.i658
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcp, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dcy, ptr %i.dcr, ptr noundef nonnull align 8 dereferenceable(16) %124)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i669 unwind label %bb.aed, !noalias !1062

._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i669: ; preds = %bb.aea
  %.pre98.i670 = load ptr, ptr %i.dco, align 8, !tbaa !70, !noalias !1062 ; 3 uses
  %.phi.trans.insert99.i671 = getelementptr inbounds nuw i8, ptr %.pre98.i670, i64 32
  %.pre100.i672 = load ptr, ptr %.phi.trans.insert99.i671, align 8, !tbaa !42, !noalias !1062
  %.phi.trans.insert101.i673 = getelementptr inbounds nuw i8, ptr %.pre98.i670, i64 40
  %.pre102.i674 = load ptr, ptr %.phi.trans.insert101.i673, align 8, !tbaa !299, !noalias !1062
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i660

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i660: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i669, %bb.adz
  %i.dcz = phi ptr [ %.pre102.i674, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i669 ], [ %i.dct, %bb.adz ]
  %i.dda = phi ptr [ %.pre100.i672, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i669 ], [ %i.dcx, %bb.adz ] ; 5 uses
  %i.ddb = phi ptr [ %.pre98.i670, %._ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit_crit_edge.i669 ], [ %i.dcp, %bb.adz ] ; 2 uses
  %.not.i63.i661 = icmp eq ptr %i.dda, %i.dcz
  br i1 %.not.i63.i661, label %bb.aec, label %bb.aeb

bb.aeb:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i660
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.ddb, i64 32
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.dda, i64 8
  store ptr null, ptr %i.ddd, align 8, !tbaa !118, !noalias !1062
  %i.dde = load <2 x ptr>, ptr %126, align 16, !tbaa !119, !noalias !1062
  store ptr null, ptr %i.czv, align 8, !tbaa !118, !noalias !1062
  store <2 x ptr> %i.dde, ptr %i.dda, align 8, !tbaa !119, !noalias !1062
  store ptr null, ptr %126, align 16, !tbaa !33, !noalias !1062
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dda, i64 16
  store ptr %i.ddf, ptr %i.ddc, align 8, !tbaa !42, !noalias !1062
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i662

bb.aec:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i660
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.ddb, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ddg, ptr %i.dda, ptr noundef nonnull align 8 dereferenceable(16) %126)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i662 unwind label %bb.aed, !noalias !1062

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i662: ; preds = %bb.aec, %bb.aeb
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1114
  br label %bb.aee

bb.aed:                                           ; preds = %bb.aec, %bb.aea
  %i.ddh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

.critedge38.i689:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit45.i690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #28, !noalias !1062
  br label %bb.aee

bb.aee:                                           ; preds = %.critedge38.i689, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit66.i662
  %i.ddi = load ptr, ptr %i.czv, align 8, !tbaa !118, !noalias !1062 ; 8 uses
  %.not.i.i67.i663 = icmp eq ptr %i.ddi, null
  br i1 %.not.i.i67.i663, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i667, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.ddi, i64 8 ; 4 uses
  %i.ddk = load atomic i64, ptr %i.ddj acquire, align 8, !noalias !1062 ; 2 uses
  %i.ddl = icmp eq i64 %i.ddk, 4294967297
  %i.ddm = trunc i64 %i.ddk to i32                ; 2 uses
  br i1 %i.ddl, label %bb.aeg, label %bb.aeh

bb.aeg:                                           ; preds = %bb.aef
  store i32 0, ptr %i.ddj, align 8, !tbaa !125, !noalias !1062
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ddi, i64 12
  store i32 0, ptr %i.ddn, align 4, !tbaa !127, !noalias !1062
  %i.ddo = load ptr, ptr %i.ddi, align 8, !tbaa !55, !noalias !1062
  %i.ddp = getelementptr inbounds nuw i8, ptr %i.ddo, i64 16
  %i.ddq = load ptr, ptr %i.ddp, align 8, !noalias !1062
  call void %i.ddq(ptr noundef nonnull align 8 dereferenceable(16) %i.ddi) #28, !noalias !1062, !inline_history !1113
  %i.ddr = load ptr, ptr %i.ddi, align 8, !tbaa !55, !noalias !1062
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddr, i64 24
  %i.ddt = load ptr, ptr %i.dds, align 8, !noalias !1062
  call void %i.ddt(ptr noundef nonnull align 8 dereferenceable(16) %i.ddi) #28, !noalias !1062, !inline_history !1113
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i667

bb.aeh:                                           ; preds = %bb.aef
  %i.ddu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1062
  %.not.i.i.i68.i664 = icmp eq i8 %i.ddu, 0
  br i1 %.not.i.i.i68.i664, label %bb.aej, label %bb.aei

bb.aei:                                           ; preds = %bb.aeh
  %i.ddv = add nsw i32 %i.ddm, -1
  store i32 %i.ddv, ptr %i.ddj, align 4, !tbaa !3, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i665

bb.aej:                                           ; preds = %bb.aeh
  %i.ddw = atomicrmw volatile add ptr %i.ddj, i32 -1 acq_rel, align 4, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i665

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i665: ; preds = %bb.aej, %bb.aei
  %.0.i.i.i.i70.i666 = phi i32 [ %i.ddm, %bb.aei ], [ %i.ddw, %bb.aej ]
  %i.ddx = icmp eq i32 %.0.i.i.i.i70.i666, 1
  br i1 %i.ddx, label %bb.aek, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i667, !prof !129

bb.aek:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i665
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ddi) #28, !noalias !1062
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i667

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i667: ; preds = %bb.aek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i665, %bb.aeg, %bb.aee
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #28, !noalias !1062
  br label %.critedge.i620

bb.ael:                                           ; preds = %bb.aed, %.body52.i677, %bb.adi
  %.pn34.i668 = phi { ptr, i32 } [ %i.ddh, %bb.aed ], [ %eh.lpad-body53.i678, %.body52.i677 ], [ %i.dam, %bb.adi ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %126) #28, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #28, !noalias !1062
  br label %bb.aes

.critedge.i620:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i667, %_ZN5arrow6StatusD2Ev.exit.i704, %_ZN5arrow6StatusD2Ev.exit.thread91.i619
  %i.ddy = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.ddz = load ptr, ptr %i.ddy, align 8, !tbaa !118, !noalias !1062 ; 8 uses
  %.not.i.i72.i621 = icmp eq ptr %i.ddz, null
  br i1 %.not.i.i72.i621, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeBinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.aem

bb.aem:                                           ; preds = %.critedge.i620
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddz, i64 8 ; 4 uses
  %i.deb = load atomic i64, ptr %i.dea acquire, align 8, !noalias !1062 ; 2 uses
  %i.dec = icmp eq i64 %i.deb, 4294967297
  %i.ded = trunc i64 %i.deb to i32                ; 2 uses
  br i1 %i.dec, label %bb.aen, label %bb.aeo

bb.aen:                                           ; preds = %bb.aem
  store i32 0, ptr %i.dea, align 8, !tbaa !125, !noalias !1062
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ddz, i64 12
  store i32 0, ptr %i.dee, align 4, !tbaa !127, !noalias !1062
  %i.def = load ptr, ptr %i.ddz, align 8, !tbaa !55, !noalias !1062
  %i.deg = getelementptr inbounds nuw i8, ptr %i.def, i64 16
  %i.deh = load ptr, ptr %i.deg, align 8, !noalias !1062
  call void %i.deh(ptr noundef nonnull align 8 dereferenceable(16) %i.ddz) #28, !noalias !1062, !inline_history !1113
  %i.dei = load ptr, ptr %i.ddz, align 8, !tbaa !55, !noalias !1062
  %i.dej = getelementptr inbounds nuw i8, ptr %i.dei, i64 24
  %i.dek = load ptr, ptr %i.dej, align 8, !noalias !1062
  call void %i.dek(ptr noundef nonnull align 8 dereferenceable(16) %i.ddz) #28, !noalias !1062, !inline_history !1113
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeBinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aeo:                                           ; preds = %bb.aem
  %i.del = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1062
  %.not.i.i.i73.i622 = icmp eq i8 %i.del, 0
  br i1 %.not.i.i.i73.i622, label %bb.aeq, label %bb.aep

bb.aep:                                           ; preds = %bb.aeo
  %i.dem = add nsw i32 %i.ded, -1
  store i32 %i.dem, ptr %i.dea, align 4, !tbaa !3, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i623

bb.aeq:                                           ; preds = %bb.aeo
  %i.den = atomicrmw volatile add ptr %i.dea, i32 -1 acq_rel, align 4, !noalias !1062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i623

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i623: ; preds = %bb.aeq, %bb.aep
  %.0.i.i.i.i75.i624 = phi i32 [ %i.ded, %bb.aep ], [ %i.den, %bb.aeq ]
  %i.deo = icmp eq i32 %.0.i.i.i.i75.i624, 1
  br i1 %i.deo, label %bb.aer, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeBinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, !prof !129

bb.aer:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i623
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ddz) #28, !noalias !1062
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeBinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aes:                                           ; preds = %bb.ael, %.body.i615
  %.pn34.pn.i617 = phi { ptr, i32 } [ %.pn34.i668, %bb.ael ], [ %.pn.i616, %.body.i615 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %124) #28, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #28, !noalias !1062
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_16LargeBinaryArrayEEENSt9enable_ifIXsr19is_base_binary_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %.critedge.i620, %bb.aen, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i623, %bb.aer
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #28, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %128)
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aet:                                           ; preds = %tailrecurse
  %i.dep = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  call void @llvm.lifetime.start.p0(ptr nonnull %117)
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #28, !noalias !1117
  %i.deq = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.der = load ptr, ptr %i.deq, align 8, !tbaa !45, !noalias !1117 ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.der, i64 16
  %i.det = getelementptr inbounds nuw i8, ptr %116, i64 8 ; 6 uses
  %i.deu = getelementptr inbounds nuw i8, ptr %i.der, i64 24
  %i.dev = load ptr, ptr %i.deu, align 8, !tbaa !118, !noalias !1117 ; 2 uses
  %i.dew = load <2 x ptr>, ptr %i.des, align 8, !tbaa !119, !noalias !1117
  store <2 x ptr> %i.dew, ptr %116, align 16, !tbaa !119, !noalias !1117
  %.not.i.i.i.i743 = icmp eq ptr %i.dev, null
  br i1 %.not.i.i.i.i743, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i745, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.dex = getelementptr inbounds nuw i8, ptr %i.dev, i64 8 ; 3 uses
  %i.dey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1117
  %.not.i.i.i.i.i744 = icmp eq i8 %i.dey, 0
  br i1 %.not.i.i.i.i.i744, label %bb.aew, label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  %i.dez = load i32, ptr %i.dex, align 4, !tbaa !3, !noalias !1117
  %i.dfa = add nsw i32 %i.dez, 1
  store i32 %i.dfa, ptr %i.dex, align 4, !tbaa !3, !noalias !1117
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i745

bb.aew:                                           ; preds = %bb.aeu
  %i.dfb = atomicrmw volatile add ptr %i.dex, i32 1 acq_rel, align 4, !noalias !1117 ; 0 uses
  %.pre.i771 = load ptr, ptr %i.dep, align 8, !tbaa !115, !noalias !1117
  %.pre2105 = load ptr, ptr %.pre.i771, align 8, !tbaa !341, !noalias !1117
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i745

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i745: ; preds = %bb.aew, %bb.aev, %bb.aet
  %i.dfc = phi ptr [ %i.cl, %bb.aet ], [ %i.cl, %bb.aev ], [ %.pre2105, %bb.aew ] ; 2 uses
  %i.dfd = load ptr, ptr %i.dfc, align 8, !tbaa !55, !noalias !1117
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dfd, i64 64
  %i.dff = load ptr, ptr %i.dfe, align 8, !noalias !1117
  %i.dfg = invoke noundef i32 %i.dff(ptr noundef nonnull align 8 dereferenceable(72) %i.dfc)
          to label %bb.aex unwind label %bb.afm, !noalias !1117

bb.aex:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i745
  %i.dfh = sext i32 %i.dfg to i64                 ; 2 uses
  %i.dfi = load ptr, ptr %i.dep, align 8, !tbaa !115, !noalias !1117 ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfi, i64 16
  %i.dfk = load i64, ptr %i.dfj, align 8, !tbaa !138, !noalias !1117
  %i.dfl = mul nsw i64 %i.dfk, %i.dfh             ; 2 uses
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dfi, i64 32
  %i.dfn = load i64, ptr %i.dfm, align 8, !tbaa !647, !noalias !1117 ; 2 uses
  %i.dfo = load ptr, ptr %116, align 16, !tbaa !33, !noalias !1117 ; 3 uses
  %i.dfp = icmp eq ptr %i.dfo, null
  br i1 %i.dfp, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28.i749, label %bb.aey

bb.aey:                                           ; preds = %bb.aex
  %i.dfq = add i64 %i.dfl, 63                     ; 2 uses
  %i.dfr = srem i64 %i.dfq, 64
  %i.dfs = sub nsw i64 %i.dfq, %i.dfr
  %.not.i.i747 = icmp ne i64 %i.dfn, 0
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfo, i64 24
  %i.dfu = load i64, ptr %i.dft, align 8, !tbaa !46, !noalias !1117 ; 2 uses
  %i.dfv = icmp slt i64 %i.dfs, %i.dfu
  %or.cond.i748 = select i1 %.not.i.i747, i1 true, i1 %i.dfv
  br i1 %or.cond.i748, label %_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i756, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28.i749

_ZN5arrow3ipc12_GLOBAL__N_112NeedTruncateElPKNS_6BufferEl.exit.thread.i756: ; preds = %bb.aey
  %i.dfw = add i64 %i.dfl, 7
  %i.dfx = and i64 %i.dfw, -8
  %i.dfy = mul nsw i64 %i.dfn, %i.dfh             ; 2 uses
  %i.dfz = sub nsw i64 %i.dfu, %i.dfy
  %.sroa.speculated.i757 = tail call i64 @llvm.smin.i64(i64 %i.dfz, i64 %i.dfx)
  store ptr %i.dfo, ptr %117, align 8, !tbaa !33, !noalias !1117
  %i.dga = getelementptr inbounds nuw i8, ptr %117, i64 8 ; 2 uses
  %i.dgb = load ptr, ptr %i.det, align 8, !tbaa !118, !noalias !1117
  store ptr null, ptr %i.det, align 8, !tbaa !118, !noalias !1117
  store ptr %i.dgb, ptr %i.dga, align 8, !tbaa !118, !noalias !1117
  store ptr null, ptr %116, align 16, !tbaa !33, !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1117
  store i64 %i.dfy, ptr %i.av, align 8, !tbaa !288, !noalias !1120
  store i64 %.sroa.speculated.i757, ptr %i.aw, align 8, !tbaa !288, !noalias !1120
end_hunk_4
begin_hunk_5_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.axf:                                           ; preds = %bb.axe
  %.not7.i.i.i75.i = icmp eq ptr %i.fpq, null
  br i1 %.not7.i.i.i75.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i, label %bb.axg

bb.axg:                                           ; preds = %bb.axf
  %i.fps = getelementptr inbounds nuw i8, ptr %i.fpq, i64 8 ; 3 uses
  %i.fpt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1319
  %.not.i.i.i.i76.i = icmp eq i8 %i.fpt, 0
  br i1 %.not.i.i.i.i76.i, label %bb.axi, label %bb.axh

bb.axh:                                           ; preds = %bb.axg
  %i.fpu = load i32, ptr %i.fps, align 4, !tbaa !3, !noalias !1319
  %i.fpv = add nsw i32 %i.fpu, 1
  store i32 %i.fpv, ptr %i.fps, align 4, !tbaa !3, !noalias !1319
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i

bb.axi:                                           ; preds = %bb.axg
  %i.fpw = atomicrmw volatile add ptr %i.fps, i32 1 acq_rel, align 4, !noalias !1319 ; 0 uses
  %.pr.pre.i.i.i83.i = load ptr, ptr %i.fpo, align 8, !tbaa !118, !noalias !1319
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i: ; preds = %bb.axi, %bb.axh, %bb.axf
  %i.fpx = phi ptr [ %i.fpr, %bb.axf ], [ %i.fpr, %bb.axh ], [ %.pr.pre.i.i.i83.i, %bb.axi ] ; 8 uses
  %.not8.i.i.i78.i = icmp eq ptr %i.fpx, null
  br i1 %.not8.i.i.i78.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i, label %bb.axj

bb.axj:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i
  %i.fpy = getelementptr inbounds nuw i8, ptr %i.fpx, i64 8 ; 4 uses
  %i.fpz = load atomic i64, ptr %i.fpy acquire, align 8, !noalias !1319 ; 2 uses
  %i.fqa = icmp eq i64 %i.fpz, 4294967297
  %i.fqb = trunc i64 %i.fpz to i32                ; 2 uses
  br i1 %i.fqa, label %bb.axk, label %bb.axl

bb.axk:                                           ; preds = %bb.axj
  store i32 0, ptr %i.fpy, align 8, !tbaa !125, !noalias !1319
  %i.fqc = getelementptr inbounds nuw i8, ptr %i.fpx, i64 12
  store i32 0, ptr %i.fqc, align 4, !tbaa !127, !noalias !1319
  %i.fqd = load ptr, ptr %i.fpx, align 8, !tbaa !55, !noalias !1319
  %i.fqe = getelementptr inbounds nuw i8, ptr %i.fqd, i64 16
  %i.fqf = load ptr, ptr %i.fqe, align 8, !noalias !1319
  call void %i.fqf(ptr noundef nonnull align 8 dereferenceable(16) %i.fpx) #28, !noalias !1319, !inline_history !1320
  %i.fqg = load ptr, ptr %i.fpx, align 8, !tbaa !55, !noalias !1319
  %i.fqh = getelementptr inbounds nuw i8, ptr %i.fqg, i64 24
  %i.fqi = load ptr, ptr %i.fqh, align 8, !noalias !1319
  call void %i.fqi(ptr noundef nonnull align 8 dereferenceable(16) %i.fpx) #28, !noalias !1319, !inline_history !1320
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i

bb.axl:                                           ; preds = %bb.axj
  %i.fqj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1319
  %.not.i9.i.i.i79.i = icmp eq i8 %i.fqj, 0
  br i1 %.not.i9.i.i.i79.i, label %bb.axn, label %bb.axm

bb.axm:                                           ; preds = %bb.axl
  %i.fqk = add nsw i32 %i.fqb, -1
  store i32 %i.fqk, ptr %i.fpy, align 4, !tbaa !3, !noalias !1319
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i

bb.axn:                                           ; preds = %bb.axl
  %i.fql = atomicrmw volatile add ptr %i.fpy, i32 -1 acq_rel, align 4, !noalias !1319
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i: ; preds = %bb.axn, %bb.axm
  %.0.i.i.i.i.i81.i = phi i32 [ %i.fqb, %bb.axm ], [ %i.fql, %bb.axn ]
  %i.fqm = icmp eq i32 %.0.i.i.i.i.i81.i, 1
  br i1 %i.fqm, label %bb.axo, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i, !prof !129

bb.axo:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fpx) #28, !noalias !1319
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i: ; preds = %bb.axo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i, %bb.axk, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i
  store ptr %i.fpq, ptr %i.fpo, align 8, !tbaa !118, !noalias !1319
  br label %_ZN5arrow6StatusD2Ev.exit1231.thread1772

_ZN5arrow6StatusD2Ev.exit1231.thread1772:         ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1242, %bb.awy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i1245, %bb.axc, %bb.axe, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28, !noalias !1319
  br label %_ZN5arrow6StatusD2Ev.exit1227.sink.split

bb.axp:                                           ; preds = %.body.i1238, %bb.awk
  %.pn47.pn.i1240 = phi { ptr, i32 } [ %.pn47.i1247, %bb.awk ], [ %eh.lpad-body.i1239, %.body.i1238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28, !noalias !1319
  br label %.body

_ZN5arrow6StatusD2Ev.exit1231:                    ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, %bb.avv
  %.pr.pr = load ptr, ptr %84, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28, !noalias !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  store ptr %.pr.pr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28, !noalias !1313
  %i.fqn = icmp eq ptr %.pr.pr, null
  br i1 %i.fqn, label %_ZN5arrow6StatusD2Ev.exit1227, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.axq:                                           ; preds = %bb.avw, %bb.avv, %_ZN5arrow6StatusD2Ev.exit.i1232
  %i.fqo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.axq, %bb.axp
  %.pn.i1149 = phi { ptr, i32 } [ %.pn47.pn.i1240, %bb.axp ], [ %i.fqo, %bb.axq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28, !noalias !1313
  br label %bb.ayh

_ZN5arrow6StatusD2Ev.exit1227.sink.split:         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.avm, %_ZN5arrow6StatusD2Ev.exit1231.thread1772
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  store ptr null, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28, !noalias !1313
  br label %_ZN5arrow6StatusD2Ev.exit1227

_ZN5arrow6StatusD2Ev.exit1227:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1227.sink.split, %_ZN5arrow6StatusD2Ev.exit1231
  %i.fqp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fqq = load ptr, ptr %i.fqp, align 8, !tbaa !70, !noalias !1313
  %i.fqr = getelementptr inbounds nuw i8, ptr %i.fqq, i64 24
  %i.fqs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fqr, ptr noundef nonnull align 8 dereferenceable(16) %83)
          to label %bb.axr unwind label %bb.axw, !inline_history !1347 ; 0 uses

bb.axr:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1227
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28, !noalias !1313
  %i.fqt = getelementptr inbounds nuw i8, ptr %.tr1792, i64 40
  %i.fqu = getelementptr inbounds nuw i8, ptr %.tr1792, i64 48
  %i.fqv = load ptr, ptr %i.fqu, align 8, !tbaa !118 ; 2 uses
  %i.fqw = load <2 x ptr>, ptr %i.fqt, align 8, !tbaa !119
  store <2 x ptr> %i.fqw, ptr %85, align 16, !tbaa !119
  %.not.i.i.i1224 = icmp eq ptr %i.fqv, null
  br i1 %.not.i.i.i1224, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit, label %bb.axs

bb.axs:                                           ; preds = %bb.axr
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.fqv, i64 8 ; 3 uses
  %i.fqy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i1225 = icmp eq i8 %i.fqy, 0
  br i1 %.not.i.i.i.i1225, label %bb.axu, label %bb.axt

bb.axt:                                           ; preds = %bb.axs
  %i.fqz = load i32, ptr %i.fqx, align 4, !tbaa !3
  %i.fra = add nsw i32 %i.fqz, 1
  store i32 %i.fra, ptr %i.fqx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit

bb.axu:                                           ; preds = %bb.axs
  %i.frb = atomicrmw volatile add ptr %i.fqx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit:   ; preds = %bb.axr, %bb.axt, %bb.axu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #28, !noalias !1313
  store i32 0, ptr %i.t, align 4, !tbaa !3, !noalias !1313
  %i.frc = load ptr, ptr %83, align 16, !tbaa !33
  %.not1791 = icmp eq ptr %i.frc, null
  br i1 %.not1791, label %bb.axz, label %bb.axv

bb.axv:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28, !noalias !1313
  %i.frd = load ptr, ptr %i.fib, align 8, !tbaa !115 ; 2 uses
  %i.fre = getelementptr inbounds nuw i8, ptr %i.frd, i64 40
  %i.frf = load ptr, ptr %i.fre, align 8, !tbaa !45
  %i.frg = getelementptr inbounds nuw i8, ptr %i.frf, i64 16
  %i.frh = getelementptr inbounds nuw i8, ptr %i.frd, i64 32
  %i.fri = load i64, ptr %i.frh, align 8, !tbaa !647
  %i.frj = shl i64 %i.fri, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %86, ptr noundef nonnull align 8 dereferenceable(16) %i.frg, i64 noundef %i.frj, i64 noundef 4, ptr noundef nonnull %i.t)
          to label %_ZN5arrow6StatusD2Ev.exit1223 unwind label %bb.axx, !inline_history !1347

_ZN5arrow6StatusD2Ev.exit1223:                    ; preds = %bb.axv
  %i.frk = load ptr, ptr %86, align 8, !tbaa !39  ; 2 uses
  store ptr %i.frk, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28, !noalias !1313
  %i.frl = icmp eq ptr %i.frk, null
  br i1 %i.frl, label %_ZN5arrow6StatusD2Ev.exit1219, label %.critedge52.i

bb.axw:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1227
  %i.frm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ayh

bb.axx:                                           ; preds = %bb.axv
  %i.frn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28, !noalias !1313
  br label %bb.ayg

_ZN5arrow6StatusD2Ev.exit1219:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #28, !noalias !1313
  store i32 0, ptr %i.u, align 4, !tbaa !3, !noalias !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28, !noalias !1313
  %i.fro = load ptr, ptr %i.fib, align 8, !tbaa !115 ; 3 uses
  %i.frp = getelementptr inbounds nuw i8, ptr %i.fro, i64 40
  %i.frq = load ptr, ptr %i.frp, align 8, !tbaa !45
  %i.frr = getelementptr inbounds nuw i8, ptr %i.frq, i64 16
  %i.frs = getelementptr inbounds nuw i8, ptr %i.fro, i64 32
  %i.frt = load i64, ptr %i.frs, align 8, !tbaa !647
  %i.fru = getelementptr inbounds nuw i8, ptr %i.fro, i64 16
  %i.frv = load i64, ptr %i.fru, align 8, !tbaa !138
  %i.frw = add nsw i64 %i.frv, %i.frt
  %i.frx = shl i64 %i.frw, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %87, ptr noundef nonnull align 8 dereferenceable(16) %i.frr, i64 noundef %i.frx, i64 noundef 4, ptr noundef nonnull %i.u)
          to label %_ZN5arrow6StatusD2Ev.exit1217 unwind label %bb.axy, !inline_history !1347

_ZN5arrow6StatusD2Ev.exit1217:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1219
  %i.fry = load ptr, ptr %87, align 8, !tbaa !39  ; 2 uses
  store ptr %i.fry, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28, !noalias !1313
  %i.frz = icmp eq ptr %i.fry, null
  br i1 %i.frz, label %.critedge54.i.thread, label %.critedge55.i

bb.axy:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1219
  %i.fsa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28, !noalias !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28, !noalias !1313
  br label %bb.ayg

.critedge54.i.thread:                             ; preds = %_ZN5arrow6StatusD2Ev.exit1217
  %i.fsb = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !1313
  %i.fsc = load i32, ptr %i.t, align 4, !tbaa !3, !noalias !1313 ; 2 uses
  %i.fsd = sub nsw i32 %i.fsb, %i.fsc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28, !noalias !1313
  %i.fse = sext i32 %i.fsd to i64
  %i.fsf = sext i32 %i.fsc to i64
  br label %bb.axz

bb.axz:                                           ; preds = %.critedge54.i.thread, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit
  %i.fsg = phi i64 [ %i.fsf, %.critedge54.i.thread ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit ]
  %.1.i = phi i64 [ %i.fse, %.critedge54.i.thread ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit ] ; 2 uses
  %i.fsh = load ptr, ptr %i.fib, align 8, !tbaa !115
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.fsh, i64 32
  %i.fsj = load i64, ptr %i.fsi, align 8, !tbaa !647
  %.not.i1151 = icmp eq i64 %i.fsj, 0
  %.pre2090 = load ptr, ptr %85, align 16, !tbaa !112 ; 3 uses
  br i1 %.not.i1151, label %bb.aya, label %bb.ayb

bb.aya:                                           ; preds = %bb.axz
  %i.fsk = getelementptr inbounds nuw i8, ptr %.pre2090, i64 8
  %i.fsl = load ptr, ptr %i.fsk, align 8, !tbaa !115
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.fsl, i64 16
  %i.fsn = load i64, ptr %i.fsm, align 8, !tbaa !138
  %i.fso = icmp sgt i64 %i.fsn, %.1.i
  br i1 %i.fso, label %bb.ayb, label %bb.aye

bb.ayb:                                           ; preds = %bb.aya, %bb.axz
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28, !noalias !1313
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %88, ptr noundef nonnull align 8 dereferenceable(32) %.pre2090, i64 noundef %i.fsg, i64 noundef %.1.i)
          to label %bb.ayc unwind label %bb.ayd, !inline_history !1347

bb.ayc:                                           ; preds = %bb.ayb
  %i.fsp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %85, ptr noundef nonnull align 8 dereferenceable(16) %88) #28, !inline_history !1347 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %88) #28, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28, !noalias !1313
  %.pre2091 = load ptr, ptr %85, align 16, !tbaa !112
  br label %bb.aye

bb.ayd:                                           ; preds = %bb.ayb
  %i.fsq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28, !noalias !1313
  br label %bb.ayg

bb.aye:                                           ; preds = %bb.ayc, %bb.aya
  %i.fsr = phi ptr [ %.pre2091, %bb.ayc ], [ %.pre2090, %bb.aya ]
  %i.fss = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.fst = load i64, ptr %i.fss, align 8, !tbaa !99, !noalias !1313
  %i.fsu = add nsw i64 %i.fst, -1
  store i64 %i.fsu, ptr %i.fss, align 8, !tbaa !99, !noalias !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28, !noalias !1313
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %89, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.fsr)
          to label %_ZN5arrow6StatusD2Ev.exit1211 unwind label %bb.ayf, !inline_history !1347

_ZN5arrow6StatusD2Ev.exit1211:                    ; preds = %bb.aye
  %i.fsv = load ptr, ptr %89, align 8, !tbaa !39  ; 2 uses
  store ptr %i.fsv, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28, !noalias !1313
  %i.fsw = icmp eq ptr %i.fsv, null
  br i1 %i.fsw, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge52.i

bb.ayf:                                           ; preds = %bb.aye
  %i.fsx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28, !noalias !1313
  br label %bb.ayg

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit1211
  %i.fsy = load i64, ptr %i.fss, align 8, !tbaa !99, !noalias !1313
  %i.fsz = add nsw i64 %i.fsy, 1
  store i64 %i.fsz, ptr %i.fss, align 8, !tbaa !99, !noalias !1313
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1348
  br label %.critedge52.i

.critedge55.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28, !noalias !1313
  br label %.critedge52.i

.critedge52.i:                                    ; preds = %.critedge55.i, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit1211, %_ZN5arrow6StatusD2Ev.exit1223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28, !noalias !1313
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %85) #28, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28, !noalias !1313
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.ayg:                                           ; preds = %bb.ayf, %bb.ayd, %bb.axy, %bb.axx
  %.pn47.pn.i = phi { ptr, i32 } [ %i.fsx, %bb.ayf ], [ %i.fsq, %bb.ayd ], [ %i.fsa, %bb.axy ], [ %i.frn, %bb.axx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28, !noalias !1313
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %85) #28, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28, !noalias !1313
  br label %bb.ayh

bb.ayh:                                           ; preds = %bb.ayg, %bb.axw, %.body
  %.pn47.pn.pn.i = phi { ptr, i32 } [ %.pn47.pn.i, %bb.ayg ], [ %i.frm, %bb.axw ], [ %.pn.i1149, %.body ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %83) #28, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28, !noalias !1313
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit1231.thread1774, %_ZN5arrow6StatusD2Ev.exit1231, %.critedge52.i
  %i.fta = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.ftb = load ptr, ptr %i.fta, align 8, !tbaa !118 ; 8 uses
  %.not.i.i1205 = icmp eq ptr %i.ftb, null
  br i1 %.not.i.i1205, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ayi

bb.ayi:                                           ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit
  %i.ftc = getelementptr inbounds nuw i8, ptr %i.ftb, i64 8 ; 4 uses
  %i.ftd = load atomic i64, ptr %i.ftc acquire, align 8 ; 2 uses
  %i.fte = icmp eq i64 %i.ftd, 4294967297
  %i.ftf = trunc i64 %i.ftd to i32                ; 2 uses
  br i1 %i.fte, label %bb.ayj, label %bb.ayk

bb.ayj:                                           ; preds = %bb.ayi
  store i32 0, ptr %i.ftc, align 8, !tbaa !125
  %i.ftg = getelementptr inbounds nuw i8, ptr %i.ftb, i64 12
  store i32 0, ptr %i.ftg, align 4, !tbaa !127
  %i.fth = load ptr, ptr %i.ftb, align 8, !tbaa !55
  %i.fti = getelementptr inbounds nuw i8, ptr %i.fth, i64 16
  %i.ftj = load ptr, ptr %i.fti, align 8
  call void %i.ftj(ptr noundef nonnull align 8 dereferenceable(16) %i.ftb) #28, !inline_history !1351
  %i.ftk = load ptr, ptr %i.ftb, align 8, !tbaa !55
  %i.ftl = getelementptr inbounds nuw i8, ptr %i.ftk, i64 24
  %i.ftm = load ptr, ptr %i.ftl, align 8
  call void %i.ftm(ptr noundef nonnull align 8 dereferenceable(16) %i.ftb) #28, !inline_history !1351
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ayk:                                           ; preds = %bb.ayi
  %i.ftn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i1206 = icmp eq i8 %i.ftn, 0
  br i1 %.not.i.i.i1206, label %bb.aym, label %bb.ayl

bb.ayl:                                           ; preds = %bb.ayk
  %i.fto = add nsw i32 %i.ftf, -1
  store i32 %i.fto, ptr %i.ftc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aym:                                           ; preds = %bb.ayk
  %i.ftp = atomicrmw volatile add ptr %i.ftc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aym, %bb.ayl
  %.0.i.i.i.i = phi i32 [ %i.ftf, %bb.ayl ], [ %i.ftp, %bb.aym ]
  %i.ftq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ftq, label %bb.ayn, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.ayn:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ftb) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %bb.ayj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ayn
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28, !noalias !1313
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.ayo:                                           ; preds = %tailrecurse
  %i.ftr = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #28, !noalias !1352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %76, i8 0, i64 16, i1 false), !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #28, !noalias !1352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.fts = load ptr, ptr %i.ftr, align 8, !tbaa !115, !noalias !1358 ; 4 uses
  %i.ftt = getelementptr inbounds nuw i8, ptr %i.fts, i64 16
  %i.ftu = load i64, ptr %i.ftt, align 8, !tbaa !138, !noalias !1358 ; 2 uses
  %i.ftv = icmp eq i64 %i.ftu, 0
  br i1 %i.ftv, label %bb.ayp, label %_ZN5arrow6StatusD2Ev.exit.i1291

bb.ayp:                                           ; preds = %bb.ayo
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.fts, i64 40
  %i.ftx = load ptr, ptr %i.ftw, align 8, !tbaa !45, !noalias !1358 ; 2 uses
  %i.fty = getelementptr inbounds nuw i8, ptr %i.ftx, i64 16
  %i.ftz = load ptr, ptr %i.fty, align 8, !tbaa !33, !noalias !1358
  store ptr %i.ftz, ptr %76, align 16, !tbaa !33, !noalias !1358
  %i.fua = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.fub = getelementptr inbounds nuw i8, ptr %i.ftx, i64 24
  %i.fuc = load ptr, ptr %i.fub, align 8, !tbaa !118, !noalias !1358 ; 3 uses
  %.not.i.i.i.i1355 = icmp eq ptr %i.fuc, null
  br i1 %.not.i.i.i.i1355, label %_ZN5arrow6StatusD2Ev.exit1286.sink.split, label %bb.ayq

bb.ayq:                                           ; preds = %bb.ayp
  %i.fud = getelementptr inbounds nuw i8, ptr %i.fuc, i64 8 ; 3 uses
  %i.fue = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i.i.i.i.i1357 = icmp eq i8 %i.fue, 0
  br i1 %.not.i.i.i.i.i1357, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358.thread: ; preds = %bb.ayq
  %i.fuf = load i32, ptr %i.fud, align 4, !tbaa !3, !noalias !1358
  %i.fug = add nsw i32 %i.fuf, 1
  store i32 %i.fug, ptr %i.fud, align 4, !tbaa !3, !noalias !1358
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358: ; preds = %bb.ayq
  %i.fuh = atomicrmw volatile add ptr %i.fud, i32 1 acq_rel, align 4, !noalias !1358 ; 0 uses
  %.pr.pre.i.i.i.i1365 = load ptr, ptr %i.fua, align 8, !tbaa !118, !noalias !1358 ; 8 uses
  %.not8.i.i.i.i1359 = icmp eq ptr %.pr.pre.i.i.i.i1365, null
  br i1 %.not8.i.i.i.i1359, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363, label %bb.ayr

bb.ayr:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358
  %i.fui = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i1365, i64 8 ; 4 uses
  %i.fuj = load atomic i64, ptr %i.fui acquire, align 8, !noalias !1358 ; 2 uses
  %i.fuk = icmp eq i64 %i.fuj, 4294967297
  %i.ful = trunc i64 %i.fuj to i32                ; 2 uses
  br i1 %i.fuk, label %bb.ays, label %bb.ayt

bb.ays:                                           ; preds = %bb.ayr
  store i32 0, ptr %i.fui, align 8, !tbaa !125, !noalias !1358
  %i.fum = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i1365, i64 12
  store i32 0, ptr %i.fum, align 4, !tbaa !127, !noalias !1358
  %i.fun = load ptr, ptr %.pr.pre.i.i.i.i1365, align 8, !tbaa !55, !noalias !1358
  %i.fuo = getelementptr inbounds nuw i8, ptr %i.fun, i64 16
  %i.fup = load ptr, ptr %i.fuo, align 8, !noalias !1358
  tail call void %i.fup(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1365) #28, !noalias !1358, !inline_history !1359
  %i.fuq = load ptr, ptr %.pr.pre.i.i.i.i1365, align 8, !tbaa !55, !noalias !1358
  %i.fur = getelementptr inbounds nuw i8, ptr %i.fuq, i64 24
  %i.fus = load ptr, ptr %i.fur, align 8, !noalias !1358
  tail call void %i.fus(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1365) #28, !noalias !1358, !inline_history !1359
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363

bb.ayt:                                           ; preds = %bb.ayr
  %i.fut = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i9.i.i.i.i1360 = icmp eq i8 %i.fut, 0
  br i1 %.not.i9.i.i.i.i1360, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.fuu = add nsw i32 %i.ful, -1
  store i32 %i.fuu, ptr %i.fui, align 4, !tbaa !3, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361

bb.ayv:                                           ; preds = %bb.ayt
  %i.fuv = atomicrmw volatile add ptr %i.fui, i32 -1 acq_rel, align 4, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361: ; preds = %bb.ayv, %bb.ayu
  %.0.i.i.i.i.i.i1362 = phi i32 [ %i.ful, %bb.ayu ], [ %i.fuv, %bb.ayv ]
  %i.fuw = icmp eq i32 %.0.i.i.i.i.i.i1362, 1
  br i1 %i.fuw, label %bb.ayw, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363, !prof !129

bb.ayw:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i1365) #28, !noalias !1358
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358.thread, %bb.ayw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1361, %bb.ays, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1358
  store ptr %i.fuc, ptr %i.fua, align 8, !tbaa !118, !noalias !1358
  br label %_ZN5arrow6StatusD2Ev.exit1286.sink.split

_ZN5arrow6StatusD2Ev.exit.i1291:                  ; preds = %bb.ayo
  %i.fux = shl i64 %i.ftu, 3
  %i.fuy = add i64 %i.fux, 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28, !noalias !1358
  store i64 0, ptr %i.j, align 8, !tbaa !288, !noalias !1358
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28, !noalias !1358
  %i.fuz = getelementptr inbounds nuw i8, ptr %i.fts, i64 40
  %i.fva = load ptr, ptr %i.fuz, align 8, !tbaa !45, !noalias !1358
  %i.fvb = getelementptr inbounds nuw i8, ptr %i.fva, i64 16
  %i.fvc = getelementptr inbounds nuw i8, ptr %i.fts, i64 32
  %i.fvd = load i64, ptr %i.fvc, align 8, !tbaa !647, !noalias !1358
  %i.fve = shl i64 %i.fvd, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %i.fvb, i64 noundef %i.fve, i64 noundef 8, ptr noundef nonnull %i.j)
          to label %.noexc1366 unwind label %bb.bat

.noexc1366:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i1291
  %i.fvf = load ptr, ptr %19, align 8, !tbaa !39, !noalias !1358 ; 3 uses
  store ptr %i.fvf, ptr %77, align 8, !tbaa !39, !alias.scope !1355, !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !1358
  %i.fvg = icmp eq ptr %i.fvf, null
  br i1 %i.fvg, label %_ZN5arrow6StatusD2Ev.exit53.i1293, label %_ZN5arrow6StatusD2Ev.exit1290.thread1780

_ZN5arrow6StatusD2Ev.exit1290.thread1780:         ; preds = %.noexc1366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  store ptr %i.fvf, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28, !noalias !1352
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow6StatusD2Ev.exit53.i1293:                ; preds = %.noexc1366
  %i.fvh = load i64, ptr %i.j, align 8, !tbaa !288, !noalias !1358
  %i.fvi = icmp sgt i64 %i.fvh, 0
  %i.fvj = load ptr, ptr %i.ftr, align 8, !tbaa !115, !noalias !1358 ; 3 uses
  br i1 %i.fvi, label %bb.ayx, label %bb.azo

bb.ayx:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit53.i1293
  %i.fvk = getelementptr inbounds nuw i8, ptr %i.fvj, i64 40
end_hunk_5
begin_hunk_6_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.bai:                                           ; preds = %bb.bah
  %.not7.i.i.i75.i1299 = icmp eq ptr %i.gad, null
  br i1 %.not7.i.i.i75.i1299, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1301, label %bb.baj

bb.baj:                                           ; preds = %bb.bai
  %i.gaf = getelementptr inbounds nuw i8, ptr %i.gad, i64 8 ; 3 uses
  %i.gag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i.i.i.i76.i1300 = icmp eq i8 %i.gag, 0
  br i1 %.not.i.i.i.i76.i1300, label %bb.bal, label %bb.bak

bb.bak:                                           ; preds = %bb.baj
  %i.gah = load i32, ptr %i.gaf, align 4, !tbaa !3, !noalias !1358
  %i.gai = add nsw i32 %i.gah, 1
  store i32 %i.gai, ptr %i.gaf, align 4, !tbaa !3, !noalias !1358
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1301

bb.bal:                                           ; preds = %bb.baj
  %i.gaj = atomicrmw volatile add ptr %i.gaf, i32 1 acq_rel, align 4, !noalias !1358 ; 0 uses
  %.pr.pre.i.i.i83.i1308 = load ptr, ptr %i.gab, align 8, !tbaa !118, !noalias !1358
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1301

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1301: ; preds = %bb.bal, %bb.bak, %bb.bai
  %i.gak = phi ptr [ %i.gae, %bb.bai ], [ %i.gae, %bb.bak ], [ %.pr.pre.i.i.i83.i1308, %bb.bal ] ; 8 uses
  %.not8.i.i.i78.i1302 = icmp eq ptr %i.gak, null
  br i1 %.not8.i.i.i78.i1302, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1306, label %bb.bam

bb.bam:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1301
  %i.gal = getelementptr inbounds nuw i8, ptr %i.gak, i64 8 ; 4 uses
  %i.gam = load atomic i64, ptr %i.gal acquire, align 8, !noalias !1358 ; 2 uses
  %i.gan = icmp eq i64 %i.gam, 4294967297
  %i.gao = trunc i64 %i.gam to i32                ; 2 uses
  br i1 %i.gan, label %bb.ban, label %bb.bao

bb.ban:                                           ; preds = %bb.bam
  store i32 0, ptr %i.gal, align 8, !tbaa !125, !noalias !1358
  %i.gap = getelementptr inbounds nuw i8, ptr %i.gak, i64 12
  store i32 0, ptr %i.gap, align 4, !tbaa !127, !noalias !1358
  %i.gaq = load ptr, ptr %i.gak, align 8, !tbaa !55, !noalias !1358
  %i.gar = getelementptr inbounds nuw i8, ptr %i.gaq, i64 16
  %i.gas = load ptr, ptr %i.gar, align 8, !noalias !1358
  call void %i.gas(ptr noundef nonnull align 8 dereferenceable(16) %i.gak) #28, !noalias !1358, !inline_history !1359
  %i.gat = load ptr, ptr %i.gak, align 8, !tbaa !55, !noalias !1358
  %i.gau = getelementptr inbounds nuw i8, ptr %i.gat, i64 24
  %i.gav = load ptr, ptr %i.gau, align 8, !noalias !1358
  call void %i.gav(ptr noundef nonnull align 8 dereferenceable(16) %i.gak) #28, !noalias !1358, !inline_history !1359
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1306

bb.bao:                                           ; preds = %bb.bam
  %i.gaw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1358
  %.not.i9.i.i.i79.i1303 = icmp eq i8 %i.gaw, 0
  br i1 %.not.i9.i.i.i79.i1303, label %bb.baq, label %bb.bap

bb.bap:                                           ; preds = %bb.bao
  %i.gax = add nsw i32 %i.gao, -1
  store i32 %i.gax, ptr %i.gal, align 4, !tbaa !3, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1304

bb.baq:                                           ; preds = %bb.bao
  %i.gay = atomicrmw volatile add ptr %i.gal, i32 -1 acq_rel, align 4, !noalias !1358
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1304

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1304: ; preds = %bb.baq, %bb.bap
  %.0.i.i.i.i.i81.i1305 = phi i32 [ %i.gao, %bb.bap ], [ %i.gay, %bb.baq ]
  %i.gaz = icmp eq i32 %.0.i.i.i.i.i81.i1305, 1
  br i1 %i.gaz, label %bb.bar, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1306, !prof !129

bb.bar:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1304
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gak) #28, !noalias !1358
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1306

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1306: ; preds = %bb.bar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1304, %bb.ban, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1301
  store ptr %i.gad, ptr %i.gab, align 8, !tbaa !118, !noalias !1358
  br label %_ZN5arrow6StatusD2Ev.exit1290.thread1778

_ZN5arrow6StatusD2Ev.exit1290.thread1778:         ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1333, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1322, %bb.bab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i1325, %bb.baf, %bb.bah, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !1358
  br label %_ZN5arrow6StatusD2Ev.exit1286.sink.split

bb.bas:                                           ; preds = %.body.i1313, %bb.azn
  %.pn47.pn.i1315 = phi { ptr, i32 } [ %.pn47.i1330, %bb.azn ], [ %eh.lpad-body.i1314, %.body.i1313 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !1358
  br label %.body1369

_ZN5arrow6StatusD2Ev.exit1290:                    ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1333, %bb.ayy
  %.pr.pr1777 = load ptr, ptr %77, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  store ptr %.pr.pr1777, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28, !noalias !1352
  %i.gba = icmp eq ptr %.pr.pr1777, null
  br i1 %i.gba, label %_ZN5arrow6StatusD2Ev.exit1286, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bat:                                           ; preds = %bb.ayz, %bb.ayy, %_ZN5arrow6StatusD2Ev.exit.i1291
  %i.gbb = landingpad { ptr, i32 }
          cleanup
  br label %.body1369

.body1369:                                        ; preds = %bb.bat, %bb.bas
  %.pn.i1152 = phi { ptr, i32 } [ %.pn47.pn.i1315, %bb.bas ], [ %i.gbb, %bb.bat ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28, !noalias !1352
  br label %bb.bbk

_ZN5arrow6StatusD2Ev.exit1286.sink.split:         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1363, %bb.ayp, %_ZN5arrow6StatusD2Ev.exit1290.thread1778
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  store ptr null, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28, !noalias !1352
  br label %_ZN5arrow6StatusD2Ev.exit1286

_ZN5arrow6StatusD2Ev.exit1286:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1286.sink.split, %_ZN5arrow6StatusD2Ev.exit1290
  %i.gbc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gbd = load ptr, ptr %i.gbc, align 8, !tbaa !70, !noalias !1352
  %i.gbe = getelementptr inbounds nuw i8, ptr %i.gbd, i64 24
  %i.gbf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gbe, ptr noundef nonnull align 8 dereferenceable(16) %76)
          to label %bb.bau unwind label %bb.baz, !inline_history !1383 ; 0 uses

bb.bau:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1286
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28, !noalias !1352
  %i.gbg = getelementptr inbounds nuw i8, ptr %.tr1792, i64 40
  %i.gbh = getelementptr inbounds nuw i8, ptr %.tr1792, i64 48
  %i.gbi = load ptr, ptr %i.gbh, align 8, !tbaa !118 ; 2 uses
  %i.gbj = load <2 x ptr>, ptr %i.gbg, align 8, !tbaa !119
  store <2 x ptr> %i.gbj, ptr %78, align 16, !tbaa !119
  %.not.i.i.i1282 = icmp eq ptr %i.gbi, null
  br i1 %.not.i.i.i1282, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284, label %bb.bav

bb.bav:                                           ; preds = %bb.bau
  %i.gbk = getelementptr inbounds nuw i8, ptr %i.gbi, i64 8 ; 3 uses
  %i.gbl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i1283 = icmp eq i8 %i.gbl, 0
  br i1 %.not.i.i.i.i1283, label %bb.bax, label %bb.baw

bb.baw:                                           ; preds = %bb.bav
  %i.gbm = load i32, ptr %i.gbk, align 4, !tbaa !3
  %i.gbn = add nsw i32 %i.gbm, 1
  store i32 %i.gbn, ptr %i.gbk, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284

bb.bax:                                           ; preds = %bb.bav
  %i.gbo = atomicrmw volatile add ptr %i.gbk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284: ; preds = %bb.bau, %bb.baw, %bb.bax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28, !noalias !1352
  store i64 0, ptr %i.r, align 8, !tbaa !288, !noalias !1352
  %i.gbp = load ptr, ptr %76, align 16, !tbaa !33
  %.not1790 = icmp eq ptr %i.gbp, null
  br i1 %.not1790, label %bb.bbc, label %bb.bay

bb.bay:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #28, !noalias !1352
  %i.gbq = load ptr, ptr %i.ftr, align 8, !tbaa !115 ; 2 uses
  %i.gbr = getelementptr inbounds nuw i8, ptr %i.gbq, i64 40
  %i.gbs = load ptr, ptr %i.gbr, align 8, !tbaa !45
  %i.gbt = getelementptr inbounds nuw i8, ptr %i.gbs, i64 16
  %i.gbu = getelementptr inbounds nuw i8, ptr %i.gbq, i64 32
  %i.gbv = load i64, ptr %i.gbu, align 8, !tbaa !647
  %i.gbw = shl i64 %i.gbv, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %79, ptr noundef nonnull align 8 dereferenceable(16) %i.gbt, i64 noundef %i.gbw, i64 noundef 8, ptr noundef nonnull %i.r)
          to label %_ZN5arrow6StatusD2Ev.exit1281 unwind label %bb.bba, !inline_history !1383

_ZN5arrow6StatusD2Ev.exit1281:                    ; preds = %bb.bay
  %i.gbx = load ptr, ptr %79, align 8, !tbaa !39  ; 2 uses
  store ptr %i.gbx, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28, !noalias !1352
  %i.gby = icmp eq ptr %i.gbx, null
  br i1 %i.gby, label %_ZN5arrow6StatusD2Ev.exit1277, label %.critedge52.i1159

bb.baz:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1286
  %i.gbz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bbk

bb.bba:                                           ; preds = %bb.bay
  %i.gca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28, !noalias !1352
  br label %bb.bbj

_ZN5arrow6StatusD2Ev.exit1277:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #28, !noalias !1352
  store i64 0, ptr %i.s, align 8, !tbaa !288, !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #28, !noalias !1352
  %i.gcb = load ptr, ptr %i.ftr, align 8, !tbaa !115 ; 3 uses
  %i.gcc = getelementptr inbounds nuw i8, ptr %i.gcb, i64 40
  %i.gcd = load ptr, ptr %i.gcc, align 8, !tbaa !45
  %i.gce = getelementptr inbounds nuw i8, ptr %i.gcd, i64 16
  %i.gcf = getelementptr inbounds nuw i8, ptr %i.gcb, i64 32
  %i.gcg = load i64, ptr %i.gcf, align 8, !tbaa !647
  %i.gch = getelementptr inbounds nuw i8, ptr %i.gcb, i64 16
  %i.gci = load i64, ptr %i.gch, align 8, !tbaa !138
  %i.gcj = add nsw i64 %i.gci, %i.gcg
  %i.gck = shl i64 %i.gcj, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %80, ptr noundef nonnull align 8 dereferenceable(16) %i.gce, i64 noundef %i.gck, i64 noundef 8, ptr noundef nonnull %i.s)
          to label %_ZN5arrow6StatusD2Ev.exit1275 unwind label %bb.bbb, !inline_history !1383

_ZN5arrow6StatusD2Ev.exit1275:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1277
  %i.gcl = load ptr, ptr %80, align 8, !tbaa !39  ; 2 uses
  store ptr %i.gcl, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28, !noalias !1352
  %i.gcm = icmp eq ptr %i.gcl, null
  br i1 %i.gcm, label %.critedge54.i1162.thread, label %.critedge55.i1162

bb.bbb:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1277
  %i.gcn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28, !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28, !noalias !1352
  br label %bb.bbj

.critedge54.i1162.thread:                         ; preds = %_ZN5arrow6StatusD2Ev.exit1275
  %i.gco = load i64, ptr %i.s, align 8, !tbaa !288, !noalias !1352
  %i.gcp = load i64, ptr %i.r, align 8, !tbaa !288, !noalias !1352 ; 2 uses
  %i.gcq = sub nsw i64 %i.gco, %i.gcp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28, !noalias !1352
  br label %bb.bbc

bb.bbc:                                           ; preds = %.critedge54.i1162.thread, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284
  %i.gcr = phi i64 [ %i.gcp, %.critedge54.i1162.thread ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284 ]
  %.1.i1155 = phi i64 [ %i.gcq, %.critedge54.i1162.thread ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1284 ] ; 2 uses
  %i.gcs = load ptr, ptr %i.ftr, align 8, !tbaa !115
  %i.gct = getelementptr inbounds nuw i8, ptr %i.gcs, i64 32
  %i.gcu = load i64, ptr %i.gct, align 8, !tbaa !647
  %.not.i1156 = icmp eq i64 %i.gcu, 0
  %.pre2088 = load ptr, ptr %78, align 16, !tbaa !112 ; 3 uses
  br i1 %.not.i1156, label %bb.bbd, label %bb.bbe

bb.bbd:                                           ; preds = %bb.bbc
  %i.gcv = getelementptr inbounds nuw i8, ptr %.pre2088, i64 8
  %i.gcw = load ptr, ptr %i.gcv, align 8, !tbaa !115
  %i.gcx = getelementptr inbounds nuw i8, ptr %i.gcw, i64 16
  %i.gcy = load i64, ptr %i.gcx, align 8, !tbaa !138
  %i.gcz = icmp slt i64 %.1.i1155, %i.gcy
  br i1 %i.gcz, label %bb.bbe, label %bb.bbh

bb.bbe:                                           ; preds = %bb.bbd, %bb.bbc
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #28, !noalias !1352
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %81, ptr noundef nonnull align 8 dereferenceable(32) %.pre2088, i64 noundef %i.gcr, i64 noundef %.1.i1155)
          to label %bb.bbf unwind label %bb.bbg, !inline_history !1383

bb.bbf:                                           ; preds = %bb.bbe
  %i.gda = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %81) #28, !inline_history !1383 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %81) #28, !inline_history !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28, !noalias !1352
  %.pre2089 = load ptr, ptr %78, align 16, !tbaa !112
  br label %bb.bbh

bb.bbg:                                           ; preds = %bb.bbe
  %i.gdb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28, !noalias !1352
  br label %bb.bbj

bb.bbh:                                           ; preds = %bb.bbf, %bb.bbd
  %i.gdc = phi ptr [ %.pre2089, %bb.bbf ], [ %.pre2088, %bb.bbd ]
  %i.gdd = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.gde = load i64, ptr %i.gdd, align 8, !tbaa !99, !noalias !1352
  %i.gdf = add nsw i64 %i.gde, -1
  store i64 %i.gdf, ptr %i.gdd, align 8, !tbaa !99, !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28, !noalias !1352
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %82, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.gdc)
          to label %_ZN5arrow6StatusD2Ev.exit1269 unwind label %bb.bbi, !inline_history !1383

_ZN5arrow6StatusD2Ev.exit1269:                    ; preds = %bb.bbh
  %i.gdg = load ptr, ptr %82, align 8, !tbaa !39  ; 2 uses
  store ptr %i.gdg, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28, !noalias !1352
  %i.gdh = icmp eq ptr %i.gdg, null
  br i1 %i.gdh, label %_ZN5arrow6StatusD2Ev.exit1265, label %.critedge52.i1159

bb.bbi:                                           ; preds = %bb.bbh
  %i.gdi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28, !noalias !1352
  br label %bb.bbj

_ZN5arrow6StatusD2Ev.exit1265:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1269
  %i.gdj = load i64, ptr %i.gdd, align 8, !tbaa !99, !noalias !1352
  %i.gdk = add nsw i64 %i.gdj, 1
  store i64 %i.gdk, ptr %i.gdd, align 8, !tbaa !99, !noalias !1352
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1384
  br label %.critedge52.i1159

.critedge55.i1162:                                ; preds = %_ZN5arrow6StatusD2Ev.exit1275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28, !noalias !1352
  br label %.critedge52.i1159

.critedge52.i1159:                                ; preds = %.critedge55.i1162, %_ZN5arrow6StatusD2Ev.exit1265, %_ZN5arrow6StatusD2Ev.exit1269, %_ZN5arrow6StatusD2Ev.exit1281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28, !noalias !1352
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %78) #28, !inline_history !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28, !noalias !1352
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bbj:                                           ; preds = %bb.bbi, %bb.bbg, %bb.bbb, %bb.bba
  %.pn47.pn.i1157 = phi { ptr, i32 } [ %i.gdi, %bb.bbi ], [ %i.gdb, %bb.bbg ], [ %i.gcn, %bb.bbb ], [ %i.gca, %bb.bba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28, !noalias !1352
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %78) #28, !inline_history !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28, !noalias !1352
  br label %bb.bbk

bb.bbk:                                           ; preds = %bb.bbj, %bb.baz, %.body1369
  %.pn47.pn.pn.i1153 = phi { ptr, i32 } [ %.pn47.pn.i1157, %bb.bbj ], [ %i.gbz, %bb.baz ], [ %.pn.i1152, %.body1369 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %76) #28, !inline_history !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28, !noalias !1352
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit1290.thread1780, %_ZN5arrow6StatusD2Ev.exit1290, %.critedge52.i1159
  %i.gdl = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.gdm = load ptr, ptr %i.gdl, align 8, !tbaa !118 ; 8 uses
  %.not.i.i1259 = icmp eq ptr %i.gdm, null
  br i1 %.not.i.i1259, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263, label %bb.bbl

bb.bbl:                                           ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit
  %i.gdn = getelementptr inbounds nuw i8, ptr %i.gdm, i64 8 ; 4 uses
  %i.gdo = load atomic i64, ptr %i.gdn acquire, align 8 ; 2 uses
  %i.gdp = icmp eq i64 %i.gdo, 4294967297
  %i.gdq = trunc i64 %i.gdo to i32                ; 2 uses
  br i1 %i.gdp, label %bb.bbm, label %bb.bbn

bb.bbm:                                           ; preds = %bb.bbl
  store i32 0, ptr %i.gdn, align 8, !tbaa !125
  %i.gdr = getelementptr inbounds nuw i8, ptr %i.gdm, i64 12
  store i32 0, ptr %i.gdr, align 4, !tbaa !127
  %i.gds = load ptr, ptr %i.gdm, align 8, !tbaa !55
  %i.gdt = getelementptr inbounds nuw i8, ptr %i.gds, i64 16
  %i.gdu = load ptr, ptr %i.gdt, align 8
  call void %i.gdu(ptr noundef nonnull align 8 dereferenceable(16) %i.gdm) #28, !inline_history !1387
  %i.gdv = load ptr, ptr %i.gdm, align 8, !tbaa !55
  %i.gdw = getelementptr inbounds nuw i8, ptr %i.gdv, i64 24
  %i.gdx = load ptr, ptr %i.gdw, align 8
  call void %i.gdx(ptr noundef nonnull align 8 dereferenceable(16) %i.gdm) #28, !inline_history !1387
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263

bb.bbn:                                           ; preds = %bb.bbl
  %i.gdy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i1260 = icmp eq i8 %i.gdy, 0
  br i1 %.not.i.i.i1260, label %bb.bbp, label %bb.bbo

bb.bbo:                                           ; preds = %bb.bbn
  %i.gdz = add nsw i32 %i.gdq, -1
  store i32 %i.gdz, ptr %i.gdn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261

bb.bbp:                                           ; preds = %bb.bbn
  %i.gea = atomicrmw volatile add ptr %i.gdn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261: ; preds = %bb.bbp, %bb.bbo
  %.0.i.i.i.i1262 = phi i32 [ %i.gdq, %bb.bbo ], [ %i.gea, %bb.bbp ]
  %i.geb = icmp eq i32 %.0.i.i.i.i1262, 1
  br i1 %i.geb, label %bb.bbq, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263, !prof !129

bb.bbq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gdm) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1263: ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %bb.bbm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1261, %bb.bbq
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28, !noalias !1352
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bbr:                                           ; preds = %tailrecurse
  %i.gec = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28, !noalias !1388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %69, i8 0, i64 16, i1 false), !noalias !1388
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #28, !noalias !1388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !1394
  %i.ged = load ptr, ptr %i.gec, align 8, !tbaa !115, !noalias !1394 ; 3 uses
  %i.gee = getelementptr inbounds nuw i8, ptr %i.ged, i64 40
  %i.gef = load ptr, ptr %i.gee, align 8, !tbaa !45, !noalias !1394 ; 2 uses
  %i.geg = getelementptr inbounds nuw i8, ptr %i.gef, i64 16
  %i.geh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.gei = getelementptr inbounds nuw i8, ptr %i.gef, i64 24
  %i.gej = load ptr, ptr %i.gei, align 8, !tbaa !118, !noalias !1394 ; 2 uses
  %i.gek = load <2 x ptr>, ptr %i.geg, align 8, !tbaa !119, !noalias !1394
  store <2 x ptr> %i.gek, ptr %14, align 16, !tbaa !119, !noalias !1394
  %.not.i.i.i.i1392 = icmp eq ptr %i.gej, null
  br i1 %.not.i.i.i.i1392, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394, label %bb.bbs

bb.bbs:                                           ; preds = %bb.bbr
  %i.gel = getelementptr inbounds nuw i8, ptr %i.gej, i64 8 ; 3 uses
  %i.gem = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1394
  %.not.i.i.i.i.i1393 = icmp eq i8 %i.gem, 0
  br i1 %.not.i.i.i.i.i1393, label %bb.bbu, label %bb.bbt

bb.bbt:                                           ; preds = %bb.bbs
  %i.gen = load i32, ptr %i.gel, align 4, !tbaa !3, !noalias !1394
  %i.geo = add nsw i32 %i.gen, 1
  store i32 %i.geo, ptr %i.gel, align 4, !tbaa !3, !noalias !1394
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394

bb.bbu:                                           ; preds = %bb.bbs
  %i.gep = atomicrmw volatile add ptr %i.gel, i32 1 acq_rel, align 4, !noalias !1394 ; 0 uses
  %.pre.i1422 = load ptr, ptr %i.gec, align 8, !tbaa !115, !noalias !1394
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394: ; preds = %bb.bbu, %bb.bbt, %bb.bbr
  %i.geq = phi ptr [ %i.ged, %bb.bbr ], [ %i.ged, %bb.bbt ], [ %.pre.i1422, %bb.bbu ] ; 3 uses
  %i.ger = getelementptr inbounds nuw i8, ptr %i.geq, i64 16
  %i.ges = load i64, ptr %i.ger, align 8, !tbaa !138, !noalias !1394
  %i.get = shl i64 %i.ges, 2                      ; 3 uses
  %i.geu = getelementptr inbounds nuw i8, ptr %i.geq, i64 32
  %i.gev = load i64, ptr %i.geu, align 8, !tbaa !647, !noalias !1394
  %.not.i1395 = icmp eq i64 %i.gev, 0
  br i1 %.not.i1395, label %bb.bcp, label %bb.bbv

bb.bbv:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1394
  %i.gew = getelementptr inbounds nuw i8, ptr %i.geq, i64 40
  %i.gex = load ptr, ptr %i.gew, align 8, !tbaa !45, !noalias !1394
  %i.gey = getelementptr inbounds nuw i8, ptr %i.gex, i64 16
  %i.gez = load ptr, ptr %i.gey, align 8, !tbaa !33, !noalias !1394
  %i.gfa = getelementptr inbounds nuw i8, ptr %i.gez, i64 9
  %i.gfb = load i8, ptr %i.gfa, align 1, !tbaa !346, !range !187, !noalias !1394, !noundef !183
  %i.gfc = trunc nuw i8 %i.gfb to i1
  br i1 %i.gfc, label %bb.bby, label %bb.bbw

bb.bbw:                                           ; preds = %bb.bbv
  invoke void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %70, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(35) @.str.14)
          to label %_ZN5arrow6Status14NotImplementedIJRA35_KcEEES0_DpOT_.exit.i unwind label %bb.bbx, !noalias !1388

bb.bbx:                                           ; preds = %bb.bbw
  %i.gfd = landingpad { ptr, i32 }
          cleanup
  br label %.body1423

bb.bby:                                           ; preds = %bb.bbv
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28, !noalias !1394
  %i.gfe = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.gff = load ptr, ptr %i.gfe, align 8, !tbaa !182, !noalias !1394, !nonnull !183, !align !184
  %i.gfg = getelementptr inbounds nuw i8, ptr %i.gff, i64 16
  %i.gfh = load ptr, ptr %i.gfg, align 8, !tbaa !364, !noalias !1394
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %15, i64 noundef %i.get, ptr noundef %i.gfh)
          to label %bb.bbz unwind label %bb.bcb, !noalias !1394

bb.bbz:                                           ; preds = %bb.bby
  %i.gfi = load ptr, ptr %15, align 8, !tbaa !39, !noalias !1394
  %i.gfj = icmp eq ptr %i.gfi, null               ; 2 uses
  br i1 %i.gfj, label %bb.bcd, label %bb.bca, !prof !256

bb.bca:                                           ; preds = %bb.bbz
  store ptr null, ptr %70, align 8, !tbaa !39, !alias.scope !1391, !noalias !1388
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i1398 unwind label %bb.bcc, !noalias !1388

bb.bcb:                                           ; preds = %bb.bby
  %i.gfk = landingpad { ptr, i32 }
          cleanup
  br label %.body1423

bb.bcc:                                           ; preds = %bb.bca
  %i.gfl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bco

bb.bcd:                                           ; preds = %bb.bbz
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28, !noalias !1394
  call void @llvm.experimental.noalias.scope.decl(metadata !1395), !noalias !1388
  call void @llvm.experimental.noalias.scope.decl(metadata !1398), !noalias !1388
  %i.gfm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.gfn = load i64, ptr %i.gfm, align 8, !tbaa !351, !noalias !1401 ; 2 uses
  store i64 %i.gfn, ptr %16, align 8, !tbaa !351, !alias.scope !1402, !noalias !1394
  store ptr null, ptr %i.gfm, align 8, !tbaa !351, !noalias !1401
  %i.gfo = load ptr, ptr %i.gec, align 8, !tbaa !115, !noalias !1394
  %i.gfp = getelementptr inbounds nuw i8, ptr %i.gfo, i64 16
  %i.gfq = load i64, ptr %i.gfp, align 8, !tbaa !138, !noalias !1394 ; 11 uses
  %i.gfr = icmp sgt i64 %i.gfq, 0
  %i.gfs = inttoptr i64 %i.gfn to ptr
  br i1 %i.gfr, label %.preheader.i, label %._crit_edge.i1405

.preheader.i:                                     ; preds = %bb.bcd
  %i.gft = getelementptr inbounds nuw i8, ptr %.tr1792, i64 56
  %i.gfu = load ptr, ptr %i.gft, align 8, !tbaa !1403, !noalias !1394 ; 9 uses
  %i.gfv = ptrtoaddr ptr %i.gfu to i64
  %i.gfw = getelementptr inbounds nuw i8, ptr %.tr1792, i64 64
  %i.gfx = load ptr, ptr %i.gfw, align 8, !tbaa !1406, !noalias !1394 ; 2 uses
  %min.iters.check2932 = icmp ult i64 %i.gfq, 8
  br i1 %min.iters.check2932, label %scalar.ph2931.preheader, label %vector.ph2933

vector.ph2933:                                    ; preds = %.preheader.i
  %n.vec2935 = and i64 %i.gfq, 9223372036854775800 ; 3 uses
  br label %vector.body2936

vector.body2936:                                  ; preds = %vector.body2936, %vector.ph2933
  %index2937 = phi i64 [ 0, %vector.ph2933 ], [ %index.next2946, %vector.body2936 ] ; 3 uses
  %vec.phi2938.a = phi <4 x i32> [ splat (i32 2147483647), %vector.ph2933 ], [ %i.gga, %vector.body2936 ]
  %vec.phi2939.a = phi <4 x i32> [ splat (i32 2147483647), %vector.ph2933 ], [ %i.ggb, %vector.body2936 ]
  %vec.phi2940 = phi <4 x i32> [ zeroinitializer, %vector.ph2933 ], [ %i.ggg, %vector.body2936 ]
end_hunk_6
begin_hunk_7_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.bjd:                                           ; preds = %bb.bjc
  %.not7.i.i.i75.i1553 = icmp eq ptr %i.hey, null
  br i1 %.not7.i.i.i75.i1553, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1555, label %bb.bje

bb.bje:                                           ; preds = %bb.bjd
  %i.hfa = getelementptr inbounds nuw i8, ptr %i.hey, i64 8 ; 3 uses
  %i.hfb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1478
  %.not.i.i.i.i76.i1554 = icmp eq i8 %i.hfb, 0
  br i1 %.not.i.i.i.i76.i1554, label %bb.bjg, label %bb.bjf

bb.bjf:                                           ; preds = %bb.bje
  %i.hfc = load i32, ptr %i.hfa, align 4, !tbaa !3, !noalias !1478
  %i.hfd = add nsw i32 %i.hfc, 1
  store i32 %i.hfd, ptr %i.hfa, align 4, !tbaa !3, !noalias !1478
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1555

bb.bjg:                                           ; preds = %bb.bje
  %i.hfe = atomicrmw volatile add ptr %i.hfa, i32 1 acq_rel, align 4, !noalias !1478 ; 0 uses
  %.pr.pre.i.i.i83.i1562 = load ptr, ptr %i.hew, align 8, !tbaa !118, !noalias !1478
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1555

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1555: ; preds = %bb.bjg, %bb.bjf, %bb.bjd
  %i.hff = phi ptr [ %i.hez, %bb.bjd ], [ %i.hez, %bb.bjf ], [ %.pr.pre.i.i.i83.i1562, %bb.bjg ] ; 8 uses
  %.not8.i.i.i78.i1556 = icmp eq ptr %i.hff, null
  br i1 %.not8.i.i.i78.i1556, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1560, label %bb.bjh

bb.bjh:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1555
  %i.hfg = getelementptr inbounds nuw i8, ptr %i.hff, i64 8 ; 4 uses
  %i.hfh = load atomic i64, ptr %i.hfg acquire, align 8, !noalias !1478 ; 2 uses
  %i.hfi = icmp eq i64 %i.hfh, 4294967297
  %i.hfj = trunc i64 %i.hfh to i32                ; 2 uses
  br i1 %i.hfi, label %bb.bji, label %bb.bjj

bb.bji:                                           ; preds = %bb.bjh
  store i32 0, ptr %i.hfg, align 8, !tbaa !125, !noalias !1478
  %i.hfk = getelementptr inbounds nuw i8, ptr %i.hff, i64 12
  store i32 0, ptr %i.hfk, align 4, !tbaa !127, !noalias !1478
  %i.hfl = load ptr, ptr %i.hff, align 8, !tbaa !55, !noalias !1478
  %i.hfm = getelementptr inbounds nuw i8, ptr %i.hfl, i64 16
  %i.hfn = load ptr, ptr %i.hfm, align 8, !noalias !1478
  call void %i.hfn(ptr noundef nonnull align 8 dereferenceable(16) %i.hff) #28, !noalias !1478, !inline_history !1479
  %i.hfo = load ptr, ptr %i.hff, align 8, !tbaa !55, !noalias !1478
  %i.hfp = getelementptr inbounds nuw i8, ptr %i.hfo, i64 24
  %i.hfq = load ptr, ptr %i.hfp, align 8, !noalias !1478
  call void %i.hfq(ptr noundef nonnull align 8 dereferenceable(16) %i.hff) #28, !noalias !1478, !inline_history !1479
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1560

bb.bjj:                                           ; preds = %bb.bjh
  %i.hfr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1478
  %.not.i9.i.i.i79.i1557 = icmp eq i8 %i.hfr, 0
  br i1 %.not.i9.i.i.i79.i1557, label %bb.bjl, label %bb.bjk

bb.bjk:                                           ; preds = %bb.bjj
  %i.hfs = add nsw i32 %i.hfj, -1
  store i32 %i.hfs, ptr %i.hfg, align 4, !tbaa !3, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1558

bb.bjl:                                           ; preds = %bb.bjj
  %i.hft = atomicrmw volatile add ptr %i.hfg, i32 -1 acq_rel, align 4, !noalias !1478
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1558

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1558: ; preds = %bb.bjl, %bb.bjk
  %.0.i.i.i.i.i81.i1559 = phi i32 [ %i.hfj, %bb.bjk ], [ %i.hft, %bb.bjl ]
  %i.hfu = icmp eq i32 %.0.i.i.i.i.i81.i1559, 1
  br i1 %i.hfu, label %bb.bjm, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1560, !prof !129

bb.bjm:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1558
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hff) #28, !noalias !1478
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1560

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1560: ; preds = %bb.bjm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i80.i1558, %bb.bji, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i77.i1555
  store ptr %i.hey, ptr %i.hew, align 8, !tbaa !118, !noalias !1478
  br label %_ZN5arrow6StatusD2Ev.exit1544.thread1784

_ZN5arrow6StatusD2Ev.exit1544.thread1784:         ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1587, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1576, %bb.biw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i1579, %bb.bja, %bb.bjc, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i82.i1560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !1478
  br label %_ZN5arrow6StatusD2Ev.exit1540.sink.split

bb.bjn:                                           ; preds = %.body.i1567, %bb.bii
  %.pn47.pn.i1569 = phi { ptr, i32 } [ %.pn47.i1584, %bb.bii ], [ %eh.lpad-body.i1568, %.body.i1567 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !1478
  br label %.body1624

_ZN5arrow6StatusD2Ev.exit1544:                    ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1587, %bb.bht
  %.pr.pr1783 = load ptr, ptr %56, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %.pr.pr1783, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28, !noalias !1472
  %i.hfv = icmp eq ptr %.pr.pr1783, null
  br i1 %i.hfv, label %_ZN5arrow6StatusD2Ev.exit1540, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bjo:                                           ; preds = %bb.bhu, %bb.bht, %_ZN5arrow6StatusD2Ev.exit.i1545
  %i.hfw = landingpad { ptr, i32 }
          cleanup
  br label %.body1624

.body1624:                                        ; preds = %bb.bjo, %bb.bjn
  %.pn.i1180 = phi { ptr, i32 } [ %.pn47.pn.i1569, %bb.bjn ], [ %i.hfw, %bb.bjo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28, !noalias !1472
  br label %bb.bkf

_ZN5arrow6StatusD2Ev.exit1540.sink.split:         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1618, %bb.bhk, %_ZN5arrow6StatusD2Ev.exit1544.thread1784
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr null, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28, !noalias !1472
  br label %_ZN5arrow6StatusD2Ev.exit1540

_ZN5arrow6StatusD2Ev.exit1540:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1540.sink.split, %_ZN5arrow6StatusD2Ev.exit1544
  %i.hfx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hfy = load ptr, ptr %i.hfx, align 8, !tbaa !70, !noalias !1472
  %i.hfz = getelementptr inbounds nuw i8, ptr %i.hfy, i64 24
  %i.hga = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hfz, ptr noundef nonnull align 8 dereferenceable(16) %55)
          to label %bb.bjp unwind label %bb.bju, !inline_history !1502 ; 0 uses

bb.bjp:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1540
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #28, !noalias !1472
  %i.hgb = getelementptr inbounds nuw i8, ptr %.tr1792, i64 40
  %i.hgc = getelementptr inbounds nuw i8, ptr %.tr1792, i64 48
  %i.hgd = load ptr, ptr %i.hgc, align 8, !tbaa !118 ; 2 uses
  %i.hge = load <2 x ptr>, ptr %i.hgb, align 8, !tbaa !119
  store <2 x ptr> %i.hge, ptr %57, align 16, !tbaa !119
  %.not.i.i.i1536 = icmp eq ptr %i.hgd, null
  br i1 %.not.i.i.i1536, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538, label %bb.bjq

bb.bjq:                                           ; preds = %bb.bjp
  %i.hgf = getelementptr inbounds nuw i8, ptr %i.hgd, i64 8 ; 3 uses
  %i.hgg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i1537 = icmp eq i8 %i.hgg, 0
  br i1 %.not.i.i.i.i1537, label %bb.bjs, label %bb.bjr

bb.bjr:                                           ; preds = %bb.bjq
  %i.hgh = load i32, ptr %i.hgf, align 4, !tbaa !3
  %i.hgi = add nsw i32 %i.hgh, 1
  store i32 %i.hgi, ptr %i.hgf, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538

bb.bjs:                                           ; preds = %bb.bjq
  %i.hgj = atomicrmw volatile add ptr %i.hgf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538: ; preds = %bb.bjp, %bb.bjr, %bb.bjs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28, !noalias !1472
  store i32 0, ptr %i.p, align 4, !tbaa !3, !noalias !1472
  %i.hgk = load ptr, ptr %55, align 16, !tbaa !33
  %.not = icmp eq ptr %i.hgk, null
  br i1 %.not, label %bb.bjx, label %bb.bjt

bb.bjt:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #28, !noalias !1472
  %i.hgl = load ptr, ptr %i.gxj, align 8, !tbaa !115 ; 2 uses
  %i.hgm = getelementptr inbounds nuw i8, ptr %i.hgl, i64 40
  %i.hgn = load ptr, ptr %i.hgm, align 8, !tbaa !45
  %i.hgo = getelementptr inbounds nuw i8, ptr %i.hgn, i64 16
  %i.hgp = getelementptr inbounds nuw i8, ptr %i.hgl, i64 32
  %i.hgq = load i64, ptr %i.hgp, align 8, !tbaa !647
  %i.hgr = shl i64 %i.hgq, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %58, ptr noundef nonnull align 8 dereferenceable(16) %i.hgo, i64 noundef %i.hgr, i64 noundef 4, ptr noundef nonnull %i.p)
          to label %_ZN5arrow6StatusD2Ev.exit1535 unwind label %bb.bjv, !inline_history !1502

_ZN5arrow6StatusD2Ev.exit1535:                    ; preds = %bb.bjt
  %i.hgs = load ptr, ptr %58, align 8, !tbaa !39  ; 2 uses
  store ptr %i.hgs, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28, !noalias !1472
  %i.hgt = icmp eq ptr %i.hgs, null
  br i1 %i.hgt, label %_ZN5arrow6StatusD2Ev.exit1531, label %.critedge52.i1187

bb.bju:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1540
  %i.hgu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bkf

bb.bjv:                                           ; preds = %bb.bjt
  %i.hgv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28, !noalias !1472
  br label %bb.bke

_ZN5arrow6StatusD2Ev.exit1531:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28, !noalias !1472
  store i32 0, ptr %i.q, align 4, !tbaa !3, !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #28, !noalias !1472
  %i.hgw = load ptr, ptr %i.gxj, align 8, !tbaa !115 ; 3 uses
  %i.hgx = getelementptr inbounds nuw i8, ptr %i.hgw, i64 40
  %i.hgy = load ptr, ptr %i.hgx, align 8, !tbaa !45
  %i.hgz = getelementptr inbounds nuw i8, ptr %i.hgy, i64 16
  %i.hha = getelementptr inbounds nuw i8, ptr %i.hgw, i64 32
  %i.hhb = load i64, ptr %i.hha, align 8, !tbaa !647
  %i.hhc = getelementptr inbounds nuw i8, ptr %i.hgw, i64 16
  %i.hhd = load i64, ptr %i.hhc, align 8, !tbaa !138
  %i.hhe = add nsw i64 %i.hhd, %i.hhb
  %i.hhf = shl i64 %i.hhe, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %59, ptr noundef nonnull align 8 dereferenceable(16) %i.hgz, i64 noundef %i.hhf, i64 noundef 4, ptr noundef nonnull %i.q)
          to label %_ZN5arrow6StatusD2Ev.exit1529 unwind label %bb.bjw, !inline_history !1502

_ZN5arrow6StatusD2Ev.exit1529:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1531
  %i.hhg = load ptr, ptr %59, align 8, !tbaa !39  ; 2 uses
  store ptr %i.hhg, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28, !noalias !1472
  %i.hhh = icmp eq ptr %i.hhg, null
  br i1 %i.hhh, label %.critedge54.i1190.thread, label %.critedge55.i1190

bb.bjw:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1531
  %i.hhi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28, !noalias !1472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28, !noalias !1472
  br label %bb.bke

.critedge54.i1190.thread:                         ; preds = %_ZN5arrow6StatusD2Ev.exit1529
  %i.hhj = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !1472
  %i.hhk = load i32, ptr %i.p, align 4, !tbaa !3, !noalias !1472 ; 2 uses
  %i.hhl = sub nsw i32 %i.hhj, %i.hhk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28, !noalias !1472
  %i.hhm = sext i32 %i.hhl to i64
  %i.hhn = sext i32 %i.hhk to i64
  br label %bb.bjx

bb.bjx:                                           ; preds = %.critedge54.i1190.thread, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538
  %i.hho = phi i64 [ %i.hhn, %.critedge54.i1190.thread ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538 ]
  %.1.i1183 = phi i64 [ %i.hhm, %.critedge54.i1190.thread ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1538 ] ; 2 uses
  %i.hhp = load ptr, ptr %i.gxj, align 8, !tbaa !115
  %i.hhq = getelementptr inbounds nuw i8, ptr %i.hhp, i64 32
  %i.hhr = load i64, ptr %i.hhq, align 8, !tbaa !647
  %.not.i1184 = icmp eq i64 %i.hhr, 0
  %.pre2082 = load ptr, ptr %57, align 16, !tbaa !112 ; 3 uses
  br i1 %.not.i1184, label %bb.bjy, label %bb.bjz

bb.bjy:                                           ; preds = %bb.bjx
  %i.hhs = getelementptr inbounds nuw i8, ptr %.pre2082, i64 8
  %i.hht = load ptr, ptr %i.hhs, align 8, !tbaa !115
  %i.hhu = getelementptr inbounds nuw i8, ptr %i.hht, i64 16
  %i.hhv = load i64, ptr %i.hhu, align 8, !tbaa !138
  %i.hhw = icmp sgt i64 %i.hhv, %.1.i1183
  br i1 %i.hhw, label %bb.bjz, label %bb.bkc

bb.bjz:                                           ; preds = %bb.bjy, %bb.bjx
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #28, !noalias !1472
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %60, ptr noundef nonnull align 8 dereferenceable(32) %.pre2082, i64 noundef %i.hho, i64 noundef %.1.i1183)
          to label %bb.bka unwind label %bb.bkb, !inline_history !1502

bb.bka:                                           ; preds = %bb.bjz
  %i.hhx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %60) #28, !inline_history !1502 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %60) #28, !inline_history !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28, !noalias !1472
  %.pre2083 = load ptr, ptr %57, align 16, !tbaa !112
  br label %bb.bkc

bb.bkb:                                           ; preds = %bb.bjz
  %i.hhy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28, !noalias !1472
  br label %bb.bke

bb.bkc:                                           ; preds = %bb.bka, %bb.bjy
  %i.hhz = phi ptr [ %.pre2083, %bb.bka ], [ %.pre2082, %bb.bjy ]
  %i.hia = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.hib = load i64, ptr %i.hia, align 8, !tbaa !99, !noalias !1472
  %i.hic = add nsw i64 %i.hib, -1
  store i64 %i.hic, ptr %i.hia, align 8, !tbaa !99, !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #28, !noalias !1472
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %61, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hhz)
          to label %_ZN5arrow6StatusD2Ev.exit1523 unwind label %bb.bkd, !inline_history !1502

_ZN5arrow6StatusD2Ev.exit1523:                    ; preds = %bb.bkc
  %i.hid = load ptr, ptr %61, align 8, !tbaa !39  ; 2 uses
  store ptr %i.hid, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28, !noalias !1472
  %i.hie = icmp eq ptr %i.hid, null
  br i1 %i.hie, label %_ZN5arrow6StatusD2Ev.exit1519, label %.critedge52.i1187

bb.bkd:                                           ; preds = %bb.bkc
  %i.hif = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28, !noalias !1472
  br label %bb.bke

_ZN5arrow6StatusD2Ev.exit1519:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1523
  %i.hig = load i64, ptr %i.hia, align 8, !tbaa !99, !noalias !1472
  %i.hih = add nsw i64 %i.hig, 1
  store i64 %i.hih, ptr %i.hia, align 8, !tbaa !99, !noalias !1472
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1503
  br label %.critedge52.i1187

.critedge55.i1190:                                ; preds = %_ZN5arrow6StatusD2Ev.exit1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28, !noalias !1472
  br label %.critedge52.i1187

.critedge52.i1187:                                ; preds = %.critedge55.i1190, %_ZN5arrow6StatusD2Ev.exit1519, %_ZN5arrow6StatusD2Ev.exit1523, %_ZN5arrow6StatusD2Ev.exit1535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28, !noalias !1472
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %57) #28, !inline_history !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28, !noalias !1472
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bke:                                           ; preds = %bb.bkd, %bb.bkb, %bb.bjw, %bb.bjv
  %.pn47.pn.i1185 = phi { ptr, i32 } [ %i.hif, %bb.bkd ], [ %i.hhy, %bb.bkb ], [ %i.hhi, %bb.bjw ], [ %i.hgv, %bb.bjv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28, !noalias !1472
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %57) #28, !inline_history !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28, !noalias !1472
  br label %bb.bkf

bb.bkf:                                           ; preds = %bb.bke, %bb.bju, %.body1624
  %.pn47.pn.pn.i1181 = phi { ptr, i32 } [ %.pn47.pn.i1185, %bb.bke ], [ %i.hgu, %bb.bju ], [ %.pn.i1180, %.body1624 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %55) #28, !inline_history !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28, !noalias !1472
  br label %common.resume

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit1544.thread1786, %_ZN5arrow6StatusD2Ev.exit1544, %.critedge52.i1187
  %i.hii = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.hij = load ptr, ptr %i.hii, align 8, !tbaa !118 ; 8 uses
  %.not.i.i1513 = icmp eq ptr %i.hij, null
  br i1 %.not.i.i1513, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1517, label %bb.bkg

bb.bkg:                                           ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit
  %i.hik = getelementptr inbounds nuw i8, ptr %i.hij, i64 8 ; 4 uses
  %i.hil = load atomic i64, ptr %i.hik acquire, align 8 ; 2 uses
  %i.him = icmp eq i64 %i.hil, 4294967297
  %i.hin = trunc i64 %i.hil to i32                ; 2 uses
  br i1 %i.him, label %bb.bkh, label %bb.bki

bb.bkh:                                           ; preds = %bb.bkg
  store i32 0, ptr %i.hik, align 8, !tbaa !125
  %i.hio = getelementptr inbounds nuw i8, ptr %i.hij, i64 12
  store i32 0, ptr %i.hio, align 4, !tbaa !127
  %i.hip = load ptr, ptr %i.hij, align 8, !tbaa !55
  %i.hiq = getelementptr inbounds nuw i8, ptr %i.hip, i64 16
  %i.hir = load ptr, ptr %i.hiq, align 8
  call void %i.hir(ptr noundef nonnull align 8 dereferenceable(16) %i.hij) #28, !inline_history !1506
  %i.his = load ptr, ptr %i.hij, align 8, !tbaa !55
  %i.hit = getelementptr inbounds nuw i8, ptr %i.his, i64 24
  %i.hiu = load ptr, ptr %i.hit, align 8
  call void %i.hiu(ptr noundef nonnull align 8 dereferenceable(16) %i.hij) #28, !inline_history !1506
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1517

bb.bki:                                           ; preds = %bb.bkg
  %i.hiv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i1514 = icmp eq i8 %i.hiv, 0
  br i1 %.not.i.i.i1514, label %bb.bkk, label %bb.bkj

bb.bkj:                                           ; preds = %bb.bki
  %i.hiw = add nsw i32 %i.hin, -1
  store i32 %i.hiw, ptr %i.hik, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1515

bb.bkk:                                           ; preds = %bb.bki
  %i.hix = atomicrmw volatile add ptr %i.hik, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1515

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1515: ; preds = %bb.bkk, %bb.bkj
  %.0.i.i.i.i1516 = phi i32 [ %i.hin, %bb.bkj ], [ %i.hix, %bb.bkk ]
  %i.hiy = icmp eq i32 %.0.i.i.i.i1516, 1
  br i1 %i.hiy, label %bb.bkl, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1517, !prof !129

bb.bkl:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1515
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hij) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1517

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1517: ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit, %bb.bkh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1515, %bb.bkl
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28, !noalias !1472
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bkm:                                           ; preds = %tailrecurse
  %i.hiz = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8
  %i.hja = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.hjb = load i64, ptr %i.hja, align 8, !tbaa !99, !noalias !1507
  %i.hjc = add nsw i64 %i.hjb, -1
  store i64 %i.hjc, ptr %i.hja, align 8, !tbaa !99, !noalias !1507
  %i.hjd = tail call noundef ptr @_ZNK5arrow18FixedSizeListArray9list_typeEv(ptr noundef nonnull align 8 dereferenceable(56) %.tr1792), !noalias !1507, !inline_history !1510
  %i.hje = getelementptr inbounds nuw i8, ptr %i.hjd, i64 72
  %i.hjf = load i32, ptr %i.hje, align 8, !tbaa !1511, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28, !noalias !1507
  %i.hjg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow18FixedSizeListArray6valuesEv(ptr noundef nonnull align 8 dereferenceable(56) %.tr1792), !noalias !1507, !inline_history !1510
  %i.hjh = load ptr, ptr %i.hjg, align 8, !tbaa !112, !noalias !1507
  %i.hji = load ptr, ptr %i.hiz, align 8, !tbaa !115, !noalias !1507 ; 2 uses
  %i.hjj = getelementptr inbounds nuw i8, ptr %i.hji, i64 32
  %i.hjk = load i64, ptr %i.hjj, align 8, !tbaa !647, !noalias !1507
  %i.hjl = sext i32 %i.hjf to i64                 ; 2 uses
  %i.hjm = mul nsw i64 %i.hjk, %i.hjl
  %i.hjn = getelementptr inbounds nuw i8, ptr %i.hji, i64 16
  %i.hjo = load i64, ptr %i.hjn, align 8, !tbaa !138, !noalias !1507
  %i.hjp = mul nsw i64 %i.hjo, %i.hjl
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %53, ptr noundef nonnull align 8 dereferenceable(32) %i.hjh, i64 noundef %i.hjm, i64 noundef %i.hjp), !noalias !1507, !inline_history !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28, !noalias !1507
  %i.hjq = load ptr, ptr %53, align 8, !tbaa !112, !noalias !1507
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %54, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hjq)
          to label %_ZN5arrow6StatusD2Ev.exit1635 unwind label %bb.bkn, !noalias !1507, !inline_history !1510

_ZN5arrow6StatusD2Ev.exit1635:                    ; preds = %bb.bkm
  %i.hjr = load ptr, ptr %54, align 8, !tbaa !39  ; 2 uses
  store ptr %i.hjr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28, !noalias !1507
  %i.hjs = icmp eq ptr %i.hjr, null
  br i1 %i.hjs, label %_ZN5arrow6StatusD2Ev.exit1631, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_18FixedSizeListArrayE.exit

bb.bkn:                                           ; preds = %bb.bkm
  %i.hjt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28, !noalias !1507
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %53) #28, !noalias !1507, !inline_history !1510
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28, !noalias !1507
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit1631:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1635
  %i.hju = load i64, ptr %i.hja, align 8, !tbaa !99, !noalias !1507
  %i.hjv = add nsw i64 %i.hju, 1
  store i64 %i.hjv, ptr %i.hja, align 8, !tbaa !99, !noalias !1507
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1515
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_18FixedSizeListArrayE.exit

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_18FixedSizeListArrayE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit1635, %_ZN5arrow6StatusD2Ev.exit1631
  %i.hjw = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.hjx = load ptr, ptr %i.hjw, align 8, !tbaa !118 ; 8 uses
  %.not.i.i1626 = icmp eq ptr %i.hjx, null
  br i1 %.not.i.i1626, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bko

bb.bko:                                           ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_18FixedSizeListArrayE.exit
  %i.hjy = getelementptr inbounds nuw i8, ptr %i.hjx, i64 8 ; 4 uses
  %i.hjz = load atomic i64, ptr %i.hjy acquire, align 8 ; 2 uses
  %i.hka = icmp eq i64 %i.hjz, 4294967297
  %i.hkb = trunc i64 %i.hjz to i32                ; 2 uses
  br i1 %i.hka, label %bb.bkp, label %bb.bkq

bb.bkp:                                           ; preds = %bb.bko
  store i32 0, ptr %i.hjy, align 8, !tbaa !125
  %i.hkc = getelementptr inbounds nuw i8, ptr %i.hjx, i64 12
  store i32 0, ptr %i.hkc, align 4, !tbaa !127
  %i.hkd = load ptr, ptr %i.hjx, align 8, !tbaa !55
  %i.hke = getelementptr inbounds nuw i8, ptr %i.hkd, i64 16
  %i.hkf = load ptr, ptr %i.hke, align 8
  call void %i.hkf(ptr noundef nonnull align 8 dereferenceable(16) %i.hjx) #28, !inline_history !1518
  %i.hkg = load ptr, ptr %i.hjx, align 8, !tbaa !55
  %i.hkh = getelementptr inbounds nuw i8, ptr %i.hkg, i64 24
  %i.hki = load ptr, ptr %i.hkh, align 8
  call void %i.hki(ptr noundef nonnull align 8 dereferenceable(16) %i.hjx) #28, !inline_history !1518
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bkq:                                           ; preds = %bb.bko
  %i.hkj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i1627 = icmp eq i8 %i.hkj, 0
  br i1 %.not.i.i.i1627, label %bb.bks, label %bb.bkr

bb.bkr:                                           ; preds = %bb.bkq
  %i.hkk = add nsw i32 %i.hkb, -1
  store i32 %i.hkk, ptr %i.hjy, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1628

bb.bks:                                           ; preds = %bb.bkq
  %i.hkl = atomicrmw volatile add ptr %i.hjy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1628

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1628: ; preds = %bb.bks, %bb.bkr
  %.0.i.i.i.i1629 = phi i32 [ %i.hkb, %bb.bkr ], [ %i.hkl, %bb.bks ]
  %i.hkm = icmp eq i32 %.0.i.i.i.i1629, 1
  br i1 %i.hkm, label %bb.bkt, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.bkt:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1628
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hjx) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_18FixedSizeListArrayE.exit, %bb.bkp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1628, %bb.bkt
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28, !noalias !1507
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.bku:                                           ; preds = %tailrecurse
  %i.hkn = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8
  %i.hko = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.hkp = load i64, ptr %i.hko, align 8, !tbaa !99, !noalias !1519 ; 2 uses
  %i.hkq = add nsw i64 %i.hkp, -1
  store i64 %i.hkq, ptr %i.hko, align 8, !tbaa !99, !noalias !1519
  %i.hkr = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.hks = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.hkt = load ptr, ptr %i.hks, align 8, !tbaa !1522
  %i.hku = load ptr, ptr %i.hkr, align 8, !tbaa !1523
  %i.hkv = ptrtoint ptr %i.hkt to i64
  %i.hkw = ptrtoint ptr %i.hku to i64
  %i.hkx = sub i64 %i.hkv, %i.hkw
  %i.hky = lshr exact i64 %i.hkx, 4
  %i.hkz = trunc i64 %i.hky to i32
  %i.hla = icmp sgt i32 %i.hkz, 0
  br i1 %i.hla, label %.lr.ph1976, label %._crit_edge1977

.lr.ph1976:                                       ; preds = %bb.bku
  %i.hlb = getelementptr inbounds nuw i8, ptr %51, i64 8
  br label %bb.bkv

bb.bkv:                                           ; preds = %.lr.ph1976, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1640
  %.015.i1974 = phi i32 [ 0, %.lr.ph1976 ], [ %i.hlw, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1640 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28, !noalias !1519
  call void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %51, ptr noundef nonnull align 8 dereferenceable(40) %.tr1792, i32 noundef %.015.i1974), !inline_history !1524
end_hunk_7
