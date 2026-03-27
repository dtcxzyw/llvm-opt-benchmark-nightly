begin_hunk_0
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load <32 x i8>, ptr @sentinel, align 32
  %i.b = icmp eq <32 x i8> %i.a, zeroinitializer  ; 2 uses
  %i.c = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 32), align 32
  %i.d = icmp eq <8 x i8> %i.c, zeroinitializer
  %i.e = shufflevector <32 x i1> %i.b, <32 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = select <8 x i1> %i.e, <8 x i1> %i.d, <8 x i1> zeroinitializer
  %i.f = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.g = shufflevector <32 x i1> %i.f, <32 x i1> %i.b, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.h = bitcast <32 x i1> %i.g to i32
end_hunk_0
